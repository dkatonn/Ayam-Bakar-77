-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Des 2024 pada 05.00
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `masagi-test`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `cart`
--

INSERT INTO `cart` (`cart_id`, `user_id`, `item_id`) VALUES
(6, 1, 9),
(7, 1, 12),
(8, 1, 12);

-- --------------------------------------------------------

--
-- Struktur dari tabel `product`
--

CREATE TABLE `product` (
  `item_id` int(11) NOT NULL,
  `item_brand` varchar(200) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_price` double(10,3) NOT NULL,
  `item_image` varchar(255) NOT NULL,
  `item_register` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `product`
--

INSERT INTO `product` (`item_id`, `item_brand`, `item_name`, `item_price`, `item_image`, `item_register`) VALUES
(1, 'Nasi ', 'Nasi Putih', 9.000, './assets/nasi.jpg\r\n', '2024-10-14 23:02:57'),
(3, 'Steak', 'Crispy Sirloin Double', 45.000, './assets/Crispy sirloin.jpg\r\n', '2024-10-14 23:12:57'),
(4, 'Steak', 'Crispy Chicken Steak', 32.000, './assets/crispy chicken steak.jpg', '2024-10-14 23:08:57'),
(5, 'Steak', 'Crispy Beef Steak', 35.000, './assets/Crispy beef steak.jpg\r\n', '2024-10-14 23:08:58'),
(6, 'Steak', 'Sausage Steak', 36.000, './assets/sosis steak.jpg\r\n', '2024-10-14 11:08:57'),
(7, 'Katsu', 'Chicken Cheese Mozarella', 44.000, './assets/chicken cheese.jpg', '2024-10-14 23:19:57'),
(8, 'Katsu', 'Chicken Cordon Blue', 46.000, './assets/chicken cordon.jpg', '2024-10-14 23:26:57'),
(9, 'Katsu', 'Chicken Katsu', 36.000, './assets/chicken katsu.jpg', '2024-10-14 23:26:57'),
(10, 'Mie', 'Spaghetti Sosis', 30.000, './assets/spaghetti sosis.jpg', '2024-10-14 23:27:57'),
(11, 'Minuman', 'Milo', 13.000, './assets/Milo.jpeg', '2024-10-14 23:28:57'),
(12, 'Minuman', 'Coffee Cappucino', 12.000, './assets/Coffee cap.jpg', '2024-10-14 23:28:57'),
(13, 'Cemilan', 'Potatoes Wedges', 13.000, './assets/potato wed.png', '2024-10-14 23:29:57'),
(14, 'Minuman', 'Lemon Tea', 12.000, './assets/lemon tea.jpg', '2024-10-14 23:29:57'),
(15, 'Cemilan', 'Kaki Naga', 10.000, './assets/kaki naga.jpg', '2024-10-14 23:29:57'),
(16, 'Cemilan', 'Fish Roll', 20.000, './assets/fish roll.jpg', '2024-10-14 23:29:57');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `register_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `register_date`) VALUES
(1, 'Daily', 'Tuition', '2020-03-28 13:07:17'),
(2, 'Akshay', 'Kashyap', '2020-03-28 13:07:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `wishlist`
--

CREATE TABLE `wishlist` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indeks untuk tabel `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`item_id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `product`
--
ALTER TABLE `product`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
