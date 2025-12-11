<?php
// File: database/seeders/ProductSeeder.php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Product;

class ProductSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $products = [
            ['name' => 'Laptop ASUS ROG', 'category' => 'Electronics', 'price' => 15000000, 'stock' => 10, 'description' => 'Gaming laptop'],
            ['name' => 'iPhone 15 Pro', 'category' => 'Electronics', 'price' => 18000000, 'stock' => 15, 'description' => 'Smartphone'],
            ['name' => 'Samsung Galaxy S24', 'category' => 'Electronics', 'price' => 12000000, 'stock' => 20, 'description' => 'Smartphone'],
            ['name' => 'Kemeja Batik', 'category' => 'Fashion', 'price' => 250000, 'stock' => 50, 'description' => 'Batik modern'],
            ['name' => 'Sepatu Nike', 'category' => 'Fashion', 'price' => 1500000, 'stock' => 30, 'description' => 'Sepatu olahraga'],
            ['name' => 'Tas Ransel', 'category' => 'Fashion', 'price' => 350000, 'stock' => 40, 'description' => 'Tas sekolah'],
            ['name' => 'Buku Programming', 'category' => 'Books', 'price' => 150000, 'stock' => 100, 'description' => 'Buku pemrograman'],
            ['name' => 'Novel Fiksi', 'category' => 'Books', 'price' => 85000, 'stock' => 80, 'description' => 'Novel best seller'],
            ['name' => 'Lego Set', 'category' => 'Toys', 'price' => 500000, 'stock' => 25, 'description' => 'Mainan edukatif'],
            ['name' => 'Raket Badminton', 'category' => 'Sports', 'price' => 450000, 'stock' => 35, 'description' => 'Raket profesional'],
        ];

        foreach ($products as $product) {
            Product::create($product);
        }
    }
}