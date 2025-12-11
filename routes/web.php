<?php
// File: routes/web.php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\TransactionController;

Route::get('/', [DashboardController::class, 'index'])->name('dashboard');
Route::get('/api/chart-data', [DashboardController::class, 'getChartData'])->name('chart.data');

Route::prefix('transactions')->name('transactions.')->group(function () {
    Route::get('/', [TransactionController::class, 'index'])->name('index');
    Route::post('/', [TransactionController::class, 'store'])->name('store');
    Route::post('/upload', [TransactionController::class, 'upload'])->name('upload');
    Route::get('/template', [TransactionController::class, 'downloadTemplate'])->name('template');
});