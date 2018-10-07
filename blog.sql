-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2018 at 01:16 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_10_02_220251_create_posts_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `featured`, `created_at`, `updated_at`) VALUES
(25, 'The Millionaire Guide On Games To Help You Get Rich', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque ac pulvinar lacus. Nunc mattis egestas auctor. Mauris ac auctor lacus. Cras felis erat, ultrices venenatis ante at, varius gravida nisl. Praesent eget lobortis urna, at iaculis ante. Morbi vitae neque massa. Vivamus consectetur diam et velit lobortis pulvinar. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 'uploads/posts/1538910362sample1.jpg', '2018-10-07 03:06:02', '2018-10-07 03:06:02'),
(26, 'Five Easy Rules Of Play.', 'Quisque blandit ante non elit maximus pulvinar. Aliquam erat volutpat. Curabitur facilisis diam a nibh cursus, nec pulvinar tellus rutrum. Nullam vulputate dolor ut sem viverra tristique. Duis sit amet massa id ligula pulvinar tempor. Pellentesque posuere laoreet nulla, vitae blandit metus dignissim nec. Aenean aliquam metus ut eros vehicula, a maximus lacus rutrum. Morbi imperdiet augue ac aliquam blandit. Phasellus nulla nisi, malesuada eu tincidunt ac, semper interdum massa. Sed iaculis mollis ante, eget viverra leo maximus mollis. Nulla gravida accumsan est, scelerisque scelerisque neque. Curabitur tortor ex, dictum ac ligula quis, varius aliquam arcu. Nullam mattis et metus a euismod. In efficitur consequat leo ac ultricies. Sed et maximus purus. Donec in suscipit erat.', 'uploads/posts/1538910437sample2.jpg', '2018-10-07 03:07:17', '2018-10-07 03:07:17'),
(27, '5 Top Reasons Why You Face Obstacles In Learning Play.', 'Nunc odio nulla, sodales aliquam sollicitudin in, gravida a augue. Vestibulum viverra neque id mauris scelerisque condimentum. Ut eget urna est. Maecenas semper, justo eu tristique molestie, est sapien laoreet tellus, vel consequat ante velit nec elit. Aliquam id purus sem. Pellentesque vel dui magna. Ut facilisis turpis non nisi euismod rhoncus. Quisque quis arcu imperdiet, dictum turpis nec, posuere nisl. Etiam a efficitur erat. Fusce a ullamcorper massa. Vestibulum vehicula justo ac ligula tristique aliquam. Phasellus viverra neque vitae arcu accumsan feugiat. Praesent pellentesque dolor a orci laoreet accumsan.\r\n\r\nNam facilisis, dolor at rhoncus viverra, orci justo placerat turpis, vel sagittis massa neque nec justo. Nam quis enim magna. In interdum, dui eget condimentum malesuada, turpis ex suscipit erat, a lobortis orci metus sed arcu. Maecenas eu eleifend leo. Aliquam nibh diam, feugiat sed maximus et, hendrerit ut libero. Vestibulum consectetur eleifend odio, nec elementum purus pellentesque nec. Cras viverra consectetur quam a commodo. Donec molestie tristique feugiat. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla mollis scelerisque orci, vitae consequat augue venenatis eget. Proin in nibh metus. Cras eget varius neque. Sed turpis orci, suscipit sed tempus tempor, dignissim vitae ex.', 'uploads/posts/1538910498sample3.jpg', '2018-10-07 03:08:18', '2018-10-07 03:08:18'),
(28, 'Seven Gigantic Influences Of Play.', 'Vivamus suscipit massa metus, sit amet vestibulum nibh suscipit scelerisque. Maecenas euismod rutrum faucibus. Maecenas eu porta metus, in commodo odio. Nunc id mollis leo. Donec quis imperdiet erat. Pellentesque tincidunt leo at erat suscipit elementum. Curabitur faucibus, dolor nec accumsan laoreet, dolor nisi vulputate quam, ut mattis magna felis nec urna.', 'uploads/posts/1538910549sample4.jpg', '2018-10-07 03:09:09', '2018-10-07 03:09:09'),
(29, 'Ten Great Lessons You Can Learn From Toy.', 'Quisque blandit ante non elit maximus pulvinar. Aliquam erat volutpat. Curabitur facilisis diam a nibh cursus, nec pulvinar tellus rutrum. Nullam vulputate dolor ut sem viverra tristique. Duis sit amet massa id ligula pulvinar tempor. Pellentesque posuere laoreet nulla, vitae blandit metus dignissim nec. Aenean aliquam metus ut eros vehicula, a maximus lacus rutrum. Morbi imperdiet augue ac aliquam blandit. Phasellus nulla nisi, malesuada eu tincidunt ac, semper interdum massa. Sed iaculis mollis ante, eget viverra leo maximus mollis. Nulla gravida accumsan est, scelerisque scelerisque neque. Curabitur tortor ex, dictum ac ligula quis, varius aliquam arcu. Nullam mattis et metus a euismod. In efficitur consequat leo ac ultricies. Sed et maximus purus. Donec in suscipit erat.', 'uploads/posts/1538910592sample5.jpg', '2018-10-07 03:09:52', '2018-10-07 03:09:52'),
(30, '10 Simple (But Important) Things To Remember About Toy.', 'Nunc odio nulla, sodales aliquam sollicitudin in, gravida a augue. Vestibulum viverra neque id mauris scelerisque condimentum. Ut eget urna est. Maecenas semper, justo eu tristique molestie, est sapien laoreet tellus, vel consequat ante velit nec elit. Aliquam id purus sem. Pellentesque vel dui magna. Ut facilisis turpis non nisi euismod rhoncus. Quisque quis arcu imperdiet, dictum turpis nec, posuere nisl. Etiam a efficitur erat. Fusce a ullamcorper massa. Vestibulum vehicula justo ac ligula tristique aliquam. Phasellus viverra neque vitae arcu accumsan feugiat. Praesent pellentesque dolor a orci laoreet accumsan.', 'uploads/posts/1538910624sample1.jpg', '2018-10-07 03:10:24', '2018-10-07 03:10:24'),
(31, 'Nam facilisis, dolor at rhoncus viverra', 'Nam facilisis, dolor at rhoncus viverra, orci justo placerat turpis, vel sagittis massa neque nec justo. Nam quis enim magna. In interdum, dui eget condimentum malesuada, turpis ex suscipit erat, a lobortis orci metus sed arcu. Maecenas eu eleifend leo. Aliquam nibh diam, feugiat sed maximus et, hendrerit ut libero. Vestibulum consectetur eleifend odio, nec elementum purus pellentesque nec. Cras viverra consectetur quam a commodo. Donec molestie tristique feugiat. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla mollis scelerisque orci, vitae consequat augue venenatis eget. Proin in nibh metus. Cras eget varius neque. Sed turpis orci, suscipit sed tempus tempor, dignissim vitae ex.', 'uploads/posts/1538910667sample2.jpg', '2018-10-07 03:11:07', '2018-10-07 03:11:07'),
(32, '7 Things You Probably Didn\'t Know About Toy.', 'Nam facilisis, dolor at rhoncus viverra, orci justo placerat turpis, vel sagittis massa neque nec justo. Nam quis enim magna. In interdum, dui eget condimentum malesuada, turpis ex suscipit erat, a lobortis orci metus sed arcu. Maecenas eu eleifend leo. Aliquam nibh diam, feugiat sed maximus et, hendrerit ut libero. Vestibulum consectetur eleifend odio, nec elementum purus pellentesque nec. Cras viverra consectetur quam a commodo. Donec molestie tristique feugiat. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla mollis scelerisque orci, vitae consequat augue venenatis eget. Proin in nibh metus. Cras eget varius neque. Sed turpis orci, suscipit sed tempus tempor, dignissim vitae ex.', 'uploads/posts/1538910695sample3.jpg', '2018-10-07 03:11:35', '2018-10-07 03:11:35'),
(33, 'Vivamus suscipit massa metus, sit amet vestibulum nibh', 'Vivamus suscipit massa metus, sit amet vestibulum nibh suscipit scelerisque. Maecenas euismod rutrum faucibus. Maecenas eu porta metus, in commodo odio. Nunc id mollis leo. Donec quis imperdiet erat. Pellentesque tincidunt leo at erat suscipit elementum. Curabitur faucibus, dolor nec accumsan laoreet, dolor nisi vulputate quam, ut mattis magna felis nec urna.', 'uploads/posts/1538910734sample4.jpg', '2018-10-07 03:12:14', '2018-10-07 03:12:14'),
(34, 'Orci varius natoque penatibus et magnis dis', 'Quisque ac pulvinar lacus. Nunc mattis egestas auctor. Mauris ac auctor lacus. Cras felis erat, ultrices venenatis ante at, varius gravida nisl. Praesent eget lobortis urna, at iaculis ante. Morbi vitae neque massa. Vivamus consectetur diam et velit lobortis pulvinar. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 'uploads/posts/1538910788sample1.jpg', '2018-10-07 03:13:08', '2018-10-07 03:13:08');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'jovith ngoho', 'administrator', 'administrator@administrator.com', NULL, '$2y$10$0qAL2/zP2Vz9wzKbZ0SZ8eNNovxTQQHOKAe2mtyQh3iFp2Ai9DtcC', 'vJU316Yh4OIBKtTJk31NWLwYePOhUY93oKG7mhiQguSpOdcx959x2ErelVzh', '2018-10-02 06:42:14', '2018-10-02 06:42:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
