<?php
// File: app/Http/Controllers/Api/ChartApiController.php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Transaction;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class ChartApiController extends Controller
{
    public function salesOverview(Request $request)
    {
        $startDate = $request->input('start_date', Carbon::now()->subMonths(6)->format('Y-m-d'));
        $endDate = $request->input('end_date', Carbon::now()->format('Y-m-d'));

        $data = Transaction::whereBetween('transaction_date', [$startDate, $endDate])
            ->select(
                DB::raw('DATE(transaction_date) as date'),
                DB::raw('SUM(total) as total_sales'),
                DB::raw('COUNT(*) as total_transactions')
            )
            ->groupBy('date')
            ->orderBy('date')
            ->get();

        return response()->json([
            'success' => true,
            'data' => $data
        ]);
    }

    public function categoryDistribution(Request $request)
    {
        $startDate = $request->input('start_date', Carbon::now()->subMonths(6)->format('Y-m-d'));
        $endDate = $request->input('end_date', Carbon::now()->format('Y-m-d'));

        $data = Transaction::whereBetween('transaction_date', [$startDate, $endDate])
            ->select('category', DB::raw('SUM(total) as total_sales'), DB::raw('COUNT(*) as count'))
            ->groupBy('category')
            ->orderByDesc('total_sales')
            ->get();

        return response()->json([
            'success' => true,
            'data' => $data
        ]);
    }

    public function topProducts(Request $request)
    {
        $limit = $request->input('limit', 10);
        $startDate = $request->input('start_date', Carbon::now()->subMonths(6)->format('Y-m-d'));
        $endDate = $request->input('end_date', Carbon::now()->format('Y-m-d'));

        $data = Transaction::whereBetween('transaction_date', [$startDate, $endDate])
            ->select('product_name', DB::raw('SUM(quantity) as total_quantity'), DB::raw('SUM(total) as total_sales'))
            ->groupBy('product_name')
            ->orderByDesc('total_quantity')
            ->limit($limit)
            ->get();

        return response()->json([
            'success' => true,
            'data' => $data
        ]);
    }
}