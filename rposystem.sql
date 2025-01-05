-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 05 Oca 2025, 20:21:19
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
-- Tablo için tablo yapısı `rpos_admin`
--

CREATE TABLE `rpos_admin` (
  `admin_id` varchar(200) NOT NULL,
  `admin_isim` varchar(200) NOT NULL,
  `admin_email` varchar(200) NOT NULL,
  `admin_sifre` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `rpos_admin`
--

INSERT INTO `rpos_admin` (`admin_id`, `admin_isim`, `admin_email`, `admin_sifre`) VALUES
('10e0b6dc958adfb5b094d8935a13aeadbe783c25', 'System Admin', 'admin@mail.com', '903b21879b4a60fc9103c3334e4f6f62cf6c3a2d'),
('2', 'Fatma Han', 'fatma.han@example.com', 'password456'),
('3', 'Mehmet Y?ld?z', 'mehmet.yildiz@example.com', 'secret789');

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
('1fc1f69498 5d1fc1f694985d', 'Ahmet Y?lmaz ', '5551234567 ', 'ahmet.yilmaz@example.com ', 'sifreahmet'),
('1fc1f694985d', 'Ali Veli Güncel', '2145896547', 'janed@mail.com', 'a69681bcf334ae130217fea4505fd3c994f5683f'),
('27e4a5bc74c2', 'Ahmet ', '4589654780', 'tammy@mail.com', '55c3b5386c486feb662a0785f340938f518d547f');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `rpos_odemeler`
--

CREATE TABLE `rpos_odemeler` (
  `odeme_id` varchar(200) NOT NULL,
  `odeme_kodu` varchar(200) NOT NULL,
  `siparis_kodu` varchar(200) NOT NULL,
  `musteri_id` varchar(200) NOT NULL,
  `odeme` varchar(200) NOT NULL,
  `odeme_metodu` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `rpos_odemeler`
--

INSERT INTO `rpos_odemeler` (`odeme_id`, `odeme_kodu`, `siparis_kodu`, `musteri_id`, `odeme`, `odeme_metodu`) VALUES
('0bf592', '9UMWLG4BF8', 'EJKA-4501', '35135b319ce3', '8', 'Cash'),
('4423d7', 'QWERT0YUZ1', 'JFMB-0731', '35135b319ce3', '11', 'Cash'),
('442865', '146XLFSC9V', 'INHG-0875', '9c7fcc067bda', '10', 'Paypal');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `rpos_siparis`
--

CREATE TABLE `rpos_siparis` (
  `siparis_id` varchar(200) NOT NULL,
  `siparis_kodu` varchar(200) NOT NULL,
  `musteri_id` varchar(200) NOT NULL,
  `musteri_adı` varchar(200) NOT NULL,
  `urun_id` varchar(200) NOT NULL,
  `urun_adı` varchar(200) NOT NULL,
  `urun_fiyatı` varchar(200) NOT NULL,
  `urun_miktari` varchar(200) NOT NULL,
  `si̇pari̇s_durumu` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `rpos_siparis`
--

INSERT INTO `rpos_siparis` (`siparis_id`, `siparis_kodu`, `musteri_id`, `musteri_adı`, `urun_id`, `urun_adı`, `urun_fiyatı`, `urun_miktari`, `si̇pari̇s_durumu`) VALUES
('1555', 'SP001', '1fc1f694985d', 'Mehmet Kayaer', '06dc36c1be', 'Ürün A\'', '100', '2', 'Onayland?'),
('1568', 'SP001', '27e4a5bc74c2', 'Zeynep Çelikhan', 'f4ce3927bf', 'Ürün C', '120', '3', 'Onayland?');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `rpos_staff`
--

CREATE TABLE `rpos_staff` (
  `staff_id` int(20) NOT NULL,
  `staff_name` varchar(200) NOT NULL,
  `staff_number` varchar(200) NOT NULL,
  `staff_email` varchar(200) NOT NULL,
  `staff_password` varchar(200) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `rpos_staff`
--

INSERT INTO `rpos_staff` (`staff_id`, `staff_name`, `staff_number`, `staff_email`, `staff_password`, `created_at`) VALUES
(2, 'Cashier Trevor', 'QEUY-9042', 'cashier@mail.com', '903b21879b4a60fc9103c3334e4f6f62cf6c3a2d', '2022-09-04 16:11:30.581882'),
(3, 'Ali Veli', '1234567890', 'ali.veli@example.com', 'sifre123', '2025-01-05 15:13:58.000000'),
(4, 'Ay?e Y?lmaz', '0987654321', 'ayse.yilmaz@example.com', 'sifre456', '2025-01-05 15:13:58.000000'),
(5, 'Mehmet Can', '1122334455', 'mehmet.can@example.com', 'sifre789', '2025-01-05 15:13:58.000000');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `rpos_sıfırlar`
--

CREATE TABLE `rpos_sıfırlar` (
  `Sıfırla_id` int(20) NOT NULL,
  `sıfırlama_kodu` varchar(200) NOT NULL,
  ` sıfırlama_jetonu` varchar(200) NOT NULL,
  ` sıfırlama_email` varchar(200) NOT NULL,
  ` sıfırlama_durum` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `rpos_sıfırlar`
--

INSERT INTO `rpos_sıfırlar` (`Sıfırla_id`, `sıfırlama_kodu`, ` sıfırlama_jetonu`, ` sıfırlama_email`, ` sıfırlama_durum`) VALUES
(1, '63KU9QDGSO', '4ac4cee0a94e82a2aedc311617aa437e218bdf68', 'sysadmin@icofee.org', 'Pending'),
(2, '63KU9QDGSO1', '4ac4cee0a94e82a2aedc311617aa', 'ali.veli@example.com', 'Aktif'),
(3, '63KU9QDGSO2', '4ac4cee0a94e82a2aedc311617aa437e218bdf6', 'ayse.yilmaz@example.com', 'Aktif');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `rpos_urunler`
--

CREATE TABLE `rpos_urunler` (
  `urun_id` varchar(200) NOT NULL,
  `urun_kodu` varchar(200) NOT NULL,
  `urun_adı` varchar(200) NOT NULL,
  `urun_resim` varchar(200) NOT NULL,
  `urun_azalması` longtext NOT NULL,
  ` urun_fiyatı` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `rpos_urunler`
--

INSERT INTO `rpos_urunler` (`urun_id`, `urun_kodu`, `urun_adı`, `urun_resim`, `urun_azalması`, ` urun_fiyatı`) VALUES
('06dc36c1be', 'FCWU-5762', 'Philly Cheesesteak', 'cheesestk.jpg', 'A cheesesteak is a sandwich made from thinly sliced pieces of beefsteak and melted cheese in a long hoagie roll. A popular regional fast food, it has its roots in the U.S. city of Philadelphia, Pennsylvania.', '7'),
('0c4b5c0604', 'JRZN-9518', 'Spaghetti Bolognese', 'spaghetti_bolognese.jpg', 'Spaghetti bolognese consists of spaghetti (long strings of pasta) with an Italian ragÃ¹ (meat sauce) made with minced beef, bacon and tomatoes, served with Parmesan cheese. Spaghetti bolognese is one of the most popular pasta dishes eaten outside of Italy.', '15'),
('f4ce3927bf', 'EAHD-1980', 'Hot Dog', 'hotdog0.jpg', 'A hot dog is a food consisting of a grilled or steamed sausage served in the slit of a partially sliced bun. The term hot dog can also refer to the sausage itself. The sausage used is a wiener or a frankfurter. The names of these sausages also commonly refer to their assembled dish.', '4');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `rpos_admin`
--
ALTER TABLE `rpos_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Tablo için indeksler `rpos_musteri`
--
ALTER TABLE `rpos_musteri`
  ADD PRIMARY KEY (`müsteri_id`);

--
-- Tablo için indeksler `rpos_odemeler`
--
ALTER TABLE `rpos_odemeler`
  ADD PRIMARY KEY (`odeme_id`),
  ADD KEY `order` (`siparis_kodu`);

--
-- Tablo için indeksler `rpos_siparis`
--
ALTER TABLE `rpos_siparis`
  ADD PRIMARY KEY (`siparis_id`),
  ADD KEY `CustomerOrder` (`musteri_id`),
  ADD KEY `ProductOrder` (`urun_id`);

--
-- Tablo için indeksler `rpos_staff`
--
ALTER TABLE `rpos_staff`
  ADD PRIMARY KEY (`staff_id`);

--
-- Tablo için indeksler `rpos_sıfırlar`
--
ALTER TABLE `rpos_sıfırlar`
  ADD PRIMARY KEY (`Sıfırla_id`);

--
-- Tablo için indeksler `rpos_urunler`
--
ALTER TABLE `rpos_urunler`
  ADD PRIMARY KEY (`urun_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `rpos_staff`
--
ALTER TABLE `rpos_staff`
  MODIFY `staff_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `rpos_sıfırlar`
--
ALTER TABLE `rpos_sıfırlar`
  MODIFY `Sıfırla_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `rpos_siparis`
--
ALTER TABLE `rpos_siparis`
  ADD CONSTRAINT `CustomerOrder` FOREIGN KEY (`musteri_id`) REFERENCES `rpos_musteri` (`müsteri_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ProductOrder` FOREIGN KEY (`urun_id`) REFERENCES `rpos_urunler` (`urun_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
