<?php
// File: database/seeders/TransactionSeeder.php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Transaction;
use App\Models\Product;
use App\Models\Customer;
use Illuminate\Support\Str;
use Carbon\Carbon;

class TransactionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $products = Product::all();
        $customers = Customer::all();
        $paymentMethods = ['Cash', 'Credit Card', 'Debit Card', 'E-Wallet', 'Bank Transfer'];
        $statuses = ['completed', 'completed', 'completed', 'completed', 'pending', 'cancelled'];

        // Generate 500 transactions for the last 6 months
        for ($i = 0; $i < 500; $i++) {
            $product = $products->random();
            $customer = $customers->random();
            $quantity = rand(1, 5);
            $amount = $product->price;
            $total = $amount * $quantity;

            Transaction::create([
                'transaction_code' => 'TRX-' . strtoupper(Str::random(10)),
                'customer_name' => $customer->name,
                'product_name' => $product->name,
                'category' => $product->category,
                'amount' => $amount,
                'quantity' => $quantity,
                'total' => $total,
                'status' => $statuses[array_rand($statuses)],
                'payment_method' => $paymentMethods[array_rand($paymentMethods)],
                'transaction_date' => Carbon::now()->subDays(rand(0, 180))->format('Y-m-d'),
            ]);
        }
    }
}