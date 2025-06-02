<?php

namespace App\Database\Seeds;

use CodeIgniter\Database\Seeder;

class ProductCategorySeeder extends Seeder
{
    public function run()
    {
        $timestamp = '2025-05-07 12:03:03';

        $data = [
            [
                'nama_kategori' => 'Motor Sport',
                'deskripsi' => 'Kategori untuk motor sport dengan performa tinggi.',
                'created_at' => $timestamp,
                'updated_at' => $timestamp,
            ],
            [
                'nama_kategori' => 'Motor Bebek',
                'deskripsi' => 'Kategori untuk motor bebek yang praktis dan ekonomis.',
                'created_at' => $timestamp,
                'updated_at' => $timestamp,
            ],
            [
                'nama_kategori' => 'Motor Listrik',
                'deskripsi' => 'Kategori untuk motor listrik yang ramah lingkungan.',
                'created_at' => $timestamp,
                'updated_at' => $timestamp,
            ],
        ];

        $this->db->table('product_category')->insertBatch($data);
    }
}
