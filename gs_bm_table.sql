-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost:3306
-- 生成日時: 
-- サーバのバージョン： 5.7.24
-- PHP のバージョン: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gs_kadai`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_bm_table`
--

CREATE TABLE `gs_bm_table` (
  `id` int(12) NOT NULL,
  `書籍名` varchar(64) NOT NULL,
  `書籍URL` text NOT NULL,
  `書籍コメント` text NOT NULL,
  `登録日` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `gs_bm_table`
--

INSERT INTO `gs_bm_table` (`id`, `書籍名`, `書籍URL`, `書籍コメント`, `登録日`) VALUES
(92, 'スッキリわかるSQL入門', 'https://www.amazon.co.jp/gp/product/4295005096/ref=ppx_yo_dt_b_asin_title_o00_s00?ie=UTF8&psc=1', '終了', '2021-01-07 00:00:00'),
(93, 'NO', 'https://www.amazon.co.jp/gp/product/B08LDBNG74/ref=ppx_yo_dt_b_d_asin_title_o03?ie=UTF8&psc=1', 'こういう会社いいな', '2021-01-07 00:00:00'),
(95, 'GMとともに', 'https://www.amazon.co.jp/gp/product/4478340226/ref=ppx_yo_dt_b_asin_title_o09_s00?ie=UTF8&psc=1', '課題が多い', '2021-01-07 22:00:23');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルのAUTO_INCREMENT
--

--
-- テーブルのAUTO_INCREMENT `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
