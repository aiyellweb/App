-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-11-2016 a las 04:05:43
-- Versión del servidor: 10.1.9-MariaDB
-- Versión de PHP: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `gesicolombia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `arl`
--

CREATE TABLE `arl` (
  `codigo` char(6) NOT NULL COMMENT 'Código ARL',
  `descripcion` char(64) NOT NULL COMMENT 'Descripción ARL',
  `nit` decimal(15,0) NOT NULL COMMENT 'NIT ARL',
  `estado` char(1) NOT NULL COMMENT 'Estado ARL (A,I,S,H)',
  `fecha_estado` datetime NOT NULL COMMENT 'Fecha Estado ARL'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `arl`
--

INSERT INTO `arl` (`codigo`, `descripcion`, `nit`, `estado`, `fecha_estado`) VALUES
('14-1', 'ASEGURADORA DE VIDA COLSEGUROS S.A.', '8600274041', 'A', '2016-08-29 00:00:00'),
('14-17', 'SEGUROS DE VIDA ALFA S.A.', '8605036173', 'A', '2016-08-29 00:00:00'),
('14-18', 'LIBERTY SEGUROS DE VIDA', '8600086457', 'A', '2016-08-29 00:00:00'),
('14-19', 'SEGUROS DE VIDA DEL ESTADO S.A.', '8600091744', 'A', '2016-08-29 00:00:00'),
('14-23', 'ARP - POSITIVA COMPAÑIA DE SEGUROS', '8600111536', 'A', '2016-08-29 00:00:00'),
('14-25', 'RIESGOS PROFESIONALES COLMENA S.A COMPA¥ÖA DE SEGUROS DE VIDA', '8002261753', 'A', '2016-08-29 00:00:00'),
('14-26', 'BBVA SEGUROS DE VIDA SA', '8002408820', 'A', '2016-08-29 00:00:00'),
('14-28', 'ARL- SURA', '8002561619', 'A', '2016-08-29 00:00:00'),
('14-29', ' LA EQUIDAD SEGUROS DE VIDA ORGANISMO COOPERATIVO - LA EQUIDAD V', '8300086861', 'A', '2016-08-29 00:00:00'),
('14-30', 'MAPFRE COLOMBIA VIDA SEGUROS S.A.', '830054904', 'A', '2016-08-29 00:00:00'),
('14-4', 'SEGUROS DE VIDA COLPATRIA S.A.', '8600021839', 'A', '2016-08-29 00:00:00'),
('14-5', 'COMPAÑIA AGRICOLA DE SEGUROS DE VIDA S.A.', '8600025286', 'A', '2016-08-29 00:00:00'),
('14-7', 'CIA. DE SEGUROS BOLIVAR S.A.', '8600025032', 'A', '2016-08-29 00:00:00'),
('14-8', 'COMPAÑIA DE SEGUROS DE VIDA AURORA', '8600221375', 'A', '2016-08-29 00:00:00'),
('25-10', 'LA PREVISORA VIDA S.A. COMPAÑIA DE SEGUROS (ISS)', '860013816', 'A', '2016-08-29 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bancos`
--

CREATE TABLE `bancos` (
  `codigo` int(11) NOT NULL COMMENT 'Codigo Banco',
  `descripcion` char(64) NOT NULL COMMENT 'Descripción Banco'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `bancos`
--

INSERT INTO `bancos` (`codigo`, `descripcion`) VALUES
(7, 'BANCOLOMBIA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `beneficiarios`
--

CREATE TABLE `beneficiarios` (
  `numero_documento_identificacion` decimal(15,0) NOT NULL COMMENT 'Num Documento Identificación',
  `tipo_documento` char(1) NOT NULL COMMENT 'Tipo Documento (C,T,E,P)',
  `codigo_municipio_documento` int(11) NOT NULL COMMENT 'Cod Ciudad Documento Beneficiario',
  `nombres` char(64) NOT NULL COMMENT 'Nombre Beneficiario',
  `apellidos` char(64) NOT NULL COMMENT 'Apellido Beneficiario',
  `direccion` char(255) NOT NULL COMMENT 'Dirección Beneficiario',
  `direccion_barrio` char(64) NOT NULL COMMENT 'Barrio  Beneficiario',
  `codigo_municipio` int(11) NOT NULL COMMENT 'Cod Ciudad Beneficiario',
  `telefono` char(16) NOT NULL COMMENT 'Teléfono Beneficiario',
  `parentesco` int(11) NOT NULL COMMENT 'Codigo Parentesco',
  `numero_documento_identificacion_contratista` decimal(15,0) NOT NULL COMMENT 'Num Documento Identificación',
  `tipo_documento_contratista` char(1) NOT NULL COMMENT 'Tipo Documento (C,T,E,P)'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cajas_compensacion`
--

CREATE TABLE `cajas_compensacion` (
  `codigo_caja` char(6) NOT NULL COMMENT 'Código Caja de Compensación',
  `descripcion_caja` char(64) NOT NULL COMMENT 'Descripción Caja de Compensación',
  `nit_caja` decimal(15,0) NOT NULL COMMENT 'NIT Caja de Compensación',
  `estado_caja` char(1) NOT NULL COMMENT 'Estado Caja de Compensación (A,I,S,H)',
  `fecha_estado_caja` datetime NOT NULL COMMENT 'Fecha Estado Caja de Compensación'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cajas_compensacion`
--

INSERT INTO `cajas_compensacion` (`codigo_caja`, `descripcion_caja`, `nit_caja`, `estado_caja`, `fecha_estado_caja`) VALUES
('CCF02', 'CAJA DE COMPENSACION FAMILIAR CAMACOL COMFAMILIAR CAMACOL', '8909008401', 'A', '2016-08-29 00:00:00'),
('CCF03', 'CAJA DE COMPENSACION FAMILIAR COMFENALCO ANTIOQUIA', '8909008426', 'A', '2016-08-29 00:00:00'),
('CCF04', 'CAJA DE COMPENSACION FAMILIAR DE ANTIOQUIA COMFAMA', '8909008419', 'A', '2016-08-29 00:00:00'),
('CCF05', 'CAJA DE COMPENSACION FAMILIAR CAJACOPI ATLANTICO', '8901020441', 'A', '2016-08-29 00:00:00'),
('CCF06', 'CAJA DE COMPENSACION FAMILIAR DE BARRANQUILLA COMBARRANQUILLA', '8901020022', 'A', '2016-08-29 00:00:00'),
('CCF07', 'COMFAMILIAR DEL ATLANTICO', '8901019949', 'A', '2016-08-29 00:00:00'),
('CCF08', 'COMFENALCO CARTAGENA', '8904800237', 'A', '2016-08-29 00:00:00'),
('CCF09', 'CAJA DE COMPENSACION FAMILIAR DE CARTAGENA COMFAMILIAR', '8904801101', 'A', '2016-08-29 00:00:00'),
('CCF10', 'CAJA DE COMPENSACION FAMILIAR DE BOYACA COMFABOY', '8918002138', 'A', '2016-08-29 00:00:00'),
('CCF11', 'CAJA DE COMPENSACION FAMILIAR DE CALDAS CONFAMILIARES', '8908064905', 'A', '2016-08-29 00:00:00'),
('CCF12', 'CAJA DE COMPENSACION FAMILIAR DE LA DORADA COMFAMILIAR', '8908012637', 'A', '2016-08-29 00:00:00'),
('CCF13', 'CAJA DE COMPENSACION FAMILIAR DEL CAQUETA COMFACA', '8911900472', 'A', '2016-08-29 00:00:00'),
('CCF14', 'CAJA DE COMPENSACION FLIAR. DEL CAUCA COMFACAUCA', '8915001820', 'A', '2016-08-29 00:00:00'),
('CCF15', 'COMFACESAR', '8923999898', 'A', '2016-08-29 00:00:00'),
('CCF16', 'CAJA DE COMPENSACION FAMILIAR DE CORDOBA COMFACOR', '8910800051', 'A', '2016-08-29 00:00:00'),
('CCF18', 'COMFAMILIAR AFIDRO', '8600073315', 'A', '2016-08-29 00:00:00'),
('CCF21', 'CAJA DE COMPENSACION FAMILIAR CAFAM', '8600135703', 'A', '2016-08-29 00:00:00'),
('CCF22', 'CAJA COLOMBIANA DE SUBSIDIO FAMILIAR COLSUBSIDIO', '8600073361', 'A', '2016-08-29 00:00:00'),
('CCF23', 'CAJA DE COMPENSACION FAMILIAR COMFENALCO CUNDINAMARCA', '8600066060', 'A', '2016-08-29 00:00:00'),
('CCF24', 'CAJA DE COMPENSACION FAMILIAR COMPENSAR', '8600669427', 'A', '2016-08-29 00:00:00'),
('CCF26', 'CAJA DE COMPENSACION FAMILIAR DE CUNDINAMARCA COMFACUNDI', '8600459047', 'A', '2016-08-29 00:00:00'),
('CCF29', 'CAJA DE COMPENSACION FAMILIAR DEL CHOCO', '8916000918', 'A', '2016-08-29 00:00:00'),
('CCF30', 'CAJA DE COMPENSACION FAMILIAR DE LA GUAJIRA', '8921150065', 'A', '2016-08-29 00:00:00'),
('CCF32', 'COMFAMILIAR HUILA', '8911800082', 'A', '2016-08-29 00:00:00'),
('CCF33', 'CAJA DE COMPENSACION FAMILIAR DEL MAGDALENA', '8917800933', 'A', '2016-08-29 00:00:00'),
('CCF34', 'CAJA DE COMPENSACION FAMILIAR REGIONAL DEL META COFREM', '8920001463', 'A', '2016-08-29 00:00:00'),
('CCF35', 'CAJA DE COMPENSACION FAMILIAR DE NARI¥O', '8912800081', 'A', '2016-08-29 00:00:00'),
('CCF36', 'CAJA DE COMPENSACION FAMILIAR DEL ORIENTE COMFAORIENTE', '8905006756', 'A', '2016-08-29 00:00:00'),
('CCF37', 'CAJA DE COMPENSACION FAMILIAR DEL NORTE DE SANTANDER COMFANORTE', '8905005163', 'A', '2016-08-29 00:00:00'),
('CCF38', 'CAJA DE COMPENSACION FAMILIAR DE BARRANCABERMEJA CAFABA', '8902702755', 'A', '2016-08-29 00:00:00'),
('CCF39', 'CAJA SANTANDEREANA DE SUBSIDIO FAMILIAR CAJASAN', '8902001061', 'A', '2016-08-29 00:00:00'),
('CCF40', 'CAJA DE COMPENSACION FAMILIAR COMFENALCO SANTANDER', '8902015787', 'A', '2016-08-29 00:00:00'),
('CCF41', 'COMFASUCRE', '8922000155', 'A', '2016-08-29 00:00:00'),
('CCF42', 'CAJA DE COMPENSACION FAMILIAR DEL QUINDIO', '8900000626', 'A', '2016-08-29 00:00:00'),
('CCF43', 'CAJA DE COMPENSACION FAMILIAR COMFENALCO QUINDIO', '8900003810', 'A', '2016-08-29 00:00:00'),
('CCF44', 'CAJA DE COMPENSACION FAMILIAR DE RISARALDA', '8914800001', 'A', '2016-08-29 00:00:00'),
('CCF46', 'CAJA DE COMPENSACION FLIAR DEL SUR DEL TOLIMA CAFASUR', '8907047370', 'A', '2016-08-29 00:00:00'),
('CCF47', 'CAJA DE COMPENSACION FAMILIAR DE HONDA COMFAHONDA', '8907006793', 'A', '2016-08-29 00:00:00'),
('CCF48', 'CAJA DE COMPENSACION FAMILIAR DEL TOLIMA COMFATOLIMA', '8002110251', 'A', '2016-08-29 00:00:00'),
('CCF50', 'COMFENALCO DEL TOLIMA', '8907001484', 'A', '2016-08-29 00:00:00'),
('CCF51', 'CAJA DE COMPENSACION FAMILIAR DE BUENAVENTURA COMFAMAR', '8903040338', 'A', '2016-08-29 00:00:00'),
('CCF56', 'COMFENALCO VALLE', '8903030935', 'A', '2016-08-29 00:00:00'),
('CCF57', 'CAJA DE COMPENSACION FAMILIAR DEL VALLE DEL CAUCA', '8903032085', 'A', '2016-08-29 00:00:00'),
('CCF59', 'CAJA DE COMPENSACION FAMILIAR DE CARTAGO', '8919004520', 'A', '2016-08-29 00:00:00'),
('CCF61', 'COMFAMILIARES UNIDAS DEL VALLE', '8913800034', 'A', '2016-08-29 00:00:00'),
('CCF62', 'CAJA DE COMPENSACION FAMILIAR DE TULUA', '8919002800', 'A', '2016-08-29 00:00:00'),
('CCF63', 'CAJA DE COMPENSACION FAMILIAR DEL PUTUMAYO', '8912003378', 'A', '2016-08-29 00:00:00'),
('CCF64', 'CAJA DE COMPENSACION FAMILIAR CAJASAI', '8924003205', 'A', '2016-08-29 00:00:00'),
('CCF65', 'CAJA DE COMPENSACION FAMILIAR DEL AMAZONAS', '8000031226', 'A', '2016-08-29 00:00:00'),
('CCF67', 'CAJA DE COMPENSACION FAMILIAR DE ARAUCA COMFIAR', '8002194884', 'A', '2016-08-29 00:00:00'),
('CCF68', 'CAJA DE COMPENSACION FAMILIAR CAMPESINA COMCAJA', '800231969', 'A', '2016-08-29 00:00:00'),
('CCF69', 'COMFACASANARE', '8440033928', 'A', '2016-08-29 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conceptos`
--

CREATE TABLE `conceptos` (
  `codigo` int(11) NOT NULL COMMENT 'Cod Concepto',
  `descripcion` char(64) NOT NULL COMMENT 'Descripción Concepto'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contratantes`
--

CREATE TABLE `contratantes` (
  `nit` decimal(15,0) NOT NULL COMMENT 'Nit Contratante',
  `razon_social` char(64) NOT NULL COMMENT 'Razón Social',
  `nombre_comercial` char(64) NOT NULL COMMENT 'Nombre Comercial',
  `direccion` char(255) NOT NULL COMMENT 'Dirección Contratante',
  `telefono_1` char(16) NOT NULL COMMENT 'Telefono 1',
  `telefono_2` char(16) NOT NULL COMMENT 'Telefono 2',
  `codigo_municipio` int(11) NOT NULL COMMENT 'Cod Ciudad',
  `estado` char(1) NOT NULL COMMENT 'Estado Cliente (D, A, S, I, H)',
  `fecha_estado` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Fecha Estado Cliente',
  `nombre_contacto` char(64) NOT NULL COMMENT 'Nombre Contacto',
  `telefono_contacto` char(16) NOT NULL COMMENT 'Teléfono Contacto',
  `dscripcion_cargo` char(64) NOT NULL COMMENT 'Cargo Contacto',
  `nombre_contacto_suplente` char(64) NOT NULL COMMENT 'Nombre Contacto Suplente',
  `telefono_contacto_suplente` char(16) NOT NULL COMMENT 'Teléfono Contacto Suplente',
  `descripcion_cargo_suplente` char(64) NOT NULL COMMENT 'Cargo Contacto Suplente',
  `id_cuenta_bancaria` int(11) NOT NULL COMMENT 'Cuenta Bancaria',
  `valor_admin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `contratantes`
--

INSERT INTO `contratantes` (`nit`, `razon_social`, `nombre_comercial`, `direccion`, `telefono_1`, `telefono_2`, `codigo_municipio`, `estado`, `fecha_estado`, `nombre_contacto`, `telefono_contacto`, `dscripcion_cargo`, `nombre_contacto_suplente`, `telefono_contacto_suplente`, `descripcion_cargo_suplente`, `id_cuenta_bancaria`, `valor_admin`) VALUES
('890331426', 'ADIELA DE LOMBANA S.A.', 'ADIELA DE LOMBANA S.A.', 'Carrera 4 # 22-74', '8980033', '3174370677', 1004, 'A', '2016-08-29 05:00:00', 'Ana Maria Valencia Avila', '8980033 Ext 2118', 'Coordinadora Salud ocupacional', 'Diana Alexandra Calvo', '8980033 Ext 2145', 'Asistente de Obras', 4, 20000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contratantes_arl`
--

CREATE TABLE `contratantes_arl` (
  `nit_contratante` decimal(15,0) NOT NULL COMMENT 'Nit Contratante',
  `codigo_arl` char(6) NOT NULL COMMENT 'Código ARL',
  `control_afiliacion` char(1) NOT NULL COMMENT 'Control Afiliación (P,V)',
  `codigo_acceso` char(64) NOT NULL COMMENT 'Código Acceso',
  `clave_acceso` char(64) NOT NULL COMMENT 'Clave Acceso',
  `enlace_web` char(255) NOT NULL COMMENT 'Enlace WEB'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contratistas`
--

CREATE TABLE `contratistas` (
  `id` int(11) NOT NULL,
  `numero_documento_identificacion` decimal(15,0) NOT NULL COMMENT 'Num Documento Identificación',
  `tipo_documento` char(2) NOT NULL COMMENT 'Tipo Documento (C,T,E,P)',
  `codigo_municipio_documento` int(11) NOT NULL COMMENT 'Cod Ciudad del Documento',
  `archivo_documento` varchar(50) NOT NULL,
  `nombre_contratista1` char(64) NOT NULL COMMENT 'Nombre Contratista 1',
  `nombre_contratista2` char(64) DEFAULT NULL COMMENT 'Nombre Contratista 2',
  `apellido_contratista1` char(64) NOT NULL COMMENT 'Apellido Contratista 1',
  `apellido_contratista2` char(64) DEFAULT NULL COMMENT 'Apellido Contratista 2',
  `direccion_contratista` char(255) NOT NULL COMMENT 'Dirección Contratista',
  `direccion_barrio` char(64) NOT NULL COMMENT 'Barrio ',
  `codigo_municipio` int(11) NOT NULL COMMENT 'Cod Ciudad',
  `fecha_nacimiento_contratista` datetime NOT NULL COMMENT 'Fecha Nacimiento',
  `estado_civil` char(1) NOT NULL COMMENT 'Estado Civil (S,C,L,V)',
  `nivel_educacion` char(1) NOT NULL COMMENT 'Nivel Educación (P,S,T,L,U,E,M,D)',
  `telefono_contratista1` char(16) NOT NULL COMMENT 'Teléfono Contratista 1',
  `telefono_contratista2` char(16) DEFAULT NULL COMMENT 'Teléfono Contratista 2',
  `correo_electronico` char(64) NOT NULL COMMENT 'Correo Electrónico',
  `estado_contratista` char(1) NOT NULL COMMENT 'Estado Contratista (A,I,S,H)',
  `fecha_estado_contratista` datetime NOT NULL COMMENT 'Fecha Estado Contratista',
  `nit_contratante` decimal(15,0) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `contratistas`
--

INSERT INTO `contratistas` (`id`, `numero_documento_identificacion`, `tipo_documento`, `codigo_municipio_documento`, `archivo_documento`, `nombre_contratista1`, `nombre_contratista2`, `apellido_contratista1`, `apellido_contratista2`, `direccion_contratista`, `direccion_barrio`, `codigo_municipio`, `fecha_nacimiento_contratista`, `estado_civil`, `nivel_educacion`, `telefono_contratista1`, `telefono_contratista2`, `correo_electronico`, `estado_contratista`, `fecha_estado_contratista`, `nit_contratante`, `created_at`, `updated_at`) VALUES
(5, '1130586936', 'CC', 1004, '1130586936_2016-09-22_09-55-10.pdf', 'EWIR', 'ALEXIS', 'VALENCIA', 'QUESADA', 'CARRERA 53 F # 12 C 44', 'BRISAS DE MAYO', 1004, '1985-03-21 00:00:00', 'S', 'S', '3177016852', '', '.', 'S', '0000-00-00 00:00:00', '890331426', '2016-09-22 16:55:10', '2016-09-22 16:55:10'),
(6, '76350753', 'CC', 1004, '76350753_2016-09-22_09-58-34.pdf', 'GUIOVANN', '', 'VICTORIA', 'ANDRADE', 'CARRERA 53 F # 12 C 44', 'LAS ACACIAS', 1004, '1975-12-18 00:00:00', 'L', 'S', '3176387819', '', '.', 'S', '0000-00-00 00:00:00', '890331426', '2016-09-22 16:58:34', '2016-09-22 16:58:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contratistas_obras`
--

CREATE TABLE `contratistas_obras` (
  `numero_documento_identificacion` decimal(15,0) NOT NULL COMMENT 'Num Documento Identificación',
  `tipo_documento` char(1) NOT NULL COMMENT 'Tipo Documento (C,T,E,P)',
  `nit_contratante` decimal(15,0) NOT NULL COMMENT 'Nit Contratante',
  `codigo_obra` int(11) NOT NULL COMMENT 'Cod Obra',
  `fecha_contrato` datetime NOT NULL COMMENT 'Fecha Contrato'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contratista_seguridad_social`
--

CREATE TABLE `contratista_seguridad_social` (
  `nit_contratista` decimal(15,0) NOT NULL COMMENT ' seguridad SocialNit Contratista',
  `razon_social` char(64) NOT NULL COMMENT 'Razón Social',
  `nombre_comercial` char(64) NOT NULL COMMENT 'Nombre Comercial',
  `direccion_contratista` char(255) NOT NULL COMMENT 'Dirección Contratista',
  `telefono_1` char(16) NOT NULL COMMENT 'Telefono 1',
  `telefono_2` char(16) NOT NULL COMMENT 'Telefono 2',
  `codigo_municipio` int(11) NOT NULL COMMENT 'Cod Ciudad',
  `estado_contratista` char(1) NOT NULL COMMENT 'Estado Contratista (A,I,S,H)',
  `fecha_estado_contratista` datetime NOT NULL COMMENT 'Fecha Estado Contratista'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contrato_servicios`
--

CREATE TABLE `contrato_servicios` (
  `numero_contrato` decimal(15,0) NOT NULL COMMENT 'Número de contrato',
  `nit_contratante` decimal(15,0) NOT NULL COMMENT 'Nit Contratante',
  `codigo_obra` int(11) NOT NULL COMMENT 'Cod Obra',
  `numero_documento_identificacion` decimal(15,0) NOT NULL COMMENT 'Num Documento Identificación',
  `tipo_documento` char(1) NOT NULL COMMENT 'Tipo Documento (C,T,E,P)',
  `fecha_desde` datetime NOT NULL COMMENT 'Fecha inicio contrato',
  `fecha_hasta` datetime NOT NULL COMMENT 'Fecha Fin Contrato',
  `fecha_retiro_contratista` datetime NOT NULL COMMENT 'Frcha Retiro Contratista',
  `estado_contrato` char(1) NOT NULL COMMENT 'Estado Contrato (S,P,C,T,A)',
  `fecha_estado_contrato` datetime NOT NULL COMMENT 'Fecha Estado Contrato',
  `valor_salario` decimal(15,2) NOT NULL COMMENT 'Valor Salario',
  `codigo_eps` char(6) NOT NULL COMMENT 'Código EPS',
  `estado_afiliacion_eps` char(1) NOT NULL COMMENT 'Estado Afiliación EPS (S,N)',
  `fecha_estado_afiliacion_eps` datetime NOT NULL COMMENT 'Fecha Estado Afiliación EPS',
  `incluir_pago_eps` char(1) NOT NULL COMMENT 'Incluir Pago EPS (S,N)',
  `fondo_pension` char(6) NOT NULL COMMENT 'Fondo de Pension',
  `estado_afiliacion_pension` char(1) NOT NULL COMMENT 'Estado Afiliación Pension (S,N)',
  `fecha_estado_afiliacion_pension` datetime NOT NULL COMMENT 'Fecha Estado Afiliación Pension',
  `incluir_pago_fondo_pension` char(1) NOT NULL COMMENT 'Incluir Pago Fondo de Pension (S,N)',
  `codigo_arl` char(6) NOT NULL COMMENT 'Código ARL',
  `estado_afiliacion_arl` char(1) NOT NULL COMMENT 'Estado Afiliación ARL (S,N)',
  `fecha_estado_afiliacion_arl` datetime NOT NULL COMMENT 'Fecha Estado Afiliación ARL',
  `incluir_pago_arl` char(1) NOT NULL COMMENT 'Incluir Pago ARL (S,N)',
  `tipo_riesgo_arl` char(3) NOT NULL COMMENT 'Tipo de Riesgo ( I, II, III, IV, V)',
  `caja_compensacion` char(6) NOT NULL COMMENT 'Caja de Compensación',
  `estado_afiliacion_caja_compensacion` char(1) NOT NULL COMMENT 'Estado Afiliación Caja (S,N)',
  `fecha_estado_afiliacion_caja_compensacion` datetime NOT NULL COMMENT 'Fecha Estado Afiliación Caja',
  `incluir_pago_caja_compensacion` char(1) NOT NULL COMMENT 'Incluir Pago Caja (S,N)',
  `codigo_tipo_contratista` int(11) NOT NULL COMMENT 'Cod Tipo Contratista',
  `codigo_acceso_operador_pago` char(64) NOT NULL COMMENT 'Cod Acceso Operador  de Pago',
  `clave_acceso_operador_pago` char(64) NOT NULL COMMENT 'Clave Acceso Operador  de Pago',
  `enlace_web_operador_pago` char(255) NOT NULL COMMENT 'Enlace WEB Operador de Pago'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuentas_bancarias`
--

CREATE TABLE `cuentas_bancarias` (
  `id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL COMMENT 'Codigo Banco',
  `numero_cuenta` decimal(15,0) NOT NULL COMMENT 'Numero de Cuenta Bancaria',
  `tipo_cuenta` char(1) NOT NULL COMMENT 'Tipo Cuenta ( C,A)'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cuentas_bancarias`
--

INSERT INTO `cuentas_bancarias` (`id`, `codigo`, `numero_cuenta`, `tipo_cuenta`) VALUES
(4, 7, '1234567890', 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos`
--

CREATE TABLE `departamentos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `departamentos`
--

INSERT INTO `departamentos` (`id`, `nombre`) VALUES
(5, 'ANTIOQUIA\r'),
(8, 'ATLANTICO\r'),
(11, 'BOGOTA\r'),
(13, 'BOLIVAR\r'),
(15, 'BOYACA\r'),
(17, 'CALDAS\r'),
(18, 'CAQUETA\r'),
(19, 'CAUCA\r'),
(20, 'CESAR\r'),
(23, 'CORDOBA\r'),
(25, 'CUNDINAMARCA\r'),
(27, 'CHOCO\r'),
(33, 'Departamen\r'),
(41, 'HUILA\r'),
(44, 'LA GUAJIRA\r'),
(47, 'MAGDALENA\r'),
(50, 'META\r'),
(52, 'NARI¥O\r'),
(54, 'N. DE SANTANDER\r'),
(63, 'QUINDIO\r'),
(66, 'RISARALDA\r'),
(68, 'SANTANDER\r'),
(70, 'SUCRE\r'),
(73, 'TOLIMA\r'),
(76, 'VALLE DEL CAUCA\r'),
(81, 'ARAUCA\r'),
(85, 'CASANARE\r'),
(86, 'PUTUMAYO\r'),
(88, 'SAN ANDRES\r'),
(91, 'AMAZONAS\r'),
(94, 'GUAINIA\r'),
(95, 'GUAVIARE\r'),
(97, 'VAUPES\r'),
(99, 'VICHADA\r');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalles_factura`
--

CREATE TABLE `detalles_factura` (
  `numero_factura` decimal(15,0) NOT NULL COMMENT 'Número de factura',
  `numero_item` int(11) NOT NULL COMMENT 'Número Item',
  `numero_contrato` decimal(15,0) NOT NULL COMMENT 'Número de contrato',
  `codigo_concepto` int(11) NOT NULL COMMENT 'Cod Concepto',
  `valor_concepto` decimal(15,2) NOT NULL COMMENT 'Valor Concepto'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `encabezados_factura`
--

CREATE TABLE `encabezados_factura` (
  `numero_factura` decimal(15,0) NOT NULL COMMENT 'Número de factura',
  `nit_contratante` decimal(15,0) NOT NULL COMMENT 'Nit Contratante',
  `fecha_factura` datetime NOT NULL COMMENT 'Fecha Factura',
  `fecha_vencimiento` datetime NOT NULL COMMENT 'Fecha Vencimiento',
  `estado_factura` char(1) NOT NULL COMMENT 'Estado Factura (P,E,C,V,A)',
  `fecha_estado_factura` datetime NOT NULL COMMENT 'Fecha Estado Factura',
  `fecha_desde_facturado` datetime NOT NULL COMMENT 'Fecha Desde Facturado',
  `fecha_hasta_facturado` datetime NOT NULL COMMENT 'Fecha Hasta Facturado',
  `total_valor_detalles` decimal(15,2) NOT NULL COMMENT 'Total Valor Detalles',
  `cuatro_x_1000` decimal(15,2) NOT NULL COMMENT 'Cuatro x Mil',
  `valor_administración_total` decimal(15,2) NOT NULL COMMENT 'Valor Administración Total',
  `total_factura` decimal(15,2) NOT NULL COMMENT 'Total factura'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eps`
--

CREATE TABLE `eps` (
  `codigo_eps` char(6) NOT NULL COMMENT 'Código EPS',
  `descripcion_eps` char(64) NOT NULL COMMENT 'Descripción EPS',
  `nit_eps` decimal(15,5) NOT NULL COMMENT 'NIT EPS',
  `estado_eps` char(1) NOT NULL COMMENT 'Estado EPS (A,I,S,H)',
  `fecha_estado_eps` datetime NOT NULL COMMENT 'Fecha Estado EPS'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `eps`
--

INSERT INTO `eps` (`codigo_eps`, `descripcion_eps`, `nit_eps`, `estado_eps`, `fecha_estado_eps`) VALUES
('EPS001', 'COLMEDICA ENTIDAD PROMOTORA DE SALUD S.A.', '8301138310.00000', 'A', '2016-08-29 00:00:00'),
('EPS002', 'SALUD TOTAL S.A. EPS ARS', '8001309074.00000', 'A', '2016-08-29 00:00:00'),
('EPS003', 'CAFESALUD EPS', '8001409496.00000', 'A', '2016-08-29 00:00:00'),
('EPS005', 'E.P.S. SANITAS S.A.', '8002514406.00000', 'A', '2016-08-29 00:00:00'),
('EPS006', 'INSTITUTO DE SEGUROS SOCIALES', '8600138161.00000', 'A', '2016-08-29 00:00:00'),
('EPS008', 'CAJA DE COMPENSACION FAMILIAR COMPENSAR', '8600669427.00000', 'A', '2016-08-29 00:00:00'),
('EPS009', 'CAJA DE COMPENSACION FAMILIAR COMFENALCO ANTIOQUIA', '8909008426.00000', 'A', '2016-08-29 00:00:00'),
('EPS010', 'COMPA¥IA SURAMERICANA DE SERVICIOS DE SALUD S.A. SUSALUD', '8000887022.00000', 'A', '2016-08-29 00:00:00'),
('EPS012', 'COMFENALCO VALLE', '8903030935.00000', 'A', '2016-08-29 00:00:00'),
('EPS013', 'SALUDCOOP EPS', '8002501191.00000', 'A', '2016-08-29 00:00:00'),
('EPS014', 'HUMANA VIVIR S.A. EPS', '8300064040.00000', 'A', '2016-08-29 00:00:00'),
('EPS015', 'SALUD COLPATRIA S.A.', '8605122376.00000', 'A', '2016-08-29 00:00:00'),
('EPS016', 'COOMEVA EPS S.A.', '8050004271.00000', 'A', '2016-08-29 00:00:00'),
('EPS017', 'E.P.S. FAMISANAR LTDA. CAFAM COLSUBSIDIO', '8300035647.00000', 'A', '2016-08-29 00:00:00'),
('EPS018', 'SERVICIO OCCIDENTAL DE SALUD S.A. S.O.S.', '8050011572.00000', 'A', '2016-08-29 00:00:00'),
('EPS020', 'CAPRECOM', '8999990260.00000', 'A', '2016-08-29 00:00:00'),
('EPS023', 'CRUZBLANCA S.A.', '8300097830.00000', 'A', '2016-08-29 00:00:00'),
('EPS026', 'SOLIDARIA DE SALUD SOLSALUD S.A.', '8040012735.00000', 'A', '2016-08-29 00:00:00'),
('EPS033', 'SALUDVIDA S.A. EPS', '8300741845.00000', 'A', '2016-08-29 00:00:00'),
('EPS034', 'SALUDCOLOMBIA EPS S.A.', '8050219842.00000', 'A', '2016-08-29 00:00:00'),
('EPS035', 'REDSALUD ATENCION HUMANA EPS S.A.', '8300965131.00000', 'A', '2016-08-29 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fondos_pension`
--

CREATE TABLE `fondos_pension` (
  `codigo_fondo_pension` char(6) NOT NULL COMMENT 'Código Fondo de Pensión',
  `descripcion_fondo_pension` char(64) NOT NULL COMMENT 'Descripción Fondo de Pensión',
  `nit_fondo_pension` decimal(15,0) NOT NULL COMMENT 'NIT Fondo de Pensión',
  `estado_fondo_pension` char(1) NOT NULL COMMENT 'Estado Fondo de Pensión (A,I,S,H)',
  `fecha_estado_fondo_pension` datetime NOT NULL COMMENT 'Fecha Estado Fondo de Pensión'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `fondos_pension`
--

INSERT INTO `fondos_pension` (`codigo_fondo_pension`, `descripcion_fondo_pension`, `nit_fondo_pension`, `estado_fondo_pension`, `fecha_estado_fondo_pension`) VALUES
('230201', 'PROTECCION FONDO DE PENSIONES OBLIGATORIAS', '8002297390', 'A', '2016-08-29 00:00:00'),
('230301', 'ADMINISTRADORA DE FONDOS DE PENSIONES Y CESANTIAS PORVENIR S.A.', '8002248088', 'A', '2016-08-29 00:00:00'),
('230501', 'FONDO DE PENSIONES HORIZONTE', '8002319671', 'A', '2016-08-29 00:00:00'),
('230801', 'FONDO DE PENSIONES SANTANDER', '8002248278', 'A', '2016-08-29 00:00:00'),
('230901', 'FONDO OBLIGATORIO DE PENSIONES SKANDIA', '8002530552', 'A', '2016-08-29 00:00:00'),
('230904', 'FONDO ALTERNATIVO DE PENSIONES SKANDIA', '8301251322', 'A', '2016-08-29 00:00:00'),
('231001', 'FONDO DE PENSIONES OBLIGATORIAS COLFONDOS', '8002279406', 'A', '2016-08-29 00:00:00'),
('25-11', 'INSTITUTO DE SEGUROS SOCIALES', '8600138161', 'A', '2016-08-29 00:00:00'),
('25-2', 'CAJA DE AUXILIOS Y DE PRESTACIONES DE ACDAC CAXDAC', '8600073798', 'A', '2016-08-29 00:00:00'),
('25-3', 'FONDO DE PREVISION SOCIAL DEL CONGRESO DE LA REPUBLICA', '8999997347', 'A', '2016-08-29 00:00:00'),
('25-4', 'CAPRECOM', '8999990260', 'A', '2016-08-29 00:00:00'),
('25-7', 'PENSIONES DE ANTIOQUIA', '8002162780', 'A', '2016-08-29 00:00:00'),
('25-8', 'CAJA NACIONAL DE PREVISION SOCIAL', '8999990103', 'A', '2016-08-29 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipios`
--

CREATE TABLE `municipios` (
  `id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `id_departamento` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `municipios`
--

INSERT INTO `municipios` (`id`, `codigo`, `id_departamento`, `nombre`) VALUES
(1, 1, 5, 'MEDELLIN\r'),
(2, 2, 5, 'ABEJORRAL\r'),
(3, 4, 5, 'ABRIAQUI\r'),
(4, 21, 5, 'ALEJANDRIA\r'),
(5, 30, 5, 'AMAGA\r'),
(6, 31, 5, 'AMALFI\r'),
(7, 34, 5, 'ANDES\r'),
(8, 36, 5, 'ANGELOPOLIS\r'),
(9, 38, 5, 'ANGOSTURA\r'),
(10, 40, 5, 'ANORI\r'),
(11, 42, 5, 'SANTAFE DE ANTIOQUIA\r'),
(12, 44, 5, 'ANZA\r'),
(13, 45, 5, 'APARTADO\r'),
(14, 51, 5, 'ARBOLETES\r'),
(15, 55, 5, 'ARGELIA\r'),
(16, 59, 5, 'ARMENIA\r'),
(17, 79, 5, 'BARBOSA\r'),
(18, 86, 5, 'BELMIRA\r'),
(19, 88, 5, 'BELLO\r'),
(20, 91, 5, 'BETANIA\r'),
(21, 93, 5, 'BETULIA\r'),
(22, 101, 5, 'CIUDAD BOLIVAR\r'),
(23, 107, 5, 'BRICEÑO\r'),
(24, 113, 5, 'BURITICA\r'),
(25, 120, 5, 'CACERES\r'),
(26, 125, 5, 'CAICEDO\r'),
(27, 129, 5, 'CALDAS\r'),
(28, 134, 5, 'CAMPAMENTO\r'),
(29, 138, 5, 'CAÑASGORDAS\r'),
(30, 142, 5, 'CARACOLI\r'),
(31, 145, 5, 'CARAMANTA\r'),
(32, 147, 5, 'CAREPA\r'),
(33, 148, 5, 'EL CARMEN DE VIBORAL\r'),
(34, 150, 5, 'CAROLINA\r'),
(35, 154, 5, 'CAUCASIA\r'),
(36, 172, 5, 'CHIGORODO\r'),
(37, 190, 5, 'CISNEROS\r'),
(38, 197, 5, 'COCORNA\r'),
(39, 206, 5, 'CONCEPCION\r'),
(40, 209, 5, 'CONCORDIA\r'),
(41, 212, 5, 'COPACABANA\r'),
(42, 234, 5, 'DABEIBA\r'),
(43, 237, 5, 'DON MATIAS\r'),
(44, 240, 5, 'EBEJICO\r'),
(45, 250, 5, 'EL BAGRE\r'),
(46, 264, 5, 'ENTRERRIOS\r'),
(47, 266, 5, 'ENVIGADO\r'),
(48, 282, 5, 'FREDONIA\r'),
(49, 284, 5, 'FRONTINO\r'),
(50, 306, 5, 'GIRALDO\r'),
(51, 308, 5, 'GIRARDOTA\r'),
(52, 310, 5, 'GOMEZ PLATA\r'),
(53, 313, 5, 'GRANADA\r'),
(54, 315, 5, 'GUADALUPE\r'),
(55, 318, 5, 'GUARNE\r'),
(56, 321, 5, 'GUATAPE\r'),
(57, 347, 5, 'HELICONIA\r'),
(58, 353, 5, 'HISPANIA\r'),
(59, 360, 5, 'ITAGUI\r'),
(60, 361, 5, 'ITUANGO\r'),
(61, 364, 5, 'JARDIN\r'),
(62, 368, 5, 'JERICO\r'),
(63, 376, 5, 'LA CEJA\r'),
(64, 380, 5, 'LA ESTRELLA\r'),
(65, 390, 5, 'LA PINTADA\r'),
(66, 400, 5, 'LA UNION\r'),
(67, 411, 5, 'LIBORINA\r'),
(68, 425, 5, 'MACEO\r'),
(69, 440, 5, 'MARINILLA\r'),
(70, 467, 5, 'MONTEBELLO\r'),
(71, 475, 5, 'MURINDO\r'),
(72, 480, 5, 'MUTATA\r'),
(73, 483, 5, 'NARIÑO\r'),
(74, 490, 5, 'NECOCLI\r'),
(75, 495, 5, 'NECHI\r'),
(76, 501, 5, 'OLAYA\r'),
(77, 541, 5, 'PEÑOL\r'),
(78, 543, 5, 'PEQUE\r'),
(79, 576, 5, 'PUEBLORRICO\r'),
(80, 579, 5, 'PUERTO BERRIO\r'),
(81, 585, 5, 'PUERTO NARE\r'),
(82, 591, 5, 'PUERTO TRIUNFO\r'),
(83, 604, 5, 'REMEDIOS\r'),
(84, 607, 5, 'RETIRO\r'),
(85, 615, 5, 'RIONEGRO\r'),
(86, 628, 5, 'SABANALARGA\r'),
(87, 631, 5, 'SABANETA\r'),
(88, 642, 5, 'SALGAR\r'),
(89, 647, 5, 'SAN ANDRES DE CUERQUIA\r'),
(90, 649, 5, 'SAN CARLOS\r'),
(91, 652, 5, 'SAN FRANCISCO\r'),
(92, 656, 5, 'SAN JERONIMO\r'),
(93, 658, 5, 'SAN JOSE DE LA MONTAÑA\r'),
(94, 659, 5, 'SAN JUAN DE URABA\r'),
(95, 660, 5, 'SAN LUIS\r'),
(96, 664, 5, 'SAN PEDRO\r'),
(97, 665, 5, 'SAN PEDRO DE URABA\r'),
(98, 667, 5, 'SAN RAFAEL\r'),
(99, 670, 5, 'SAN ROQUE\r'),
(100, 674, 5, 'SAN VICENTE\r'),
(101, 679, 5, 'SANTA BARBARA\r'),
(102, 686, 5, 'SANTA ROSA DE OSOS\r'),
(103, 690, 5, 'SANTO DOMINGO\r'),
(104, 697, 5, 'EL SANTUARIO\r'),
(105, 736, 5, 'SEGOVIA\r'),
(106, 756, 5, 'SONSON\r'),
(107, 761, 5, 'SOPETRAN\r'),
(108, 789, 5, 'TAMESIS\r'),
(109, 790, 5, 'TARAZA\r'),
(110, 792, 5, 'TARSO\r'),
(111, 809, 5, 'TITIRIBI\r'),
(112, 819, 5, 'TOLEDO\r'),
(113, 837, 5, 'TURBO\r'),
(114, 842, 5, 'URAMITA\r'),
(115, 847, 5, 'URRAO\r'),
(116, 854, 5, 'VALDIVIA\r'),
(117, 856, 5, 'VALPARAISO\r'),
(118, 858, 5, 'VEGACHI\r'),
(119, 861, 5, 'VENECIA\r'),
(120, 873, 5, 'VIGIA DEL FUERTE\r'),
(121, 885, 5, 'YALI\r'),
(122, 887, 5, 'YARUMAL\r'),
(123, 890, 5, 'YOLOMBO\r'),
(124, 893, 5, 'YONDO\r'),
(125, 895, 5, 'ZARAGOZA\r'),
(126, 1, 8, 'BARRANQUILLA\r'),
(127, 78, 8, 'BARANOA\r'),
(128, 137, 8, 'CAMPO DE LA CRUZ\r'),
(129, 141, 8, 'CANDELARIA\r'),
(130, 296, 8, 'GALAPA\r'),
(131, 372, 8, 'JUAN DE ACOSTA\r'),
(132, 421, 8, 'LURUACO\r'),
(133, 433, 8, 'MALAMBO\r'),
(134, 436, 8, 'MANATI\r'),
(135, 520, 8, 'PALMAR DE VARELA\r'),
(136, 549, 8, 'PIOJO\r'),
(137, 558, 8, 'POLONUEVO\r'),
(138, 560, 8, 'PONEDERA\r'),
(139, 573, 8, 'PUERTO COLOMBIA\r'),
(140, 606, 8, 'REPELON\r'),
(141, 634, 8, 'SABANAGRANDE\r'),
(142, 638, 8, 'SABANALARGA\r'),
(143, 675, 8, 'SANTA LUCIA\r'),
(144, 685, 8, 'SANTO TOMAS\r'),
(145, 758, 8, 'SOLEDAD\r'),
(146, 770, 8, 'SUAN\r'),
(147, 832, 8, 'TUBARA\r'),
(148, 849, 8, 'USIACURI\r'),
(149, 1, 11, 'BOGOTA, D.C.\r'),
(150, 1, 13, 'CARTAGENA\r'),
(151, 6, 13, 'ACHI\r'),
(152, 30, 13, 'ALTOS DEL ROSARIO\r'),
(153, 42, 13, 'ARENAL\r'),
(154, 52, 13, 'ARJONA\r'),
(155, 62, 13, 'ARROYOHONDO\r'),
(156, 74, 13, 'BARRANCO DE LOBA\r'),
(157, 140, 13, 'CALAMAR\r'),
(158, 160, 13, 'CANTAGALLO\r'),
(159, 188, 13, 'CICUCO\r'),
(160, 212, 13, 'CORDOBA\r'),
(161, 222, 13, 'CLEMENCIA\r'),
(162, 244, 13, 'EL CARMEN DE BOLIVAR\r'),
(163, 248, 13, 'EL GUAMO\r'),
(164, 268, 13, 'EL PEÑON\r'),
(165, 300, 13, 'HATILLO DE LOBA\r'),
(166, 430, 13, 'MAGANGUE\r'),
(167, 433, 13, 'MAHATES\r'),
(168, 440, 13, 'MARGARITA\r'),
(169, 442, 13, 'MARIA LA BAJA\r'),
(170, 458, 13, 'MONTECRISTO\r'),
(171, 468, 13, 'MOMPOS\r'),
(172, 490, 13, 'NOROSI\r'),
(173, 473, 13, 'MORALES\r'),
(174, 549, 13, 'PINILLOS\r'),
(175, 580, 13, 'REGIDOR\r'),
(176, 600, 13, 'RIO VIEJO\r'),
(177, 620, 13, 'SAN CRISTOBAL\r'),
(178, 647, 13, 'SAN ESTANISLAO\r'),
(179, 650, 13, 'SAN FERNANDO\r'),
(180, 654, 13, 'SAN JACINTO\r'),
(181, 655, 13, 'SAN JACINTO DEL CAUCA\r'),
(182, 657, 13, 'SAN JUAN NEPOMUCENO\r'),
(183, 667, 13, 'SAN MARTIN DE LOBA\r'),
(184, 670, 13, 'SAN PABLO\r'),
(185, 673, 13, 'SANTA CATALINA\r'),
(186, 683, 13, 'SANTA ROSA\r'),
(187, 688, 13, 'SANTA ROSA DEL SUR\r'),
(188, 744, 13, 'SIMITI\r'),
(189, 760, 13, 'SOPLAVIENTO\r'),
(190, 780, 13, 'TALAIGUA NUEVO\r'),
(191, 810, 13, 'TIQUISIO\r'),
(192, 836, 13, 'TURBACO\r'),
(193, 838, 13, 'TURBANA\r'),
(194, 873, 13, 'VILLANUEVA\r'),
(195, 894, 13, 'ZAMBRANO\r'),
(196, 1, 15, 'TUNJA\r'),
(197, 22, 15, 'ALMEIDA\r'),
(198, 47, 15, 'AQUITANIA\r'),
(199, 51, 15, 'ARCABUCO\r'),
(200, 87, 15, 'BELEN\r'),
(201, 90, 15, 'BERBEO\r'),
(202, 92, 15, 'BETEITIVA\r'),
(203, 97, 15, 'BOAVITA\r'),
(204, 104, 15, 'BOYACA\r'),
(205, 106, 15, 'BRICEÑO\r'),
(206, 109, 15, 'BUENAVISTA\r'),
(207, 114, 15, 'BUSBANZA\r'),
(208, 131, 15, 'CALDAS\r'),
(209, 135, 15, 'CAMPOHERMOSO\r'),
(210, 162, 15, 'CERINZA\r'),
(211, 172, 15, 'CHINAVITA\r'),
(212, 176, 15, 'CHIQUINQUIRA\r'),
(213, 180, 15, 'CHISCAS\r'),
(214, 183, 15, 'CHITA\r'),
(215, 185, 15, 'CHITARAQUE\r'),
(216, 187, 15, 'CHIVATA\r'),
(217, 189, 15, 'CIENEGA\r'),
(218, 204, 15, 'COMBITA\r'),
(219, 212, 15, 'COPER\r'),
(220, 215, 15, 'CORRALES\r'),
(221, 218, 15, 'COVARACHIA\r'),
(222, 223, 15, 'CUBARA\r'),
(223, 224, 15, 'CUCAITA\r'),
(224, 226, 15, 'CUITIVA\r'),
(225, 232, 15, 'CHIQUIZA\r'),
(226, 236, 15, 'CHIVOR\r'),
(227, 238, 15, 'DUITAMA\r'),
(228, 244, 15, 'EL COCUY\r'),
(229, 248, 15, 'EL ESPINO\r'),
(230, 272, 15, 'FIRAVITOBA\r'),
(231, 276, 15, 'FLORESTA\r'),
(232, 293, 15, 'GACHANTIVA\r'),
(233, 296, 15, 'GAMEZA\r'),
(234, 299, 15, 'GARAGOA\r'),
(235, 317, 15, 'GUACAMAYAS\r'),
(236, 322, 15, 'GUATEQUE\r'),
(237, 325, 15, 'GUAYATA\r'),
(238, 332, 15, 'GsICAN\r'),
(239, 362, 15, 'IZA\r'),
(240, 367, 15, 'JENESANO\r'),
(241, 368, 15, 'JERICO\r'),
(242, 377, 15, 'LABRANZAGRANDE\r'),
(243, 380, 15, 'LA CAPILLA\r'),
(244, 401, 15, 'LA VICTORIA\r'),
(245, 403, 15, 'LA UVITA\r'),
(246, 407, 15, 'VILLA DE LEYVA\r'),
(247, 425, 15, 'MACANAL\r'),
(248, 442, 15, 'MARIPI\r'),
(249, 455, 15, 'MIRAFLORES\r'),
(250, 464, 15, 'MONGUA\r'),
(251, 466, 15, 'MONGUI\r'),
(252, 469, 15, 'MONIQUIRA\r'),
(253, 476, 15, 'MOTAVITA\r'),
(254, 480, 15, 'MUZO\r'),
(255, 491, 15, 'NOBSA\r'),
(256, 494, 15, 'NUEVO COLON\r'),
(257, 500, 15, 'OICATA\r'),
(258, 507, 15, 'OTANCHE\r'),
(259, 511, 15, 'PACHAVITA\r'),
(260, 514, 15, 'PAEZ\r'),
(261, 516, 15, 'PAIPA\r'),
(262, 518, 15, 'PAJARITO\r'),
(263, 522, 15, 'PANQUEBA\r'),
(264, 531, 15, 'PAUNA\r'),
(265, 533, 15, 'PAYA\r'),
(266, 537, 15, 'PAZ DE RIO\r'),
(267, 542, 15, 'PESCA\r'),
(268, 550, 15, 'PISBA\r'),
(269, 572, 15, 'PUERTO BOYACA\r'),
(270, 580, 15, 'QUIPAMA\r'),
(271, 599, 15, 'RAMIRIQUI\r'),
(272, 600, 15, 'RAQUIRA\r'),
(273, 621, 15, 'RONDON\r'),
(274, 632, 15, 'SABOYA\r'),
(275, 638, 15, 'SACHICA\r'),
(276, 646, 15, 'SAMACA\r'),
(277, 660, 15, 'SAN EDUARDO\r'),
(278, 664, 15, 'SAN JOSE DE PARE\r'),
(279, 667, 15, 'SAN LUIS DE GACENO\r'),
(280, 673, 15, 'SAN MATEO\r'),
(281, 676, 15, 'SAN MIGUEL DE SEMA\r'),
(282, 681, 15, 'SAN PABLO DE BORBUR\r'),
(283, 686, 15, 'SANTANA\r'),
(284, 690, 15, 'SANTA MARIA\r'),
(285, 693, 15, 'SANTA ROSA DE VITERBO\r'),
(286, 696, 15, 'SANTA SOFIA\r'),
(287, 720, 15, 'SATIVANORTE\r'),
(288, 723, 15, 'SATIVASUR\r'),
(289, 740, 15, 'SIACHOQUE\r'),
(290, 753, 15, 'SOATA\r'),
(291, 755, 15, 'SOCOTA\r'),
(292, 757, 15, 'SOCHA\r'),
(293, 759, 15, 'SOGAMOSO\r'),
(294, 761, 15, 'SOMONDOCO\r'),
(295, 762, 15, 'SORA\r'),
(296, 763, 15, 'SOTAQUIRA\r'),
(297, 764, 15, 'SORACA\r'),
(298, 774, 15, 'SUSACON\r'),
(299, 776, 15, 'SUTAMARCHAN\r'),
(300, 778, 15, 'SUTATENZA\r'),
(301, 790, 15, 'TASCO\r'),
(302, 798, 15, 'TENZA\r'),
(303, 804, 15, 'TIBANA\r'),
(304, 806, 15, 'TIBASOSA\r'),
(305, 808, 15, 'TINJACA\r'),
(306, 810, 15, 'TIPACOQUE\r'),
(307, 814, 15, 'TOCA\r'),
(308, 816, 15, 'TOGsI\r'),
(309, 820, 15, 'TOPAGA\r'),
(310, 822, 15, 'TOTA\r'),
(311, 832, 15, 'TUNUNGUA\r'),
(312, 835, 15, 'TURMEQUE\r'),
(313, 837, 15, 'TUTA\r'),
(314, 839, 15, 'TUTAZA\r'),
(315, 842, 15, 'UMBITA\r'),
(316, 861, 15, 'VENTAQUEMADA\r'),
(317, 879, 15, 'VIRACACHA\r'),
(318, 897, 15, 'ZETAQUIRA\r'),
(319, 1, 17, 'MANIZALES\r'),
(320, 13, 17, 'AGUADAS\r'),
(321, 42, 17, 'ANSERMA\r'),
(322, 50, 17, 'ARANZAZU\r'),
(323, 88, 17, 'BELALCAZAR\r'),
(324, 174, 17, 'CHINCHINA\r'),
(325, 272, 17, 'FILADELFIA\r'),
(326, 380, 17, 'LA DORADA\r'),
(327, 388, 17, 'LA MERCED\r'),
(328, 433, 17, 'MANZANARES\r'),
(329, 442, 17, 'MARMATO\r'),
(330, 444, 17, 'MARQUETALIA\r'),
(331, 446, 17, 'MARULANDA\r'),
(332, 486, 17, 'NEIRA\r'),
(333, 495, 17, 'NORCASIA\r'),
(334, 513, 17, 'PACORA\r'),
(335, 524, 17, 'PALESTINA\r'),
(336, 541, 17, 'PENSILVANIA\r'),
(337, 614, 17, 'RIOSUCIO\r'),
(338, 616, 17, 'RISARALDA\r'),
(339, 653, 17, 'SALAMINA\r'),
(340, 662, 17, 'SAMANA\r'),
(341, 665, 17, 'SAN JOSE\r'),
(342, 777, 17, 'SUPIA\r'),
(343, 867, 17, 'VICTORIA\r'),
(344, 873, 17, 'VILLAMARIA\r'),
(345, 877, 17, 'VITERBO\r'),
(346, 1, 18, 'FLORENCIA\r'),
(347, 29, 18, 'ALBANIA\r'),
(348, 94, 18, 'BELEN DE LOS ANDAQUIES\r'),
(349, 150, 18, 'CARTAGENA DEL CHAIRA\r'),
(350, 205, 18, 'CURILLO\r'),
(351, 247, 18, 'EL DONCELLO\r'),
(352, 256, 18, 'EL PAUJIL\r'),
(353, 410, 18, 'LA MONTAÑITA\r'),
(354, 460, 18, 'MILAN\r'),
(355, 479, 18, 'MORELIA\r'),
(356, 592, 18, 'PUERTO RICO\r'),
(357, 610, 18, 'SAN JOSE DEL FRAGUA\r'),
(358, 753, 18, 'SAN VICENTE DEL CAGUAN\r'),
(359, 756, 18, 'SOLANO\r'),
(360, 785, 18, 'SOLITA\r'),
(361, 860, 18, 'VALPARAISO\r'),
(362, 1, 19, 'POPAYAN\r'),
(363, 22, 19, 'ALMAGUER\r'),
(364, 50, 19, 'ARGELIA\r'),
(365, 75, 19, 'BALBOA\r'),
(366, 100, 19, 'BOLIVAR\r'),
(367, 110, 19, 'BUENOS AIRES\r'),
(368, 130, 19, 'CAJIBIO\r'),
(369, 137, 19, 'CALDONO\r'),
(370, 142, 19, 'CALOTO\r'),
(371, 212, 19, 'CORINTO\r'),
(372, 256, 19, 'EL TAMBO\r'),
(373, 290, 19, 'FLORENCIA\r'),
(374, 300, 19, 'GUACHENE\r'),
(375, 318, 19, 'GUAPI\r'),
(376, 355, 19, 'INZA\r'),
(377, 364, 19, 'JAMBALO\r'),
(378, 392, 19, 'LA SIERRA\r'),
(379, 397, 19, 'LA VEGA\r'),
(380, 418, 19, 'LOPEZ\r'),
(381, 450, 19, 'MERCADERES\r'),
(382, 455, 19, 'MIRANDA\r'),
(383, 473, 19, 'MORALES\r'),
(384, 513, 19, 'PADILLA\r'),
(385, 517, 19, 'PAEZ\r'),
(386, 532, 19, 'PATIA\r'),
(387, 533, 19, 'PIAMONTE\r'),
(388, 548, 19, 'PIENDAMO\r'),
(389, 573, 19, 'PUERTO TEJADA\r'),
(390, 585, 19, 'PURACE\r'),
(391, 622, 19, 'ROSAS\r'),
(392, 693, 19, 'SAN SEBASTIAN\r'),
(393, 698, 19, 'SANTANDER DE QUILICHAO\r'),
(394, 701, 19, 'SANTA ROSA\r'),
(395, 743, 19, 'SILVIA\r'),
(396, 760, 19, 'SOTARA\r'),
(397, 780, 19, 'SUAREZ\r'),
(398, 785, 19, 'SUCRE\r'),
(399, 807, 19, 'TIMBIO\r'),
(400, 809, 19, 'TIMBIQUI\r'),
(401, 821, 19, 'TORIBIO\r'),
(402, 824, 19, 'TOTORO\r'),
(403, 845, 19, 'VILLA RICA\r'),
(404, 1, 20, 'VALLEDUPAR\r'),
(405, 11, 20, 'AGUACHICA\r'),
(406, 13, 20, 'AGUSTIN CODAZZI\r'),
(407, 32, 20, 'ASTREA\r'),
(408, 45, 20, 'BECERRIL\r'),
(409, 60, 20, 'BOSCONIA\r'),
(410, 175, 20, 'CHIMICHAGUA\r'),
(411, 178, 20, 'CHIRIGUANA\r'),
(412, 228, 20, 'CURUMANI\r'),
(413, 238, 20, 'EL COPEY\r'),
(414, 250, 20, 'EL PASO\r'),
(415, 295, 20, 'GAMARRA\r'),
(416, 310, 20, 'GONZALEZ\r'),
(417, 383, 20, 'LA GLORIA\r'),
(418, 400, 20, 'LA JAGUA DE IBIRICO\r'),
(419, 443, 20, 'MANAURE\r'),
(420, 517, 20, 'PAILITAS\r'),
(421, 550, 20, 'PELAYA\r'),
(422, 570, 20, 'PUEBLO BELLO\r'),
(423, 614, 20, 'RIO DE ORO\r'),
(424, 621, 20, 'LA PAZ\r'),
(425, 710, 20, 'SAN ALBERTO\r'),
(426, 750, 20, 'SAN DIEGO\r'),
(427, 770, 20, 'SAN MARTIN\r'),
(428, 787, 20, 'TAMALAMEQUE\r'),
(429, 1, 23, 'MONTERIA\r'),
(430, 68, 23, 'AYAPEL\r'),
(431, 79, 23, 'BUENAVISTA\r'),
(432, 90, 23, 'CANALETE\r'),
(433, 162, 23, 'CERETE\r'),
(434, 168, 23, 'CHIMA\r'),
(435, 182, 23, 'CHINU\r'),
(436, 189, 23, 'CIENAGA DE ORO\r'),
(437, 300, 23, 'COTORRA\r'),
(438, 350, 23, 'LA APARTADA\r'),
(439, 417, 23, 'LORICA\r'),
(440, 419, 23, 'LOS CORDOBAS\r'),
(441, 464, 23, 'MOMIL\r'),
(442, 466, 23, 'MONTELIBANO\r'),
(443, 500, 23, 'MOÑITOS\r'),
(444, 555, 23, 'PLANETA RICA\r'),
(445, 570, 23, 'PUEBLO NUEVO\r'),
(446, 574, 23, 'PUERTO ESCONDIDO\r'),
(447, 580, 23, 'PUERTO LIBERTADOR\r'),
(448, 586, 23, 'PURISIMA\r'),
(449, 660, 23, 'SAHAGUN\r'),
(450, 670, 23, 'SAN ANDRES SOTAVENTO\r'),
(451, 672, 23, 'SAN ANTERO\r'),
(452, 675, 23, 'SAN BERNARDO DEL VIENTO\r'),
(453, 678, 23, 'SAN CARLOS\r'),
(454, 686, 23, 'SAN PELAYO\r'),
(455, 807, 23, 'TIERRALTA\r'),
(456, 855, 23, 'VALENCIA\r'),
(457, 1, 25, 'AGUA DE DIOS\r'),
(458, 19, 25, 'ALBAN\r'),
(459, 35, 25, 'ANAPOIMA\r'),
(460, 40, 25, 'ANOLAIMA\r'),
(461, 53, 25, 'ARBELAEZ\r'),
(462, 86, 25, 'BELTRAN\r'),
(463, 95, 25, 'BITUIMA\r'),
(464, 99, 25, 'BOJACA\r'),
(465, 120, 25, 'CABRERA\r'),
(466, 123, 25, 'CACHIPAY\r'),
(467, 126, 25, 'CAJICA\r'),
(468, 148, 25, 'CAPARRAPI\r'),
(469, 151, 25, 'CAQUEZA\r'),
(470, 154, 25, 'CARMEN DE CARUPA\r'),
(471, 168, 25, 'CHAGUANI\r'),
(472, 175, 25, 'CHIA\r'),
(473, 178, 25, 'CHIPAQUE\r'),
(474, 181, 25, 'CHOACHI\r'),
(475, 183, 25, 'CHOCONTA\r'),
(476, 200, 25, 'COGUA\r'),
(477, 214, 25, 'COTA\r'),
(478, 224, 25, 'CUCUNUBA\r'),
(479, 245, 25, 'EL COLEGIO\r'),
(480, 258, 25, 'EL PEÑON\r'),
(481, 260, 25, 'EL ROSAL\r'),
(482, 269, 25, 'FACATATIVA\r'),
(483, 279, 25, 'FOMEQUE\r'),
(484, 281, 25, 'FOSCA\r'),
(485, 286, 25, 'FUNZA\r'),
(486, 288, 25, 'FUQUENE\r'),
(487, 290, 25, 'FUSAGASUGA\r'),
(488, 293, 25, 'GACHALA\r'),
(489, 295, 25, 'GACHANCIPA\r'),
(490, 297, 25, 'GACHETA\r'),
(491, 299, 25, 'GAMA\r'),
(492, 307, 25, 'GIRARDOT\r'),
(493, 312, 25, 'GRANADA\r'),
(494, 317, 25, 'GUACHETA\r'),
(495, 320, 25, 'GUADUAS\r'),
(496, 322, 25, 'GUASCA\r'),
(497, 324, 25, 'GUATAQUI\r'),
(498, 326, 25, 'GUATAVITA\r'),
(499, 328, 25, 'GUAYABAL DE SIQUIMA\r'),
(500, 335, 25, 'GUAYABETAL\r'),
(501, 339, 25, 'GUTIERREZ\r'),
(502, 368, 25, 'JERUSALEN\r'),
(503, 372, 25, 'JUNIN\r'),
(504, 377, 25, 'LA CALERA\r'),
(505, 386, 25, 'LA MESA\r'),
(506, 394, 25, 'LA PALMA\r'),
(507, 398, 25, 'LA PEÑA\r'),
(508, 402, 25, 'LA VEGA\r'),
(509, 407, 25, 'LENGUAZAQUE\r'),
(510, 426, 25, 'MACHETA\r'),
(511, 430, 25, 'MADRID\r'),
(512, 436, 25, 'MANTA\r'),
(513, 438, 25, 'MEDINA\r'),
(514, 473, 25, 'MOSQUERA\r'),
(515, 483, 25, 'NARIÑO\r'),
(516, 486, 25, 'NEMOCON\r'),
(517, 488, 25, 'NILO\r'),
(518, 489, 25, 'NIMAIMA\r'),
(519, 491, 25, 'NOCAIMA\r'),
(520, 506, 25, 'VENECIA\r'),
(521, 513, 25, 'PACHO\r'),
(522, 518, 25, 'PAIME\r'),
(523, 524, 25, 'PANDI\r'),
(524, 530, 25, 'PARATEBUENO\r'),
(525, 535, 25, 'PASCA\r'),
(526, 572, 25, 'PUERTO SALGAR\r'),
(527, 580, 25, 'PULI\r'),
(528, 592, 25, 'QUEBRADANEGRA\r'),
(529, 594, 25, 'QUETAME\r'),
(530, 596, 25, 'QUIPILE\r'),
(531, 599, 25, 'APULO\r'),
(532, 612, 25, 'RICAURTE\r'),
(533, 645, 25, 'SAN ANTONIO DEL TEQUENDAMA\r'),
(534, 649, 25, 'SAN BERNARDO\r'),
(535, 653, 25, 'SAN CAYETANO\r'),
(536, 658, 25, 'SAN FRANCISCO\r'),
(537, 662, 25, 'SAN JUAN DE RIO SECO\r'),
(538, 718, 25, 'SASAIMA\r'),
(539, 736, 25, 'SESQUILE\r'),
(540, 740, 25, 'SIBATE\r'),
(541, 743, 25, 'SILVANIA\r'),
(542, 745, 25, 'SIMIJACA\r'),
(543, 754, 25, 'SOACHA\r'),
(544, 758, 25, 'SOPO\r'),
(545, 769, 25, 'SUBACHOQUE\r'),
(546, 772, 25, 'SUESCA\r'),
(547, 777, 25, 'SUPATA\r'),
(548, 779, 25, 'SUSA\r'),
(549, 781, 25, 'SUTATAUSA\r'),
(550, 785, 25, 'TABIO\r'),
(551, 793, 25, 'TAUSA\r'),
(552, 797, 25, 'TENA\r'),
(553, 799, 25, 'TENJO\r'),
(554, 805, 25, 'TIBACUY\r'),
(555, 807, 25, 'TIBIRITA\r'),
(556, 815, 25, 'TOCAIMA\r'),
(557, 817, 25, 'TOCANCIPA\r'),
(558, 823, 25, 'TOPAIPI\r'),
(559, 839, 25, 'UBALA\r'),
(560, 841, 25, 'UBAQUE\r'),
(561, 843, 25, 'VILLA DE SAN DIEGO DE UBATE\r'),
(562, 845, 25, 'UNE\r'),
(563, 851, 25, 'UTICA\r'),
(564, 862, 25, 'VERGARA\r'),
(565, 867, 25, 'VIANI\r'),
(566, 871, 25, 'VILLAGOMEZ\r'),
(567, 873, 25, 'VILLAPINZON\r'),
(568, 875, 25, 'VILLETA\r'),
(569, 878, 25, 'VIOTA\r'),
(570, 885, 25, 'YACOPI\r'),
(571, 898, 25, 'ZIPACON\r'),
(572, 899, 25, 'ZIPAQUIRA\r'),
(573, 1, 27, 'QUIBDO\r'),
(574, 6, 27, 'ACANDI\r'),
(575, 25, 27, 'ALTO BAUDO\r'),
(576, 50, 27, 'ATRATO\r'),
(577, 73, 27, 'BAGADO\r'),
(578, 75, 27, 'BAHIA SOLANO\r'),
(579, 77, 27, 'BAJO BAUDO\r'),
(580, 99, 27, 'BOJAYA\r'),
(581, 135, 27, 'EL CANTON DEL SAN PABLO\r'),
(582, 150, 27, 'CARMEN DEL DARIEN\r'),
(583, 160, 27, 'CERTEGUI\r'),
(584, 205, 27, 'CONDOTO\r'),
(585, 245, 27, 'EL CARMEN DE ATRATO\r'),
(586, 250, 27, 'EL LITORAL DEL SAN JUAN\r'),
(587, 361, 27, 'ISTMINA\r'),
(588, 372, 27, 'JURADO\r'),
(589, 413, 27, 'LLORO\r'),
(590, 425, 27, 'MEDIO ATRATO\r'),
(591, 430, 27, 'MEDIO BAUDO\r'),
(592, 450, 27, 'MEDIO SAN JUAN\r'),
(593, 491, 27, 'NOVITA\r'),
(594, 495, 27, 'NUQUI\r'),
(595, 580, 27, 'RIO IRO\r'),
(596, 600, 27, 'RIO QUITO\r'),
(597, 615, 27, 'RIOSUCIO\r'),
(598, 660, 27, 'SAN JOSE DEL PALMAR\r'),
(599, 745, 27, 'SIPI\r'),
(600, 787, 27, 'TADO\r'),
(601, 800, 27, 'UNGUIA\r'),
(602, 810, 27, 'UNION PANAMERICANA\r'),
(603, 1, 41, 'NEIVA\r'),
(604, 6, 41, 'ACEVEDO\r'),
(605, 13, 41, 'AGRADO\r'),
(606, 16, 41, 'AIPE\r'),
(607, 20, 41, 'ALGECIRAS\r'),
(608, 26, 41, 'ALTAMIRA\r'),
(609, 78, 41, 'BARAYA\r'),
(610, 132, 41, 'CAMPOALEGRE\r'),
(611, 206, 41, 'COLOMBIA\r'),
(612, 244, 41, 'ELIAS\r'),
(613, 298, 41, 'GARZON\r'),
(614, 306, 41, 'GIGANTE\r'),
(615, 319, 41, 'GUADALUPE\r'),
(616, 349, 41, 'HOBO\r'),
(617, 357, 41, 'IQUIRA\r'),
(618, 359, 41, 'ISNOS\r'),
(619, 378, 41, 'LA ARGENTINA\r'),
(620, 396, 41, 'LA PLATA\r'),
(621, 483, 41, 'NATAGA\r'),
(622, 503, 41, 'OPORAPA\r'),
(623, 518, 41, 'PAICOL\r'),
(624, 524, 41, 'PALERMO\r'),
(625, 530, 41, 'PALESTINA\r'),
(626, 548, 41, 'PITAL\r'),
(627, 551, 41, 'PITALITO\r'),
(628, 615, 41, 'RIVERA\r'),
(629, 660, 41, 'SALADOBLANCO\r'),
(630, 668, 41, 'SAN AGUSTIN\r'),
(631, 676, 41, 'SANTA MARIA\r'),
(632, 770, 41, 'SUAZA\r'),
(633, 791, 41, 'TARQUI\r'),
(634, 797, 41, 'TESALIA\r'),
(635, 799, 41, 'TELLO\r'),
(636, 801, 41, 'TERUEL\r'),
(637, 807, 41, 'TIMANA\r'),
(638, 872, 41, 'VILLAVIEJA\r'),
(639, 885, 41, 'YAGUARA\r'),
(640, 1, 44, 'RIOHACHA\r'),
(641, 35, 44, 'ALBANIA\r'),
(642, 78, 44, 'BARRANCAS\r'),
(643, 90, 44, 'DIBULLA\r'),
(644, 98, 44, 'DISTRACCION\r'),
(645, 110, 44, 'EL MOLINO\r'),
(646, 279, 44, 'FONSECA\r'),
(647, 378, 44, 'HATONUEVO\r'),
(648, 420, 44, 'LA JAGUA DEL PILAR\r'),
(649, 430, 44, 'MAICAO\r'),
(650, 560, 44, 'MANAURE\r'),
(651, 650, 44, 'SAN JUAN DEL CESAR\r'),
(652, 847, 44, 'URIBIA\r'),
(653, 855, 44, 'URUMITA\r'),
(654, 874, 44, 'VILLANUEVA\r'),
(655, 1, 47, 'SANTA MARTA\r'),
(656, 30, 47, 'ALGARROBO\r'),
(657, 53, 47, 'ARACATACA\r'),
(658, 58, 47, 'ARIGUANI\r'),
(659, 161, 47, 'CERRO SAN ANTONIO\r'),
(660, 170, 47, 'CHIBOLO\r'),
(661, 189, 47, 'CIENAGA\r'),
(662, 205, 47, 'CONCORDIA\r'),
(663, 245, 47, 'EL BANCO\r'),
(664, 258, 47, 'EL PIÑON\r'),
(665, 268, 47, 'EL RETEN\r'),
(666, 288, 47, 'FUNDACION\r'),
(667, 318, 47, 'GUAMAL\r'),
(668, 460, 47, 'NUEVA GRANADA\r'),
(669, 541, 47, 'PEDRAZA\r'),
(670, 545, 47, 'PIJIÑO DEL CARMEN\r'),
(671, 551, 47, 'PIVIJAY\r'),
(672, 555, 47, 'PLATO\r'),
(673, 570, 47, 'PUEBLOVIEJO\r'),
(674, 605, 47, 'REMOLINO\r'),
(675, 660, 47, 'SABANAS DE SAN ANGEL\r'),
(676, 675, 47, 'SALAMINA\r'),
(677, 692, 47, 'SAN SEBASTIAN DE BUENAVISTA\r'),
(678, 703, 47, 'SAN ZENON\r'),
(679, 707, 47, 'SANTA ANA\r'),
(680, 720, 47, 'SANTA BARBARA DE PINTO\r'),
(681, 745, 47, 'SITIONUEVO\r'),
(682, 798, 47, 'TENERIFE\r'),
(683, 960, 47, 'ZAPAYAN\r'),
(684, 980, 47, 'ZONA BANANERA\r'),
(685, 1, 50, 'VILLAVICENCIO\r'),
(686, 6, 50, 'ACACIAS\r'),
(687, 110, 50, 'BARRANCA DE UPIA\r'),
(688, 124, 50, 'CABUYARO\r'),
(689, 150, 50, 'CASTILLA LA NUEVA\r'),
(690, 223, 50, 'CUBARRAL\r'),
(691, 226, 50, 'CUMARAL\r'),
(692, 245, 50, 'EL CALVARIO\r'),
(693, 251, 50, 'EL CASTILLO\r'),
(694, 270, 50, 'EL DORADO\r'),
(695, 287, 50, 'FUENTE DE ORO\r'),
(696, 313, 50, 'GRANADA\r'),
(697, 318, 50, 'GUAMAL\r'),
(698, 325, 50, 'MAPIRIPAN\r'),
(699, 330, 50, 'MESETAS\r'),
(700, 350, 50, 'LA MACARENA\r'),
(701, 370, 50, 'URIBE\r'),
(702, 400, 50, 'LEJANIAS\r'),
(703, 450, 50, 'PUERTO CONCORDIA\r'),
(704, 568, 50, 'PUERTO GAITAN\r'),
(705, 573, 50, 'PUERTO LOPEZ\r'),
(706, 577, 50, 'PUERTO LLERAS\r'),
(707, 590, 50, 'PUERTO RICO\r'),
(708, 606, 50, 'RESTREPO\r'),
(709, 680, 50, 'SAN CARLOS DE GUAROA\r'),
(710, 683, 50, 'SAN JUAN DE ARAMA\r'),
(711, 686, 50, 'SAN JUANITO\r'),
(712, 689, 50, 'SAN MARTIN\r'),
(713, 711, 50, 'VISTAHERMOSA\r'),
(714, 1, 52, 'PASTO\r'),
(715, 19, 52, 'ALBAN\r'),
(716, 22, 52, 'ALDANA\r'),
(717, 36, 52, 'ANCUYA\r'),
(718, 51, 52, 'ARBOLEDA\r'),
(719, 79, 52, 'BARBACOAS\r'),
(720, 83, 52, 'BELEN\r'),
(721, 110, 52, 'BUESACO\r'),
(722, 203, 52, 'COLON\r'),
(723, 207, 52, 'CONSACA\r'),
(724, 210, 52, 'CONTADERO\r'),
(725, 215, 52, 'CORDOBA\r'),
(726, 224, 52, 'CUASPUD\r'),
(727, 227, 52, 'CUMBAL\r'),
(728, 233, 52, 'CUMBITARA\r'),
(729, 240, 52, 'CHACHAGsI\r'),
(730, 250, 52, 'EL CHARCO\r'),
(731, 254, 52, 'EL PEÑOL\r'),
(732, 256, 52, 'EL ROSARIO\r'),
(733, 258, 52, 'EL TABLON DE GOMEZ\r'),
(734, 260, 52, 'EL TAMBO\r'),
(735, 287, 52, 'FUNES\r'),
(736, 317, 52, 'GUACHUCAL\r'),
(737, 320, 52, 'GUAITARILLA\r'),
(738, 323, 52, 'GUALMATAN\r'),
(739, 352, 52, 'ILES\r'),
(740, 354, 52, 'IMUES\r'),
(741, 356, 52, 'IPIALES\r'),
(742, 378, 52, 'LA CRUZ\r'),
(743, 381, 52, 'LA FLORIDA\r'),
(744, 385, 52, 'LA LLANADA\r'),
(745, 390, 52, 'LA TOLA\r'),
(746, 399, 52, 'LA UNION\r'),
(747, 405, 52, 'LEIVA\r'),
(748, 411, 52, 'LINARES\r'),
(749, 418, 52, 'LOS ANDES\r'),
(750, 427, 52, 'MAGsI\r'),
(751, 435, 52, 'MALLAMA\r'),
(752, 473, 52, 'MOSQUERA\r'),
(753, 480, 52, 'NARIÑO\r'),
(754, 490, 52, 'OLAYA HERRERA\r'),
(755, 506, 52, 'OSPINA\r'),
(756, 520, 52, 'FRANCISCO PIZARRO\r'),
(757, 540, 52, 'POLICARPA\r'),
(758, 560, 52, 'POTOSI\r'),
(759, 565, 52, 'PROVIDENCIA\r'),
(760, 573, 52, 'PUERRES\r'),
(761, 585, 52, 'PUPIALES\r'),
(762, 612, 52, 'RICAURTE\r'),
(763, 621, 52, 'ROBERTO PAYAN\r'),
(764, 678, 52, 'SAMANIEGO\r'),
(765, 683, 52, 'SANDONA\r'),
(766, 685, 52, 'SAN BERNARDO\r'),
(767, 687, 52, 'SAN LORENZO\r'),
(768, 693, 52, 'SAN PABLO\r'),
(769, 694, 52, 'SAN PEDRO DE CARTAGO\r'),
(770, 696, 52, 'SANTA BARBARA\r'),
(771, 699, 52, 'SANTACRUZ\r'),
(772, 720, 52, 'SAPUYES\r'),
(773, 786, 52, 'TAMINANGO\r'),
(774, 788, 52, 'TANGUA\r'),
(775, 835, 52, 'SAN ANDRES DE TUMACO\r'),
(776, 838, 52, 'TUQUERRES\r'),
(777, 885, 52, 'YACUANQUER\r'),
(778, 1, 54, 'CUCUTA\r'),
(779, 3, 54, 'ABREGO\r'),
(780, 51, 54, 'ARBOLEDAS\r'),
(781, 99, 54, 'BOCHALEMA\r'),
(782, 109, 54, 'BUCARASICA\r'),
(783, 125, 54, 'CACOTA\r'),
(784, 128, 54, 'CACHIRA\r'),
(785, 172, 54, 'CHINACOTA\r'),
(786, 174, 54, 'CHITAGA\r'),
(787, 206, 54, 'CONVENCION\r'),
(788, 223, 54, 'CUCUTILLA\r'),
(789, 239, 54, 'DURANIA\r'),
(790, 245, 54, 'EL CARMEN\r'),
(791, 250, 54, 'EL TARRA\r'),
(792, 261, 54, 'EL ZULIA\r'),
(793, 313, 54, 'GRAMALOTE\r'),
(794, 344, 54, 'HACARI\r'),
(795, 347, 54, 'HERRAN\r'),
(796, 377, 54, 'LABATECA\r'),
(797, 385, 54, 'LA ESPERANZA\r'),
(798, 398, 54, 'LA PLAYA\r'),
(799, 405, 54, 'LOS PATIOS\r'),
(800, 418, 54, 'LOURDES\r'),
(801, 480, 54, 'MUTISCUA\r'),
(802, 498, 54, 'OCAÑA\r'),
(803, 518, 54, 'PAMPLONA\r'),
(804, 520, 54, 'PAMPLONITA\r'),
(805, 553, 54, 'PUERTO SANTANDER\r'),
(806, 599, 54, 'RAGONVALIA\r'),
(807, 660, 54, 'SALAZAR\r'),
(808, 670, 54, 'SAN CALIXTO\r'),
(809, 673, 54, 'SAN CAYETANO\r'),
(810, 680, 54, 'SANTIAGO\r'),
(811, 720, 54, 'SARDINATA\r'),
(812, 743, 54, 'SILOS\r'),
(813, 800, 54, 'TEORAMA\r'),
(814, 810, 54, 'TIBU\r'),
(815, 820, 54, 'TOLEDO\r'),
(816, 871, 54, 'VILLA CARO\r'),
(817, 874, 54, 'VILLA DEL ROSARIO\r'),
(818, 1, 63, 'ARMENIA\r'),
(819, 111, 63, 'BUENAVISTA\r'),
(820, 130, 63, 'CALARCA\r'),
(821, 190, 63, 'CIRCASIA\r'),
(822, 212, 63, 'CORDOBA\r'),
(823, 272, 63, 'FILANDIA\r'),
(824, 302, 63, 'GENOVA\r'),
(825, 401, 63, 'LA TEBAIDA\r'),
(826, 470, 63, 'MONTENEGRO\r'),
(827, 548, 63, 'PIJAO\r'),
(828, 594, 63, 'QUIMBAYA\r'),
(829, 690, 63, 'SALENTO\r'),
(830, 1, 66, 'PEREIRA\r'),
(831, 45, 66, 'APIA\r'),
(832, 75, 66, 'BALBOA\r'),
(833, 88, 66, 'BELEN DE UMBRIA\r'),
(834, 170, 66, 'DOSQUEBRADAS\r'),
(835, 318, 66, 'GUATICA\r'),
(836, 383, 66, 'LA CELIA\r'),
(837, 400, 66, 'LA VIRGINIA\r'),
(838, 440, 66, 'MARSELLA\r'),
(839, 456, 66, 'MISTRATO\r'),
(840, 572, 66, 'PUEBLO RICO\r'),
(841, 594, 66, 'QUINCHIA\r'),
(842, 682, 66, 'SANTA ROSA DE CABAL\r'),
(843, 687, 66, 'SANTUARIO\r'),
(844, 1, 68, 'BUCARAMANGA\r'),
(845, 13, 68, 'AGUADA\r'),
(846, 20, 68, 'ALBANIA\r'),
(847, 51, 68, 'ARATOCA\r'),
(848, 77, 68, 'BARBOSA\r'),
(849, 79, 68, 'BARICHARA\r'),
(850, 81, 68, 'BARRANCABERMEJA\r'),
(851, 92, 68, 'BETULIA\r'),
(852, 101, 68, 'BOLIVAR\r'),
(853, 121, 68, 'CABRERA\r'),
(854, 132, 68, 'CALIFORNIA\r'),
(855, 147, 68, 'CAPITANEJO\r'),
(856, 152, 68, 'CARCASI\r'),
(857, 160, 68, 'CEPITA\r'),
(858, 162, 68, 'CERRITO\r'),
(859, 167, 68, 'CHARALA\r'),
(860, 169, 68, 'CHARTA\r'),
(861, 176, 68, 'CHIMA\r'),
(862, 179, 68, 'CHIPATA\r'),
(863, 190, 68, 'CIMITARRA\r'),
(864, 207, 68, 'CONCEPCION\r'),
(865, 209, 68, 'CONFINES\r'),
(866, 211, 68, 'CONTRATACION\r'),
(867, 217, 68, 'COROMORO\r'),
(868, 229, 68, 'CURITI\r'),
(869, 235, 68, 'EL CARMEN DE CHUCURI\r'),
(870, 245, 68, 'EL GUACAMAYO\r'),
(871, 250, 68, 'EL PEÑON\r'),
(872, 255, 68, 'EL PLAYON\r'),
(873, 264, 68, 'ENCINO\r'),
(874, 266, 68, 'ENCISO\r'),
(875, 271, 68, 'FLORIAN\r'),
(876, 276, 68, 'FLORIDABLANCA\r'),
(877, 296, 68, 'GALAN\r'),
(878, 298, 68, 'GAMBITA\r'),
(879, 307, 68, 'GIRON\r'),
(880, 318, 68, 'GUACA\r'),
(881, 320, 68, 'GUADALUPE\r'),
(882, 322, 68, 'GUAPOTA\r'),
(883, 324, 68, 'GUAVATA\r'),
(884, 327, 68, 'GsEPSA\r'),
(885, 344, 68, 'HATO\r'),
(886, 368, 68, 'JESUS MARIA\r'),
(887, 370, 68, 'JORDAN\r'),
(888, 377, 68, 'LA BELLEZA\r'),
(889, 385, 68, 'LANDAZURI\r'),
(890, 397, 68, 'LA PAZ\r'),
(891, 406, 68, 'LEBRIJA\r'),
(892, 418, 68, 'LOS SANTOS\r'),
(893, 425, 68, 'MACARAVITA\r'),
(894, 432, 68, 'MALAGA\r'),
(895, 444, 68, 'MATANZA\r'),
(896, 464, 68, 'MOGOTES\r'),
(897, 468, 68, 'MOLAGAVITA\r'),
(898, 498, 68, 'OCAMONTE\r'),
(899, 500, 68, 'OIBA\r'),
(900, 502, 68, 'ONZAGA\r'),
(901, 522, 68, 'PALMAR\r'),
(902, 524, 68, 'PALMAS DEL SOCORRO\r'),
(903, 533, 68, 'PARAMO\r'),
(904, 547, 68, 'PIEDECUESTA\r'),
(905, 549, 68, 'PINCHOTE\r'),
(906, 572, 68, 'PUENTE NACIONAL\r'),
(907, 573, 68, 'PUERTO PARRA\r'),
(908, 575, 68, 'PUERTO WILCHES\r'),
(909, 615, 68, 'RIONEGRO\r'),
(910, 655, 68, 'SABANA DE TORRES\r'),
(911, 669, 68, 'SAN ANDRES\r'),
(912, 673, 68, 'SAN BENITO\r'),
(913, 679, 68, 'SAN GIL\r'),
(914, 682, 68, 'SAN JOAQUIN\r'),
(915, 684, 68, 'SAN JOSE DE MIRANDA\r'),
(916, 686, 68, 'SAN MIGUEL\r'),
(917, 689, 68, 'SAN VICENTE DE CHUCURI\r'),
(918, 705, 68, 'SANTA BARBARA\r'),
(919, 720, 68, 'SANTA HELENA DEL OPON\r'),
(920, 745, 68, 'SIMACOTA\r'),
(921, 755, 68, 'SOCORRO\r'),
(922, 770, 68, 'SUAITA\r'),
(923, 773, 68, 'SUCRE\r'),
(924, 780, 68, 'SURATA\r'),
(925, 820, 68, 'TONA\r'),
(926, 855, 68, 'VALLE DE SAN JOSE\r'),
(927, 861, 68, 'VELEZ\r'),
(928, 867, 68, 'VETAS\r'),
(929, 872, 68, 'VILLANUEVA\r'),
(930, 895, 68, 'ZAPATOCA\r'),
(931, 1, 70, 'SINCELEJO\r'),
(932, 110, 70, 'BUENAVISTA\r'),
(933, 124, 70, 'CAIMITO\r'),
(934, 204, 70, 'COLOSO\r'),
(935, 215, 70, 'COROZAL\r'),
(936, 221, 70, 'COVEÑAS\r'),
(937, 230, 70, 'CHALAN\r'),
(938, 233, 70, 'EL ROBLE\r'),
(939, 235, 70, 'GALERAS\r'),
(940, 265, 70, 'GUARANDA\r'),
(941, 400, 70, 'LA UNION\r'),
(942, 418, 70, 'LOS PALMITOS\r'),
(943, 429, 70, 'MAJAGUAL\r'),
(944, 473, 70, 'MORROA\r'),
(945, 508, 70, 'OVEJAS\r'),
(946, 523, 70, 'PALMITO\r'),
(947, 670, 70, 'SAMPUES\r'),
(948, 678, 70, 'SAN BENITO ABAD\r'),
(949, 702, 70, 'SAN JUAN DE BETULIA\r'),
(950, 708, 70, 'SAN MARCOS\r'),
(951, 713, 70, 'SAN ONOFRE\r'),
(952, 717, 70, 'SAN PEDRO\r'),
(953, 742, 70, 'SAN LUIS DE SINCE\r'),
(954, 771, 70, 'SUCRE\r'),
(955, 820, 70, 'SANTIAGO DE TOLU\r'),
(956, 823, 70, 'TOLU VIEJO\r'),
(957, 1, 73, 'IBAGUE\r'),
(958, 24, 73, 'ALPUJARRA\r'),
(959, 26, 73, 'ALVARADO\r'),
(960, 30, 73, 'AMBALEMA\r'),
(961, 43, 73, 'ANZOATEGUI\r'),
(962, 55, 73, 'ARMERO\r'),
(963, 67, 73, 'ATACO\r'),
(964, 124, 73, 'CAJAMARCA\r'),
(965, 148, 73, 'CARMEN DE APICALA\r'),
(966, 152, 73, 'CASABIANCA\r'),
(967, 168, 73, 'CHAPARRAL\r'),
(968, 200, 73, 'COELLO\r'),
(969, 217, 73, 'COYAIMA\r'),
(970, 226, 73, 'CUNDAY\r'),
(971, 236, 73, 'DOLORES\r'),
(972, 268, 73, 'ESPINAL\r'),
(973, 270, 73, 'FALAN\r'),
(974, 275, 73, 'FLANDES\r'),
(975, 283, 73, 'FRESNO\r'),
(976, 319, 73, 'GUAMO\r'),
(977, 347, 73, 'HERVEO\r'),
(978, 349, 73, 'HONDA\r'),
(979, 352, 73, 'ICONONZO\r'),
(980, 408, 73, 'LERIDA\r'),
(981, 411, 73, 'LIBANO\r'),
(982, 443, 73, 'MARIQUITA\r'),
(983, 449, 73, 'MELGAR\r'),
(984, 461, 73, 'MURILLO\r'),
(985, 483, 73, 'NATAGAIMA\r'),
(986, 504, 73, 'ORTEGA\r'),
(987, 520, 73, 'PALOCABILDO\r'),
(988, 547, 73, 'PIEDRAS\r'),
(989, 555, 73, 'PLANADAS\r'),
(990, 563, 73, 'PRADO\r'),
(991, 585, 73, 'PURIFICACION\r'),
(992, 616, 73, 'RIOBLANCO\r'),
(993, 622, 73, 'RONCESVALLES\r'),
(994, 624, 73, 'ROVIRA\r'),
(995, 671, 73, 'SALDAÑA\r'),
(996, 675, 73, 'SAN ANTONIO\r'),
(997, 678, 73, 'SAN LUIS\r'),
(998, 686, 73, 'SANTA ISABEL\r'),
(999, 770, 73, 'SUAREZ\r'),
(1000, 854, 73, 'VALLE DE SAN JUAN\r'),
(1001, 861, 73, 'VENADILLO\r'),
(1002, 870, 73, 'VILLAHERMOSA\r'),
(1003, 873, 73, 'VILLARRICA\r'),
(1004, 1, 76, 'CALI\r'),
(1005, 20, 76, 'ALCALA\r'),
(1006, 36, 76, 'ANDALUCIA\r'),
(1007, 41, 76, 'ANSERMANUEVO\r'),
(1008, 54, 76, 'ARGELIA\r'),
(1009, 100, 76, 'BOLIVAR\r'),
(1010, 109, 76, 'BUENAVENTURA\r'),
(1011, 111, 76, 'GUADALAJARA DE BUGA\r'),
(1012, 113, 76, 'BUGALAGRANDE\r'),
(1013, 122, 76, 'CAICEDONIA\r'),
(1014, 126, 76, 'CALIMA\r'),
(1015, 130, 76, 'CANDELARIA\r'),
(1016, 147, 76, 'CARTAGO\r'),
(1017, 233, 76, 'DAGUA\r'),
(1018, 243, 76, 'EL AGUILA\r'),
(1019, 246, 76, 'EL CAIRO\r'),
(1020, 248, 76, 'EL CERRITO\r'),
(1021, 250, 76, 'EL DOVIO\r'),
(1022, 275, 76, 'FLORIDA\r'),
(1023, 306, 76, 'GINEBRA\r'),
(1024, 318, 76, 'GUACARI\r'),
(1025, 364, 76, 'JAMUNDI\r'),
(1026, 377, 76, 'LA CUMBRE\r'),
(1027, 400, 76, 'LA UNION\r'),
(1028, 403, 76, 'LA VICTORIA\r'),
(1029, 497, 76, 'OBANDO\r'),
(1030, 520, 76, 'PALMIRA\r'),
(1031, 563, 76, 'PRADERA\r'),
(1032, 606, 76, 'RESTREPO\r'),
(1033, 616, 76, 'RIOFRIO\r'),
(1034, 622, 76, 'ROLDANILLO\r'),
(1035, 670, 76, 'SAN PEDRO\r'),
(1036, 736, 76, 'SEVILLA\r'),
(1037, 823, 76, 'TORO\r'),
(1038, 828, 76, 'TRUJILLO\r'),
(1039, 834, 76, 'TULUA\r'),
(1040, 845, 76, 'ULLOA\r'),
(1041, 863, 76, 'VERSALLES\r'),
(1042, 869, 76, 'VIJES\r'),
(1043, 890, 76, 'YOTOCO\r'),
(1044, 892, 76, 'YUMBO\r'),
(1045, 895, 76, 'ZARZAL\r'),
(1046, 1, 81, 'ARAUCA\r'),
(1047, 65, 81, 'ARAUQUITA\r'),
(1048, 220, 81, 'CRAVO NORTE\r'),
(1049, 300, 81, 'FORTUL\r'),
(1050, 591, 81, 'PUERTO RONDON\r'),
(1051, 736, 81, 'SARAVENA\r'),
(1052, 794, 81, 'TAME\r'),
(1053, 1, 85, 'YOPAL\r'),
(1054, 10, 85, 'AGUAZUL\r'),
(1055, 15, 85, 'CHAMEZA\r'),
(1056, 125, 85, 'HATO COROZAL\r'),
(1057, 136, 85, 'LA SALINA\r'),
(1058, 139, 85, 'MANI\r'),
(1059, 162, 85, 'MONTERREY\r'),
(1060, 225, 85, 'NUNCHIA\r'),
(1061, 230, 85, 'OROCUE\r'),
(1062, 250, 85, 'PAZ DE ARIPORO\r'),
(1063, 263, 85, 'PORE\r'),
(1064, 279, 85, 'RECETOR\r'),
(1065, 300, 85, 'SABANALARGA\r'),
(1066, 315, 85, 'SACAMA\r'),
(1067, 325, 85, 'SAN LUIS DE PALENQUE\r'),
(1068, 400, 85, 'TAMARA\r'),
(1069, 410, 85, 'TAURAMENA\r'),
(1070, 430, 85, 'TRINIDAD\r'),
(1071, 440, 85, 'VILLANUEVA\r'),
(1072, 1, 86, 'MOCOA\r'),
(1073, 219, 86, 'COLON\r'),
(1074, 320, 86, 'ORITO\r'),
(1075, 568, 86, 'PUERTO ASIS\r'),
(1076, 569, 86, 'PUERTO CAICEDO\r'),
(1077, 571, 86, 'PUERTO GUZMAN\r'),
(1078, 573, 86, 'LEGUIZAMO\r'),
(1079, 749, 86, 'SIBUNDOY\r'),
(1080, 755, 86, 'SAN FRANCISCO\r'),
(1081, 757, 86, 'SAN MIGUEL\r'),
(1082, 760, 86, 'SANTIAGO\r'),
(1083, 865, 86, 'VALLE DEL GUAMUEZ\r'),
(1084, 885, 86, 'VILLAGARZON\r'),
(1085, 1, 88, 'SAN ANDRES\r'),
(1086, 564, 88, 'PROVIDENCIA\r'),
(1087, 1, 91, 'LETICIA\r'),
(1088, 263, 91, 'EL ENCANTO\r'),
(1089, 405, 91, 'LA CHORRERA\r'),
(1090, 407, 91, 'LA PEDRERA\r'),
(1091, 430, 91, 'LA VICTORIA\r'),
(1092, 460, 91, 'MIRITI - PARANA\r'),
(1093, 530, 91, 'PUERTO ALEGRIA\r'),
(1094, 536, 91, 'PUERTO ARICA\r'),
(1095, 540, 91, 'PUERTO NARIÑO\r'),
(1096, 669, 91, 'PUERTO SANTANDER\r'),
(1097, 798, 91, 'TARAPACA\r'),
(1098, 1, 94, 'INIRIDA\r'),
(1099, 343, 94, 'BARRANCO MINAS\r'),
(1100, 663, 94, 'MAPIRIPANA\r'),
(1101, 883, 94, 'SAN FELIPE\r'),
(1102, 884, 94, 'PUERTO COLOMBIA\r'),
(1103, 885, 94, 'LA GUADALUPE\r'),
(1104, 886, 94, 'CACAHUAL\r'),
(1105, 887, 94, 'PANA PANA\r'),
(1106, 888, 94, 'MORICHAL\r'),
(1107, 1, 95, 'SAN JOSE DEL GUAVIARE\r'),
(1108, 15, 95, 'CALAMAR\r'),
(1109, 25, 95, 'EL RETORNO\r'),
(1110, 200, 95, 'MIRAFLORES\r'),
(1111, 1, 97, 'MITU\r'),
(1112, 161, 97, 'CARURU\r'),
(1113, 511, 97, 'PACOA\r'),
(1114, 666, 97, 'TARAIRA\r'),
(1115, 777, 97, 'PAPUNAUA\r'),
(1116, 889, 97, 'YAVARATE\r'),
(1117, 1, 99, 'PUERTO CARREÑO\r'),
(1118, 524, 99, 'LA PRIMAVERA\r'),
(1119, 624, 99, 'SANTA ROSALIA\r'),
(1120, 773, 99, 'CUMARIBO\r');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `obras`
--

CREATE TABLE `obras` (
  `id` int(11) NOT NULL COMMENT 'Cod Obra',
  `descripcion` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT 'Descripción Obra',
  `nit_contratante` decimal(15,0) NOT NULL COMMENT 'Nit Contratante',
  `id_municipio` int(11) NOT NULL,
  `estado` char(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `obras`
--

INSERT INTO `obras` (`id`, `descripcion`, `nit_contratante`, `id_municipio`, `estado`, `created_at`, `updated_at`) VALUES
(4, 'CAMPANARIO', '890331426', 362, '1', '2016-09-22 16:47:11', '2016-09-22 16:47:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `parametros`
--

CREATE TABLE `parametros` (
  `id` int(11) NOT NULL,
  `smlv` int(12) NOT NULL,
  `smla` int(12) NOT NULL,
  `eps` decimal(4,2) NOT NULL,
  `afp` decimal(4,2) NOT NULL,
  `ccf` decimal(4,2) NOT NULL,
  `iva` decimal(4,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `parametros`
--

INSERT INTO `parametros` (`id`, `smlv`, `smla`, `eps`, `afp`, `ccf`, `iva`) VALUES
(1, 689454, 644350, '12.50', '16.00', '4.00', '16.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `parentescos`
--

CREATE TABLE `parentescos` (
  `codigo_parentesco` int(11) NOT NULL COMMENT 'Codigo Parentesco',
  `descripcion_parentesco` char(64) NOT NULL COMMENT 'Descripción Parentesco'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `riesgos`
--

CREATE TABLE `riesgos` (
  `id` int(11) NOT NULL,
  `clase` varchar(3) NOT NULL,
  `tarifa` decimal(6,4) NOT NULL,
  `descripcion` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `riesgos`
--

INSERT INTO `riesgos` (`id`, `clase`, `tarifa`, `descripcion`) VALUES
(1, 'I', '0.5220', 'Financieras, trabajos de oficina, administrativos, centros educativos, restaurantes'),
(2, 'II', '1.0440', 'Algunos procesos manufactureros como fabricación de tapetes, tejidos, confecciones y flores artificiales, almacén por departamentos, algunas labores agricolas'),
(3, 'III', '2.4360', 'Algunos procesos manufactureros como la fabricación de agujas, alcoholes y artículos de cuero'),
(4, 'IV', '4.3500', 'Procesos manufactureros como fabricación de aceites, cervezas, vidrios, procesos de galvanización, transportes y servicios de vigilancia privada'),
(5, 'V', '6.9600', 'Areneras, manejo de asbesto, bomberos, manejo de explosivos, construcción y explotación petrolera');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitudes`
--

CREATE TABLE `solicitudes` (
  `id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `fecha_inicio` date NOT NULL,
  `id_contratante` int(11) NOT NULL,
  `obra_id` int(11) NOT NULL,
  `estado` char(1) NOT NULL DEFAULT 'p',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `solicitudes`
--

INSERT INTO `solicitudes` (`id`, `fecha`, `fecha_inicio`, `id_contratante`, `obra_id`, `estado`, `created_at`, `updated_at`) VALUES
(4, '2016-09-22', '2016-09-26', 5, 4, 'p', '2016-09-22 17:23:23', '2016-09-22 17:23:23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitud_contratistas`
--

CREATE TABLE `solicitud_contratistas` (
  `id` int(11) NOT NULL,
  `id_solicitud` int(11) NOT NULL,
  `id_contratista` int(11) NOT NULL,
  `salario` float NOT NULL,
  `eps` tinyint(1) NOT NULL DEFAULT '0',
  `arl` tinyint(1) NOT NULL DEFAULT '0',
  `caja` tinyint(1) NOT NULL DEFAULT '0',
  `fondo` tinyint(1) NOT NULL DEFAULT '0',
  `estado` char(1) NOT NULL DEFAULT 'p',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `solicitud_contratistas`
--

INSERT INTO `solicitud_contratistas` (`id`, `id_solicitud`, `id_contratista`, `salario`, `eps`, `arl`, `caja`, `fondo`, `estado`, `created_at`, `updated_at`) VALUES
(0, 4, 6, 689.454, 1, 1, 1, 1, 'p', NULL, NULL),
(0, 4, 5, 689.454, 1, 1, 1, 1, 'p', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos_contratistas`
--

CREATE TABLE `tipos_contratistas` (
  `codigo_tipo_contratista` int(11) NOT NULL COMMENT 'Cod Tipo Contratista',
  `descripcion_tipo_contratista` char(64) NOT NULL COMMENT 'Descripción Tipo Contratista'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `rol` varchar(20) NOT NULL,
  `nit_contratante` decimal(15,0) DEFAULT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `email`, `password`, `rol`, `nit_contratante`, `estado`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Samir Vidal', 'samirvidal@hotmail.com', '$2y$10$jxWtGki6UL.IQzURxE1.g.Q8kno0OQw2kv1cG7CjzTljvzRcaAAju', 'admin', '111222333', 1, 'cNlqsqun7K3zNwJdEW8twye52smTb7mNiBBJ4iZLbJx9UZcSxGrUnaH713G3', '2016-02-19 22:13:55', '2016-06-14 04:12:47'),
(2, 'Verlaine Jaramillo', 'admin@hotmail.com', '$2y$10$jxWtGki6UL.IQzURxE1.g.Q8kno0OQw2kv1cG7CjzTljvzRcaAAju', 'admin', '111222333', 1, '0CSCvZaigWVJBVdGOI144o8621CIE0gLiOTj8gkh7kiZ22Qiif4vAjlma3pd', '2016-03-28 14:25:22', '2016-09-28 15:09:39'),
(5, 'Adiela de Lombana', 'amvalencia@adl.co', '$2y$10$jxWtGki6UL.IQzURxE1.g.Q8kno0OQw2kv1cG7CjzTljvzRcaAAju', 'contratante', '890331426', 1, 'IFJfmwHs1njLPCZomp6QhWbwIgr0JL0e6CKwN60cO7zkzIARC9N8I2U3kYoS', '2016-03-28 14:25:22', '2016-10-12 23:19:21'),
(6, 'YENNY QUINAYAS RUIZ', 'seguridadsocial@gesicolombia.co', '$2y$10$zG.VLnHQVNsI68O5rOn4o.IEvaCjvPkPsUZ3z/nE39.E7hlq0fh8W', 'admin', '111222333', 1, 'jQ7PClz06BEAyJdQRYrVk6B3pFb9Z47rb0cKfFFEuChSPSrTLEx9h8gBoX8Z', '2016-09-22 16:44:32', '2016-09-22 17:49:28');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `arl`
--
ALTER TABLE `arl`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `bancos`
--
ALTER TABLE `bancos`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `beneficiarios`
--
ALTER TABLE `beneficiarios`
  ADD PRIMARY KEY (`numero_documento_identificacion`,`tipo_documento`),
  ADD KEY `codigo_ciudad_documento` (`codigo_municipio_documento`),
  ADD KEY `codigo_ciudad` (`codigo_municipio`),
  ADD KEY `parentesco` (`parentesco`),
  ADD KEY `numero_documento_identificacion` (`numero_documento_identificacion`,`tipo_documento`) USING BTREE;

--
-- Indices de la tabla `cajas_compensacion`
--
ALTER TABLE `cajas_compensacion`
  ADD PRIMARY KEY (`codigo_caja`);

--
-- Indices de la tabla `conceptos`
--
ALTER TABLE `conceptos`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `contratantes`
--
ALTER TABLE `contratantes`
  ADD PRIMARY KEY (`nit`),
  ADD KEY `codigo_ciudad` (`codigo_municipio`),
  ADD KEY `id_cuenta_bancaria` (`id_cuenta_bancaria`);

--
-- Indices de la tabla `contratantes_arl`
--
ALTER TABLE `contratantes_arl`
  ADD PRIMARY KEY (`nit_contratante`,`codigo_arl`),
  ADD KEY `codigo_arl` (`codigo_arl`);

--
-- Indices de la tabla `contratistas`
--
ALTER TABLE `contratistas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `codigo_ciudad_documento` (`codigo_municipio_documento`),
  ADD KEY `codigo_ciudad` (`codigo_municipio`),
  ADD KEY `nit_contratante` (`nit_contratante`);

--
-- Indices de la tabla `contratistas_obras`
--
ALTER TABLE `contratistas_obras`
  ADD PRIMARY KEY (`numero_documento_identificacion`,`tipo_documento`,`nit_contratante`,`codigo_obra`),
  ADD KEY `codigo_obra` (`codigo_obra`),
  ADD KEY `nit_contratante` (`nit_contratante`);

--
-- Indices de la tabla `contratista_seguridad_social`
--
ALTER TABLE `contratista_seguridad_social`
  ADD PRIMARY KEY (`nit_contratista`),
  ADD KEY `codigo_ciudad` (`codigo_municipio`);

--
-- Indices de la tabla `contrato_servicios`
--
ALTER TABLE `contrato_servicios`
  ADD PRIMARY KEY (`numero_contrato`),
  ADD KEY `nit_contratante` (`nit_contratante`),
  ADD KEY `codigo_obra` (`codigo_obra`),
  ADD KEY `numero_documento_identificacion` (`numero_documento_identificacion`,`tipo_documento`),
  ADD KEY `codigo_eps` (`codigo_eps`),
  ADD KEY `fondo_pension` (`fondo_pension`),
  ADD KEY `codigo_arl` (`codigo_arl`),
  ADD KEY `caja_compensacion` (`caja_compensacion`),
  ADD KEY `codigo_tipo_contratista` (`codigo_tipo_contratista`);

--
-- Indices de la tabla `cuentas_bancarias`
--
ALTER TABLE `cuentas_bancarias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `codigo` (`codigo`);

--
-- Indices de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalles_factura`
--
ALTER TABLE `detalles_factura`
  ADD PRIMARY KEY (`numero_factura`,`numero_item`),
  ADD KEY `numero_contrato` (`numero_contrato`),
  ADD KEY `codigo_concepto` (`codigo_concepto`);

--
-- Indices de la tabla `encabezados_factura`
--
ALTER TABLE `encabezados_factura`
  ADD PRIMARY KEY (`numero_factura`),
  ADD KEY `nit_contratante` (`nit_contratante`);

--
-- Indices de la tabla `eps`
--
ALTER TABLE `eps`
  ADD PRIMARY KEY (`codigo_eps`),
  ADD UNIQUE KEY `nit_eps` (`nit_eps`);

--
-- Indices de la tabla `fondos_pension`
--
ALTER TABLE `fondos_pension`
  ADD PRIMARY KEY (`codigo_fondo_pension`);

--
-- Indices de la tabla `municipios`
--
ALTER TABLE `municipios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_departamento` (`id_departamento`);

--
-- Indices de la tabla `obras`
--
ALTER TABLE `obras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nit_contratante` (`nit_contratante`),
  ADD KEY `id_ciudad` (`id_municipio`);

--
-- Indices de la tabla `parametros`
--
ALTER TABLE `parametros`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `parentescos`
--
ALTER TABLE `parentescos`
  ADD PRIMARY KEY (`codigo_parentesco`);

--
-- Indices de la tabla `riesgos`
--
ALTER TABLE `riesgos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `solicitudes`
--
ALTER TABLE `solicitudes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_contratante` (`id_contratante`),
  ADD KEY `obra_id` (`obra_id`);

--
-- Indices de la tabla `solicitud_contratistas`
--
ALTER TABLE `solicitud_contratistas`
  ADD KEY `id_solicitud` (`id_solicitud`,`id_contratista`),
  ADD KEY `id_contratista` (`id_contratista`);

--
-- Indices de la tabla `tipos_contratistas`
--
ALTER TABLE `tipos_contratistas`
  ADD PRIMARY KEY (`codigo_tipo_contratista`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nit_contratante` (`nit_contratante`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `contratistas`
--
ALTER TABLE `contratistas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `cuentas_bancarias`
--
ALTER TABLE `cuentas_bancarias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
--
-- AUTO_INCREMENT de la tabla `obras`
--
ALTER TABLE `obras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Cod Obra', AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `parametros`
--
ALTER TABLE `parametros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `riesgos`
--
ALTER TABLE `riesgos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `solicitudes`
--
ALTER TABLE `solicitudes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `beneficiarios`
--
ALTER TABLE `beneficiarios`
  ADD CONSTRAINT `beneficiarios_ibfk_1` FOREIGN KEY (`codigo_municipio_documento`) REFERENCES `municipios` (`id`),
  ADD CONSTRAINT `beneficiarios_ibfk_2` FOREIGN KEY (`codigo_municipio`) REFERENCES `municipios` (`id`),
  ADD CONSTRAINT `bnfcrios_ibfk_1` FOREIGN KEY (`parentesco`) REFERENCES `parentescos` (`codigo_parentesco`);

--
-- Filtros para la tabla `contratantes`
--
ALTER TABLE `contratantes`
  ADD CONSTRAINT `cntrtntes_ibfk_2` FOREIGN KEY (`id_cuenta_bancaria`) REFERENCES `cuentas_bancarias` (`id`),
  ADD CONSTRAINT `contratantes_ibfk_1` FOREIGN KEY (`codigo_municipio`) REFERENCES `municipios` (`id`);

--
-- Filtros para la tabla `contratantes_arl`
--
ALTER TABLE `contratantes_arl`
  ADD CONSTRAINT `cntrtntes_arl_ibfk_2` FOREIGN KEY (`nit_contratante`) REFERENCES `contratantes` (`nit`),
  ADD CONSTRAINT `contratantes_arl_ibfk_1` FOREIGN KEY (`codigo_arl`) REFERENCES `arl` (`codigo`);

--
-- Filtros para la tabla `contratistas`
--
ALTER TABLE `contratistas`
  ADD CONSTRAINT `cntrtstas_ibfk_3` FOREIGN KEY (`nit_contratante`) REFERENCES `contratantes` (`nit`),
  ADD CONSTRAINT `contratistas_ibfk_1` FOREIGN KEY (`codigo_municipio_documento`) REFERENCES `municipios` (`id`),
  ADD CONSTRAINT `contratistas_ibfk_2` FOREIGN KEY (`codigo_municipio`) REFERENCES `municipios` (`id`);

--
-- Filtros para la tabla `contratistas_obras`
--
ALTER TABLE `contratistas_obras`
  ADD CONSTRAINT `contratistas_obras_ibfk_5` FOREIGN KEY (`nit_contratante`) REFERENCES `contratantes` (`nit`);

--
-- Filtros para la tabla `contratista_seguridad_social`
--
ALTER TABLE `contratista_seguridad_social`
  ADD CONSTRAINT `contratista_seguridad_social_ibfk_1` FOREIGN KEY (`codigo_municipio`) REFERENCES `municipios` (`id`);

--
-- Filtros para la tabla `contrato_servicios`
--
ALTER TABLE `contrato_servicios`
  ADD CONSTRAINT `cntrto_srvcios_ibfk_1` FOREIGN KEY (`nit_contratante`) REFERENCES `contratantes` (`nit`),
  ADD CONSTRAINT `cntrto_srvcios_ibfk_6` FOREIGN KEY (`codigo_tipo_contratista`) REFERENCES `tipos_contratistas` (`codigo_tipo_contratista`),
  ADD CONSTRAINT `contrato_servicios_ibfk_1` FOREIGN KEY (`codigo_eps`) REFERENCES `eps` (`codigo_eps`),
  ADD CONSTRAINT `contrato_servicios_ibfk_2` FOREIGN KEY (`caja_compensacion`) REFERENCES `cajas_compensacion` (`codigo_caja`),
  ADD CONSTRAINT `contrato_servicios_ibfk_3` FOREIGN KEY (`fondo_pension`) REFERENCES `fondos_pension` (`codigo_fondo_pension`),
  ADD CONSTRAINT `contrato_servicios_ibfk_4` FOREIGN KEY (`codigo_arl`) REFERENCES `arl` (`codigo`);

--
-- Filtros para la tabla `cuentas_bancarias`
--
ALTER TABLE `cuentas_bancarias`
  ADD CONSTRAINT `cntas_bncrias_ibfk_1` FOREIGN KEY (`codigo`) REFERENCES `bancos` (`codigo`);

--
-- Filtros para la tabla `detalles_factura`
--
ALTER TABLE `detalles_factura`
  ADD CONSTRAINT `dtlles_fctra_ibfk_1` FOREIGN KEY (`numero_factura`) REFERENCES `encabezados_factura` (`numero_factura`),
  ADD CONSTRAINT `dtlles_fctra_ibfk_2` FOREIGN KEY (`codigo_concepto`) REFERENCES `conceptos` (`codigo`),
  ADD CONSTRAINT `dtlles_fctra_ibfk_3` FOREIGN KEY (`numero_contrato`) REFERENCES `contrato_servicios` (`numero_contrato`);

--
-- Filtros para la tabla `encabezados_factura`
--
ALTER TABLE `encabezados_factura`
  ADD CONSTRAINT `enbzdos_fctra_ibfk_1` FOREIGN KEY (`nit_contratante`) REFERENCES `contratantes` (`nit`);

--
-- Filtros para la tabla `municipios`
--
ALTER TABLE `municipios`
  ADD CONSTRAINT `municipios_ibfk_1` FOREIGN KEY (`id_departamento`) REFERENCES `departamentos` (`id`);

--
-- Filtros para la tabla `obras`
--
ALTER TABLE `obras`
  ADD CONSTRAINT `obras_ibfk_1` FOREIGN KEY (`nit_contratante`) REFERENCES `contratantes` (`nit`),
  ADD CONSTRAINT `obras_ibfk_2` FOREIGN KEY (`id_municipio`) REFERENCES `municipios` (`id`);

--
-- Filtros para la tabla `solicitud_contratistas`
--
ALTER TABLE `solicitud_contratistas`
  ADD CONSTRAINT `solicitud_contratistas_ibfk_1` FOREIGN KEY (`id_solicitud`) REFERENCES `solicitudes` (`id`),
  ADD CONSTRAINT `solicitud_contratistas_ibfk_2` FOREIGN KEY (`id_contratista`) REFERENCES `contratistas` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
