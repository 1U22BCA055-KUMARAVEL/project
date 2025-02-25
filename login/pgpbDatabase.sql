-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2022 at 06:22 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pgpb`
--

-- --------------------------------------------------------

--
-- Table structure for table `commercial_classification`
--

CREATE TABLE `commercial_classification` (
  `COMMERCIAL_CLASSIFICATION` varchar(33) CHARACTER SET utf8 DEFAULT NULL,
  `cc_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `commercial_classification`
--

INSERT INTO `commercial_classification` (`COMMERCIAL_CLASSIFICATION`, `cc_no`) VALUES
('Food and Medicinal Plant', 451),
('Cattle food', 452),
('Food plant', 453),
('Growth promoting plant', 454),
('Medicinal plant', 455),
('Animal food plant', 456),
('Herbicide and Medicinal plant', 457),
('Animal Food', 458),
('Human and Animal Food plant ', 459),
('Animal Food and Firewood', 460),
('Food plant , Herbicide plant', 461),
('Human and Animal Food, Straw', 462),
('Planting plant', 463),
('Animal food plant', 464),
('Food,Pickle Plant', 465),
('Ornamental plant', 467),
('Oil plant', 469),
('Animal feeding', 470),
('Timmer,fuelwood and charcoal tree', 472),
('Medicinal and Ornamental plant', 475),
('Economical plant', 478),
('Cattle food', 479),
('Medicinal and food plant', 480),
('Green manure', 482),
('Restoration plant', 487),
('Animal food and firewood plant', 495),
('Green manure and Fiber plant', 490);

-- --------------------------------------------------------

--
-- Table structure for table `dataset`
--

CREATE TABLE `dataset` (
  `plant_no` int(11) DEFAULT NULL,
  `order_no` int(11) DEFAULT NULL,
  `family_no` int(11) DEFAULT NULL,
  `genus_no` int(11) DEFAULT NULL,
  `species_no` int(11) DEFAULT NULL,
  `type_no` int(11) DEFAULT NULL,
  `cc_no` int(11) DEFAULT NULL,
  `source_no` int(11) DEFAULT NULL,
  `PGPB` varchar(28) CHARACTER SET utf8 DEFAULT NULL,
  `pgpb_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dataset`
--

INSERT INTO `dataset` (`plant_no`, `order_no`, `family_no`, `genus_no`, `species_no`, `type_no`, `cc_no`, `source_no`, `PGPB`, `pgpb_no`) VALUES
(1, 100, 170, 200, 310, 400, 451, 510, 'Mesorhizobium robiniae', 700),
(2, 101, 171, 201, 311, 401, 452, 511, 'Rhizobium mesosinicum', 701),
(4, 102, 172, 202, 312, 402, 453, 512, 'Rhizobium taibaishanense', 702),
(5, 103, 174, 203, 313, 403, 454, 514, 'Rhizobium daejeonense', 703),
(6, 104, 175, 204, 314, 404, 455, 515, 'Rhizobium mongolense', 704),
(7, 105, 179, 205, 315, 405, 456, 516, 'Rhizobium tubonense', 705),
(8, 106, 180, 206, 316, 406, 457, 517, 'Rhizobium freirei', 706),
(8, 107, 181, 207, 317, 407, 458, 518, 'Rhizobium petrolearium', 707),
(9, 108, 182, 208, 318, 405, 459, 519, 'Rhizobium sphaerophysae', 708),
(10, 109, 183, 209, 319, 410, 460, 520, 'Pseudomonas spp.,', 709),
(11, 110, 184, 210, 320, 430, 461, 521, 'Burkholderia spp.,', 710),
(12, 111, 185, 211, 321, 431, 462, 522, 'Rhizobium phaseoli', 711),
(13, 112, 187, 212, 322, 432, 463, 523, 'Rhizobium pisi', 712),
(14, 113, 188, 213, 323, 437, 464, 524, 'Rhizobium tropici', 713),
(15, 115, 189, 214, 324, NULL, 465, 525, 'Rhizobium vignae', 714),
(16, 118, 103, 215, 325, NULL, 467, 510, 'Mesorhizobium plurifarium', 715),
(17, 122, 188, 216, 326, NULL, 469, 530, 'Mesorhizobium hawassense', 716),
(17, 125, 125, 217, 327, NULL, 470, 531, 'Mesorhizobium opportunistum', 717),
(18, NULL, NULL, 218, 328, NULL, 472, 532, 'Bradyrhizobium cytisi', 718),
(19, NULL, NULL, 219, 329, NULL, 475, 533, 'Bradyrhizobium yuanmingense', 719),
(20, NULL, NULL, 207, 335, NULL, 478, 535, 'Mesorhizobium shangrilense', 720),
(21, NULL, NULL, 222, 336, NULL, 479, 536, 'Bacillus spp.,', 721),
(22, NULL, NULL, 223, 337, NULL, 480, 537, 'Pseudomonas jessenii', 722),
(23, NULL, NULL, 224, 312, NULL, 482, 538, 'Mesorhizobium ciceri', 723),
(23, NULL, NULL, 225, 338, NULL, 487, 539, 'Mesorhizobium muleiense', 724),
(23, NULL, NULL, 226, 339, NULL, 495, 540, 'Ensifer arboris', 725),
(24, NULL, NULL, 227, 340, NULL, 490, 541, 'Mesorhizobium jarvisii', 726),
(25, NULL, NULL, 228, 341, NULL, NULL, 542, 'Mesorhizobium qingshengii', 727),
(26, NULL, NULL, 229, 342, NULL, NULL, 543, 'Rhizobium huautlense', 728),
(27, NULL, NULL, 230, 343, NULL, NULL, 510, 'Rhizobium alkalisoli', 729),
(28, NULL, NULL, 231, 344, NULL, NULL, 544, 'Rhizobium azibense', 730),
(29, NULL, NULL, 232, 345, NULL, NULL, 547, 'Rhizobium endophyticum', 731),
(30, NULL, NULL, 233, 346, NULL, NULL, 545, 'Sinorhizobium americanum', 732),
(31, NULL, NULL, 234, 347, NULL, NULL, 546, 'Microvirga ossetica', 733),
(32, NULL, NULL, 235, 348, NULL, NULL, 550, 'Rhizobium vallis', 734),
(33, NULL, NULL, 236, 349, NULL, NULL, 551, 'Rhizobium yanglingense', 735),
(34, NULL, NULL, 237, 350, NULL, NULL, 552, 'Stenotrophomonas maltophilia', 736),
(35, NULL, NULL, 238, 351, NULL, NULL, 553, 'Mesorhizobium amorphae', 737),
(36, NULL, NULL, 239, 352, NULL, NULL, 554, 'Rhizobium leguminosarum', 738),
(37, NULL, NULL, 240, 353, NULL, NULL, 555, 'Mesorhizobium alhagi', 739),
(38, NULL, NULL, 241, 354, NULL, NULL, 556, 'Rhizobium sullae', 740),
(39, NULL, NULL, 242, 355, NULL, NULL, 557, 'Ensifer kostiensis', 741),
(40, NULL, NULL, 243, 356, NULL, NULL, 558, 'Staphylococcus', 742),
(41, NULL, NULL, 244, 357, NULL, NULL, 559, 'Burkholderia sabiae', 743),
(42, NULL, NULL, 247, 358, NULL, NULL, 560, 'Rhizobium grahamii', 744),
(43, NULL, NULL, 248, 359, NULL, NULL, NULL, 'Sinorhizobium morelense', 745),
(44, NULL, NULL, 249, 360, NULL, NULL, NULL, 'Mesorhizobium albiziae', 746),
(45, NULL, NULL, 250, 361, NULL, NULL, NULL, 'Mesorhizobium metallidurans', 747),
(45, NULL, NULL, 251, 362, NULL, NULL, NULL, 'Shinella kummerowiae', 748),
(46, NULL, NULL, 259, 363, NULL, NULL, NULL, 'Mesorhizobium mediterraneum', 749),
(47, NULL, NULL, 261, 364, NULL, NULL, NULL, 'Rhizobium loessense', 750),
(48, NULL, NULL, 263, 365, NULL, NULL, NULL, 'Mesorhizobium temperatum', 751),
(49, NULL, NULL, 263, 366, NULL, NULL, NULL, 'Mesorhizobium caraganae', 752),
(50, NULL, NULL, 264, 367, NULL, NULL, NULL, 'Bacillus amyloliquefaciens', 753),
(51, NULL, NULL, 265, 368, NULL, NULL, NULL, 'Pseudomonas putida', 754),
(52, NULL, NULL, 266, 369, NULL, NULL, NULL, 'Azotobacter chroococcum', 755),
(53, NULL, NULL, 267, 370, NULL, NULL, NULL, 'Bradyrhizobium pachyrhizi', 756),
(54, NULL, NULL, 270, 371, NULL, NULL, NULL, 'Bradyrhizobium spp.,', 757),
(55, NULL, NULL, 271, 372, NULL, NULL, NULL, 'Paenibacillus polymyxa', 758),
(56, NULL, NULL, 275, 373, NULL, NULL, NULL, 'Mesorhizobium tamadayense', 759),
(56, NULL, NULL, 277, 374, NULL, NULL, NULL, 'Pesudomonas SPP.,', 760),
(57, NULL, NULL, 280, 375, NULL, NULL, NULL, 'Bacillus pumilus', 761),
(58, NULL, NULL, 281, 376, NULL, NULL, NULL, 'Ochrobactrum cytisi', 762),
(59, NULL, NULL, 233, 377, NULL, NULL, NULL, 'Rhizobium calliandrae', 763),
(60, NULL, NULL, 285, 378, NULL, NULL, NULL, 'Rhizobium jaguaris', 764),
(61, NULL, NULL, 290, 379, NULL, NULL, NULL, 'Ensifer mexicanus', 765),
(62, NULL, NULL, 291, 380, NULL, NULL, NULL, 'Mesorhizobium septentrionale', 766),
(63, NULL, NULL, 292, 381, NULL, NULL, NULL, 'Rhizobium alamii', 767),
(64, NULL, NULL, 293, 382, NULL, NULL, NULL, 'Methylobacterium nodulans', 768),
(65, NULL, NULL, 294, 382, NULL, NULL, NULL, 'Azospirillum', 769),
(66, NULL, NULL, 296, 383, NULL, NULL, NULL, 'Azorhizobium doebereinerae', 770),
(67, NULL, NULL, 297, 384, NULL, NULL, NULL, 'Rhizobium halophytocola', 771),
(68, NULL, NULL, 298, 385, NULL, NULL, NULL, 'Ensifer terangae', 772),
(69, NULL, NULL, 299, 386, NULL, NULL, NULL, 'Rhizobium mesoamericanum', 773),
(70, NULL, NULL, NULL, 387, NULL, NULL, NULL, 'Rhizobium sophorae', 774),
(71, NULL, NULL, NULL, 388, NULL, NULL, NULL, 'Mesorhizobium silamurunense', 775),
(72, NULL, NULL, NULL, 389, NULL, NULL, NULL, 'Bradyrhyzobium japonicum', 776),
(73, NULL, NULL, NULL, 390, NULL, NULL, NULL, 'Rhizobiumspp.,', 777),
(73, NULL, NULL, NULL, 391, NULL, NULL, NULL, 'Ensifer sojae', 778),
(73, NULL, NULL, NULL, 392, NULL, NULL, NULL, 'Ensifer fredii', 779),
(74, NULL, NULL, NULL, 393, NULL, NULL, NULL, 'Rhizobium laguerreae', 780),
(75, NULL, NULL, NULL, 394, NULL, NULL, NULL, 'Alcaligenes', 781),
(76, NULL, NULL, NULL, 395, NULL, NULL, NULL, 'Pantoea', 782),
(77, NULL, NULL, NULL, 396, NULL, NULL, NULL, 'Enterobacter asburiae', 783),
(78, NULL, NULL, NULL, 397, NULL, NULL, NULL, 'Pantoea dispersa', 784),
(79, NULL, NULL, NULL, 398, NULL, NULL, NULL, 'Microvirga lupini', 785),
(80, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Burkholderia unamae', 786),
(81, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Burkholderia phytofirmans', 787),
(82, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pesudomonas fluorescens', 788),
(83, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Achromobacter piechaudii', 789),
(84, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Rhizobium undicola', 790),
(85, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Azospirillum lipoferum', 791),
(86, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Azotobacter', 792),
(87, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mesorhizobium chacoense', 793),
(88, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ochrobactrum lupini', 794),
(NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Rhizobium cellulosilyticum', 795),
(NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Rhizobium leucaenae', 796),
(NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Rhizobium oryzae', 797),
(NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ensifer saheli', 798),
(NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Azorhizobium caulinodans', 799);

-- --------------------------------------------------------

--
-- Table structure for table `family`
--

CREATE TABLE `family` (
  `FAMILY` varchar(13) CHARACTER SET utf8 DEFAULT NULL,
  `family_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `family`
--

INSERT INTO `family` (`FAMILY`, `family_no`) VALUES
('Fabaceae', 170),
('Lauraceae', 171),
('Musaceae', 172),
('Rosaceae', 174),
('Cucurbitaceae', 175),
('Cleomaceae', 179),
('Brassicaceae', 180),
('Fabaceae', 181),
('Myrtaceae', 182),
('Actinidiaceae', 183),
('Poaceae', 184),
('Zingiberaceae', 185),
('Bromeliaceae', 187),
('Solanaceae', 188),
('Brassicaceae', 189),
('Rosales', 103),
('Amaranthaceae', 188),
('Malpighiales', 125);

-- --------------------------------------------------------

--
-- Table structure for table `genus`
--

CREATE TABLE `genus` (
  `GENUS` varchar(12) CHARACTER SET utf8 DEFAULT NULL,
  `genus_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `genus`
--

INSERT INTO `genus` (`GENUS`, `genus_no`) VALUES
('Robinia', 200),
('Kummerowia', 201),
('Medicago', 202),
('Sphaerophysa', 203),
('Persea', 204),
('Musa', 205),
('Phaseolus', 206),
('Sesbania', 207),
('Lotus', 208),
('Biserrula', 209),
('Cytisus', 210),
('Lespedeza', 211),
('Caragana', 212),
('Ceratonia', 213),
('Ceratonia', 214),
('Prunus', 215),
('Cicer', 216),
('Prosopis', 217),
('Glycyrrhiza', 218),
('Astragalus', 219),
(' Sesbania', 207),
('Vicia', 222),
('Indigofera', 223),
('Securigera', 224),
('Cucumis', 225),
('Amorpha', 226),
('Vicia ', 227),
('Cleome', 228),
('Brassica', 229),
('Hedysarum ', 230),
('Senegalia', 231),
('Psidium', 232),
('Mimosa', 233),
('Amphicarpaea', 234),
('Dalbergia', 235),
('Dalea', 236),
('Leucaena', 237),
('Albizia', 238),
('Anthyllis', 239),
('Actinidia', 240),
('Kummerowia', 241),
('Albizia', 242),
('Lens', 243),
('Lespedeza', 244),
('Lupinus', 247),
('Zea', 248),
('Curcuma', 249),
('Pachyrhizus', 250),
('Vigna', 251),
('Anagyrus', 259),
('Arachis', 261),
('Pisum', 263),
('Pisum ', 263),
('Ananas', 264),
('Solanum', 265),
('Calliandra', 266),
('Acaciella', 267),
('Crotalaria', 270),
('Crotalaria', 271),
('Trifolium', 275),
('Oryza', 277),
('Rosa', 280),
('Acacia', 281),
('Mimosa ', 233),
('Sophora', 285),
('Glycine', 290),
('Spinacia', 291),
('Fragaria', 292),
('Saccharum', 293),
('Tamarindus', 294),
('Neptunia', 296),
('Citrullus', 297),
('Triticum', 298),
('Populus', 299);

-- --------------------------------------------------------

--
-- Table structure for table `plant`
--

CREATE TABLE `plant` (
  `plant_no` int(11) DEFAULT NULL,
  `PLANT` varchar(39) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `plant`
--

INSERT INTO `plant` (`plant_no`, `PLANT`) VALUES
(1, ' Black locust'),
(2, ' Japanese clover  '),
(4, 'Alfalfa'),
(5, 'Alkali swainsonpea'),
(6, 'Avocado'),
(7, 'Banana'),
(8, 'Bean'),
(8, 'Beans'),
(9, 'Bigpod sesbania'),
(10, 'Birdsfoot Trefoil'),
(11, 'Biserrula'),
(12, 'Brooms'),
(13, 'Bush clovers'),
(14, 'Caragana bicolor'),
(15, 'Carob'),
(16, 'Cherry'),
(17, 'Chickpea'),
(17, 'Chickpeas'),
(18, 'Chilean mesquite'),
(19, 'Chinese liquorice'),
(20, 'Chinese milkvetch'),
(21, 'Chinese vetch'),
(22, 'Coffee weed'),
(23, 'Commen bean'),
(23, 'Common bean'),
(23, 'Common bean or French bean'),
(24, 'Common vetch'),
(25, 'creeping indigo'),
(26, 'Crownvetch'),
(27, 'Cucumber'),
(28, 'Desert false indigo'),
(29, 'Faba bean'),
(30, 'Fewleaf spiderflower'),
(31, 'Field Mustard'),
(32, 'French honeysuckle'),
(33, 'Gum arabic'),
(34, 'Guvava'),
(35, 'Hazards'),
(36, 'Hog-peanut'),
(37, 'Indian Rosewood'),
(38, 'Indigo bush'),
(39, 'Jumbay, White leadtree, River tamarind'),
(40, 'Kalkora Mimosa'),
(41, 'Kidney vetch'),
(42, 'Kiwi Fruit'),
(43, 'Korean clover'),
(44, 'Lebbek tree'),
(45, 'Lentil'),
(45, 'Lentils'),
(46, 'Lespedeza'),
(47, 'Licorice milkvetch'),
(48, 'Littleleaf Peashrub'),
(49, 'Lupins'),
(50, 'Maize'),
(51, 'Mango Ginger'),
(52, 'Mexican yam bean, or Mexican turnip'),
(53, 'Mung bean'),
(54, 'Muskmelon'),
(55, 'Oro de risco'),
(56, 'Peanuts'),
(56, 'Peanuts or Groundnuts'),
(57, 'Peas'),
(58, 'Pineapple'),
(59, 'Potato '),
(60, 'Powder Puff'),
(61, 'Prairie acacia, Timbre, Fernleaf Acacia'),
(62, 'Prairie Milkvetch'),
(63, 'Rapeseed '),
(64, 'Rattlepodes '),
(65, 'Red clover'),
(66, 'Rice'),
(67, 'Riverhemp'),
(68, 'Rugosa rose'),
(69, 'Senegalia laeta'),
(70, 'Sensitive Plant'),
(71, 'Shrubby sophor'),
(72, 'Siberian pea-tree'),
(73, 'Soyabean'),
(73, 'Soyabeans'),
(73, 'Soybean'),
(74, 'Spinach'),
(75, 'Strawberry'),
(76, 'Sugar cane'),
(77, 'Tamarind'),
(78, 'Texas bluebonnet or Texas lupine'),
(79, 'Tomoto'),
(80, 'Water Mimosa'),
(81, 'Watermelon'),
(82, 'Wheat'),
(83, 'White carob tree, Algarrobo blanco'),
(84, 'white lupin or field lupine'),
(85, 'white poplar'),
(86, 'Wild bean'),
(87, 'wild rice'),
(88, 'Yellow Pea Bush');

-- --------------------------------------------------------

--
-- Table structure for table `source`
--

CREATE TABLE `source` (
  `SOURCE` varchar(68) CHARACTER SET utf8 DEFAULT NULL,
  `source_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `source`
--

INSERT INTO `source` (`SOURCE`, `source_no`) VALUES
('Nitrogen Fixation', 510),
('Nitrogen fixation ,  antibiotic resistance', 511),
('cyanide-degrading bacteria', 512),
('Nitrogen fixation ,  antibiotic tolerance, salinity-alkalinity,', 514),
('decompose polycyclic aromatic hydrocarbons (PAHs)', 515),
('Prevent diseases', 516),
('Highly tolerant to acid', 517),
('Shoot and Leaf development', 518),
('N2 Fixing,P-Solubilizing', 519),
('Biocontrol (Fungicide) activity', 520),
('Drought tolerance of the host trees', 521),
('Symbiotic Nitrogen Fixation', 522),
('Environmental tolerance', 523),
('Saline and Alkaline soil tolerance', 524),
('nitrogen fixing', 525),
('Nitrogen fixations', 510),
('Promoted root & shoot elongation', 530),
('Nitrogen Fixation and Reforestation', 531),
('Promote the Growth under Adverse Environmental Conditions', 532),
('Root development', 533),
('Highly tolerant to drought, salt and extreme cold, well-drained soil', 535),
('Enhance salt & chlorophyll', 536),
('Phosphate-Solubilizing,Prevent diseases', 537),
('Induce plant growth', 538),
('Tolerated tomaximum salt concentration', 539),
('ACC deaminase', 540),
('Prevent diseases & Nematode', 541),
('Prevent diseases,root development', 542),
('Tolerance for salinity, high temperature, and glyphosate pollution', 543),
('nitrogen fixing', 510),
('Water stress tolerance', 544),
('Phosphate-Solubilizing', 547),
('Gibberellins-Development of plant growth', 545),
('Siderophore-Protection against phytopathogens', 546),
('Nitrogen fixation,Root development', 550),
('Phosphate solubilizing', 551),
('Saline-Alkaline soils tolerant ', 552),
('Biocontrol activity ', 553),
('Pro biotic activity', 554),
('Nitrogen fixation,Prevent disease', 555),
('IAA Synthesis', 556),
('Eliminat salt stress', 557),
('AAC deaminase', 558),
('Promoted development of root system', 559),
('grain yield & N fixation', 560);

-- --------------------------------------------------------

--
-- Table structure for table `species`
--

CREATE TABLE `species` (
  `SPECIES` varchar(16) CHARACTER SET utf8 DEFAULT NULL,
  `species_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `species`
--

INSERT INTO `species` (`SPECIES`, `species_no`) VALUES
('pseudoacacia', 310),
('striata', 311),
('sativa', 312),
('ruthenica', 313),
('salsula', 314),
('americana', 315),
('paradisiaca', 316),
('vulgaris', 317),
('herbacea', 318),
('corniculatus', 319),
('pelecinus', 320),
('villosus', 321),
('angustifolia', 322),
('bicolor', 323),
('siliqua', 324),
('avium', 325),
('arietinum', 326),
('chilensis', 327),
('uralensis', 328),
('sinicus', 329),
('alpestris', 335),
('spicata', 336),
('varia', 337),
('sativas', 312),
('fruticosa', 338),
('faba ', 339),
('sparsifolia', 340),
('campestris', 341),
('coronarium', 342),
('senegal', 343),
('guajava', 344),
('caesalpiniifolia', 345),
('bracteata', 346),
('sissoo', 347),
('leporina', 348),
('leucocephala', 349),
('kalkora', 350),
('vulneraria', 351),
('deliciosa', 352),
('stipulacea', 353),
('lebbeck', 354),
('culinaris', 355),
('buergeri', 356),
('glycyphyllos', 357),
('microphylla', 358),
('alus', 359),
('albus', 360),
('mays', 361),
('amada', 362),
('erosus', 363),
('radiata', 364),
('melo', 365),
('latifolia', 366),
('hypogaea', 367),
('sativum', 368),
('comosus', 369),
('tuberosum', 370),
('grandiflora', 371),
('angustissima', 372),
('adsurgens', 373),
('napus', 374),
('glaucoides', 375),
('podocarpa', 376),
('pratense', 377),
('sataiva', 378),
('virgata', 379),
('rugosa', 380),
('laeta', 381),
('pudica', 382),
('pudica  ', 382),
('flavescens', 383),
('intermedia', 384),
('max', 385),
('oleracea', 386),
('virginiana', 387),
('officinarum', 388),
('indica', 389),
('texensis', 390),
('lycopersicum', 391),
('natans', 392),
('lanatus', 393),
('aestivum', 394),
('alba', 395),
('alta', 396),
('cannabina', 397),
('rostrata', 398);

-- --------------------------------------------------------

--
-- Table structure for table `t1`
--

CREATE TABLE `t1` (
  `plant_no` int(11) NOT NULL,
  `plant` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `t2`
--

CREATE TABLE `t2` (
  `order_no` int(11) NOT NULL,
  `order` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `t3`
--

CREATE TABLE `t3` (
  `family_no` int(11) NOT NULL,
  `family` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `t4`
--

CREATE TABLE `t4` (
  `genus_no` int(11) NOT NULL,
  `genus` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `t5`
--

CREATE TABLE `t5` (
  `species_no` int(11) NOT NULL,
  `species` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `t6`
--

CREATE TABLE `t6` (
  `type_no` int(11) NOT NULL,
  `type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `t7`
--

CREATE TABLE `t7` (
  `cc_no` int(11) NOT NULL,
  `commercial_classification` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `t8`
--

CREATE TABLE `t8` (
  `source_no` int(11) NOT NULL,
  `source` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `t9`
--

CREATE TABLE `t9` (
  `pgpb_no` int(11) NOT NULL,
  `pgpb` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `t10`
--

CREATE TABLE `t10` (
  `plant_no` int(11) NOT NULL,
  `order_no` int(11) NOT NULL,
  `family_no` int(11) NOT NULL,
  `genus_no` int(11) NOT NULL,
  `species_no` int(11) NOT NULL,
  `type_no` int(11) NOT NULL,
  `cc_no` int(11) NOT NULL,
  `source_no` int(11) NOT NULL,
  `pgpb_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `TYPE` varchar(13) CHARACTER SET utf8 DEFAULT NULL,
  `type_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`TYPE`, `type_no`) VALUES
('Tree', 400),
('Herbs', 401),
('Small Tree', 402),
('Vine', 403),
('Scrub', 404),
('Shrubs', 405),
('Creeper Plant', 406),
('Small plant', 407),
('Shrub', 405),
('bush', 410),
('Woody Vine', 430),
('Grasses', 431),
('Herb', 432),
('Seed', 437);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `t2`
--
ALTER TABLE `t2`
  ADD PRIMARY KEY (`order_no`);

--
-- Indexes for table `t3`
--
ALTER TABLE `t3`
  ADD PRIMARY KEY (`family_no`);

--
-- Indexes for table `t4`
--
ALTER TABLE `t4`
  ADD PRIMARY KEY (`genus_no`);

--
-- Indexes for table `t5`
--
ALTER TABLE `t5`
  ADD PRIMARY KEY (`species_no`);

--
-- Indexes for table `t6`
--
ALTER TABLE `t6`
  ADD PRIMARY KEY (`type_no`);

--
-- Indexes for table `t7`
--
ALTER TABLE `t7`
  ADD PRIMARY KEY (`cc_no`);

--
-- Indexes for table `t8`
--
ALTER TABLE `t8`
  ADD PRIMARY KEY (`source_no`);

--
-- Indexes for table `t9`
--
ALTER TABLE `t9`
  ADD PRIMARY KEY (`pgpb_no`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
