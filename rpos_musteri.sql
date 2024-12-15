-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 15 Ara 2024, 12:10:43
-- Sunucu sürümü: 10.4.32-MariaDB
-- PHP Sürümü: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `rposystem`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `rpos_musteri`
--

CREATE TABLE `rpos_musteri` (
  `müsteri_id` varchar(200) NOT NULL,
  `müsteri_adı` varchar(200) NOT NULL,
  `müsteri_telefono` varchar(200) NOT NULL,
  `müsteri_email` varchar(200) NOT NULL,
  ` müsteri_sifresi` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `rpos_musteri`
--

INSERT INTO `rpos_musteri` (`müsteri_id`, `müsteri_adı`, `müsteri_telefono`, `müsteri_email`, ` müsteri_sifresi`) VALUES
('06549ea58afd', 'Ana J. Browne', '4589698780', 'anaj@mail.com', '55c3b5386c486feb662a0785f340938f518d547f'),
('1fc1f694985d', 'Jane Doe', '2145896547', 'janed@mail.com', 'a69681bcf334ae130217fea4505fd3c994f5683f'),
('27e4a5bc74c2', 'Tammy R. Polley', '4589654780', 'tammy@mail.com', '55c3b5386c486feb662a0785f340938f518d547f');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `rpos_musteri`
--
ALTER TABLE `rpos_musteri`
  ADD PRIMARY KEY (`müsteri_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
