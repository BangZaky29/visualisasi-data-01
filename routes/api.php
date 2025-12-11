<?php
// File: routes/api.php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\ChartApiController;

Route::prefix('v1')->group(function () {
    Route::get('/sales-overview', [ChartApiController::class, 'salesOverview']);
    Route::get('/category-distribution', [ChartApiController::class, 'categoryDistribution']);
    Route::get('/top-products', [ChartApiController::class, 'topProducts']);
});