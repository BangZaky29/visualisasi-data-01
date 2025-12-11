{{-- File: resources/views/transactions/index.blade.php --}}
@extends('layouts.app')

@section('title', 'Transaksi - Data Visualization')
@section('page-title', 'Manajemen Transaksi')

@section('content')
<div class="card">
    <div class="card-header">
        <h3>Upload Data Transaksi</h3>
    </div>
    <div class="card-body">
        <div class="upload-section">
            <div class="upload-buttons">
                <label for="fileInput" class="btn btn-primary">
                    📁 Pilih File (Excel/CSV)
                    <input type="file" id="fileInput" accept=".xlsx,.xls,.csv" style="display: none;">
                </label>
                <button onclick="uploadFile()" class="btn btn-success" id="uploadBtn" disabled>
                    ⬆️ Upload
                </button>
                <a href="{{ route('transactions.template') }}" class="btn btn-secondary">
                    📥 Download Template
                </a>
            </div>
            <div id="fileInfo" class="file-info"></div>
            <div id="uploadProgress" class="upload-progress" style="display: none;">
                <div class="progress-bar"></div>
            </div>
            <div id="uploadResult" class="upload-result"></div>
        </div>
    </div>
</div>

<div class="card">
    <div class="card-header">
        <h3>Tambah Transaksi Manual</h3>
    </div>
    <div class="card-body">
        <form id="transactionForm" class="form-grid">
            <div class="form-group">
                <label>Nama Pelanggan *</label>
                <input type="text" name="customer_name" class="form-input" required>
            </div>
            <div class="form-group">
                <label>Nama Produk *</label>
                <input type="text" name="product_name" class="form-input" required>
            </div>
            <div class="form-group">
                <label>Kategori *</label>
                <select name="category" class="form-input" required>
                    <option value="">Pilih Kategori</option>
                    <option value="Electronics">Electronics</option>
                    <option value="Fashion">Fashion</option>
                    <option value="Food">Food</option>
                    <option value="Books">Books</option>
                    <option value="Toys">Toys</option>
                    <option value="Sports">Sports</option>
                </select>
            </div>
            <div class="form-group">
                <label>Harga Satuan *</label>
                <input type="number" name="amount" class="form-input" step="0.01" required>
            </div>
            <div class="form-group">
                <label>Jumlah *</label>
                <input type="number" name="quantity" class="form-input" min="1" required>
            </div>
            <div class="form-group">
                <label>Metode Pembayaran *</label>
                <select name="payment_method" class="form-input" required>
                    <option value="">Pilih Metode</option>
                    <option value="Cash">Cash</option>
                    <option value="Credit Card">Credit Card</option>
                    <option value="Debit Card">Debit Card</option>
                    <option value="E-Wallet">E-Wallet</option>
                    <option value="Bank Transfer">Bank Transfer</option>
                </select>
            </div>
            <div class="form-group">
                <label>Tanggal Transaksi *</label>
                <input type="date" name="transaction_date" class="form-input" value="{{ now()->format('Y-m-d') }}" required>
            </div>
            <div class="form-group form-actions">
                <button type="submit" class="btn btn-primary">💾 Simpan Transaksi</button>
                <button type="reset" class="btn btn-secondary">🔄 Reset</button>
            </div>
        </form>
    </div>
</div>
@endsection

@section('scripts')
<script src="{{ asset('js/transactions.js') }}"></script>
@endsection