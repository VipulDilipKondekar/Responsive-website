
--
-- Database: `db_contact`
--

CREATE DATABASE IF NOT EXISTS `icloud` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `icloud`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

DROP TABLE IF EXISTS `icloudcontacts
`;
CREATE TABLE `icloudcontacts` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
`subject` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `icloudcontacts`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `icloudcontacts`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
