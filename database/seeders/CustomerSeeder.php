<?php
// File: database/seeders/CustomerSeeder.php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Customer;

class CustomerSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $customers = [
            ['name' => 'Budi Santoso', 'email' => 'budi@email.com', 'phone' => '081234567890', 'city' => 'Jakarta'],
            ['name' => 'Siti Nurhaliza', 'email' => 'siti@email.com', 'phone' => '081234567891', 'city' => 'Bandung'],
            ['name' => 'Agus Wijaya', 'email' => 'agus@email.com', 'phone' => '081234567892', 'city' => 'Surabaya'],
            ['name' => 'Dewi Lestari', 'email' => 'dewi@email.com', 'phone' => '081234567893', 'city' => 'Yogyakarta'],
            ['name' => 'Rudi Hermawan', 'email' => 'rudi@email.com', 'phone' => '081234567894', 'city' => 'Semarang'],
            ['name' => 'Maya Sari', 'email' => 'maya@email.com', 'phone' => '081234567895', 'city' => 'Medan'],
            ['name' => 'Andi Pratama', 'email' => 'andi@email.com', 'phone' => '081234567896', 'city' => 'Makassar'],
            ['name' => 'Linda Wijayanti', 'email' => 'linda@email.com', 'phone' => '081234567897', 'city' => 'Palembang'],
            ['name' => 'Eko Suryanto', 'email' => 'eko@email.com', 'phone' => '081234567898', 'city' => 'Bogor'],
            ['name' => 'Nina Kusuma', 'email' => 'nina@email.com', 'phone' => '081234567899', 'city' => 'Depok'],
        ];

        foreach ($customers as $customer) {
            Customer::create($customer);
        }
    }
}