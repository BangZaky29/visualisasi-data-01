{{-- File: resources/views/dashboard.blade.php --}}
@extends('layouts.app')

@section('title', 'Dashboard - Data Visualization')
@section('page-title', 'Dashboard Visualisasi Data')

@section('content')
<!-- Filter Section -->
<div class="card filter-card">
    <div class="card-body">
        <div class="filter-group">
            <div class="filter-item">
                <label>Tanggal Mulai</label>
                <input type="date" id="startDate" class="form-input" value="{{ now()->subMonths(6)->format('Y-m-d') }}">
            </div>
            <div class="filter-item">
                <label>Tanggal Akhir</label>
                <input type="date" id="endDate" class="form-input" value="{{ now()->format('Y-m-d') }}">
            </div>
            <div class="filter-item">
                <button onclick="applyFilter()" class="btn btn-primary">Terapkan Filter</button>
                <button onclick="resetFilter()" class="btn btn-secondary">Reset</button>
            </div>
        </div>
    </div>
</div>

<!-- Summary Cards -->
<div class="summary-grid">
    <div class="summary-card card-blue">
        <div class="summary-icon">💰</div>
        <div class="summary-content">
            <h3 id="totalSales">Rp 0</h3>
            <p>Total Penjualan</p>
        </div>
    </div>
    <div class="summary-card card-green">
        <div class="summary-icon">📦</div>
        <div class="summary-content">
            <h3 id="totalTransactions">0</h3>
            <p>Total Transaksi</p>
        </div>
    </div>
    <div class="summary-card card-purple">
        <div class="summary-icon">📊</div>
        <div class="summary-content">
            <h3 id="avgTransaction">Rp 0</h3>
            <p>Rata-rata Transaksi</p>
        </div>
    </div>
</div>

<!-- Charts Section 1: Basic Analytics -->
<div class="section-title">
    <h2>📈 Analitik Dasar</h2>
</div>

<div class="chart-grid">
    <div class="card chart-card">
        <div class="card-header">
            <h3>Penjualan per Bulan</h3>
        </div>
        <div class="card-body">
            <canvas id="salesByMonthChart"></canvas>
        </div>
    </div>

    <div class="card chart-card">
        <div class="card-header">
            <h3>Penjualan per Kategori</h3>
        </div>
        <div class="card-body">
            <canvas id="salesByCategoryChart"></canvas>
        </div>
    </div>

    <div class="card chart-card">
        <div class="card-header">
            <h3>Top 10 Produk Terlaris</h3>
        </div>
        <div class="card-body">
            <canvas id="topProductsChart"></canvas>
        </div>
    </div>

    <div class="card chart-card">
        <div class="card-header">
            <h3>Metode Pembayaran</h3>
        </div>
        <div class="card-body">
            <canvas id="paymentMethodsChart"></canvas>
        </div>
    </div>

    <div class="card chart-card">
        <div class="card-header">
            <h3>Status Transaksi</h3>
        </div>
        <div class="card-body">
            <canvas id="transactionStatusChart"></canvas>
        </div>
    </div>
</div>

<!-- Charts Section 2: Data Mining -->
<div class="section-title">
    <h2>🔍 Analisis Data Mining</h2>
</div>

<div class="chart-grid">
    <div class="card chart-card">
        <div class="card-header">
            <h3>Segmentasi Pelanggan (RFM)</h3>
        </div>
        <div class="card-body">
            <canvas id="rfmSegmentChart"></canvas>
        </div>
    </div>

    <div class="card chart-card">
        <div class="card-header">
            <h3>Trend Penjualan Harian</h3>
        </div>
        <div class="card-body">
            <canvas id="trendAnalysisChart"></canvas>
        </div>
    </div>

    <div class="card chart-card">
        <div class="card-header">
            <h3>Moving Average (7 Hari)</h3>
        </div>
        <div class="card-body">
            <canvas id="movingAverageChart"></canvas>
        </div>
    </div>

    <div class="card chart-card">
        <div class="card-header">
            <h3>Distribusi Transaksi per Hari</h3>
        </div>
        <div class="card-body">
            <canvas id="dailyDistributionChart"></canvas>
        </div>
    </div>

    <div class="card chart-card">
        <div class="card-header">
            <h3>Performa Kategori</h3>
        </div>
        <div class="card-body">
            <canvas id="categoryPerformanceChart"></canvas>
        </div>
    </div>
</div>

<div class="loading-overlay" id="loadingOverlay">
    <div class="spinner"></div>
    <p>Memuat data...</p>
</div>
@endsection

@section('scripts')
<script src="{{ asset('js/dashboard.js') }}"></script>
@endsection