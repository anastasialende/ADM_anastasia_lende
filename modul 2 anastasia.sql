-- Nama : anastasia lende
-- NIM : 22241080
-- Modul 2

-- Menggunakan database undikma_mart;
use undikma_mart;

-- Nilai Literial Angka
SELECT 77 as;
SELECT 77 as angka;

-- Menampilkan beberapa nilai litirial dengan tipe data berbeda
SELECT 77 as angka,
true as nilai_angka,
'UNDIKMA' as teks;

-- NULL
-- Menampilkan NULL
SELECT NULL as kosong;

-- OPERATOR Matematika
-- kalkulasi ekspresi matematika
SELECT 5%2 as Sisa_bagi,
5/2 as hasil_bagi_1,
5 DIV 2 as hasil_bagi_2; 

-- Latihan mandiri 1
SELECT 4*2 "(4 dikali 2)",
(4*8) %7,
(4*8) MOD 7;

-- Menampilkan total belanja
SELECT qty*harga AS Total_belanja
FROM tr_penjualan_dqlab;

-- OPERATOR PERBANDINGAN
-- melakukan operator perbandingan
SELECT 5=5, 5<>5, 5<>4, 5!=5, 5>4;

-- Latihan mandiri 2
SELECT 1=true,
1=false,
5>=5,
5.2=5.20000,
NULL = 1,
NULL = NULL;

-- FUNGSI
SELECT pow(3.2),
round(3.14), round(3.154),
round(3.155, 1), round(3.155, 2),
floor(4.28), floor(4.78),
ceiling(4.39), ceiling(4.55);

SELECT now(), year(now()),
datediff(now(), '2004-09-24'), day ('2004-09-24');

-- Latihan 3
SELECT datediff('2004-09-24', NOW()),
year('2004-09-24'),
month('2004-09-24'),
day('2004-09-24'),
year(now());

-- Latihan 4
-- selisih hari antara tgl penjualan terakhir dengan hari ini
SELECT datediff(now(), tgl_transaksi) FROM tr_penjualan_dqlab;

-- Filtering with WHERE
SELECT nama_produk, qty
FROM tr_penjualan_dqlab
WHERE qty > 3;