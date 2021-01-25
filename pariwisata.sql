-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 25 Jan 2021 pada 15.43
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pariwisata`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `daerah`
--

CREATE TABLE `daerah` (
  `id_daerah` char(3) NOT NULL,
  `nama_daerah` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `daerah`
--

INSERT INTO `daerah` (`id_daerah`, `nama_daerah`) VALUES
('KBL', 'Kecamatan Balaraja'),
('KCG', 'Kecamatan Curug'),
('KCK', 'Kecamatan Cikupa'),
('KCO', 'Kecamatan Cisoka'),
('KCU', 'Kecamatan Cisauk'),
('KGK', 'Kecamatan Gunungkaler'),
('KJB', 'Kecamatan Jambe'),
('KJY', 'Kecamatan Jayanti'),
('KKB', 'Kecamatan Kosambi'),
('KKD', 'Kecamatan Kelapa Dua'),
('KKJ', 'Kecamatan Kronjo'),
('KKM', 'Kecamatan Kemiri'),
('KKS', 'Kecamatan Kresek'),
('KLK', 'Kecamatan Legok'),
('KMB', 'Kecamatan Mekarbaru'),
('KMK', 'Kecamatan Mauk'),
('KPD', 'Kecamatan Pagedangan'),
('KPG', 'Kecamatan Panongan'),
('KPH', 'Kecamatan Pakuhaji'),
('KPK', 'Kecamatan Pasarkemis'),
('KRG', 'Kecamatan Rajeg'),
('KSD', 'Kecamatan Sukadiri'),
('KSJ', 'Kecamatan Sindang Jaya'),
('KSL', 'Kecamatan Solear'),
('KSM', 'Kecamatan Sukamulya'),
('KSP', 'Kecamatan Sepatan'),
('KST', 'Kecamatan Sepatan Timur'),
('KTK', 'Kecamatan Tigaraksa'),
('KTN', 'Kecamatan Teluknaga');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hotel`
--

CREATE TABLE `hotel` (
  `id_hotel` int(5) NOT NULL,
  `id_daerah` char(3) NOT NULL,
  `tempat` varchar(20) NOT NULL,
  `nama_hotel` varchar(25) NOT NULL,
  `lokasi` varchar(100) NOT NULL,
  `harga` varchar(20) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `gambar` varchar(50) DEFAULT NULL,
  `maps` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `hotel`
--

INSERT INTO `hotel` (`id_hotel`, `id_daerah`, `tempat`, `nama_hotel`, `lokasi`, `harga`, `deskripsi`, `gambar`, `maps`) VALUES
(6, 'KTN', 'Kabupaten Tangerang', 'Resort Tanjung Pasir', 'Jl. Raya Tanjung Pasir KM 7 Kec Teluk Naga, Kabupaten Tangerang', '550000', 'Penginapan Tanjung Pasir Resort ini menjadi salah satu daya tarik di kawasan Tangerang, Banten. Penginapan Tanjung Pasir Resort beralamatkan di Jl. Tanjung Pasir KM 7, Teluk Naga, Tanjung Pasir, Tangerang, Banten. Letak Tanjung Pasir Resort berjarak sekitar 20 menit dari Bandara Internasional Soekarno-Hatta dan 50 menit dari Kota Jakarta.\r\n\r\nDi Tanjung Pasir Resort menyediakan fasilitas penginapan berupa 7 buah kamar hotel tipe standar dengan fasilitas yang cukup komplit. Rate atau tarif menginap di Tanjung Pasir Resort pada hari biasa (weekday) dibanderol sekitar Rp550 ribuan untuk Single Room, sedangkan Double Room dipatok mulai Rp605 ribu per malam. Tarif ini terbilang naik dari tahun lalu yang hanya Rp500 ribu untuk Single Room per malam, sedangkan sebelumnya belum tersedia Double Room.', 'resorttanjungpasir.jpg', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3967.774968866187!2d106.66525441406218!3d-6.025596395635993!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e6a04511c75500d%3A0x562d68e2122cd294!2sTanjung%20Pasir%20Resort!5e0!3m2!1sen!2sid!4v1595424514350!5m2!1sen!2sid\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>'),
(8, 'KPG', 'Kabupaten Tangerang', 'Amaris Hotel Citra Raya', 'Perumahan Citra Raya Blok KA 01, Gg. Kav. No.2, Mekar Bakti, Kec. Panongan, Tangerang', '360000', 'Amaris Hotel Citra Raya - Tangerang adalah akomodasi yang terletak di kawasan Commercial Life Style, Tangerang. Hotel ini berada tidak jauh dari Bandara Internasional Soekarno Hatta yang berjarak sekitar 45 menit berkendara dari hotel. Setiap kamar dilengkapi dengan AC, televisi, meja, kursi, kamar mandi, dan toilet pribadi. Selain itu, hotel ini menawarkan beragam fasilitas untuk tamunya seperti restoran, layanan kamar, resepsionis 24 jam, akses internet gratis, fasilitas rapat, morning call, dan area parkir gratis. Destinasi wisata seperti Citra Raya Water World, World of Wonders, Imperial Golf Club - Lippo Karawaci bisa Anda tempuh hanya dengan berjalan kaki dari kawasan hotel. Sementara Supermall Karawacai berjarak sekitar 25 menit berkendara. ', 'amaris.jpg', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3967.1205133820754!2d106.6832361140627!3d-6.114474295572593!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e6a028513bb3dc9%3A0x73bbcff62d1a49c7!2sAmaris%20Hotel%20Bandara%20Soekarno%20Hatta!5e0!3m2!1sen!2sid!4v1600098694301!5m2!1sen!2sid\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>'),
(9, 'KKD', 'Kabupaten Tangerang', 'Atria Hotel Gading', 'Jl. Gading Serpong Boulevard, Curug Sangereng, Kec. Klp. Dua, Tangerang', '530000', 'Hotel 13 lantai plus satu basement ini memiliki 173 kamar yang terdiri dari 155 kamar superior, 9 kamar deluxe, dan 9 kamar suite. Hotel ini dilengkapi dengan fasilitas coffee shop, swimming pool, ballroom dengan kapasitas hingga 900 orang, juga empat meeting room dengan kapasitas 15-30 orang yang dilengkapi fasilitas business center yang modern. ', 'atria.jpg', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3966.1473726864197!2d106.62566651406354!3d-6.244301195480073!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69fc0ab2e21ff9%3A0x34d27bba60d3a49f!2sAtria%20Hotel%20Gading%20Serpong!5e0!3m2!1sen!2sid!4v1595429942997!5m2!1sen!2sid\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>'),
(21, 'KCG', 'Kabupaten Tangerang', 'yasmin hotel ', 'Jl. Raya Binong No.8, Binong, Kec. Curug, Tangerang, Banten 15810', '400000', 'Terletak di kota Curug, Hotel Yasmin Karawaci berada di kawasan hiburan, 5 menit dengan berkendara dari Rumah Sakit Siloam dan 9 menit dari Universitas Bina Nusantara. Fasilitas unggulan antara lain koran gratis di lobi, laundry/dry cleaning, dan penitipan koper. Hotel mempunyai ruang 14 ruang pertemuan yang bisa dimanfaatkan untuk beragam acara. Antar-jemput ke bandara disediakan dengan biaya tambahan (tersedia 24 jam), dan parkir mandiri gratis tersedia di lokasi.', 'yasmin_hotel.jpg', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3966.2578448252457!2d106.58920661406349!3d-6.229698695490476!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69fc2623076c0f%3A0x5eb7d12a71a0705c!2sYasmin%20Hotel%20Karawaci!5e0!3m2!1sen!2sid!4v1600188086220!5m2!1sen!2sid\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hotel_favorit`
--

CREATE TABLE `hotel_favorit` (
  `id_hotel` char(3) NOT NULL,
  `id_daerah` char(3) NOT NULL,
  `tempat` varchar(20) NOT NULL DEFAULT 'Lampung',
  `nama_hotel` varchar(25) NOT NULL,
  `lokasi` varchar(500) NOT NULL,
  `harga` varchar(20) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `gambar` varchar(20) NOT NULL DEFAULT 'fakeimg.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `hotel_favorit`
--

INSERT INTO `hotel_favorit` (`id_hotel`, `id_daerah`, `tempat`, `nama_hotel`, `lokasi`, `harga`, `deskripsi`, `gambar`) VALUES
('GEK', 'KLS', 'Kalianda', 'Hotel Grand Elty Krakatoa', 'Jl. Trans Sumatera Km. 45 Merak Belantung Kalianda, Kalianda, Lampung Selatan, Provinsi Lampung, Indonesia, 35551', 'Rp 764.000', 'lorep ipsum', 'hotel-elty.jpg'),
('HBS', 'KLS', 'Lampung Selatan', 'Hotel Bandara Syariah', 'Jl. H. Alamsyah Ratu Prawira Negara KM, Candi Mas, Natar, Kabupaten Lampung Selatan, Lampung 35362', 'Rp 380.000', 'lorem ipsum', 'HotelBandara.jpg'),
('HGP', 'KBL', 'Bandar Lampung', 'Hotel Grand Praba', 'Jalan Wolter Monginsidi No. 170 Teluk Betung Utara, Teluk Betung, Bandar Lampung, Provinsi Lampung, ', 'Rp 409.500', 'lorem ipsum', 'hotelgrandpraba.jpg'),
('HSL', 'KBL', 'Bandar Lampung', 'Hotel Sheraton Lampung', 'Jl. Wolter Monginsidi No.175, Gulak Galik, Tlk. Betung Utara, Kota Bandar Lampung, Lampung 35401', 'Rp 642.000', 'lorem ipsum', 'Sheraton.jpeg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kuliner`
--

CREATE TABLE `kuliner` (
  `id_resto` char(4) NOT NULL,
  `id_daerah` char(3) NOT NULL,
  `nam_resto` varchar(25) NOT NULL,
  `tempat` varchar(20) NOT NULL DEFAULT 'Lampung',
  `lokasi` varchar(100) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `gambar` varchar(20) DEFAULT 'fakeimg.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kuliner`
--

INSERT INTO `kuliner` (`id_resto`, `id_daerah`, `nam_resto`, `tempat`, `lokasi`, `deskripsi`, `gambar`) VALUES
('BLHD', 'KCK', 'apapunlah', 'udah kesel ane', 'bumi', 'enak', NULL),
('PNGH', 'KKB', 'Ayam Bakar Mas Gendut Han', 'Lampung', 'JL Teluk Ratai, RT. 02 RW. 02, Hanura, Padang Cermin, Pesawaran, Hanura, Padang Cermin, Kabupaten Pe', '-;', 'MasGendut.jpg'),
('PNPI', 'KKB', 'Rumah Makan Pindang Ika', 'Lampung', 'Hurun, Padang Cermin, Pesawaran Regency, Lampung 35451', 'Ika diazab menjadi pindang ikan karena suka nyolong sendal di masjid raya ', 'pindang-patin.jpg'),
('PNPM', 'KKB', 'Rumah Makan Puti Minang', 'Lampung', 'JL Ahmad Yani, No. 25, RT 6 RW 3, Sukaraja, Bagelen, Gedung Tataan, Bagelen, Gedung Tataan, Kabupate', 'Dimana pun wisatanya makannya tetap nasi padang', 'Minang.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kuliner_favorit`
--

CREATE TABLE `kuliner_favorit` (
  `id_resto` char(4) NOT NULL,
  `id_daerah` char(3) NOT NULL,
  `tempat` varchar(20) NOT NULL DEFAULT 'Lampung',
  `nam_resto` varchar(25) NOT NULL,
  `lokasi` varchar(100) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `gambar` varchar(20) NOT NULL DEFAULT 'fakeimg.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kuliner_favorit`
--

INSERT INTO `kuliner_favorit` (`id_resto`, `id_daerah`, `tempat`, `nam_resto`, `lokasi`, `deskripsi`, `gambar`) VALUES
('BLAK', 'KBL', 'Lampung', 'Mie Ayam Koga', 'Jl. Teuku Umar No.48, Surabaya, Kedaton, Kota Bandar Lampung, Lampung 35112', 'Puja kerang ajaib', 'koga.jpg'),
('BLHD', 'KBL', 'Lampung', 'Ayam Penyet Hang Dihi', 'Jalan Pulau Sebesi No. 001, Sukarame, Kota Bandar Lampung, Lampung 35131', 'Ayamnya jadi langsing setelah dipenyet', 'HangDihi.PNG'),
('PNGH', 'KPN', 'Lampung', 'Ayam Bakar Mas Gendut Han', 'JL Teluk Ratai, RT. 02 RW. 02, Hanura, Padang Cermin, Pesawaran, Hanura, Padang Cermin, Kabupaten Pe', 'Suami Hanura gendut', 'MasGendut.jpg'),
('PNPM', 'KPN', 'Lampung', 'Rumah Makan Puti Minang', 'JL Ahmad Yani, No. 25, RT 6 RW 3, Sukaraja, Bagelen, Gedung Tataan, Bagelen, Gedung Tataan, Kabupate', 'Dimana pun wisatanya makannya tetap nasi padang', 'Minang.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `member`
--

CREATE TABLE `member` (
  `nama_member` varchar(25) NOT NULL,
  `uname` varchar(8) NOT NULL,
  `hengpon` varchar(12) NOT NULL,
  `Jenis_kelamin` char(1) NOT NULL,
  `kota` varchar(25) NOT NULL,
  `pass` varchar(8) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tes`
--

CREATE TABLE `tes` (
  `gambar` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tes`
--

INSERT INTO `tes` (`gambar`) VALUES
('c8bc33c1aeff3be009a0cb5792227dd6.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `testimoni`
--

CREATE TABLE `testimoni` (
  `id_testimoni` int(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `text` text NOT NULL,
  `asal` varchar(100) NOT NULL,
  `foto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `Email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama_member` varchar(50) NOT NULL,
  `hengpon` varchar(15) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `kota` varchar(50) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`Email`, `password`, `nama_member`, `hengpon`, `jenis_kelamin`, `kota`, `status`) VALUES
('andriansputr@gmail.com', '0192023a7bbd73250516f069df18b500', 'andrian', '081252314467', 'L', 'lampung', 0),
('rezzaaidil07@gmail.com', '25d55ad283aa400af464c76d713c07ad', 'aidil', '08228111216', 'L', 'Bandar Lampung', 1),
('taufik.14116007@student.itera.ac.id', '46eede51607807892a536698f3bb8d6c', 'taufik agung santoso', '085357037093', 'L', 'bandar lampung', 1),
('taufikagungsantoso17@gmail.com', '6735af9e0955dfc274ec006f68c6803a', 'taufik agung santoso', '085357037093', 'L', 'lubuklinggau', 0),
('user@gmail.com', 'ee11cbb19052e40b07aac0ca060c23ee', 'user', '085357037093', 'L', 'lampung', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `wisata`
--

CREATE TABLE `wisata` (
  `id_daerah` char(3) NOT NULL,
  `id_wisata` int(5) NOT NULL,
  `tempat` varchar(20) NOT NULL,
  `jenis_wisata` varchar(20) NOT NULL,
  `nama_wisata` varchar(25) NOT NULL,
  `lokasi` varchar(100) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `gambar` text DEFAULT NULL,
  `maps` text NOT NULL,
  `uname` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `wisata`
--

INSERT INTO `wisata` (`id_daerah`, `id_wisata`, `tempat`, `jenis_wisata`, `nama_wisata`, `lokasi`, `deskripsi`, `gambar`, `maps`, `uname`) VALUES
('KTN', 12, 'Kabupaten Tangerang', 'alam', 'Tanjung Pasir', 'kecamatan teluknaga, kabupaten tangerang, banten', 'Pantai Tanjung Pasir Tangerang dengan garis pantai yang lumayan panjang, lebar dan cukup landai. Meskipun airnya tidaklah jernih dan tak jelas apakah telah tercemar limbah buangan industri atau tidak, namun ada saja pengunjung yang mencebur ke dalam air laut untuk bermain air di sana. Ombak di pantai memang terlihat cukup jinak.Warna air lautnya tidak beda jauh dengan Pantai Tanjung Kait yaitu berwarna kecoklatan, tidak jernih, dan pejalan yang berkunjung ke sana banyak yang berenang, cukup banyak pedagang makanan yang berjualan di sekitar pantai tanjung pasir, Di tepian pantai ada tersedia cukup banyak perahu nelayan yang memenuhi kebutuhan pendatang wisatawan untung menyebrangi Pulau Untung Jawa.', 'tanjungpasir.jpg', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d31742.08260619237!2d106.64752177289085!3d-6.027599270606475!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e6a04501bca0373%3A0x55576a7a3677d362!2sTanjung%20Pasir%2C%20Teluknaga%2C%20Tangerang%2C%20Banten!5e0!3m2!1sen!2sid!4v1600096183221!5m2!1sen!2sid\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>', NULL),
('KMK', 13, 'Kabupaten Tangerang', 'alam', 'tanjung kait', 'Jl. Raya Tanjung Kait, Tj. Anom, Kec. Mauk, Tangerang, Banten 15330', 'Wisata Pantai Tanjung Kait di Mauk Tangerang Banten ini merupakan salah satu pantai terujung di Tangerang, berjarak 29,5 km dari pusat Kota Tangerang. Pantai Tanjung Kait dengan rumah-rumah panggung yang dibuat menjorok ke laut dimana pengunjung bisa menikmati pemandangan sambil bersantap. Dermaga-dermaga dari batang bambu utuh digunakan sebagai tambatan perahu nelayan yang disewakan kepada pejalan untuk menyusur tepian pantai, atau untuk menyeberang ke Pulau Untung Jawa.\r\n\r\nWarna air lautnya kecoklatan, tidak jernih, dan pejalan yang berkunjung ke sana memang tampaknya bukan untuk berenang, namun lebih untuk bersantai di rumah panggung sambil menikmati hidangan laut, atau memancing di atas bagan bagi yang menggemarinya. Di tepian pantai ada tersedia cukup banyak perahu nelayan yang memenuhi kebutuhan pejalan yang datang membawa rombongan cukup besar.\r\n', 'tanjung_kait.png', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15871.539117416189!2d106.52596741564233!3d-6.010555380347066!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e41fdc1fe10c80d%3A0x7859fd3b8b8865e0!2sPantai%20Tanjung%20Kait!5e0!3m2!1sen!2sid!4v1595261623184!5m2!1sen!2sid\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>', NULL),
('KSL', 30, 'Kabupaten Tangerang', 'alam', 'Tebing Koja', 'Cireundeu, Cikuya, Kec. Solear, Tangerang, Banten 15730', 'keindahan panorama alam yang ada di Kabupaten Tangerang. Tebing Kopo Maja atau biasa disebut dengan Tebing Koja, terletak di Kecamatan Solear, Kabupaten Tangerang. Tebing berbaris yang menjulang tinggi ini menjadi tempat pilihan untuk destinasi wisata ngabuburit di bulan Ramadan.\r\n\r\nDari cerita warga, wisata Tebing Koja awalnya adalah sebuah galian pasir ini. Setelah ditinggalkan oleh para penambang karena sudah tidak lagi produktif, akhirnya tambang pasir ini dijadikan objek wisata oleh warga sekitar.\r\n\r\nUntuk melihat semua keindahan disini, kamu cukup membayar tiket masuk sebesar Rp. 3 ribu saja. Lokasinya yang tak jauh dari Kota Jakarta, tentu bisa menjadi salah satu spot pilihan untuk menghabiskan waktu berlibur. So, tunggu apalagi… Happy travelling guys!\r\n', 'tebingkoja.jpg', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3965.612293536421!2d106.39579421406407!3d-6.314553395430048!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e420589afa52225%3A0x88a6de2bbef2bd2b!2sKoja%20Cliff%20Park!5e0!3m2!1sen!2sid!4v1595422074603!5m2!1sen!2sid\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>', NULL),
('KCK', 31, 'Kabupaten Tangerang', 'buatan', 'Water World Citra Raya', 'Jl. Citra Raya Utama Timur, Mekar Bakti, Kec. Cikupa, Tangerang', 'Tangerang merupakan kota terbesar di provinsi Banten, selain menjadi sentra industri, Tangerang juga memiliki destinasi wisata yang sayang untuk dilewatkan. Salah satunya adalah CitraRaya Water World (WW). CitraRaya Water World merupakan salah satu taman rekreasi air terbesar dan terlengkap di Barat Jakarta, tepatnya berada di Kawasan Kota Mandiri CitraRaya Tangerang.Dibangun diatas lahan seluas 5 hektar, CitraRaya Water World menyajikan konsep unik dan tematik, yang dilengkapi dengan berbagai wahana permainan dan petualangan air menantang yang akan menjadi pengalaman yang tak terlupakan bagi seluruh anggota keluarga. Lokasi yang strategis dekat dengan Ibu Kota, dekat dengan pusat pemerintahan kabupaten Tangerang dan harga yang terjangkau berbagai kalangan menjadikan CitraRaya Water World sebagai destinasi utama wisata yang sangat diminati.', 'WOW3.jpg', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3533.4312546245765!2d106.52453221919616!3d-6.2449394478417615!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e42075cebdddfad%3A0xb070c308c4a76226!2sCitra%20Raya%20Water%20World!5e0!3m2!1sen!2sid!4v1595522920728!5m2!1sen!2sid\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>', NULL),
('KTN', 34, 'Kabupaten Tangerang', 'buatan', 'taman buaya tanjung pasir', 'Tanjung Pasir, Teluknaga, Tangerang, Banten 15510', 'Wisata Taman Buaya Tanjung Pasir  di Tangerang Banten adalah salah satu tempat wisata yang berada di Tanjung Pasir, Kecamatan Teluknaga, Kabupaten Tangerang, Banten, Indonesia. Wisata Taman Buaya Tanjung Pasir di Tangerang Banten adalah tempat wisata yang ramai dengan wisatawan pada hari biasa maupun hari liburan. Tempat ini sangat indah dan bisa memberikan sensasi yang berbeda dengan aktivitas kita sehari hari.\r\n\r\nKata buaya dalam bahasa Inggris, crocodile, berasal dari sebutan krokodilos yang digunakan orang Yunani untuk buaya yang mereka lihat di Sungai Nil. Kroko berarti ‘batu kerikil’, dan deilos berarti ‘cacing’ atau ‘orang’, karena buaya yang mereka lihat sering berjemur di tepian sungai berbatu.  Kandang-kandang buaya itu dibedakan dan dipisahkan berdasarkan umur mereka.', 'taman-buaya-tj-pasir1.jpg', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d253853.2567339304!2d106.50760921764244!3d-6.203269202801208!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e6a044f00000001%3A0xe38e24927d38c464!2sTaman%20Buaya%20Tanjung%20Pasir!5e0!3m2!1sen!2sid!4v1599302884930!5m2!1sen!2sid\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>', NULL),
('KPK', 35, 'Kabupaten Tangerang', 'buatan', 'situ cilongok', 'Jl. Raya Ps. Kemis No.3, Sukamantri, Kec. Ps. Kemis, Tangerang, Banten 15560', 'Di tempat ini para pengunjung akan dimanjakan dengan pemandangan situ yang sangat indah, yang warna air nya dapat berubah menjadi hijau atau biru tergantung kondisi cuaca. Disini juga tersedia spot foto unik yang bernama rakit cinta. Dimana para pengunjung bisa berfoto di atas rakit yang membentang di atas air Situ Cilongok ini. Untuk bisa berfoto di atas rakit cinta ini, para pengunjung dikenakan biaya sebesar Rp.10.000 - Rp.25.000 tergantung keberadaan rakit tersebut. Jika semakin ke tengah danau, spot foto yang ditawarkan semakin unik  dan biaya yang harus dikeluarkan juga semakin besar.', 'situ_cilongok.jpeg', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3966.6877298511117!2d106.53793601406313!3d-6.172547895531198!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69ffd979bb663d%3A0xbfae82b28650406b!2sSitu%20Cilongok%20Sukamantri!5e0!3m2!1sen!2sid!4v1600183059255!5m2!1sen!2sid\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>', NULL),
('KCO', 36, 'Kabupaten Tangerang', 'buatan', 'Danau Biru Cigaru', 'Jl. Cigaru Cisoka, Cisoka, Kec. Cisoka, Tangerang, Banten 15730', 'Salah satu tempat wisata yang sangat hits di Tangerang adalah Telaga Biru Cigaru. Tempat wisata ini terkenal dengan keindahannya yang instagramable dan kekinian. Sesuai namanya, Telaga ini berlokasi di kampung Cigaru, desa Cisoka, kabupaten Tangerang.\r\n\r\nTelaga Biru Cigaru menawarkan berbagai spot foto instagramble dengan mengelilingi telaga menggunakan perahu kecil atau biasa disebut dengan perahu cinta yang bisa kamu sewa dengan harga Rp20.000. Selain menikmati keindahan pemandangan sekitar, kamu juga bisa mencoba fasilitas kolam renang yang sudah tersedia dengan nuansa pantai dan membayar dengan harga Rp5.000.\r\n\r\nSebelum masuk ke Telaga Biru Cigaru ini, kamu akan dikenakan biaya parkir sebesar Rp10.000 untuk mobil dan Rp2.000 untuk motor.', 'danau_cigaru.jpg', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15863.565768560507!2d106.42184216977536!3d-6.278000799999991!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e4205d10e37390f%3A0xef38639adf05f086!2sTelaga%20Biru%20Cisoka!5e0!3m2!1sen!2sid!4v1600183795923!5m2!1sen!2sid\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>', NULL),
('KSJ', 37, 'Kabupaten Tangerang', 'alam', 'hutan jati raya', 'Sindang Panon, Sindang Jaya, Tangerang, Banten 15560', 'Hutan Jati Raya salah satu tempat wisata dengan nuansa pegunungan. Ada tenda-tenda kecil dengan pagar kayu warna-warni berukuran mini seperti rumah-rumahan untuk anak-anak. Selain itu, ada juga ayunan bertingkat (hammock) yang bisa digunakan untuk bersantai ria sambil berfoto.\r\n\r\nTempat wisata ini sangat cocok untuk rekreasi bersama keluarga. Berlokasi di kampung Kendal, desa Sindang Panon, kecamatan Sindang Jaya, kabupaten Tangerang. Tidak ada biaya untuk masuk ke wisata ini alias gratis.', 'hutan_jati_raya.jpg', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3966.7418464922384!2d106.49595321406308!3d-6.165315995536362!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e420019b025840f%3A0x77bced3719a50af8!2sHutan%20Jati%20Raya%20Sindang%20Panon!5e0!3m2!1sen!2sid!4v1600184079416!5m2!1sen!2sid\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>', NULL),
('KSL', 38, 'Kabupaten Tangerang', 'budaya', 'Ziarah Keramat Solear', 'Solear, Kec. Solear, Tangerang, Banten 15730', 'Keramat Solear yang merupakan hutan lindung seluas 4,5 hektar di Dusun Solear, Desa Cikasungka, Kecamatan Cisoka, Kabupaten Tangerang sekitar 16 kilometer dari Tigaraksa dikenal sebagai kawasan wisata yang dihuni ratusan hewan kera. Kawasan tersebut menjadi wisata lokal yang masih sering dikunjungi.\r\n\r\nDi lokasi ini terdapat makam pengikut para wali, salah satunya makam Syekh Mas Masaad bin Hawa. Ia adalah seorang panglima pasukan Kesultanan Banten yang ditugaskan untuk menyebarkan agama dan memperluas wilayah di daerah yang sekarang dikenal bernama Tigaraksa.', 'makam_keramat_solear.jpg', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3965.823217478476!2d106.39241381406379!3d-6.286953895449669!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e42059f9f350c9d%3A0x307c160e26799276!2sMakam%20Solear%20Tangerang!5e0!3m2!1sen!2sid!4v1600184582127!5m2!1sen!2sid\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>', NULL),
('KPK', 39, 'Kabupaten Tangerang', 'buatan', 'Batavia Splash Water', 'Perumahan, Grand Batavi, Jl. Raya Cadas - Kukun, Sindangsari, Kec. Ps. Kemis, Tangerang, Banten 1556', 'Batavia Splash Water Adventure merupakan tempat wisata air yang memiliki berbagai macam wahana petualangan. Tersedia berbagai macam kolam renang, mulai dari kolam untuk anak sampai kolam arus.\r\n\r\nTempat ini berada di dekat perumahan pusat kota menjadikannya ramai dan tentunya cocok utuk dikunjungi.\r\n\r\nKonsep dari tempat wisata ini adalah mengusung budaya khas Betawi sesuai dengan namanya.\r\n\r\nTidak hanya untuk anak Batavia Splash juga memberikan layanan untuk orang dewasa, remaja, maupun orang tua. Khususnya untuk orang – orang yang ingin memacu adrenalin disini.\r\n\r\nBatavia Splash Water Adventure dibuka untuk umum secara resmi pada tanggal 4 Maret 2017. Sejak saat itu tempat ini telah ramai oleh pengunjung, karena memang dibukanya tempat ini sudah ditunggu – tunggu oleh masyarakat sekitar.', 'batavia_splash.jpg', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d4202.820502339813!2d106.53991760471706!3d-6.1395305687111135!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e6a000426d30239%3A0xb65a0efeb3192159!2sBatavia%20Splash%20Water%20Adventure!5e0!3m2!1sen!2sid!4v1600185296188!5m2!1sen!2sid\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>', NULL),
('KKD', 40, 'Kabupaten Tangerang', 'buatan', 'scienta square park', 'Jl. Scientia Boulevard, Curug Sangereng, Kec. Klp. Dua, Tangerang, Banten 15810', 'Terletak di Jl. Scientia Boulevard Gading Serpong, Tangerang, destinasi wisata Scientia Square Park sangatlah mudah dijangkau. Dengan konsep taman terbuka, tempat wisata di Tangerang ini menawarkan banyak spot maupun aktivitas menarik. Beberapa di antaranya adalah memberi makan ikan koi, jogging, wall climbing, yoga, inline skate, dan berbagai aktivitas outdoor lainnya.', 'Scientia_square.jpg', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3966.048872432951!2d106.61388571406366!3d-6.257292595470816!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69fc651e649223%3A0x3b96f2ef67285cd9!2sScientia%20Square%20Park!5e0!3m2!1sen!2sid!4v1600186147699!5m2!1sen!2sid\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>', NULL),
('KCG', 41, 'Kabupaten Tangerang', 'budaya', 'ziarah ki mede', 'kp mede bitung, Kadu Jaya, Kec. Curug, Tangerang, Banten 15810', 'ziarah makam ki mede terletak di kampung mede bitung kecamatan curug kabupaten tangerang merupakan salah satu tempat ziarah yang berada di kabupaten tangerang\r\n', 'syekh_mede.PNG', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d63457.56059147531!2d106.56396316175443!3d-6.250877491646199!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69fde3c96cb6f5%3A0x33836bdbf297aef!2sSyeh%20Mede%20Suranata%20Toyib!5e0!3m2!1sen!2sid!4v1600186742865!5m2!1sen!2sid\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `daerah`
--
ALTER TABLE `daerah`
  ADD PRIMARY KEY (`id_daerah`);

--
-- Indeks untuk tabel `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`id_hotel`),
  ADD KEY `id_daerah` (`id_daerah`);

--
-- Indeks untuk tabel `hotel_favorit`
--
ALTER TABLE `hotel_favorit`
  ADD PRIMARY KEY (`id_hotel`),
  ADD KEY `id_daerah` (`id_daerah`);

--
-- Indeks untuk tabel `kuliner`
--
ALTER TABLE `kuliner`
  ADD PRIMARY KEY (`id_resto`),
  ADD KEY `id_daerah` (`id_daerah`);

--
-- Indeks untuk tabel `kuliner_favorit`
--
ALTER TABLE `kuliner_favorit`
  ADD PRIMARY KEY (`id_resto`);

--
-- Indeks untuk tabel `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`uname`);

--
-- Indeks untuk tabel `testimoni`
--
ALTER TABLE `testimoni`
  ADD PRIMARY KEY (`id_testimoni`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Email`);

--
-- Indeks untuk tabel `wisata`
--
ALTER TABLE `wisata`
  ADD PRIMARY KEY (`id_wisata`),
  ADD KEY `id_daerah` (`id_daerah`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `hotel`
--
ALTER TABLE `hotel`
  MODIFY `id_hotel` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `testimoni`
--
ALTER TABLE `testimoni`
  MODIFY `id_testimoni` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `wisata`
--
ALTER TABLE `wisata`
  MODIFY `id_wisata` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `hotel`
--
ALTER TABLE `hotel`
  ADD CONSTRAINT `hotel_ibfk_1` FOREIGN KEY (`id_daerah`) REFERENCES `daerah` (`id_daerah`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `kuliner`
--
ALTER TABLE `kuliner`
  ADD CONSTRAINT `kuliner_ibfk_1` FOREIGN KEY (`id_daerah`) REFERENCES `daerah` (`id_daerah`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
