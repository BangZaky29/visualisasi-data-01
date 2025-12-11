<?php
// File: app/Http/Controllers/TransactionController.php

namespace App\Http\Controllers;

use App\Models\Transaction;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;
use PhpOffice\PhpSpreadsheet\IOFactory;

class TransactionController extends Controller
{
    public function index()
    {
        return view('transactions.index');
    }

    public function store(Request $request)
    {
        $validated = $request->validate([
            'customer_name' => 'required|string|max:255',
            'product_name' => 'required|string|max:255',
            'category' => 'required|string|max:255',
            'amount' => 'required|numeric|min:0',
            'quantity' => 'required|integer|min:1',
            'payment_method' => 'required|string',
            'transaction_date' => 'required|date',
        ]);

        $validated['transaction_code'] = 'TRX-' . strtoupper(Str::random(10));
        $validated['total'] = $validated['amount'] * $validated['quantity'];
        $validated['status'] = 'completed';

        $transaction = Transaction::create($validated);

        return response()->json([
            'success' => true,
            'message' => 'Transaksi berhasil ditambahkan',
            'data' => $transaction
        ]);
    }

    public function upload(Request $request)
    {
        $request->validate([
            'file' => 'required|mimes:xlsx,xls,csv|max:5120'
        ]);

        try {
            $file = $request->file('file');
            $spreadsheet = IOFactory::load($file->getPathname());
            $worksheet = $spreadsheet->getActiveSheet();
            $rows = $worksheet->toArray();

            $header = array_shift($rows);
            $imported = 0;
            $errors = [];

            DB::beginTransaction();

            foreach ($rows as $index => $row) {
                if (empty(array_filter($row))) continue;

                try {
                    Transaction::create([
                        'transaction_code' => 'TRX-' . strtoupper(Str::random(10)),
                        'customer_name' => $row[0] ?? 'Unknown',
                        'product_name' => $row[1] ?? 'Unknown',
                        'category' => $row[2] ?? 'Uncategorized',
                        'amount' => floatval($row[3] ?? 0),
                        'quantity' => intval($row[4] ?? 1),
                        'total' => floatval($row[3] ?? 0) * intval($row[4] ?? 1),
                        'payment_method' => $row[5] ?? 'Cash',
                        'status' => $row[6] ?? 'completed',
                        'transaction_date' => $row[7] ?? now(),
                    ]);
                    $imported++;
                } catch (\Exception $e) {
                    $errors[] = "Baris " . ($index + 2) . ": " . $e->getMessage();
                }
            }

            DB::commit();

            return response()->json([
                'success' => true,
                'message' => "$imported data berhasil diimport",
                'imported' => $imported,
                'errors' => $errors
            ]);
        } catch (\Exception $e) {
            DB::rollBack();
            return response()->json([
                'success' => false,
                'message' => 'Gagal mengimport data: ' . $e->getMessage()
            ], 500);
        }
    }

    public function downloadTemplate()
    {
        $headers = [
            'Content-Type' => 'text/csv',
            'Content-Disposition' => 'attachment; filename="template_transaksi.csv"',
        ];

        $columns = ['customer_name', 'product_name', 'category', 'amount', 'quantity', 'payment_method', 'status', 'transaction_date'];
        $callback = function() use ($columns) {
            $file = fopen('php://output', 'w');
            fputcsv($file, $columns);
            fputcsv($file, ['John Doe', 'Laptop', 'Electronics', '15000000', '1', 'Credit Card', 'completed', '2024-01-15']);
            fclose($file);
        };

        return response()->stream($callback, 200, $headers);
    }
}