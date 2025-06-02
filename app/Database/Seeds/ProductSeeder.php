<?php

namespace App\Database\Seeds;

use CodeIgniter\Database\Seeder;

class ProductSeeder extends Seeder
{
    public function run()
    {
        $now = date("Y-m-d H:i:s");
        $data = [
            [
                'nama' => 'Honda Beat',
                'harga' => 17000000,
                'jumlah' => 10,
                'foto' => 'honda_beat.jpg',
                'created_at' => $now,
            ],
            [
                'nama' => 'Yamaha NMAX',
                'harga' => 30000000,
                'jumlah' => 8,
                'foto' => 'yamaha_nmax.jpg',
                'created_at' => $now,
            ],
            [
                'nama' => 'Suzuki GSX-R150',
                'harga' => 29000000,
                'jumlah' => 6,
                'foto' => 'suzuki_gsx_r150.jpg',
                'created_at' => $now,
            ],
            [
                'nama' => 'Kawasaki Ninja 250',
                'harga' => 64000000,
                'jumlah' => 5,
                'foto' => 'kawasaki_ninja_250.jpg',
                'created_at' => $now,
            ],
            [
                'nama' => 'Vespa Primavera',
                'harga' => 45000000,
                'jumlah' => 7,
                'foto' => 'vespa_primavera.jpg',
                'created_at' => $now,
            ],
            [
                'nama' => 'Honda PCX',
                'harga' => 32000000,
                'jumlah' => 9,
                'foto' => 'honda_pcx.jpg',
                'created_at' => $now,
            ],
            [
                'nama' => 'Yamaha Aerox',
                'harga' => 25000000,
                'jumlah' => 12,
                'foto' => 'yamaha_aerox.jpg',
                'created_at' => $now,
            ],
            [
                'nama' => 'Suzuki Satria F150',
                'harga' => 24000000,
                'jumlah' => 15,
                'foto' => 'suzuki_satria_f150.jpg',
                'created_at' => $now,
            ],
            [
                'nama' => 'KTM Duke 200',
                'harga' => 37000000,
                'jumlah' => 4,
                'foto' => 'ktm_duke_200.jpg',
                'created_at' => $now,
            ],
            [
                'nama' => 'BMW G310R',
                'harga' => 85000000,
                'jumlah' => 3,
                'foto' => 'bmw_g310r.jpg',
                'created_at' => $now,
            ],
        ];

        $this->db->table('product')->insertBatch($data);
    }
}
