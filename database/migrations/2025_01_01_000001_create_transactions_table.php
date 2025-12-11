<?php
// File: database/migrations/2024_01_01_000001_create_transactions_table.php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('transactions', function (Blueprint $table) {
            $table->id();
            $table->string('transaction_code')->unique();
            $table->string('customer_name');
            $table->string('product_name');
            $table->string('category');
            $table->decimal('amount', 15, 2);
            $table->integer('quantity');
            $table->decimal('total', 15, 2);
            $table->enum('status', ['pending', 'completed', 'cancelled'])->default('completed');
            $table->string('payment_method');
            $table->date('transaction_date');
            $table->timestamps();
            
            $table->index('transaction_date');
            $table->index('category');
            $table->index('status');
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('transactions');
    }
};