<p align="center"><a href="https://laravel.com" target="_blank"><img src="https://raw.githubusercontent.com/laravel/art/master/logo-lockup/5%20SVG/2%20CMYK/1%20Full%20Color/laravel-logolockup-cmyk-red.svg" width="400" alt="Laravel Logo"></a></p>

<p align="center">
<a href="https://github.com/laravel/framework/actions"><img src="https://github.com/laravel/framework/workflows/tests/badge.svg" alt="Build Status"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/dt/laravel/framework" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/v/laravel/framework" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/l/laravel/framework" alt="License"></a>
</p>

## About Laravel

Laravel is a web application framework with expressive, elegant syntax. We believe development must be an enjoyable and creative experience to be truly fulfilling. Laravel takes the pain out of development by easing common tasks used in many web projects, such as:

- [Simple, fast routing engine](https://laravel.com/docs/routing).
- [Powerful dependency injection container](https://laravel.com/docs/container).
- Multiple back-ends for [session](https://laravel.com/docs/session) and [cache](https://laravel.com/docs/cache) storage.
- Expressive, intuitive [database ORM](https://laravel.com/docs/eloquent).
- Database agnostic [schema migrations](https://laravel.com/docs/migrations).
- [Robust background job processing](https://laravel.com/docs/queues).
- [Real-time event broadcasting](https://laravel.com/docs/broadcasting).

Laravel is accessible, powerful, and provides tools required for large, robust applications.

## Learning Laravel

Laravel has the most extensive and thorough [documentation](https://laravel.com/docs) and video tutorial library of all modern web application frameworks, making it a breeze to get started with the framework. You can also check out [Laravel Learn](https://laravel.com/learn), where you will be guided through building a modern Laravel application.

If you don't feel like reading, [Laracasts](https://laracasts.com) can help. Laracasts contains thousands of video tutorials on a range of topics including Laravel, modern PHP, unit testing, and JavaScript. Boost your skills by digging into our comprehensive video library.

## Laravel Sponsors

We would like to extend our thanks to the following sponsors for funding Laravel development. If you are interested in becoming a sponsor, please visit the [Laravel Partners program](https://partners.laravel.com).

### Premium Partners

- **[Vehikl](https://vehikl.com)**
- **[Tighten Co.](https://tighten.co)**
- **[Kirschbaum Development Group](https://kirschbaumdevelopment.com)**
- **[64 Robots](https://64robots.com)**
- **[Curotec](https://www.curotec.com/services/technologies/laravel)**
- **[DevSquad](https://devsquad.com/hire-laravel-developers)**
- **[Redberry](https://redberry.international/laravel-development)**
- **[Active Logic](https://activelogic.com)**

## Contributing

Thank you for considering contributing to the Laravel framework! The contribution guide can be found in the [Laravel documentation](https://laravel.com/docs/contributions).

## Code of Conduct

In order to ensure that the Laravel community is welcoming to all, please review and abide by the [Code of Conduct](https://laravel.com/docs/contributions#code-of-conduct).

## Security Vulnerabilities

If you discover a security vulnerability within Laravel, please send an e-mail to Taylor Otwell via [taylor@laravel.com](mailto:taylor@laravel.com). All security vulnerabilities will be promptly addressed.

## License

The Laravel framework is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).
"# visualisasi-data" 
"# visualisasi-data" 
"# visualisasi-data" 
"# visualisasi-data-01" 



# 📖 Panduan Instalasi Project Laravel - Data Visualization

## 📋 Daftar Isi
1. [Persiapan](#persiapan)
2. [Instalasi Laravel](#instalasi-laravel)
3. [Setup Database](#setup-database)
4. [Copy File-file Project](#copy-file-project)
5. [Konfigurasi](#konfigurasi)
6. [Menjalankan Aplikasi](#menjalankan-aplikasi)
7. [Struktur Folder](#struktur-folder)
8. [Testing](#testing)
9. [Troubleshooting](#troubleshooting)

---

## 1️⃣ Persiapan

### Requirements:
- PHP >= 8.1
- Composer
- MySQL/XAMPP
- Node.js & NPM (opsional)

### Cek Versi:
```bash
php -v
composer -v
mysql --version
```

---

## 2️⃣ Instalasi Laravel

### Opsi A: Project Baru
```bash
# Buat project Laravel baru
composer create-project laravel/laravel visualisasi-data

# Masuk ke folder project
cd visualisasi-data
```

### Opsi B: Clone Existing
```bash
git clone [repository-url] visualisasi-data
cd visualisasi-data
composer install
```

---

## 3️⃣ Setup Database

### A. Via phpMyAdmin:
1. Buka `http://localhost/phpmyadmin`
2. Buat database baru: `visualisasi_grafik`
3. Import SQL dari file `database_creation.sql`

### B. Via MySQL Command:
```bash
mysql -u root -p

# Di MySQL prompt:
CREATE DATABASE visualisasi_grafik CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
exit;
```

---

## 4️⃣ Copy File-file Project

### Install Dependencies Tambahan:
```bash
composer require phpoffice/phpspreadsheet
```

### Struktur File yang Harus Dibuat:

```
visualisasi-data/
├── app/
│   ├── Http/
│   │   └── Controllers/
│   │       ├── DashboardController.php           ← Copy dari artifact
│   │       ├── TransactionController.php         ← Copy dari artifact
│   │       └── Api/
│   │           └── ChartApiController.php        ← Copy dari artifact
│   └── Models/
│       ├── Transaction.php                       ← Copy dari artifact
│       ├── Product.php                           ← Copy dari artifact
│       └── Customer.php                          ← Copy dari artifact
│
├── database/
│   ├── migrations/
│   │   ├── 2024_01_01_000001_create_transactions_table.php  ← Copy
│   │   ├── 2024_01_01_000002_create_products_table.php      ← Copy
│   │   └── 2024_01_01_000003_create_customers_table.php     ← Copy
│   └── seeders/
│       ├── DatabaseSeeder.php                    ← Copy dari artifact
│       ├── TransactionSeeder.php                 ← Copy dari artifact
│       ├── ProductSeeder.php                     ← Copy dari artifact
│       └── CustomerSeeder.php                    ← Copy dari artifact
│
├── public/
│   ├── css/
│   │   └── app.css                              ← Copy dari artifact (3 parts)
│   └── js/
│       ├── dashboard.js                         ← Copy dari artifact (2 parts)
│       └── transactions.js                      ← Copy dari artifact
│
├── resources/
│   └── views/
│       ├── layouts/
│       │   └── app.blade.php                    ← Copy dari artifact
│       ├── dashboard.blade.php                  ← Copy dari artifact
│       └── transactions/
│           └── index.blade.php                  ← Copy dari artifact
│
├── routes/
│   ├── web.php                                  ← Copy dari artifact
│   └── api.php                                  ← Copy dari artifact
│
└── .env                                         ← Copy dari artifact
```

---

## 5️⃣ Konfigurasi

### A. Setup .env:
```bash
# Copy file .env dari artifact atau edit yang sudah ada
cp .env.example .env

# Edit .env dengan konfigurasi database:
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=visualisasi_grafik
DB_USERNAME=root
DB_PASSWORD=
```

### B. Generate Application Key:
```bash
php artisan key:generate
```

### C. Jalankan Migrasi:
```bash
# Migrasi database
php artisan migrate

# ATAU jika ingin reset:
php artisan migrate:fresh
```

### D. Seed Data Dummy (Opsional):
```bash
# Seed 500 transaksi dummy
php artisan db:seed

# ATAU seed specific:
php artisan db:seed --class=ProductSeeder
php artisan db:seed --class=CustomerSeeder
php artisan db:seed --class=TransactionSeeder
```

---

## 6️⃣ Menjalankan Aplikasi

### Jalankan Server:
```bash
php artisan serve
```

### Akses Aplikasi:
- **Dashboard:** http://localhost:8000
- **Transaksi:** http://localhost:8000/transactions
- **API:** http://localhost:8000/api/v1/sales-overview

---

## 7️⃣ Struktur Folder Lengkap

```
visualisasi-data/
├── app/
│   ├── Http/Controllers/
│   │   ├── Api/ChartApiController.php
│   │   ├── DashboardController.php
│   │   └── TransactionController.php
│   └── Models/
│       ├── Customer.php
│       ├── Product.php
│       └── Transaction.php
├── database/
│   ├── migrations/
│   │   ├── 2024_01_01_000001_create_transactions_table.php
│   │   ├── 2024_01_01_000002_create_products_table.php
│   │   └── 2024_01_01_000003_create_customers_table.php
│   └── seeders/
│       ├── DatabaseSeeder.php
│       ├── ProductSeeder.php
│       ├── CustomerSeeder.php
│       └── TransactionSeeder.php
├── public/
│   ├── css/app.css
│   └── js/
│       ├── dashboard.js
│       └── transactions.js
├── resources/views/
│   ├── layouts/app.blade.php
│   ├── dashboard.blade.php
│   └── transactions/index.blade.php
├── routes/
│   ├── web.php
│   └── api.php
└── .env
```

---

## 8️⃣ Testing

### Test Database Connection:
```bash
php artisan migrate:status
```

### Test Routes:
```bash
php artisan route:list
```

### Manual Testing:
1. Akses dashboard: http://localhost:8000
2. Cek apakah chart muncul
3. Test filter tanggal
4. Test upload Excel/CSV
5. Test tambah transaksi manual
6. Test API endpoints

---

## 9️⃣ Troubleshooting

### ❌ Error: "SQLSTATE[HY000] [2002] Connection refused"
**Solusi:**
- Pastikan MySQL/XAMPP sudah running
- Cek konfigurasi .env (DB_HOST, DB_PORT)
- Restart MySQL service

### ❌ Error: "Class 'PhpOffice\PhpSpreadsheet' not found"
**Solusi:**
```bash
composer require phpoffice/phpspreadsheet
composer dump-autoload
```

### ❌ Error: Chart tidak muncul
**Solusi:**
- Cek console browser (F12) untuk error JavaScript
- Pastikan Chart.js sudah terload
- Cek apakah data dari API sudah benar

### ❌ Error: 404 Not Found
**Solusi:**
- Pastikan routes sudah terdaftar: `php artisan route:list`
- Clear cache: `php artisan route:clear`

### ❌ Error: Upload file gagal
**Solusi:**
- Cek permission folder storage: `chmod -R 777 storage`
- Pastikan format file sesuai template
- Cek max upload size di php.ini

### ❌ Error: Migration error
**Solusi:**
```bash
# Reset database
php artisan migrate:fresh

# Atau drop manual di phpMyAdmin
# Lalu migrate lagi
php artisan migrate
```

---

## 🎉 Fitur yang Tersedia

### ✅ 10 Chart Visualisasi:
1. Penjualan per Bulan (Line Chart)
2. Penjualan per Kategori (Doughnut Chart)
3. Top 10 Produk Terlaris (Horizontal Bar)
4. Metode Pembayaran (Pie Chart)
5. Status Transaksi (Bar Chart)
6. Segmentasi Pelanggan - RFM (Polar Area)
7. Trend Penjualan Harian (Line Chart)
8. Moving Average 7 Hari (Line Chart)
9. Distribusi Transaksi Harian (Bar Chart)
10. Performa Kategori (Radar Chart)

### ✅ Fitur Lainnya:
- Upload Excel/CSV dengan template
- Tambah transaksi manual
- Filter tanggal real-time
- REST API dengan 3 endpoints
- Data Mining: RFM Analysis & Trend Analysis
- Responsive design
- Dark theme modern

---

## 📞 Bantuan

Jika ada masalah atau error:
1. Cek log Laravel: `storage/logs/laravel.log`
2. Cek console browser (F12)
3. Pastikan semua file sudah dicopy dengan benar
4. Cek versi PHP dan dependencies

---

## 🚀 Quick Start Commands

```bash
# Full installation
composer create-project laravel/laravel visualisasi-data
cd visualisasi-data
composer require phpoffice/phpspreadsheet

# Copy semua file dari artifact

# Setup
cp .env.example .env
php artisan key:generate
php artisan migrate
php artisan db:seed

# Run
php artisan serve
```

Buka browser: http://localhost:8000

**Selamat! Aplikasi siap digunakan! 🎉**
