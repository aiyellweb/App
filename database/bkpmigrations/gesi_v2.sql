-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-10-2016 a las 21:10:24
-- Versión del servidor: 10.1.13-MariaDB
-- Versión de PHP: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `gesi_v2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `arl`
--

CREATE TABLE `arl` (
  `id` int(10) UNSIGNED NOT NULL,
  `codigo` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nit` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `estado` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_estado` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `arl`
--

INSERT INTO `arl` (`id`, `codigo`, `descripcion`, `nit`, `estado`, `fecha_estado`, `created_at`, `updated_at`) VALUES
(1, '14-1', 'ASEGURADORA DE VIDA COLSEGUROS S.A.', '8600274041', 'Activo', '2016-10-19 00:00:00', '2016-10-19 05:00:00', NULL),
(2, '14-17', 'SEGUROS DE VIDA ALFA S.A.', '8605036173', 'Activo', '2016-10-19 00:00:00', '2016-10-19 05:00:00', NULL),
(3, '14-18', 'LIBERTY SEGUROS DE VIDA', '8600086457', 'Activo', '2016-10-19 00:00:00', '2016-10-19 05:00:00', NULL),
(4, '14-19', 'SEGUROS DE VIDA DEL ESTADO S.A.', '8600091744', 'Activo', '2016-10-19 00:00:00', '2016-10-19 05:00:00', NULL),
(5, '14-23', 'ARP - POSITIVA COMPAÑIA DE SEGUROS', '8600111536', 'Activo', '2016-10-19 00:00:00', '2016-10-19 05:00:00', NULL),
(6, '14-25', 'RIESGOS PROFESIONALES COLMENA S.A COMPA¥ÖA DE SEGUROS DE VIDA', '8002261753', 'Activo', '2016-10-19 00:00:00', '2016-10-19 05:00:00', NULL),
(7, '14-26', 'BBVA SEGUROS DE VIDA SA', '8002408820', 'Activo', '2016-10-19 00:00:00', '2016-10-19 05:00:00', NULL),
(8, '14-28', 'ARL- SURA', '8002561619', 'Activo', '2016-10-19 00:00:00', '2016-10-19 05:00:00', NULL),
(9, '14-29', ' LA EQUIDAD SEGUROS DE VIDA ORGANISMO COOPERATIVO - LA EQUIDAD V', '8300086861', 'Activo', '2016-10-19 00:00:00', '2016-10-19 05:00:00', NULL),
(10, '14-30', 'MAPFRE COLOMBIA VIDA SEGUROS S.A.', '830054904', 'Activo', '2016-10-19 00:00:00', '2016-10-19 05:00:00', NULL),
(11, '14-4', 'SEGUROS DE VIDA COLPATRIA S.A.', '8600021839', 'Activo', '2016-10-19 00:00:00', '2016-10-19 05:00:00', NULL),
(12, '14-5', 'COMPAÑIA AGRICOLA DE SEGUROS DE VIDA S.A.', '8600025286', 'Activo', '2016-10-19 00:00:00', '2016-10-19 05:00:00', NULL),
(13, '14-7', 'CIA. DE SEGUROS BOLIVAR S.A.', '8600025032', 'Activo', '2016-10-19 00:00:00', '2016-10-19 05:00:00', NULL),
(14, '14-8', 'COMPAÑIA DE SEGUROS DE VIDA AURORA', '8600221375', 'Activo', '2016-10-19 00:00:00', '2016-10-19 05:00:00', NULL),
(15, '25-10', 'LA PREVISORA VIDA S.A. COMPAÑIA DE SEGUROS (ISS)', '860013816', 'Activo', '2016-10-19 00:00:00', '2016-10-19 05:00:00', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `caja_compensacion`
--

CREATE TABLE `caja_compensacion` (
  `id` int(10) UNSIGNED NOT NULL,
  `codigo_caja` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion_caja` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `nit_caja` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `estado_caja` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_estado_caja` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `caja_compensacion`
--

INSERT INTO `caja_compensacion` (`id`, `codigo_caja`, `descripcion_caja`, `nit_caja`, `estado_caja`, `fecha_estado_caja`, `created_at`, `updated_at`) VALUES
(1, 'CCF02', 'CAJA DE COMPENSACION FAMILIAR CAMACOL COMFAMILIAR CAMACOL', '8909008401', 'Activo', '2016-10-20 00:00:00', '2016-10-20 05:00:00', NULL),
(2, 'CCF03', 'CAJA DE COMPENSACION FAMILIAR COMFENALCO ANTIOQUIA', '8909008426', 'Activo', '2016-10-20 00:00:00', '2016-10-20 05:00:00', NULL),
(3, 'CCF04', 'CAJA DE COMPENSACION FAMILIAR DE ANTIOQUIA COMFAMA', '8909008419', 'Activo', '2016-10-20 00:00:00', '2016-10-20 05:00:00', NULL),
(4, 'CCF05', 'CAJA DE COMPENSACION FAMILIAR CAJACOPI ATLANTICO', '8901020441', 'Activo', '2016-10-20 00:00:00', '2016-10-20 05:00:00', NULL),
(5, 'CCF06', 'CAJA DE COMPENSACION FAMILIAR DE BARRANQUILLA COMBARRANQUILLA', '8901020022', 'Activo', '2016-10-20 00:00:00', '2016-10-20 05:00:00', NULL),
(6, 'CCF07', 'COMFAMILIAR DEL ATLANTICO', '8901019949', 'Activo', '2016-10-20 00:00:00', '2016-10-20 05:00:00', NULL),
(7, 'CCF08', 'COMFENALCO CARTAGENA', '8904800237', 'Activo', '2016-10-20 00:00:00', '2016-10-20 05:00:00', NULL),
(8, 'CCF09', 'CAJA DE COMPENSACION FAMILIAR DE CARTAGENA COMFAMILIAR', '8904801101', 'Activo', '2016-10-20 00:00:00', '2016-10-20 05:00:00', NULL),
(9, 'CCF10', 'CAJA DE COMPENSACION FAMILIAR DE BOYACA COMFABOY', '8918002138', 'Activo', '2016-10-20 00:00:00', '2016-10-20 05:00:00', NULL),
(10, 'CCF11', 'CAJA DE COMPENSACION FAMILIAR DE CALDAS CONFAMILIARES', '8908064905', 'Activo', '2016-10-20 00:00:00', '2016-10-20 05:00:00', NULL),
(11, 'CCF12', 'CAJA DE COMPENSACION FAMILIAR DE LA DORADA COMFAMILIAR', '8908012637', 'Activo', '2016-10-20 00:00:00', '2016-10-20 05:00:00', NULL),
(12, 'CCF13', 'CAJA DE COMPENSACION FAMILIAR DEL CAQUETA COMFACA', '8911900472', 'Activo', '2016-10-20 00:00:00', '2016-10-20 05:00:00', NULL),
(13, 'CCF14', 'CAJA DE COMPENSACION FLIAR. DEL CAUCA COMFACAUCA', '8915001820', 'Activo', '2016-10-20 00:00:00', '2016-10-20 05:00:00', NULL),
(14, 'CCF15', 'COMFACESAR', '8923999898', 'Activo', '2016-10-20 00:00:00', '2016-10-20 05:00:00', NULL),
(15, 'CCF16', 'CAJA DE COMPENSACION FAMILIAR DE CORDOBA COMFACOR', '8910800051', 'Activo', '2016-10-20 00:00:00', '2016-10-20 05:00:00', NULL),
(16, 'CCF18', 'COMFAMILIAR AFIDRO', '8600073315', 'Activo', '2016-10-20 00:00:00', '2016-10-20 05:00:00', NULL),
(17, 'CCF21', 'CAJA DE COMPENSACION FAMILIAR CAFAM', '8600135703', 'Activo', '2016-10-20 00:00:00', '2016-10-20 05:00:00', NULL),
(18, 'CCF22', 'CAJA COLOMBIANA DE SUBSIDIO FAMILIAR COLSUBSIDIO', '8600073361', 'Activo', '2016-10-20 00:00:00', '2016-10-20 05:00:00', NULL),
(19, 'CCF23', 'CAJA DE COMPENSACION FAMILIAR COMFENALCO CUNDINAMARCA', '8600066060', 'Activo', '2016-10-20 00:00:00', '2016-10-20 05:00:00', NULL),
(20, 'CCF24', 'CAJA DE COMPENSACION FAMILIAR COMPENSAR', '8600669427', 'Activo', '2016-10-20 00:00:00', '2016-10-20 05:00:00', NULL),
(21, 'CCF26', 'CAJA DE COMPENSACION FAMILIAR DE CUNDINAMARCA COMFACUNDI', '8600459047', 'Activo', '2016-10-20 00:00:00', '2016-10-20 05:00:00', NULL),
(22, 'CCF29', 'CAJA DE COMPENSACION FAMILIAR DEL CHOCO', '8916000918', 'Activo', '2016-10-20 00:00:00', '2016-10-20 05:00:00', NULL),
(23, 'CCF30', 'CAJA DE COMPENSACION FAMILIAR DE LA GUAJIRA', '8921150065', 'Activo', '2016-10-20 00:00:00', '2016-10-20 05:00:00', NULL),
(24, 'CCF32', 'COMFAMILIAR HUILA', '8911800082', 'Activo', '2016-10-20 00:00:00', '2016-10-20 05:00:00', NULL),
(25, 'CCF33', 'CAJA DE COMPENSACION FAMILIAR DEL MAGDALENA', '8917800933', 'Activo', '2016-10-20 00:00:00', '2016-10-20 05:00:00', NULL),
(26, 'CCF34', 'CAJA DE COMPENSACION FAMILIAR REGIONAL DEL META COFREM', '8920001463', 'Activo', '2016-10-20 00:00:00', '2016-10-20 05:00:00', NULL),
(27, 'CCF35', 'CAJA DE COMPENSACION FAMILIAR DE NARI¥O', '8912800081', 'Activo', '2016-10-20 00:00:00', '2016-10-20 05:00:00', NULL),
(28, 'CCF36', 'CAJA DE COMPENSACION FAMILIAR DEL ORIENTE COMFAORIENTE', '8905006756', 'Activo', '2016-10-20 00:00:00', '2016-10-20 05:00:00', NULL),
(29, 'CCF37', 'CAJA DE COMPENSACION FAMILIAR DEL NORTE DE SANTANDER COMFANORTE', '8905005163', 'Activo', '2016-10-20 00:00:00', '2016-10-20 05:00:00', NULL),
(30, 'CCF38', 'CAJA DE COMPENSACION FAMILIAR DE BARRANCABERMEJA CAFABA', '8902702755', 'Activo', '2016-10-20 00:00:00', '2016-10-20 05:00:00', NULL),
(31, 'CCF39', 'CAJA SANTANDEREANA DE SUBSIDIO FAMILIAR CAJASAN', '8902001061', 'Activo', '2016-10-20 00:00:00', '2016-10-20 05:00:00', NULL),
(32, 'CCF40', 'CAJA DE COMPENSACION FAMILIAR COMFENALCO SANTANDER', '8902015787', 'Activo', '2016-10-20 00:00:00', '2016-10-20 05:00:00', NULL),
(33, 'CCF41', 'COMFASUCRE', '8922000155', 'Activo', '2016-10-20 00:00:00', '2016-10-20 05:00:00', NULL),
(34, 'CCF42', 'CAJA DE COMPENSACION FAMILIAR DEL QUINDIO', '8900000626', 'Activo', '2016-10-20 00:00:00', '2016-10-20 05:00:00', NULL),
(35, 'CCF43', 'CAJA DE COMPENSACION FAMILIAR COMFENALCO QUINDIO', '8900003810', 'Activo', '2016-10-20 00:00:00', '2016-10-20 05:00:00', NULL),
(36, 'CCF44', 'CAJA DE COMPENSACION FAMILIAR DE RISARALDA', '8914800001', 'Activo', '2016-10-20 00:00:00', '2016-10-20 05:00:00', NULL),
(37, 'CCF46', 'CAJA DE COMPENSACION FLIAR DEL SUR DEL TOLIMA CAFASUR', '8907047370', 'Activo', '2016-10-20 00:00:00', '2016-10-20 05:00:00', NULL),
(38, 'CCF47', 'CAJA DE COMPENSACION FAMILIAR DE HONDA COMFAHONDA', '8907006793', 'Activo', '2016-10-20 00:00:00', '2016-10-20 05:00:00', NULL),
(39, 'CCF48', 'CAJA DE COMPENSACION FAMILIAR DEL TOLIMA COMFATOLIMA', '8002110251', 'Activo', '2016-10-20 00:00:00', '2016-10-20 05:00:00', NULL),
(40, 'CCF50', 'COMFENALCO DEL TOLIMA', '8907001484', 'Activo', '2016-10-20 00:00:00', '2016-10-20 05:00:00', NULL),
(41, 'CCF51', 'CAJA DE COMPENSACION FAMILIAR DE BUENAVENTURA COMFAMAR', '8903040338', 'Activo', '2016-10-20 00:00:00', '2016-10-20 05:00:00', NULL),
(42, 'CCF56', 'COMFENALCO VALLE', '8903030935', 'Activo', '2016-10-20 00:00:00', '2016-10-20 05:00:00', NULL),
(43, 'CCF57', 'CAJA DE COMPENSACION FAMILIAR DEL VALLE DEL CAUCA', '8903032085', 'Activo', '2016-10-20 00:00:00', '2016-10-20 05:00:00', NULL),
(44, 'CCF59', 'CAJA DE COMPENSACION FAMILIAR DE CARTAGO', '8919004520', 'Activo', '2016-10-20 00:00:00', '2016-10-20 05:00:00', NULL),
(45, 'CCF61', 'COMFAMILIARES UNIDAS DEL VALLE', '8913800034', 'Activo', '2016-10-20 00:00:00', '2016-10-20 05:00:00', NULL),
(46, 'CCF62', 'CAJA DE COMPENSACION FAMILIAR DE TULUA', '8919002800', 'Activo', '2016-10-20 00:00:00', '2016-10-20 05:00:00', NULL),
(47, 'CCF63', 'CAJA DE COMPENSACION FAMILIAR DEL PUTUMAYO', '8912003378', 'Activo', '2016-10-20 00:00:00', '2016-10-20 05:00:00', NULL),
(48, 'CCF64', 'CAJA DE COMPENSACION FAMILIAR CAJASAI', '8924003205', 'Activo', '2016-10-20 00:00:00', '2016-10-20 05:00:00', NULL),
(49, 'CCF65', 'CAJA DE COMPENSACION FAMILIAR DEL AMAZONAS', '8000031226', 'Activo', '2016-10-20 00:00:00', '2016-10-20 05:00:00', NULL),
(50, 'CCF67', 'CAJA DE COMPENSACION FAMILIAR DE ARAUCA COMFIAR', '8002194884', 'Activo', '2016-10-20 00:00:00', '2016-10-20 05:00:00', NULL),
(51, 'CCF68', 'CAJA DE COMPENSACION FAMILIAR CAMPESINA COMCAJA', '800231969', 'Activo', '2016-10-20 00:00:00', '2016-10-20 05:00:00', NULL),
(52, 'CCF69', 'COMFACASANARE', '8440033928', 'Activo', '2016-10-20 00:00:00', '2016-10-20 05:00:00', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos`
--

CREATE TABLE `departamentos` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `departamentos`
--

INSERT INTO `departamentos` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Valle', '2016-10-13 14:01:09', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documentos`
--

CREATE TABLE `documentos` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `documentos`
--

INSERT INTO `documentos` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'nit', '2016-10-13 10:00:00', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eps`
--

CREATE TABLE `eps` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `codigo_eps` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion_eps` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `nit_eps` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `estado_eps` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `eps`
--

INSERT INTO `eps` (`id`, `user_id`, `codigo_eps`, `descripcion_eps`, `nit_eps`, `estado_eps`, `created_at`, `updated_at`) VALUES
(1, 1, 'EPS001', 'COLMEDICA ENTIDAD PROMOTORA DE SALUD S.A.', '8301138310', 'Inactivo', '2016-08-29 05:00:00', '2016-10-17 20:09:42'),
(2, 1, 'EPS002', 'SALUD TOTAL S.A. EPS ARS', '8001309074', 'Activo', '2016-08-29 05:00:00', '2016-10-18 20:35:37'),
(3, 1, 'EPS003', 'CAFESALUD EPS', '8001409496', 'Activo', '2016-08-29 05:00:00', NULL),
(4, 1, 'EPS005', 'E.P.S. SANITAS S.A.', '8002514406', 'Activo', '2016-08-29 05:00:00', NULL),
(5, 1, 'EPS006', 'INSTITUTO DE SEGUROS SOCIALES', '8600138161', 'Activo', '2016-08-29 05:00:00', NULL),
(6, 1, 'EPS008', 'CAJA DE COMPENSACION FAMILIAR COMPENSAR', '8600669427', 'Activo', '2016-08-29 05:00:00', NULL),
(7, 1, 'EPS009', 'CAJA DE COMPENSACION FAMILIAR COMFENALCO ANTIOQUIA', '8909008426', 'Activo', '2016-08-29 05:00:00', NULL),
(8, 1, 'EPS010', 'COMPA¥IA SURAMERICANA DE SERVICIOS DE SALUD S.A. S', '8000887022', 'Activo', '2016-08-29 05:00:00', NULL),
(9, 1, 'EPS012', 'COMFENALCO VALLE', '8903030935', 'Activo', '2016-08-29 05:00:00', NULL),
(10, 1, 'EPS013', 'SALUDCOOP EPS', '8002501191', 'Activo', '2016-08-29 05:00:00', NULL),
(11, 1, 'EPS014', 'HUMANA VIVIR S.A. EPS', '8300064040', 'Activo', '2016-08-29 05:00:00', NULL),
(12, 1, 'EPS015', 'SALUD COLPATRIA S.A.', '8605122376', 'Activo', '2016-08-29 05:00:00', NULL),
(13, 1, 'EPS016', 'COOMEVA EPS S.A.', '8050004271', 'Activo', '2016-08-29 05:00:00', NULL),
(14, 1, 'EPS017', 'E.P.S. FAMISANAR LTDA. CAFAM COLSUBSIDIO', '8300035647', 'Activo', '2016-08-29 05:00:00', NULL),
(15, 1, 'EPS018', 'SERVICIO OCCIDENTAL DE SALUD S.A. S.O.S.', '8050011572', 'Activo', '2016-08-29 05:00:00', NULL),
(16, 1, 'EPS020', 'CAPRECOM', '8999990260', 'Activo', '2016-08-29 05:00:00', NULL),
(17, 1, 'EPS023', 'CRUZBLANCA S.A.', '8300097830', 'Activo', '2016-08-29 05:00:00', NULL),
(18, 1, 'EPS026', 'SOLIDARIA DE SALUD SOLSALUD S.A.', '8040012735', 'Activo', '2016-08-29 05:00:00', NULL),
(19, 1, 'EPS033', 'SALUDVIDA S.A. EPS', '8300741845', 'Activo', '2016-08-29 05:00:00', NULL),
(20, 1, 'EPS034', 'SALUDCOLOMBIA EPS S.A.', '8050219842', 'Activo', '2016-08-29 05:00:00', NULL),
(21, 1, 'EPS035', 'REDSALUD ATENCION HUMANA EPS S.A.', '8300965131', 'Activo', '2016-08-29 05:00:00', NULL),
(24, 1, '123456677', 'andres', '123344556677', '', '2016-10-19 07:07:53', '2016-10-19 07:07:53'),
(26, 1, '99999', 'como', '111198709', '2016-10-19', '2016-10-19 07:19:25', '2016-10-19 07:19:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fondo_pensiones`
--

CREATE TABLE `fondo_pensiones` (
  `id` int(10) UNSIGNED NOT NULL,
  `codigo_fondo_pension` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion_fondo_pension` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `nit_fondo_pension` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `estado_fondo_pension` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_fondo_pension` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `fondo_pensiones`
--

INSERT INTO `fondo_pensiones` (`id`, `codigo_fondo_pension`, `descripcion_fondo_pension`, `nit_fondo_pension`, `estado_fondo_pension`, `fecha_fondo_pension`, `created_at`, `updated_at`) VALUES
(1, '230201', 'PROTECCION FONDO DE PENSIONES OBLIGATORIAS', '8002297390', 'Activo', '2016-10-19 00:00:00', '2016-10-19 05:00:00', '2016-10-19 20:33:02'),
(2, '230301', 'ADMINISTRADORA DE FONDOS DE PENSIONES Y CESANTIAS PORVENIR S', '8002248088', 'Activo', '2016-10-19 00:00:00', '2016-10-19 05:00:00', NULL),
(3, '230501', 'FONDO DE PENSIONES HORIZONTE', '8002319671', 'Activo', '2016-10-19 00:00:00', '2016-10-19 05:00:00', NULL),
(4, '230801', 'FONDO DE PENSIONES SANTANDER', '8002248278', 'Activo', '2016-10-19 00:00:00', '2016-10-19 05:00:00', NULL),
(5, '230901', 'FONDO OBLIGATORIO DE PENSIONES SKANDIA', '8002530552', 'Activo', '2016-10-19 00:00:00', '2016-10-19 05:00:00', NULL),
(6, '230904', 'FONDO ALTERNATIVO DE PENSIONES SKANDIA', '8301251322', 'Activo', '2016-10-19 00:00:00', '2016-10-19 05:00:00', NULL),
(7, '231001', 'FONDO DE PENSIONES OBLIGATORIAS COLFONDOS', '8002279406', 'Activo', '2016-10-19 00:00:00', '2016-10-19 05:00:00', NULL),
(8, '25-11', 'INSTITUTO DE SEGUROS SOCIALES', '8600138161', 'Activo', '2016-10-19 00:00:00', '2016-10-19 05:00:00', NULL),
(9, '25-2', 'CAJA DE AUXILIOS Y DE PRESTACIONES DE ACDAC CAXDAC', '8600073798', 'Activo', '2016-10-19 00:00:00', '2016-10-19 05:00:00', NULL),
(10, '25-3', 'FONDO DE PREVISION SOCIAL DEL CONGRESO DE LA REPUBLICA', '8999997347', 'Activo', '2016-10-19 00:00:00', '2016-10-19 05:00:00', NULL),
(11, '25-4', 'CAPRECOM', '8999990260', 'Activo', '2016-10-19 00:00:00', '2016-10-19 05:00:00', NULL),
(12, '25-7', 'PENSIONES DE ANTIOQUIA', '8002162780', 'Activo', '2016-10-19 00:00:00', '2016-10-19 05:00:00', NULL),
(13, '25-8', 'CAJA NACIONAL DE PREVISION SOCIAL', '8999990103', 'Activo', '2016-10-19 00:00:00', '2016-10-19 05:00:00', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2016_10_13_135038_create_departamentos_table', 1),
('2016_10_13_135701_create_roles_table', 1),
('2016_10_13_140054_create_municipios_table', 2),
('2016_10_13_140210_create_documentos_table', 2),
('2014_10_12_000000_create_users_table', 3),
('2014_10_12_100000_create_password_resets_table', 3),
('2016_10_15_172121_create_eps_table', 4),
('2016_10_18_200448_create_fondo_pensiones_table', 5),
('2016_10_19_155908_add_arl_table', 6),
('2016_10_20_184822_add_caja_compensacion_table', 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipios`
--

CREATE TABLE `municipios` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `departamento_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `municipios`
--

INSERT INTO `municipios` (`id`, `nombre`, `departamento_id`, `created_at`, `updated_at`) VALUES
(1, 'Cali', 1, '2016-10-13 14:15:00', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Adminnistrador', '2016-10-13 13:56:06', NULL),
(2, 'contratante', '2016-10-13 21:00:00', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rol_id` int(10) UNSIGNED NOT NULL,
  `documento_id` int(10) UNSIGNED NOT NULL,
  `numero_doc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `rol_id`, `documento_id`, `numero_doc`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Verlaine Jaramillo', 1, 1, '', 'admin@hotmail.com', '$2y$10$EATDjnB6OGNAedtkbyKFvuAvGVwadl5Yg76waJCqyNBOle6drAsm6', 'RHP8VDfZRYOx0CQWaFwrp8WMx38vmDNBkRzLlruiIXxyUkIRw1MUuMxdHIiV', '2016-10-13 20:39:15', '2016-10-19 06:00:15', NULL),
(2, 'Adiela de Lombana', 2, 1, '890331426', 'amvalencia@adl.co', '12345678', NULL, '2016-10-14 02:54:16', '2016-10-14 02:54:16', NULL),
(3, 'Andres', 1, 1, '1144139561', 'aiyell@hotmail.com', '$2y$10$ObpBBkgBsFeEQEbQUiNgnecx.nW0RQ9b1wkeiqbEW5d7S1PcUGL.W', NULL, '2016-10-14 02:57:34', '2016-10-14 02:57:34', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `arl`
--
ALTER TABLE `arl`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `arl_codigo_unique` (`codigo`),
  ADD UNIQUE KEY `arl_nit_unique` (`nit`);

--
-- Indices de la tabla `caja_compensacion`
--
ALTER TABLE `caja_compensacion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `documentos`
--
ALTER TABLE `documentos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `eps`
--
ALTER TABLE `eps`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `eps_codigo_eps_unique` (`codigo_eps`),
  ADD KEY `eps_user_id_index` (`user_id`);

--
-- Indices de la tabla `fondo_pensiones`
--
ALTER TABLE `fondo_pensiones`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fondo_pensiones_codigo_fondo_pension_unique` (`codigo_fondo_pension`);

--
-- Indices de la tabla `municipios`
--
ALTER TABLE `municipios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `municipios_departamento_id_foreign` (`departamento_id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_rol_id_foreign` (`rol_id`),
  ADD KEY `users_documento_id_foreign` (`documento_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `arl`
--
ALTER TABLE `arl`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT de la tabla `caja_compensacion`
--
ALTER TABLE `caja_compensacion`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `documentos`
--
ALTER TABLE `documentos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `eps`
--
ALTER TABLE `eps`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT de la tabla `fondo_pensiones`
--
ALTER TABLE `fondo_pensiones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT de la tabla `municipios`
--
ALTER TABLE `municipios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `municipios`
--
ALTER TABLE `municipios`
  ADD CONSTRAINT `municipios_departamento_id_foreign` FOREIGN KEY (`departamento_id`) REFERENCES `departamentos` (`id`);

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_documento_id_foreign` FOREIGN KEY (`documento_id`) REFERENCES `documentos` (`id`),
  ADD CONSTRAINT `users_rol_id_foreign` FOREIGN KEY (`rol_id`) REFERENCES `roles` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
