-- Nama : Anastasia Lende
-- NIM : 22241080
-- Modul 3

-- Menggunakan Database
use undikma_mart;

-- ORDER BY
-- Menggambil kolom nama produk dan qty dari penjualan urutkan berdasarkan qty
SELECT nama_produk, qty FROM tr_penjualan_dqlab
ORDER BY qty;

-- Menggambil kolom nama produk dan qty dari penjualan urutkan berdasarkan qty dan nama produk
SELECT nama_produk, qty FROM tr_penjualan_dqlab
ORDER BY qty, nama_produk;

-- Latihan dengan berbagai pengurutan dengan ORDER BY dengan kriteria berikut
SELECT * FROM tr_penjualan_dqlab qty ORDER BY qty, tgl_transaksi;
SELECT * FROM ms_pelanggan_dqlab qty ORDER BY nama_pelanggan;
SELECT * FROM ms_pelanggan_dqlab qty ORDER BY alamat;

-- Menggambil kolom nama produk dan qty dari penjualan urutkan berdasarkan qty dan nama produk besar ke kecil
SELECT nama_produk, qty FROM tr_penjualan_dqlab
ORDER BY qty DESC, nama_produk DESC;

-- Latihandengan mencoba berbagi pengurutan dengan ORDER BY dengan kriteria berikut
SELECT * FROM tr_penjualan_dqlab qty ORDER BY tgl_transaksi DESC;
SELECT * FROM ms_pelanggan_dqlab qty ORDER BY nama_pelanggan DESC;
SELECT * FROM ms_pelanggan_dqlab qty ORDER BY alamat DESC;

-- Menggambil nama produk, qty, harga, dan total bayar urutkan berdasarkan total bayar
SELECT nama_produk, qty, harga, qty*harga AS total_bayar
FROM tr_penjualan_dqlab
ORDER BY qty*harga DESC;

-- Latihan Mandiri pengurutan dengan ekspresi total harga
SELECT nama_produk, qty, harga, diskon_persen,(diskon_persen/100)*harga AS diskon, qty*(harga - (diskon_persen/100)*harga) AS total_bayar
FROM tr_penjualan_dqlab
ORDER BY total_bayar DESC;

-- latihan 1
SELECT * FROM tr_penjualan_dqlab 
WHERE diskon_persen > 0 
ORDER BY harga DESC;

-- latihan 2
SELECT nama_produk, qty, harga 
FROM tr_penjualan_dqlab 
WHERE harga >= 100000 
ORDER BY harga DESC;

-- Mandiri 3
SELECT nama_produk, qty, harga 
FROM tr_penjualan_dqlab WHERE harga >= 100000 OR nama_produk like't%' 
ORDER BY diskon_persen DESC;

-- FUNGSI AGREGASI
-- hitung total qty dari tabel penjualan
SELECT count(*) FROM tr_penjualan_dqlab;

-- FUNGSI AGREGASI
-- hitung total qty dari tabel penjualan
SELECT sum(qty) FROM tr_penjualan_dqlab;

-- hitung seluruh row dari tabel penjualan
SELECT count(*) FROM tr_penjualan dqlab;

-- hitung jumlah qty dan jumlah row dari tabel penjualan 
SELECT SUM(qty) AS total_QTY,count(*) AS total_row FROM tr_penjualan_dqlab;

-- hitung rata-rata, nilai maksimum, dan nilai minimum dari qty tabel penjualan
SELECT AVG(qty), MAX(qty),MIN(qty)
From tr_penjualan_dqlab;

-- hitung jumlah nilai unik dari nama produk dari tabel penjualan
SELECT count(distinct nama_produk) FROM tr_penjualan_dqlab;

-- menampilkan jumlah seluruh row dan jumlah dari nama produk di tabel penjualan
SELECT count(*), count(distinct nama_produk) FROM tr_penjualan_dqlab;

-- GROUP BY
-- kelompokkan nilai dari nama produk di tabel penjualan
SELECT nama_produk FROM tr_ppenjualan_dqlab GROUP BY nama_produk;

-- kelompokkan nilai dari nama produk dan qty di tabel penjualan
SELECT nama_produk,qty FROM tr_penjualan_dqlab GROUP BY nama_produk,qty;

-- GROUP BY + Fungsi Agreasi
-- ambil jumlah qty dari hasil pengelompokan nama_produk di tabel penjualan urutkan besar ke kecil
SELECT nama_produk, sum(qty)
FROM tr_penjualan_dqlab
GROUP BY nama_produk
ORDER BY sum(qty) DESC;

-- HAVING
-- mengambil jumlah qty > dari hasil pengelompokan nama produk
SELECT nama_produk, sum(qty)
FROM tr_penjualan_dqlab
GROUP BY nama_produk
HAVING sum(qty) > 2
ORDER BY sum(qty) DESC;



