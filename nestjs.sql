-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Agu 2024 pada 10.22
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nestjs`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `log_requests`
--

CREATE TABLE `log_requests` (
  `id` int(11) NOT NULL,
  `status_code` int(11) NOT NULL,
  `full_response` text NOT NULL,
  `request` text NOT NULL,
  `url` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `log_requests`
--

INSERT INTO `log_requests` (`id`, `status_code`, `full_response`, `request`, `url`, `created_at`) VALUES
(1, 200, '{\"refresh_token_expires_in\":\"0\",\"api_product_list\":\"[api-satusehat-prod]\",\"api_product_list_json\":[\"api-satusehat-prod\"],\"organization_name\":\"ihs-prod-1\",\"developer.email\":\"rsudbantargebang@gmail.com\",\"token_type\":\"BearerToken\",\"issued_at\":\"1724397929569\",\"client_id\":\"bbMQ5PMTHztJ2gDxAqIyunSAcMS4AzHJ98EPrcWL3h49zI7k\",\"access_token\":\"kYLiMv0ScAzGAwzYtvCFAE8f6FOe\",\"application_name\":\"421c7f35-387d-4e5a-bf08-9f9e11b93ce4\",\"scope\":\"\",\"expires_in\":\"14399\",\"refresh_count\":\"0\",\"status\":\"approved\"}', 'client_id=bbMQ5PMTHztJ2gDxAqIyunSAcMS4AzHJ98EPrcWL3h49zI7k&client_secret=HmrAmvD1JdFQeTPu34DRWBbT4zkDIBuTesuKXYi73phNbXkJQZcVTOxGlrJc11o6', 'https://api-satusehat-stg.dto.kemkes.go.id/oauth2/v1/accesstoken?grant_type=client_credentials', '2024-08-23 07:25:28'),
(2, 200, '{\"resourceType\":\"Location\",\"identifier\":[{\"system\":\"http://sys-ids.kemkes.go.id/location/100026305\",\"value\":\"INT\"}],\"status\":\"active\",\"name\":\"Ruang Poli Bedah\",\"description\":\"Ruang Poli Bedah\",\"mode\":\"instance\",\"telecom\":[{\"system\":\"phone\",\"value\":\"+621500567\",\"use\":\"work\"},{\"system\":\"email\",\"value\":\"pkm-satusehat@dto.kemkes.go.id\",\"use\":\"work\"},{\"system\":\"url\",\"value\":\"dto.kemkes.go.id\",\"use\":\"work\"}],\"physicalType\":{\"coding\":[{\"system\":\"http://terminology.hl7.org/CodeSystem/location-physical-type\",\"code\":\"ro\",\"display\":\"Room\"}]},\"position\":{\"longitude\":-6.23115426275766,\"latitude\":106.83239885393944,\"altitude\":0},\"managingOrganization\":{\"reference\":\"Organization/100026305\"}}', '{\"resourceType\":\"Location\",\"identifier\":[{\"system\":\"http://sys-ids.kemkes.go.id/location/100026305\",\"value\":\"INT\"}],\"status\":\"active\",\"name\":\"Ruang Poli Bedah\",\"description\":\"Ruang Poli Bedah\",\"mode\":\"instance\",\"telecom\":[{\"system\":\"phone\",\"value\":\"+621500567\",\"use\":\"work\"},{\"system\":\"email\",\"value\":\"pkm-satusehat@dto.kemkes.go.id\",\"use\":\"work\"},{\"system\":\"url\",\"value\":\"dto.kemkes.go.id\",\"use\":\"work\"}],\"physicalType\":{\"coding\":[{\"system\":\"http://terminology.hl7.org/CodeSystem/location-physical-type\",\"code\":\"ro\",\"display\":\"Room\"}]},\"position\":{\"longitude\":-6.23115426275766,\"latitude\":106.83239885393944,\"altitude\":0},\"managingOrganization\":{\"reference\":\"Organization/100026305\"}}', 'https://api-satusehat-stg.dto.kemkes.go.id/oauth2/v1/Location', '2024-08-23 07:25:28'),
(3, 500, '\"Failed to save data to database\"', '{\"resourceType\":\"Location\",\"identifier\":[{\"system\":\"http://sys-ids.kemkes.go.id/location/100026305\",\"value\":\"INT\"}],\"status\":\"active\",\"name\":\"Ruang Poli Bedah\",\"description\":\"Ruang Poli Bedah\",\"mode\":\"instance\",\"telecom\":[{\"system\":\"phone\",\"value\":\"+621500567\",\"use\":\"work\"},{\"system\":\"email\",\"value\":\"pkm-satusehat@dto.kemkes.go.id\",\"use\":\"work\"},{\"system\":\"url\",\"value\":\"dto.kemkes.go.id\",\"use\":\"work\"}],\"physicalType\":{\"coding\":[{\"system\":\"http://terminology.hl7.org/CodeSystem/location-physical-type\",\"code\":\"ro\",\"display\":\"Room\"}]},\"position\":{\"longitude\":-6.23115426275766,\"latitude\":106.83239885393944,\"altitude\":0},\"managingOrganization\":{\"reference\":\"Organization/100026305\"}}', 'https://api-satusehat-stg.dto.kemkes.go.id/oauth2/v1/Location', '2024-08-23 07:25:28'),
(4, 200, '{\"refresh_token_expires_in\":\"0\",\"api_product_list\":\"[api-satusehat-prod]\",\"api_product_list_json\":[\"api-satusehat-prod\"],\"organization_name\":\"ihs-prod-1\",\"developer.email\":\"rsudbantargebang@gmail.com\",\"token_type\":\"BearerToken\",\"issued_at\":\"1724397949681\",\"client_id\":\"bbMQ5PMTHztJ2gDxAqIyunSAcMS4AzHJ98EPrcWL3h49zI7k\",\"access_token\":\"VvYMImihlxyzzA7NK23785JPWZrk\",\"application_name\":\"421c7f35-387d-4e5a-bf08-9f9e11b93ce4\",\"scope\":\"\",\"expires_in\":\"14399\",\"refresh_count\":\"0\",\"status\":\"approved\"}', 'client_id=bbMQ5PMTHztJ2gDxAqIyunSAcMS4AzHJ98EPrcWL3h49zI7k&client_secret=HmrAmvD1JdFQeTPu34DRWBbT4zkDIBuTesuKXYi73phNbXkJQZcVTOxGlrJc11o6', 'https://api-satusehat-stg.dto.kemkes.go.id/oauth2/v1/accesstoken?grant_type=client_credentials', '2024-08-23 07:25:48'),
(5, 200, '{\"resourceType\":\"Location\",\"identifier\":[{\"system\":\"http://sys-ids.kemkes.go.id/location/100026305\",\"value\":\"INT\"}],\"status\":\"active\",\"name\":\"Ruang Poli Bedah\",\"description\":\"Ruang Poli Bedah\",\"mode\":\"instance\",\"telecom\":[{\"system\":\"phone\",\"value\":\"+621500567\",\"use\":\"work\"},{\"system\":\"email\",\"value\":\"pkm-satusehat@dto.kemkes.go.id\",\"use\":\"work\"},{\"system\":\"url\",\"value\":\"dto.kemkes.go.id\",\"use\":\"work\"}],\"physicalType\":{\"coding\":[{\"system\":\"http://terminology.hl7.org/CodeSystem/location-physical-type\",\"code\":\"ro\",\"display\":\"Room\"}]},\"position\":{\"longitude\":-6.23115426275766,\"latitude\":106.83239885393944,\"altitude\":0},\"managingOrganization\":{\"reference\":\"Organization/100026305\"}}', '{\"resourceType\":\"Location\",\"identifier\":[{\"system\":\"http://sys-ids.kemkes.go.id/location/100026305\",\"value\":\"INT\"}],\"status\":\"active\",\"name\":\"Ruang Poli Bedah\",\"description\":\"Ruang Poli Bedah\",\"mode\":\"instance\",\"telecom\":[{\"system\":\"phone\",\"value\":\"+621500567\",\"use\":\"work\"},{\"system\":\"email\",\"value\":\"pkm-satusehat@dto.kemkes.go.id\",\"use\":\"work\"},{\"system\":\"url\",\"value\":\"dto.kemkes.go.id\",\"use\":\"work\"}],\"physicalType\":{\"coding\":[{\"system\":\"http://terminology.hl7.org/CodeSystem/location-physical-type\",\"code\":\"ro\",\"display\":\"Room\"}]},\"position\":{\"longitude\":-6.23115426275766,\"latitude\":106.83239885393944,\"altitude\":0},\"managingOrganization\":{\"reference\":\"Organization/100026305\"}}', 'https://api-satusehat-stg.dto.kemkes.go.id/oauth2/v1/Location', '2024-08-23 07:25:48'),
(6, 200, '{\"refresh_token_expires_in\":\"0\",\"api_product_list\":\"[api-satusehat-prod]\",\"api_product_list_json\":[\"api-satusehat-prod\"],\"organization_name\":\"ihs-prod-1\",\"developer.email\":\"rsudbantargebang@gmail.com\",\"token_type\":\"BearerToken\",\"issued_at\":\"1724399040672\",\"client_id\":\"bbMQ5PMTHztJ2gDxAqIyunSAcMS4AzHJ98EPrcWL3h49zI7k\",\"access_token\":\"SaOcxGRCKOAZJhhPgxofrbbmAKZr\",\"application_name\":\"421c7f35-387d-4e5a-bf08-9f9e11b93ce4\",\"scope\":\"\",\"expires_in\":\"14399\",\"refresh_count\":\"0\",\"status\":\"approved\"}', 'client_id=bbMQ5PMTHztJ2gDxAqIyunSAcMS4AzHJ98EPrcWL3h49zI7k&client_secret=HmrAmvD1JdFQeTPu34DRWBbT4zkDIBuTesuKXYi73phNbXkJQZcVTOxGlrJc11o6', 'https://api-satusehat-stg.dto.kemkes.go.id/oauth2/v1/accesstoken?grant_type=client_credentials', '2024-08-23 07:43:59'),
(7, 200, '{\"resourceType\":\"Location\",\"identifier\":[{\"system\":\"http://sys-ids.kemkes.go.id/location/100026305\",\"value\":\"INT\"}],\"status\":\"active\",\"name\":\"Ruang Poli Bedah\",\"description\":\"Ruang Poli Bedah\",\"mode\":\"instance\",\"telecom\":[{\"system\":\"phone\",\"value\":\"+621500567\",\"use\":\"work\"},{\"system\":\"email\",\"value\":\"pkm-satusehat@dto.kemkes.go.id\",\"use\":\"work\"},{\"system\":\"url\",\"value\":\"dto.kemkes.go.id\",\"use\":\"work\"}],\"physicalType\":{\"coding\":[{\"system\":\"http://terminology.hl7.org/CodeSystem/location-physical-type\",\"code\":\"ro\",\"display\":\"Room\"}]},\"position\":{\"longitude\":-6.23115426275766,\"latitude\":106.83239885393944,\"altitude\":0},\"managingOrganization\":{\"reference\":\"Organization/100026305\"}}', '{\"resourceType\":\"Location\",\"identifier\":[{\"system\":\"http://sys-ids.kemkes.go.id/location/100026305\",\"value\":\"INT\"}],\"status\":\"active\",\"name\":\"Ruang Poli Bedah\",\"description\":\"Ruang Poli Bedah\",\"mode\":\"instance\",\"telecom\":[{\"system\":\"phone\",\"value\":\"+621500567\",\"use\":\"work\"},{\"system\":\"email\",\"value\":\"pkm-satusehat@dto.kemkes.go.id\",\"use\":\"work\"},{\"system\":\"url\",\"value\":\"dto.kemkes.go.id\",\"use\":\"work\"}],\"physicalType\":{\"coding\":[{\"system\":\"http://terminology.hl7.org/CodeSystem/location-physical-type\",\"code\":\"ro\",\"display\":\"Room\"}]},\"position\":{\"longitude\":-6.23115426275766,\"latitude\":106.83239885393944,\"altitude\":0},\"managingOrganization\":{\"reference\":\"Organization/100026305\"}}', 'https://api-satusehat-stg.dto.kemkes.go.id/oauth2/v1/Location', '2024-08-23 07:51:51'),
(8, 200, '{\"resourceType\":\"Location\",\"identifier\":[{\"system\":\"http://sys-ids.kemkes.go.id/location/100026305\",\"value\":\"INT\"}],\"status\":\"active\",\"name\":\"Ruang Poli Bedah\",\"description\":\"Ruang Poli Bedah\",\"mode\":\"instance\",\"telecom\":[{\"system\":\"phone\",\"value\":\"+621500567\",\"use\":\"work\"},{\"system\":\"email\",\"value\":\"pkm-satusehat@dto.kemkes.go.id\",\"use\":\"work\"},{\"system\":\"url\",\"value\":\"dto.kemkes.go.id\",\"use\":\"work\"}],\"physicalType\":{\"coding\":[{\"system\":\"http://terminology.hl7.org/CodeSystem/location-physical-type\",\"code\":\"ro\",\"display\":\"Room\"}]},\"position\":{\"longitude\":-6.23115426275766,\"latitude\":106.83239885393944,\"altitude\":0},\"managingOrganization\":{\"reference\":\"Organization/100026305\"}}', '{\"resourceType\":\"Location\",\"identifier\":[{\"system\":\"http://sys-ids.kemkes.go.id/location/100026305\",\"value\":\"INT\"}],\"status\":\"active\",\"name\":\"Ruang Poli Bedah\",\"description\":\"Ruang Poli Bedah\",\"mode\":\"instance\",\"telecom\":[{\"system\":\"phone\",\"value\":\"+621500567\",\"use\":\"work\"},{\"system\":\"email\",\"value\":\"pkm-satusehat@dto.kemkes.go.id\",\"use\":\"work\"},{\"system\":\"url\",\"value\":\"dto.kemkes.go.id\",\"use\":\"work\"}],\"physicalType\":{\"coding\":[{\"system\":\"http://terminology.hl7.org/CodeSystem/location-physical-type\",\"code\":\"ro\",\"display\":\"Room\"}]},\"position\":{\"longitude\":-6.23115426275766,\"latitude\":106.83239885393944,\"altitude\":0},\"managingOrganization\":{\"reference\":\"Organization/100026305\"}}', 'https://api-satusehat-stg.dto.kemkes.go.id/oauth2/v1/Location', '2024-08-23 07:52:27'),
(9, 200, '{\"resourceType\":\"Location\",\"identifier\":[{\"system\":\"http://sys-ids.kemkes.go.id/location/100026305\",\"value\":\"INT\"}],\"status\":\"active\",\"name\":\"Poli Bedah\",\"description\":\"Poli Bedah\",\"mode\":\"instance\",\"telecom\":[{\"system\":\"phone\",\"value\":\"+621500567\",\"use\":\"work\"},{\"system\":\"email\",\"value\":\"pkm-satusehat@dto.kemkes.go.id\",\"use\":\"work\"},{\"system\":\"url\",\"value\":\"dto.kemkes.go.id\",\"use\":\"work\"}],\"physicalType\":{\"coding\":[{\"system\":\"http://terminology.hl7.org/CodeSystem/location-physical-type\",\"code\":\"ro\",\"display\":\"Room\"}]},\"position\":{\"longitude\":-6.23115426275766,\"latitude\":106.83239885393944,\"altitude\":0},\"managingOrganization\":{\"reference\":\"Organization/100026305\"}}', '{\"resourceType\":\"Location\",\"identifier\":[{\"system\":\"http://sys-ids.kemkes.go.id/location/100026305\",\"value\":\"INT\"}],\"status\":\"active\",\"name\":\"Poli Bedah\",\"description\":\"Poli Bedah\",\"mode\":\"instance\",\"telecom\":[{\"system\":\"phone\",\"value\":\"+621500567\",\"use\":\"work\"},{\"system\":\"email\",\"value\":\"pkm-satusehat@dto.kemkes.go.id\",\"use\":\"work\"},{\"system\":\"url\",\"value\":\"dto.kemkes.go.id\",\"use\":\"work\"}],\"physicalType\":{\"coding\":[{\"system\":\"http://terminology.hl7.org/CodeSystem/location-physical-type\",\"code\":\"ro\",\"display\":\"Room\"}]},\"position\":{\"longitude\":-6.23115426275766,\"latitude\":106.83239885393944,\"altitude\":0},\"managingOrganization\":{\"reference\":\"Organization/100026305\"}}', 'https://api-satusehat-stg.dto.kemkes.go.id/oauth2/v1/Location', '2024-08-23 07:52:57'),
(10, 200, '{\"resourceType\":\"Location\",\"identifier\":[{\"system\":\"http://sys-ids.kemkes.go.id/location/100026305\",\"value\":\"INT\"}],\"status\":\"active\",\"name\":\"Poli Anak\",\"description\":\"Poli Anak\",\"mode\":\"instance\",\"telecom\":[{\"system\":\"phone\",\"value\":\"+621500567\",\"use\":\"work\"},{\"system\":\"email\",\"value\":\"pkm-satusehat@dto.kemkes.go.id\",\"use\":\"work\"},{\"system\":\"url\",\"value\":\"dto.kemkes.go.id\",\"use\":\"work\"}],\"physicalType\":{\"coding\":[{\"system\":\"http://terminology.hl7.org/CodeSystem/location-physical-type\",\"code\":\"ro\",\"display\":\"Room\"}]},\"position\":{\"longitude\":-6.23115426275766,\"latitude\":106.83239885393944,\"altitude\":0},\"managingOrganization\":{\"reference\":\"Organization/100026305\"}}', '{\"resourceType\":\"Location\",\"identifier\":[{\"system\":\"http://sys-ids.kemkes.go.id/location/100026305\",\"value\":\"INT\"}],\"status\":\"active\",\"name\":\"Poli Anak\",\"description\":\"Poli Anak\",\"mode\":\"instance\",\"telecom\":[{\"system\":\"phone\",\"value\":\"+621500567\",\"use\":\"work\"},{\"system\":\"email\",\"value\":\"pkm-satusehat@dto.kemkes.go.id\",\"use\":\"work\"},{\"system\":\"url\",\"value\":\"dto.kemkes.go.id\",\"use\":\"work\"}],\"physicalType\":{\"coding\":[{\"system\":\"http://terminology.hl7.org/CodeSystem/location-physical-type\",\"code\":\"ro\",\"display\":\"Room\"}]},\"position\":{\"longitude\":-6.23115426275766,\"latitude\":106.83239885393944,\"altitude\":0},\"managingOrganization\":{\"reference\":\"Organization/100026305\"}}', 'https://api-satusehat-stg.dto.kemkes.go.id/oauth2/v1/Location', '2024-08-23 07:54:27'),
(11, 200, '{\"resourceType\":\"Location\",\"identifier\":[{\"system\":\"http://sys-ids.kemkes.go.id/location/100026305\",\"value\":\"INT\"}],\"status\":\"active\",\"name\":\"Poli Anak\",\"description\":\"Poli Anak\",\"mode\":\"instance\",\"telecom\":[{\"system\":\"phone\",\"value\":\"+621500567\",\"use\":\"work\"},{\"system\":\"email\",\"value\":\"pkm-satusehat@dto.kemkes.go.id\",\"use\":\"work\"},{\"system\":\"url\",\"value\":\"dto.kemkes.go.id\",\"use\":\"work\"}],\"physicalType\":{\"coding\":[{\"system\":\"http://terminology.hl7.org/CodeSystem/location-physical-type\",\"code\":\"ro\",\"display\":\"Room\"}]},\"position\":{\"longitude\":-6.23115426275766,\"latitude\":106.83239885393944,\"altitude\":0},\"managingOrganization\":{\"reference\":\"Organization/100026305\"}}', '{\"resourceType\":\"Location\",\"identifier\":[{\"system\":\"http://sys-ids.kemkes.go.id/location/100026305\",\"value\":\"INT\"}],\"status\":\"active\",\"name\":\"Poli Anak\",\"description\":\"Poli Anak\",\"mode\":\"instance\",\"telecom\":[{\"system\":\"phone\",\"value\":\"+621500567\",\"use\":\"work\"},{\"system\":\"email\",\"value\":\"pkm-satusehat@dto.kemkes.go.id\",\"use\":\"work\"},{\"system\":\"url\",\"value\":\"dto.kemkes.go.id\",\"use\":\"work\"}],\"physicalType\":{\"coding\":[{\"system\":\"http://terminology.hl7.org/CodeSystem/location-physical-type\",\"code\":\"ro\",\"display\":\"Room\"}]},\"position\":{\"longitude\":-6.23115426275766,\"latitude\":106.83239885393944,\"altitude\":0},\"managingOrganization\":{\"reference\":\"Organization/100026305\"}}', 'https://api-satusehat-stg.dto.kemkes.go.id/oauth2/v1/Location', '2024-08-23 08:06:21'),
(12, 200, '{\"refresh_token_expires_in\":\"0\",\"api_product_list\":\"[api-satusehat-prod]\",\"api_product_list_json\":[\"api-satusehat-prod\"],\"organization_name\":\"ihs-prod-1\",\"developer.email\":\"rsudbantargebang@gmail.com\",\"token_type\":\"BearerToken\",\"issued_at\":\"1724401252202\",\"client_id\":\"bbMQ5PMTHztJ2gDxAqIyunSAcMS4AzHJ98EPrcWL3h49zI7k\",\"access_token\":\"JyXsBS2kC3ZAJCsyTPKkH0zfX3vw\",\"application_name\":\"421c7f35-387d-4e5a-bf08-9f9e11b93ce4\",\"scope\":\"\",\"expires_in\":\"14399\",\"refresh_count\":\"0\",\"status\":\"approved\"}', 'client_id=bbMQ5PMTHztJ2gDxAqIyunSAcMS4AzHJ98EPrcWL3h49zI7k&client_secret=HmrAmvD1JdFQeTPu34DRWBbT4zkDIBuTesuKXYi73phNbXkJQZcVTOxGlrJc11o6', 'https://api-satusehat-stg.dto.kemkes.go.id/oauth2/v1/accesstoken?grant_type=client_credentials', '2024-08-23 08:20:50'),
(13, 200, '{\"resourceType\":\"Location\",\"identifier\":[{\"system\":\"http://sys-ids.kemkes.go.id/location/100026305\",\"value\":\"INT\"}],\"status\":\"active\",\"name\":\"Poli Anak\",\"description\":\"Poli Anak\",\"mode\":\"instance\",\"telecom\":[{\"system\":\"phone\",\"value\":\"+621500567\",\"use\":\"work\"},{\"system\":\"email\",\"value\":\"pkm-satusehat@dto.kemkes.go.id\",\"use\":\"work\"},{\"system\":\"url\",\"value\":\"dto.kemkes.go.id\",\"use\":\"work\"}],\"physicalType\":{\"coding\":[{\"system\":\"http://terminology.hl7.org/CodeSystem/location-physical-type\",\"code\":\"ro\",\"display\":\"Room\"}]},\"position\":{\"longitude\":-6.23115426275766,\"latitude\":106.83239885393944,\"altitude\":0},\"managingOrganization\":{\"reference\":\"Organization/100026305\"}}', '{\"resourceType\":\"Location\",\"identifier\":[{\"system\":\"http://sys-ids.kemkes.go.id/location/100026305\",\"value\":\"INT\"}],\"status\":\"active\",\"name\":\"Poli Anak\",\"description\":\"Poli Anak\",\"mode\":\"instance\",\"telecom\":[{\"system\":\"phone\",\"value\":\"+621500567\",\"use\":\"work\"},{\"system\":\"email\",\"value\":\"pkm-satusehat@dto.kemkes.go.id\",\"use\":\"work\"},{\"system\":\"url\",\"value\":\"dto.kemkes.go.id\",\"use\":\"work\"}],\"physicalType\":{\"coding\":[{\"system\":\"http://terminology.hl7.org/CodeSystem/location-physical-type\",\"code\":\"ro\",\"display\":\"Room\"}]},\"position\":{\"longitude\":-6.23115426275766,\"latitude\":106.83239885393944,\"altitude\":0},\"managingOrganization\":{\"reference\":\"Organization/100026305\"}}', 'https://api-satusehat-stg.dto.kemkes.go.id/oauth2/v1/Location', '2024-08-23 08:21:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `perawat`
--

CREATE TABLE `perawat` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `poli` varchar(255) NOT NULL,
  `no_hp` varchar(15) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `perawat`
--

INSERT INTO `perawat` (`id`, `nama`, `poli`, `no_hp`, `email`, `created_at`) VALUES
(1, 'Siti Aminah', 'Poli Anak', '081234567890', 'siti.aminah@example.com', '2024-08-23 07:34:20'),
(3, 'hakim', 'Poli Bedah', '081234567890', 'lukman.hakim@example.com', '2024-08-23 07:53:59');

-- --------------------------------------------------------

--
-- Struktur dari tabel `poli`
--

CREATE TABLE `poli` (
  `id` int(11) NOT NULL,
  `identifier_system` varchar(255) NOT NULL,
  `identifier_value` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `telecom_email` varchar(255) DEFAULT NULL,
  `telecom_url` varchar(255) DEFAULT NULL,
  `physicalType_system` varchar(255) DEFAULT NULL,
  `position_longitude` double DEFAULT NULL,
  `position_latitude` double DEFAULT NULL,
  `position_altitude` double DEFAULT NULL,
  `managingOrganization_reference` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `mode` varchar(255) DEFAULT NULL,
  `telecom_phone` varchar(255) DEFAULT NULL,
  `physicalType_code` varchar(255) DEFAULT NULL,
  `physicalType_display` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `poli`
--

INSERT INTO `poli` (`id`, `identifier_system`, `identifier_value`, `name`, `telecom_email`, `telecom_url`, `physicalType_system`, `position_longitude`, `position_latitude`, `position_altitude`, `managingOrganization_reference`, `status`, `description`, `mode`, `telecom_phone`, `physicalType_code`, `physicalType_display`) VALUES
(5, 'http://sys-ids.kemkes.go.id/location/100026305', 'INT', 'Poli Bedah', 'pkm-satusehat@dto.kemkes.go.id', 'dto.kemkes.go.id', 'http://terminology.hl7.org/CodeSystem/location-physical-type', -6.23115426275766, 106.83239885393944, 0, 'Organization/100026305', 'active', 'Poli Bedah', 'instance', '+621500567', 'ro', 'Room'),
(6, 'http://sys-ids.kemkes.go.id/location/100026305', 'INT', 'Poli Anak', 'pkm-satusehat@dto.kemkes.go.id', 'dto.kemkes.go.id', 'http://terminology.hl7.org/CodeSystem/location-physical-type', -6.23115426275766, 106.83239885393944, 0, 'Organization/100026305', 'active', 'Poli Anak', 'instance', '+621500567', 'ro', 'Room');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `log_requests`
--
ALTER TABLE `log_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `perawat`
--
ALTER TABLE `perawat`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `poli`
--
ALTER TABLE `poli`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `log_requests`
--
ALTER TABLE `log_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `perawat`
--
ALTER TABLE `perawat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `poli`
--
ALTER TABLE `poli`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
