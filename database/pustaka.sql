-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 17, 2022 at 11:23 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pustaka`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id` int(11) NOT NULL,
  `judul_buku` varchar(128) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `pengarang` varchar(64) NOT NULL,
  `penerbit` varchar(64) NOT NULL,
  `tahun_terbit` year(4) NOT NULL,
  `isbn` varchar(64) NOT NULL,
  `stok` int(11) NOT NULL,
  `dipinjam` int(11) NOT NULL,
  `dibooking` int(11) NOT NULL,
  `image` varchar(256) DEFAULT 'book-default-cover.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id`, `judul_buku`, `id_kategori`, `pengarang`, `penerbit`, `tahun_terbit`, `isbn`, `stok`, `dipinjam`, `dibooking`, `image`) VALUES
(1, 'Statistika Dengan Program Komputer', 1, 'Ahmad Kholiqul Amin', 'Deep Publish', 2014, '9786022809432', 6, 1, 1, 'https://www.bing.com/images/search?view=detailV2&ccid=SGE74nHC&id=6E0499209C40C694D2858F53DCD111A04520DFFB&thid=OIP.SGE74nHCY08_fR1HElsOzwAAAA&mediaurl=https%3a%2f%2fs1.bukalapak.com%2fimg%2f1461678811%2flarge%2fBUKU_STATISTIKA_DESKRIPTIF_PLUS_untuk_ekonom'),
(2, 'Mudah Belajar Komputer untuk anak', 1, 'Bambang Agus Setiawan', 'Huta Media', 2014, '9786025118500', 5, 3, 1, 'https://www.bing.com/images/search?view=detailV2&ccid=RNn22t5o&id=24439B58AF98F9141E7312BA8491DB635EA1D4D0&thid=OIP.RNn22t5o3nC7DUC97zYTNgHaJ8&mediaurl=https%3a%2f%2fwww.bukukita.com%2fbabacms%2fdisplaybuku%2f105071_f.jpg&exph=800&expw=596&q=Mudah+Belajar+'),
(3, 'PHP Komplet', 1, 'Jubilee', 'Elex Media Komputindo', 2017, '8346753547', 5, 1, 1, 'https://th.bing.com/th/id/R.1d48a36314cb09d24c30f53d480b3776?rik=v94L0wUz3mU%2bwQ&riu=http%3a%2f%2fperpustakaan.fmipa.unpak.ac.id%2ffile%2fPHP++Komplet.jpg&ehk=g%2fhS0zIq3vE%2bvQLgb0FNiED3MHtCsuBFRaGfhOyZ%2bVI%3d&risl=&pid=ImgRaw&r=0'),
(4, 'Detektif Conan Ep 200', 9, 'Okigawa Sasuke', 'Cultura', 2016, '874387583987', 5, 0, 0, 'https://www.bukukita.com/babacms/displaybuku/117132_f.jpg'),
(5, 'Bahasa Indonesia', 2, 'Umri Nur\'aini dan Indriyani', 'Pusat Perbukuan', 2015, '757254724884', 3, 0, 0, 'https://bukusekolah.id/wp-content/uploads/2020/04/Kelas-12-Buku-Siswa-Bahasa-Indonesia.jpg\r\n'),
(6, 'Komunikasi lintas Budaya', 5, 'Dr. Dedy Kurnia', 'Published', 2015, '878674646488', 5, 0, 0, 'https://th.bing.com/th/id/R.c710f86d4b5197f67a74d4bc1cb4415e?rik=ry9ci8WiVGpt1w&riu=http%3a%2f%2fwww.unpad.ac.id%2fwp-content%2fuploads%2f2013%2f02%2fkomunikasi-lintas-budaya-dedy-mulyawan.jpg&ehk=0m1caj9JO1TWyFJ1NtBv7lx%2bawswc%2b0NzjYcyUDHLxY%3d&risl=&pi'),
(7, 'Kolaborasi Codeigniter dan Ajax dalam Perancangan', 1, 'Anton Subagia', 'elex media komputindo', 2017, '43345356577', 5, 0, 0, 'https://www.belbuk.com/images/products/buku/komputer--internet/pemrograman/5af03fe7a0922l.JPG'),
(8, 'From hobby to Money', 4, 'Deasylawati', 'Elex Media Komputindo', 2015, '87968686787879', 5, 0, 0, 'https://d1w7fb2mkkr3kw.cloudfront.net/assets/images/book/lrg/9781/5405/9781540599421.jpg'),
(9, 'Buku Saku Pramuka', 8, 'Rudi himawan', 'Pusat Perbukuan', 2016, '97868687978796', 6, 0, 0, 'https://lh6.googleusercontent.com/-uM-LfnprhvI/TX8K8Oni4GI/AAAAAAAAAC8/TdSdS12s0Vg/s1600/Desain+sampul+buku+saku+Pramuka.jpg'),
(10, 'Rahasia Keajaiban Bumi', 3, 'Nurul ihsan', 'Luxima', 2014, '5657565657686868', 5, 0, 0, 'https://www.bukukita.com/babacms/displaybuku/92213_f.jpg\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(5) NOT NULL,
  `nama_kategori` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'Komputer'),
(2, 'Bahasa'),
(3, 'Sains'),
(4, 'Hobby'),
(5, 'Komunikasi'),
(6, 'Hukum'),
(7, 'Agama'),
(8, 'Populer'),
(9, 'Komik');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `role`) VALUES
(1, 'administrator'),
(2, 'member');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `tanggal_input` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
