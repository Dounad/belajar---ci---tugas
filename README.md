## Toko Online Ndut Motor (Berbasis CodeIgniter 4)
Proyek ini adalah implementasi platform toko online modern yang dikembangkan menggunakan framework PHP terkemuka, CodeIgniter 4. Sistem ini dirancang untuk menyediakan pengalaman pembelian motor daring yang efisien dan komprehensif, mulai dari penjelajahan produk hingga manajemen transaksi.

## Daftar Isi
    Fitur Utama

    Persyaratan Sistem

    Panduan Instalasi

    Struktur Direktori Proyek

## Fitur Utama
Aplikasi "Ndut Motor" dilengkapi dengan berbagai fungsionalitas untuk mendukung operasional toko online yang efektif:

    Katalog Produk Interaktif

        Tampilan produk yang menarik dengan gambar dan detail relevan.

        Fungsionalitas pencarian produk yang responsif.

    Manajemen Keranjang Belanja

        Kemampuan untuk menambah dan menghapus produk dari keranjang.

        Opsi untuk memperbarui kuantitas produk dalam keranjang.

    Sistem Transaksi Lengkap

        Proses checkout yang mudah dan terpandu.

        Penyediaan riwayat transaksi untuk setiap pengguna.

    Panel Admin Komprehensif

        Manajemen Produk (CRUD): Fungsionalitas penuh untuk mengelola data produk (Create, Read, Update, Delete).

        Manajemen Kategori: Pengelolaan kategori produk untuk organisasi yang lebih baik.

        Laporan Transaksi: Pembuatan laporan transaksi yang dapat diekspor ke format PDF.

        Manajemen Diskon: Fitur untuk menambah, mengedit, dan menghapus data diskon.

        Pencatatan Detail Transaksi: Penyimpanan data terperinci untuk setiap item dalam transaksi.

    Sistem Autentikasi Pengguna

        Fitur login dan registrasi pengguna yang aman.

        Pengelolaan profil dan informasi akun pengguna.

    Antarmuka Pengguna Responsif

        Desain UI yang adaptif di berbagai perangkat, memanfaatkan template Admin NiceAdmin.

## Persyaratan Sistem
Untuk dapat menjalankan aplikasi ini, pastikan lingkungan pengembangan Anda memenuhi spesifikasi berikut:

    PHP: Versi 7.4 atau lebih tinggi.

    Composer: Alat manajemen dependensi untuk PHP.

    Web Server: Direkomendasikan menggunakan XAMPP (untuk Apache dan MySQL).

## Panduan Instalasi
Ikuti langkah-langkah di bawah ini untuk mengatur dan menjalankan proyek "Ndut Motor" di sistem lokal Anda:

    Kloning Repositori:
    Bash

git clone https://www.andarepository.com/
cd belajar-ci-tugas

(Ganti https://www.andarepository.com/ dengan URL repositori Git proyek Anda.)

Instal Dependensi:
Bash

composer install

Konfigurasi Database:

    Mulai modul Apache dan MySQL pada aplikasi XAMPP Anda.

    Buat database baru dengan nama db_ci4 melalui phpMyAdmin atau klien database pilihan Anda.

    Salin file .env dari panduan tutorial untuk konfigurasi lingkungan. Pastikan pengaturan database di file .env sesuai dengan konfigurasi server MySQL Anda.

        Referensikan tutorial ini untuk detail lebih lanjut: https://www.notion.so/april-ns/Codeigniter4-Migration-dan-Seeding-045ffe5f44904e5c88633b2deae724d2

Jalankan Migrasi Database:
Bash

php spark migrate

Isi Data Awal (Seeding):
Bash

php spark db:seed ProductSeeder
php spark db:seed UserSeeder
php spark db:seed ProductcategorySeeder
php spark db:seed DiscountSeeder

Mulai Server Pengembangan:
Bash

    php spark serve

    Akses Aplikasi:
    Buka browser web Anda dan navigasi ke http://localhost:8080 untuk melihat aplikasi.

## Struktur Direktori Proyek
Proyek ini mengikuti arsitektur Model-View-Controller (MVC) yang merupakan paradigma dasar dari CodeIgniter 4. Berikut adalah penjelasan singkat mengenai direktori-direktori kunci:

    app/Controllers/ - Direktori ini menampung logika aplikasi dan bertugas menangani permintaan HTTP.

        AuthController.php: Mengelola seluruh alur otentikasi pengguna, termasuk proses login dan logout.

        ProdukController.php: Bertanggung jawab atas pengelolaan produk, seperti menampilkan daftar produk serta operasi penambahan, pengeditan, dan penghapusan.

        TransaksiController.php: Mengelola proses transaksi, mulai dari menampilkan detail hingga proses checkout.

        ApiController.php: Menangani permintaan API, misalnya untuk mengambil data penjualan dan informasi diskon.

        BaseController.php: Merupakan kelas dasar yang menyediakan fungsionalitas umum untuk kontroler lainnya.

        ContactController.php: Mengatur tampilan halaman informasi kontak.

        DiscountController.php: Mengelola data diskon, termasuk menampilkan daftar diskon, menambah, mengedit, dan menghapus.

        FaqController.php: Mengelola tampilan halaman FAQ (Frequently Asked Questions).

        Home.php: Kontroler utama untuk halaman beranda atau landing page aplikasi.

        KategoriProdukController.php: Bertanggung jawab atas manajemen kategori produk, seperti menampilkan daftar kategori, serta operasi penambahan, pengeditan, dan penghapusan kategori.

        ProfileController.php: Mengelola tampilan profil pengguna dan detail transaksi mereka.

    app/Database/Migrations/ - Direktori ini berisi definisi perubahan skema database (kontrol versi database).

        User.php: Skrip migrasi untuk tabel users, mengatur kolom-kolom seperti username, password, dan role.

        Product.php: Skrip migrasi untuk tabel products, mengatur kolom-kolom seperti nama, harga, jumlah, dan foto.

        Transaction.php: Skrip migrasi untuk tabel transactions, mengatur kolom-kolom seperti nama_pembeli, total_harga, alamat, ongkir, dan status.

        TransactionDetail.php: Skrip migrasi untuk tabel transaction_details, menyimpan informasi terperinci setiap item dalam transaksi, termasuk transaction_id, product_id, jumlah, diskon, dan subtotal_harga.

        Productcategory.php: Skrip migrasi untuk tabel product_categories, mengatur kolom nama_kategori.

        Discount.php: Skrip migrasi untuk tabel discounts, mengatur kolom tanggal dan nominal diskon.

    app/Database/Seeds/ - Direktori ini digunakan untuk populasi data awal atau data dummy ke dalam tabel database.

        ProductSeeder.php: Berfungsi untuk mengisi tabel products dengan data produk awal.

        UserSeeder.php: Berfungsi untuk mengisi tabel users dengan data pengguna awal, termasuk akun admin default atau akun uji.

        ProductcategorySeeder.php: Berfungsi untuk mengisi tabel product_categories dengan data kategori produk awal.

        DiscountSeeder.php: Berfungsi untuk mengisi tabel discounts dengan data diskon awal, misalnya 10 data diskon untuk 9 hari ke depan.

    app/Models/ - Direktori ini berisi model-model yang menjadi jembatan antara aplikasi dan database, mengelola interaksi data.

        ProductModel.php: Model yang berinteraksi dengan tabel produk.

        UserModel.php: Model yang berinteraksi dengan tabel pengguna.

        (Jika ada model lain seperti TransactionModel, TransactionDetailModel, ProductCategoryModel, DiscountModel, tambahkan di sini.)

    app/Views/ - Direktori ini menyimpan semua file tampilan (template) dan komponen antarmuka pengguna aplikasi.

        v_home.php: Tampilan halaman beranda toko.

        v_produk.php: Tampilan halaman daftar produk.

        v_keranjang.php: Tampilan halaman keranjang belanja.

        v_discount.php: Tampilan halaman manajemen diskon.

        layout.php: Template tata letak utama aplikasi.

        components/header.php: Komponen header aplikasi.

        components/sidebar.php: Komponen sidebar navigasi.

        components/footer.php: Komponen footer aplikasi.
        (Anda bisa menambahkan file view lain yang relevan di sini)

    public/img/ - Direktori ini digunakan untuk menyimpan semua aset gambar yang digunakan dalam aplikasi, termasuk gambar produk.

    public/NiceAdmin/ - Direktori ini berisi aset-aset frontend dari template NiceAdmin, seperti file CSS, JavaScript, font, dan gambar template.