<?php
// File: app/Http/Controllers/DashboardController.php

namespace App\Http\Controllers;

use App\Models\Transaction;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class DashboardController extends Controller
{
    public function index()
    {
        return view('dashboard');
    }

    public function getChartData(Request $request)
    {
        $startDate = $request->input('start_date', Carbon::now()->subMonths(6)->format('Y-m-d'));
        $endDate = $request->input('end_date', Carbon::now()->format('Y-m-d'));

        $query = Transaction::whereBetween('transaction_date', [$startDate, $endDate]);

        // Chart 1: Total Penjualan per Bulan
        $salesByMonth = (clone $query)
            ->select(
                DB::raw('DATE_FORMAT(transaction_date, "%Y-%m") as month'),
                DB::raw('SUM(total) as total_sales'),
                DB::raw('COUNT(*) as total_transactions')
            )
            ->groupBy('month')
            ->orderBy('month')
            ->get();

        // Chart 2: Penjualan per Kategori
        $salesByCategory = (clone $query)
            ->select('category', DB::raw('SUM(total) as total_sales'))
            ->groupBy('category')
            ->orderByDesc('total_sales')
            ->get();

        // Chart 3: Top 10 Produk Terlaris
        $topProducts = (clone $query)
            ->select('product_name', DB::raw('SUM(quantity) as total_quantity'), DB::raw('SUM(total) as total_sales'))
            ->groupBy('product_name')
            ->orderByDesc('total_quantity')
            ->limit(10)
            ->get();

        // Chart 4: Metode Pembayaran
        $paymentMethods = (clone $query)
            ->select('payment_method', DB::raw('COUNT(*) as count'), DB::raw('SUM(total) as total'))
            ->groupBy('payment_method')
            ->get();

        // Chart 5: Status Transaksi
        $transactionStatus = (clone $query)
            ->select('status', DB::raw('COUNT(*) as count'))
            ->groupBy('status')
            ->get();

        // Data Mining: RFM Analysis
        $rfmAnalysis = $this->performRFMAnalysis($startDate, $endDate);

        // Trend Analysis
        $trendAnalysis = $this->performTrendAnalysis($startDate, $endDate);

        return response()->json([
            'salesByMonth' => $salesByMonth,
            'salesByCategory' => $salesByCategory,
            'topProducts' => $topProducts,
            'paymentMethods' => $paymentMethods,
            'transactionStatus' => $transactionStatus,
            'rfmAnalysis' => $rfmAnalysis,
            'trendAnalysis' => $trendAnalysis,
            'summary' => [
                'total_sales' => $query->sum('total'),
                'total_transactions' => $query->count(),
                'average_transaction' => $query->avg('total'),
            ]
        ]);
    }

    private function performRFMAnalysis($startDate, $endDate)
    {
        $rfmData = Transaction::whereBetween('transaction_date', [$startDate, $endDate])
            ->select(
                'customer_name',
                DB::raw('MAX(transaction_date) as last_purchase'),
                DB::raw('COUNT(*) as frequency'),
                DB::raw('SUM(total) as monetary')
            )
            ->groupBy('customer_name')
            ->get()
            ->map(function ($item) {
                $recency = Carbon::now()->diffInDays($item->last_purchase);
                return [
                    'customer' => $item->customer_name,
                    'recency' => $recency,
                    'frequency' => $item->frequency,
                    'monetary' => $item->monetary
                ];
            });

        // Klasifikasi pelanggan
        $segments = $rfmData->map(function ($customer) {
            $score = 0;
            if ($customer['recency'] < 30) $score += 3;
            elseif ($customer['recency'] < 60) $score += 2;
            else $score += 1;

            if ($customer['frequency'] > 10) $score += 3;
            elseif ($customer['frequency'] > 5) $score += 2;
            else $score += 1;

            if ($customer['monetary'] > 1000000) $score += 3;
            elseif ($customer['monetary'] > 500000) $score += 2;
            else $score += 1;

            if ($score >= 8) $segment = 'VIP';
            elseif ($score >= 6) $segment = 'Loyal';
            elseif ($score >= 4) $segment = 'Potential';
            else $segment = 'At Risk';

            return ['segment' => $segment];
        })->groupBy('segment')->map->count();

        return $segments;
    }

    private function performTrendAnalysis($startDate, $endDate)
    {
        $dailySales = Transaction::whereBetween('transaction_date', [$startDate, $endDate])
            ->select(
                'transaction_date',
                DB::raw('SUM(total) as total_sales')
            )
            ->groupBy('transaction_date')
            ->orderBy('transaction_date')
            ->get();

        // Hitung moving average (7 hari)
        $movingAverage = [];
        for ($i = 6; $i < count($dailySales); $i++) {
            $sum = 0;
            for ($j = $i - 6; $j <= $i; $j++) {
                $sum += $dailySales[$j]->total_sales;
            }
            $movingAverage[] = [
                'date' => $dailySales[$i]->transaction_date,
                'value' => $sum / 7
            ];
        }

        return [
            'daily_sales' => $dailySales,
            'moving_average' => $movingAverage
        ];
    }
}