-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2021 at 09:27 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_hitani`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL DEFAULT 'default.svg'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`admin_id`, `username`, `admin_email`, `password`, `admin_name`, `photo`) VALUES
(1, 'majid123', 'majid@gmail.com', '$2y$10$vWgkxPyRvC3FhhcftNj36OfN0huKn0wdlV3adrkyD4H9KqEmfnQOa', 'Majid', 'default.svg'),
(2, 'nurkm', 'nkm@gmail.com', '$2y$10$Bs4aQ1wp5n8Po.jm.1EKOO0GaKbX.8GyEcODr/.nc5XXMo3qfmNIC', 'nur', 'default.svg'),
(3, 'nuriya', 'nuriya4nggaina@gmail.com', '$2y$10$Qb3ZJktOlegFyiaeQLvirOAFmr3HE9As5s3CdIpgtQ1M7dOYxDVty', 'nuriya ir', 'default.svg'),
(4, 'nur12', 'nur@gmail.com', '$2y$10$u6Otf6VnURqg.k2pV18PQOm0ueoFInywzevGYNDJLgVl4bWHpdC9.', 'nur', 'default.svg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_category`
--

CREATE TABLE `tb_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_category`
--

INSERT INTO `tb_category` (`category_id`, `category_name`) VALUES
(6, 'Hasil Pertanian'),
(7, 'Alat Pertanian'),
(8, 'Bibit'),
(9, 'Obat'),
(10, 'Pupuk');

-- --------------------------------------------------------

--
-- Table structure for table `tb_chart`
--

CREATE TABLE `tb_chart` (
  `Id_produk` varchar(599) NOT NULL,
  `banyak` varchar(599) NOT NULL,
  `chart_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_chart`
--

INSERT INTO `tb_chart` (`Id_produk`, `banyak`, `chart_id`) VALUES
('1', '20\r\n', 6),
('1', '40', 7),
('3', '20\r\n', 8),
('4', '40', 9),
('1', '90', 10),
('1', '90', 11),
('1', '90', 12);

-- --------------------------------------------------------

--
-- Table structure for table `tb_product`
--

CREATE TABLE `tb_product` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_description` text NOT NULL,
  `product_image` varchar(100) NOT NULL,
  `product_status` tinyint(1) NOT NULL,
  `data_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_product`
--

INSERT INTO `tb_product` (`product_id`, `category_id`, `product_name`, `product_price`, `product_description`, `product_image`, `product_status`, `data_created`) VALUES
(5, 7, 'Cangkul / Pacul', 46000, '<p>Pacul + Gagang / Cangkul Taman Pacul Kebun Serba Guna<br />\r\nReady Stock<br />\r\nCangkul / Pacul<br />\r\nSpesifikasi :<br />\r\n- Diameter 19 x 24cm<br />\r\n* Cocok untuk kegiatan membersihkan taman<br />\r\n* Bahan besi &amp; gagang kayu yg kuat.<br />\r\n* Untuk mencangkul tanah maupun sampah.<br />\r\n+ Tidak Mudah Karat</p>\r\n', 'produk1640549259.jpg', 1, '2020-05-19 01:52:15'),
(6, 7, 'Sarung Tangan', 12500, '<p>SARUNG TANGAN UNTUK BERKEBUN / GARDEN CLAW GLOVES.<br />\r\n<br />\r\nSarung tangan kebun yang memungkinkan Anda Menggali media tanam/tanah tanpa perangkat lain.<br />\r\n<br />\r\n* Cakar tahan lama menggantikan perkakas tangan:<br />\r\n4 Cakar yang dibuat dengan plastik ABS Tahan Lama<br />\r\n* Sarung tangan ini untuk melindungi tangan Anda tertusuk.<br />\r\n* Tangan Anda tetap bersih.<br />\r\n* Bahan tahan lama<br />\r\n* Desain fleksibel tahan air<br />\r\n* membuat tangan anda tetap bersih dan kering<br />\r\n* Cakar hanya di sisi sarung tangan kanan, 4 cakar.<br />\r\n* Ukuran: hanya 1 ukuran all size ukuran Indonesia.<br />\r\n* Warna: hanya 1 warna.</p>\r\n', 'produk1640549081.jpg', 1, '2020-05-19 01:52:45'),
(7, 7, 'sekop', 50000, '<p>skop mini berbahan besi dgn lapisan karet pada pegangan ya , ukuran 22 x 10 cm .<br />\r\nbiasa di gunakan utk berkebun .</p>\r\n', 'produk1640549005.jpg', 1, '2020-05-19 01:53:02'),
(8, 7, 'Pisau Sabit Rumput Arit Glati', 45000, '<p>Sabit Baja cocok untuk babat rumput, kolonjono, pohon jagung, dll<br />\r\n<br />\r\n1 Ongkir muat 2 pcs lebih hemat pakdhe<br />\r\n<br />\r\nBAHAN<br />\r\nBaja Per<br />\r\n<br />\r\nAsli buatan pande besi dijamin kuat dan awet<br />\r\n<br />\r\nUKURAN<br />\r\nBilah<br />\r\nPanjang 20 cm<br />\r\nLebar 5 cm<br />\r\nTebal 0,2 cm<br />\r\n<br />\r\nGAGANG<br />\r\nKayu Akasia<br />\r\nPanjang 19 cm<br />\r\nDiameter 3 cm</p>\r\n', 'produk1640548830.jpg', 1, '2020-05-19 01:53:23'),
(9, 9, 'Dursban 200 EC insektisida 100ml', 26000, '<p>Bahan aktif : Klorpirifos 200 g/l<br />\r\nInsektisida racun lambung, kontak dan pernafasan, berbentuk pekatan yang dapat diemulsikan, berwarna kekuningan, mengendalikan hama-hama pada tanaman bawang merah, cabai, jagung, kacang hijau, kacang tanah, kakao, kedelai, kelapa, kelapa sawit, kubis, lada, petsi, tembakau, tomat dan wortel.</p>\r\n', 'produk1640548631.jpg', 1, '2020-05-19 01:53:46'),
(10, 9, 'Paket Pupuk Pelebat Buah & Pestisida Organik Pembasmi Hama Tanaman', 185000, '<p>Isi Paket:<br />\r\n1 botol Power Nutrition 250g<br />\r\n1 botol SOT HCS 500ml<br />\r\n1 botol PHEFOC HCS 500ml<br />\r\n<br />\r\n((Cara pakai pupuk Power Nutrition dan SOT HCS ))<br />\r\n<br />\r\nUntuk tanaman tabulampot dan tanaman yang masih kecil<br />\r\n<br />\r\nAmbil 2 sendok makan power nutrition, 2 tutup SOT HCS campur kan dengan 10 liter air nanti ambil satu sampai dua gayung untuk setiap tanaman<br />\r\n<br />\r\nUntuk pohon yang besar diameter 10 sampai 30 cm<br />\r\n<br />\r\nAmbil 3 sendok makan Power Nutrition + 3 tutup SOT HCS dicampur kan dengan 10 liter air nanti disiramkan di sekeliling pohon ini bisa untuk 1 sampai 2 pohon tergantung diameter pohonnya.<br />\r\nPemupukan di lakukan 1-2 bulan sekali<br />\r\n<br />\r\nJadi 1 paket ini awet bisa di pakae antara 4-12 bulan<br />\r\nTergantung jumlah pohon dan besar kecilnya pohon.</p>\r\n', 'produk1640548490.jpg', 1, '2020-05-19 01:54:16'),
(11, 9, 'pestisida organik', 105000, '<p>Pusing tanaman anda terserang hama..!!!<br />\r\nIngin membasminya tapi takut keracunan bahan kimia atau anda ingin tanaman anda bebas dari insektisida atau Pestisida Kimia..!!<br />\r\n<br />\r\nIni dia solusinya, sebut saja ANTILAT Pestisida Organik yang di Formulasikan khusus untuk berbagai serangan hama yang menganggu<br />\r\ntanaman anda.<br />\r\n<br />\r\nApa saja sih hama yang bisa di basmi dengan ANTILAT ini :<br />\r\n- Lalat Buah<br />\r\n- Semut<br />\r\n- Belalang<br />\r\n- Aro atau Pengorok Daun<br />\r\n- Tungro yang biasanya hama pada tanaman padi<br />\r\n- Kutu Putih atau Kutu Kebul<br />\r\n- Ulat Gryak dan Ulat-Ulat lainya<br />\r\n- Kutu Daun, Aphid, Thrips dan Tungau<br />\r\n- Wareg Hijau dan Coklat<br />\r\n- dan masih banyak lagi hama-hama lainya<br />\r\n<br />\r\nTerus Keunggulan ANTILAT ini apa ?<br />\r\nSebagai Insektisida/Pestisida Organik, tentunya sangat aman dari yang namanya keracunan bahan kimia, jadi nga usah tuh pakai masker atau apalah jika kita ingin menyemprotkan Produk ini. Cara kerja produk ini sama halnya dengan pembasmi hama lainya, seperti merusak jaringan tubuh hama dan racun perut bagi hama, mengusir hama karena aroma, rasa dan bau yang dibenci oleh hama dan menghilangkan nafsu makan pada hama, tidak menyebabkan hama menjadi resistan atau kebal.<br />\r\n<br />\r\ndan yang paling penting produk insektida ini juga tidak meniggalkan residu seperti ketika kita mengunakan bahan kimia, tanaman menjadi lebih kebal hama setelah kita mengaplikasikan produk ini, dan yang pasti mengandung pupuk daun agar tanaman menjadi sehat kembali selepas terserang hama-hama yang menjengkelkan :)</p>\r\n', 'produk1640548318.jpg', 1, '2020-05-19 01:54:46'),
(12, 8, 'Benih Kacang Panjang', 15000, '<p>Nama Produk : Kacang Panjang Kanton Tavi<br />\r\nProdusen : PT. EAST WEST SEED INDONESIA (Cap Panah Merah)<br />\r\nIsi Perkemasan: 200 butir<br />\r\nRekomendasi Datatan : Rendah - Menengah<br />\r\nBerat Buah* : -<br />\r\nUmur Panen (HST)*: 48 - 55<br />\r\nPotensi Hasil (ton/ha)*: 25 - 30ton/ha per minggu<br />\r\n<br />\r\nKacang panjang yang sesuai untuk dataran rendah - menengah, sangat tahan virus MYMIV, tahan layu Fusarium dan layu bakteri. Bentuk polong silindris, warna hijau dengan ujung ungu, panjang 67 cm dan sangat toleran ujung mecut. Umur mulai panen 44 HSS dengan potensi hasil 1 kg/tanaman.<br />\r\n<br />\r\n*) Ketahanan penyakit, umur panen, bobot dan potensi hasil tergantung pada lingkungan dan perlakuan budidayanya.</p>\r\n', 'produk1640548161.jpg', 1, '2020-05-19 01:55:15'),
(13, 8, 'Bibit Benih Jagung', 20000, '<p>Nama produk : Jagung Manis Bonanza F1<br />\r\nProdusen : PT EAST WEST SEED INDONESIA (Cap Panah Merah)<br />\r\nIsi perkemasan: 200 btr<br />\r\nRekomendasi Dataran: Rendah - Menengah<br />\r\nUmur Panen (HST)*: 70 - 85<br />\r\nBobot per Buah (g)*: 300 - 400<br />\r\nPotensi Hasil (ton/ha)*: 14 - 18<br />\r\n<br />\r\n*) Ketahanan penyakit, umur panen, bobot dan potensi hasil tergantung pada lingkungan dan perlakuan budidayanya.<br />\r\n<br />\r\nTIPS MENANAM<br />\r\nSebaiknya dipanen pada umur 70 ~ 75 hst; jika memanen baby corn (putren) hendaknya dilakukan pada saat tanaman berumur 35 ~ 40 hst</p>\r\n', 'produk1640548052.jpg', 1, '2020-05-19 01:55:42'),
(14, 8, 'Bibit Seledri', 15000, '<p>Nama produk : Seledri Amigo<br />\r\nProdusen : PT. EAST WEST SEED INDONESIA (Cap Panah Merah)<br />\r\nIsi perkemasan: 10.000 btr<br />\r\nUmur Panen (HST)*: 90-100<br />\r\nPotensi Hasil (ton/ha)*: 10-12 ton/ha.<br />\r\n<br />\r\nDaun hijau muda, tangkai panjang, anakan banyak dan produktif, tanaman tegak, genjah, cocok ditanam pada dataran menengah - tinggi, panen bisa dipetik atau dicabut mulai umur 90 - 100 HST dengan potensi hasil 10 - 12 ton/ha<br />\r\n<br />\r\n*) Ketahanan penyakit, umur panen, bobot dan potensi hasil tergantung pada lingkungan dan perlakuan budidayanya.</p>\r\n', 'produk1640547898.jpg', 1, '2020-05-19 01:56:10'),
(15, 8, 'Bayam', 4000, '<p>Harga = Per 2 Batang</p>\r\n', 'produk1640547808.jpg', 1, '2020-05-19 01:56:29'),
(16, 8, 'Mentimun', 150, '<p>Mentimun hibrida tipe lalab cocok di dataran rendah, tanaman sangat vigor, lebih tahan layu Fusarium dan batang berlendir. Buah lebat, silindris, hijau, bentuk dan ukuran seragam, 15 x 3,5 cm, 135 g/buah. Umur mulai panen 32 - 34 HST dengan potensial hasil 2,4 kg/tanaman, 50 - 60 ton/ha<br />\r\n<br />\r\nHarga per 1 biji benih</p>\r\n', 'produk1640547520.jpg', 1, '2020-05-19 01:56:50'),
(17, 10, 'Pupuk SP-36', 400000, '<p><strong>Spesifikasi</strong></p>\r\n\r\n<ul>\r\n	<li>Kadar P2O5&nbsp;total minimal 36%</li>\r\n	<li>Kadar P2O5&nbsp;larut Asam Sitrat minimal 34%</li>\r\n	<li>Kadar P2O5&nbsp;larut dalam air minimal 30%</li>\r\n	<li>Kadar air maksimal 5%</li>\r\n	<li>Kadar Asam Bebas sebagai H3PO4&nbsp;maksimal 6%</li>\r\n	<li>Bentuk butiran</li>\r\n	<li>Warna abu-abu</li>\r\n	<li>Dikemas dalam kantong bercap Kerbau Emas dengan isi 50 kg</li>\r\n</ul>\r\n\r\n<p><strong>Sifat, manfaat dan keunggulan pupuk SP 36</strong></p>\r\n\r\n<ul>\r\n	<li>Tidak higroskopis</li>\r\n	<li>Mudah larut dalam air</li>\r\n	<li>Sebagai sumber unsur hara Fosfor bagi tanaman</li>\r\n	<li>Memacu pertumbuhan akar dan sistim perakaran yang baik</li>\r\n	<li>Memacu pembentukan bunga dan masaknya buah/biji</li>\r\n	<li>Mempercepat panen</li>\r\n	<li>Memperbesar prosentase terbentuknya bunga menjadi buah/biji</li>\r\n	<li>Menambah daya tahan tanaman terhadap gangguan hama, penyakit dan kekeringan</li>\r\n</ul>\r\n\r\n<p><strong>Cara penggunaan pupuk SP 36</strong></p>\r\n\r\n<ul>\r\n	<li>Untuk tanaman semusim, pupuk SP 36 sebaiknya digunakan sebagai pupuk dasar. Sedangkan untuk tanaman tahunan diberikan pada awal atau akhir musim hujan atau segera setelah panen</li>\r\n</ul>\r\n', 'produk1640547124.png', 1, '2020-05-19 01:57:11'),
(18, 10, 'Pupuk KCL', 150000, '<p>Spesifikasi</p>\r\n\r\n<ul>\r\n	<li>Kadar K2O : 60%</li>\r\n	<li>Warna : Merah / Putih</li>\r\n	<li>Bentuk : Kristal</li>\r\n	<li>Sifat : Larut dalam air</li>\r\n</ul>\r\n\r\n<p>Keunggulan</p>\r\n\r\n<ul>\r\n	<li>Membuat tanaman lebih tegak dan kokoh</li>\r\n	<li>Meningkatkan daya tahan tanaman terhadap serangan hama, penyakit, dan kekeringan</li>\r\n	<li>Meningkatkan pembentukan gula dan pati</li>\r\n	<li>Meningkatkan ketahanan hasil panen selama pengangkutan dan penyimpanan</li>\r\n</ul>\r\n', 'produk1640546982.png', 1, '2020-05-19 01:57:35'),
(19, 10, 'Pupuk NPK-KPhonska Plus', 200000, '<h2>Spesifikasi</h2>\r\n\r\n<ul>\r\n	<li>N (Nitrogen) : 15%</li>\r\n	<li>P2O5&nbsp;(Fosfat) : 15%</li>\r\n	<li>K (Kalium) : 15%</li>\r\n	<li>S (Sulfur) : 9%</li>\r\n	<li>Zn (Zink) : 2.000 ppm</li>\r\n	<li>Bentuk : Granul</li>\r\n	<li>Sifat : Larut dalam air</li>\r\n	<li>Warna : Putih (Natural White)</li>\r\n	<li>Kemasan : 25kg</li>\r\n</ul>\r\n', 'produk1640546896.png', 1, '2020-05-19 01:57:59'),
(20, 10, 'Pupuk Urea', 200000, '<p><strong>Spesifikasi</strong></p>\r\n\r\n<ul>\r\n	<li>Kadar air maksimal 0,50%</li>\r\n	<li>Kadar Biuret maksimal 1%</li>\r\n	<li>Kadar Nitrogen minimal 46%</li>\r\n	<li>Bentuk butiran tidak berdebu</li>\r\n	<li>Warna putih (non subsidi)</li>\r\n	<li><strong>Warna pink untuk Urea Bersubsidi</strong></li>\r\n	<li>Dikemas dalam kantong dengan isi 50 kg</li>\r\n</ul>\r\n\r\n<p><strong>Sifat Pupuk Urea</strong></p>\r\n\r\n<ul>\r\n	<li>Higroskopis</li>\r\n	<li>Mudah larut dalam air</li>\r\n</ul>\r\n\r\n<p><strong>Manfaat unsur hara Nitrogen yang dikandung pupuk Urea</strong></p>\r\n\r\n<ul>\r\n	<li>Membuat bagian tanaman lebih hijau dan segar</li>\r\n	<li>Mempercepat pertumbuhan</li>\r\n	<li>Menambah kandungan protein hasil panen</li>\r\n</ul>\r\n\r\n<p><strong>Gejala kekurangan unsur hara Nitrogen pada tanaman</strong></p>\r\n\r\n<ul>\r\n	<li>Seluruh tanaman berwarna pucat kekuningan</li>\r\n	<li>Pertumbuhan tanaman lambat dan kerdil</li>\r\n	<li>Daun tua berwarna kekuningan. Pada tanaman padi dimulai dari ujung daun menjalar ke tulang daun</li>\r\n	<li>Pertumbuhan buah tidak sempurna seringkali masak sebelum waktunya</li>\r\n	<li>Jika dalam keadaan kekurangan yang parah daun menjadi kering dimulai dari bagian bawah tanaman terus ke bagian atas tanaman.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', 'produk1640546595.png', 1, '2020-05-19 01:58:18'),
(21, 10, 'pupuk za', 170000, '<h2>Spesifikasi</h2>\r\n\r\n<ul>\r\n	<li>Minimum nitrogen 20.8%</li>\r\n	<li>sulfur at least 23.8%</li>\r\n	<li>Water content up to 1%</li>\r\n	<li>Maximum free acid level as H2SO4 0.1%</li>\r\n	<li>Crystal shape</li>\r\n	<li>White color</li>\r\n	<li>Orange for subsidized ZA</li>\r\n	<li>Packed in bags with Golden Buffalo contents of 50 kg</li>\r\n</ul>\r\n', 'produk1640517058.png', 1, '2020-05-19 01:58:38'),
(22, 6, 'Jambu Aer', 18200, '<p>Tanaman buah jambu air kingrose<br />\r\n<br />\r\nBibit asal okulasi,<br />\r\n<br />\r\nCatatan:<br />\r\n* Segera buka paket hati-hati, bagian yg berat adalah akar, pindah ke pot hanya campur dengan tanah tanpa pupuk apapun, siram.<br />\r\n* Perlu pemulihan selama 2-4 minggu jangan beri pupuk apapun, jangan kena matahari siang, siram normal.<br />\r\n* Jika daun terlanjur rontok, itu normal dan 4 minggu biasanya tumbuh daun baru.<br />\r\n* Sambil menunggu pohon pulih, siapkan galian tanah dan campurkan pupuk kandang &amp; kompos, aduk diamkan 2-4 minggu.<br />\r\n* Jika pohon sudah segar/pulih/normal, maka bisa ditanam ke galian tanah yg sudah dicampur pupuk &amp; didiamkan selama 2-4 minggu tadi.</p>\r\n', 'produk1640549392.jpg', 1, '2021-12-26 20:09:52'),
(23, 8, 'Bibit Jambu Kristal', 17500, '<p>Tinggi bibit saat ini : 30-70 cm<br />\r\nAsal bibit : Okulasi atau sambung pucuk<br />\r\nBuah jambu biji berkualitas asli dari Taiwan dengan keunggulan rasa yang segar, manis, gurih dengan buah yang tebal dan terkategori tanpa biji (biji sangat sedikit, sekitar 5 biji tiap buahnya)</p>\r\n', 'produk1640549542.jpg', 1, '2021-12-26 20:12:22'),
(24, 6, 'Beras Ramos', 50000, '<p>Ramos Bunga<br />\r\nVarietas Ir64<br />\r\nKualitas medium grade A<br />\r\nPadi baru / Panenan Baru<br />\r\nPunel - Pulen<br />\r\n<br />\r\nBerat isi kemasan 5 Kg</p>\r\n', 'produk1640549969.jpg', 1, '2021-12-26 20:19:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `tb_category`
--
ALTER TABLE `tb_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tb_chart`
--
ALTER TABLE `tb_chart`
  ADD PRIMARY KEY (`chart_id`);

--
-- Indexes for table `tb_product`
--
ALTER TABLE `tb_product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_category`
--
ALTER TABLE `tb_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tb_chart`
--
ALTER TABLE `tb_chart`
  MODIFY `chart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tb_product`
--
ALTER TABLE `tb_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
