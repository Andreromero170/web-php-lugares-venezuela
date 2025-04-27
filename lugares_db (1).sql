-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-04-2025 a las 19:15:21
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `lugares_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`) VALUES
(1, 'Desierto'),
(2, 'Nieve'),
(3, 'Volcán'),
(4, 'Playas'),
(5, 'Montañas'),
(6, 'Bosques'),
(7, 'Ríos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coordenadas`
--

CREATE TABLE `coordenadas` (
  `id` int(11) NOT NULL,
  `lugar_id` int(11) DEFAULT NULL,
  `latitud` decimal(10,8) DEFAULT NULL,
  `longitud` decimal(11,8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `coordenadas`
--

INSERT INTO `coordenadas` (`id`, `lugar_id`, `latitud`, `longitud`) VALUES
(1, 1, 5.97370000, -62.53640000),
(2, 2, 10.95100000, -63.88200000),
(3, 3, 10.66390000, -68.21210000),
(4, 4, 8.59170000, -71.38110000),
(5, 5, 8.55270000, -71.38090000),
(6, 6, 11.98030000, -66.96130000),
(7, 7, 10.76020000, -63.90420000),
(8, 8, 7.77390000, -63.42000000),
(9, 9, 5.96820000, -62.64200000),
(10, 10, 10.21670000, -62.61860000),
(11, 11, 10.51010000, -66.95100000),
(12, 12, 10.63600000, -66.93170000),
(13, 13, 10.97110000, -63.90500000),
(14, 14, 10.31800000, -68.02990000),
(15, 15, 8.54710000, -71.14030000),
(16, 16, 10.38120000, -67.56830000),
(17, 17, 11.98360000, -66.85920000),
(18, 18, 11.97450000, -66.90540000),
(19, 19, 6.29520000, -61.79860000),
(20, 20, 5.97360000, -62.57240000),
(21, 21, 8.35710000, -70.91230000),
(22, 22, 8.41150000, -70.85150000),
(23, 23, 10.21700000, -64.69400000),
(24, 24, 5.70250000, -61.27560000),
(25, 25, 11.97720000, -66.93200000),
(26, 26, 10.78130000, -63.97850000),
(27, 27, 9.32740000, -64.38050000),
(28, 28, 8.59790000, -71.19120000),
(29, 29, 10.25390000, -67.68860000),
(30, 30, 8.63450000, -71.46440000),
(31, 31, 10.12610000, -69.31450000),
(32, 32, 11.34890000, -69.18810000),
(33, 33, 8.41360000, -70.85230000),
(34, 34, 8.56800000, -71.31490000),
(35, 35, 9.55400000, -68.13670000),
(36, 36, 9.51410000, -68.06720000),
(37, 37, 10.63560000, -66.90770000),
(38, 38, 11.98010000, -66.85930000),
(39, 39, 10.98360000, -64.28370000),
(40, 40, 10.22790000, -68.07990000),
(41, 41, 10.21440000, -64.75520000),
(42, 42, 5.70940000, -60.73290000),
(43, 43, 5.75190000, -60.77870000),
(44, 44, 9.36500000, -71.20820000),
(45, 45, 8.67530000, -71.21990000),
(46, 46, 9.20130000, -63.15320000),
(47, 47, 8.63020000, -70.21870000),
(48, 48, 10.95300000, -63.95100000),
(49, 49, 8.63490000, -71.26750000),
(50, 50, 10.15640000, -68.12070000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagenes`
--

CREATE TABLE `imagenes` (
  `id` int(11) NOT NULL,
  `lugar_id` int(11) DEFAULT NULL,
  `url_imagen` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `imagenes`
--

INSERT INTO `imagenes` (`id`, `lugar_id`, `url_imagen`) VALUES
(1, 1, 'https://example.com/imagenes/parque_nacional_canaima_1.jpg'),
(2, 1, 'https://example.com/imagenes/parque_nacional_canaima_2.jpg'),
(3, 1, 'https://example.com/imagenes/parque_nacional_canaima_3.jpg'),
(4, 2, 'https://example.com/imagenes/islade_margarita_1.jpg'),
(5, 2, 'https://example.com/imagenes/islade_margarita_2.jpg'),
(6, 2, 'https://example.com/imagenes/islade_margarita_3.jpg'),
(7, 3, 'https://example.com/imagenes/parque_nacional_morrocoy_1.jpg'),
(8, 3, 'https://example.com/imagenes/parque_nacional_morrocoy_2.jpg'),
(9, 3, 'https://example.com/imagenes/parque_nacional_morrocoy_3.jpg'),
(10, 4, 'https://example.com/imagenes/sierra_nevada_merida_1.jpg'),
(11, 4, 'https://example.com/imagenes/sierra_nevada_merida_2.jpg'),
(12, 4, 'https://example.com/imagenes/sierra_nevada_merida_3.jpg'),
(13, 5, 'https://example.com/imagenes/pico_bolivar_1.jpg'),
(14, 5, 'https://example.com/imagenes/pico_bolivar_2.jpg'),
(15, 5, 'https://example.com/imagenes/pico_bolivar_3.jpg'),
(16, 6, 'https://example.com/imagenes/cayo_de_los_roques_1.jpg'),
(17, 6, 'https://example.com/imagenes/cayo_de_los_roques_2.jpg'),
(18, 6, 'https://example.com/imagenes/cayo_de_los_roques_3.jpg'),
(19, 7, 'https://example.com/imagenes/islade_coche_1.jpg'),
(20, 7, 'https://example.com/imagenes/islade_coche_2.jpg'),
(21, 7, 'https://example.com/imagenes/islade_coche_3.jpg'),
(22, 8, 'https://example.com/imagenes/rio_orinoco_1.jpg'),
(23, 8, 'https://example.com/imagenes/rio_orinoco_2.jpg'),
(24, 8, 'https://example.com/imagenes/rio_orinoco_3.jpg'),
(25, 9, 'https://example.com/imagenes/salto_angel_1.jpg'),
(26, 9, 'https://example.com/imagenes/salto_angel_2.jpg'),
(27, 9, 'https://example.com/imagenes/salto_angel_3.jpg'),
(28, 10, 'https://example.com/imagenes/parque_nacional_hacha_1.jpg'),
(29, 10, 'https://example.com/imagenes/parque_nacional_hacha_2.jpg'),
(30, 10, 'https://example.com/imagenes/parque_nacional_hacha_3.jpg'),
(31, 31, 'https://example.com/imagenes/desierto_de_lara_barquisimeto_1.jpg'),
(32, 31, 'https://example.com/imagenes/desierto_de_lara_barquisimeto_2.jpg'),
(33, 31, 'https://example.com/imagenes/desierto_de_lara_barquisimeto_3.jpg'),
(34, 32, 'https://example.com/imagenes/desierto_de_jacura_falcon_1.jpg'),
(35, 32, 'https://example.com/imagenes/desierto_de_jacura_falcon_2.jpg'),
(36, 32, 'https://example.com/imagenes/desierto_de_jacura_falcon_3.jpg'),
(37, 33, 'https://example.com/imagenes/glaciar_la_corona_1.jpg'),
(38, 33, 'https://example.com/imagenes/glaciar_la_corona_2.jpg'),
(39, 33, 'https://example.com/imagenes/glaciar_la_corona_3.jpg'),
(40, 34, 'https://example.com/imagenes/laguna_de_mucubaji_en_invierno_1.jpg'),
(41, 34, 'https://example.com/imagenes/laguna_de_mucubaji_en_invierno_2.jpg'),
(42, 34, 'https://example.com/imagenes/laguna_de_mucubaji_en_invierno_3.jpg'),
(43, 35, 'https://example.com/imagenes/cayo_de_gran_roque_1.jpg'),
(44, 35, 'https://example.com/imagenes/cayo_de_gran_roque_2.jpg'),
(45, 35, 'https://example.com/imagenes/cayo_de_gran_roque_3.jpg'),
(46, 36, 'https://example.com/imagenes/parque_nacional_sierra_de_la_culata_1.jpg'),
(47, 36, 'https://example.com/imagenes/parque_nacional_sierra_de_la_culata_2.jpg'),
(48, 36, 'https://example.com/imagenes/parque_nacional_sierra_de_la_culata_3.jpg'),
(49, 37, 'https://example.com/imagenes/laguna_de_urao_1.jpg'),
(50, 37, 'https://example.com/imagenes/laguna_de_urao_2.jpg'),
(51, 37, 'https://example.com/imagenes/laguna_de_urao_3.jpg'),
(52, 38, 'https://example.com/imagenes/parque_nacional_henri_pittier_1.jpg'),
(53, 38, 'https://example.com/imagenes/parque_nacional_henri_pittier_2.jpg'),
(54, 38, 'https://example.com/imagenes/parque_nacional_henri_pittier_3.jpg'),
(55, 39, 'https://example.com/imagenes/pico_espejo_1.jpg'),
(56, 39, 'https://example.com/imagenes/pico_espejo_2.jpg'),
(57, 39, 'https://example.com/imagenes/pico_espejo_3.jpg'),
(58, 40, 'https://example.com/imagenes/pequeno_salto_angel_1.jpg'),
(59, 40, 'https://example.com/imagenes/pequeno_salto_angel_2.jpg'),
(60, 40, 'https://example.com/imagenes/pequeno_salto_angel_3.jpg'),
(61, 41, 'https://example.com/imagenes/rio_caroni_1.jpg'),
(62, 41, 'https://example.com/imagenes/rio_caroni_2.jpg'),
(63, 41, 'https://example.com/imagenes/rio_caroni_3.jpg'),
(64, 42, 'https://example.com/imagenes/parque_nacional_mochima_1.jpg'),
(65, 42, 'https://example.com/imagenes/parque_nacional_mochima_2.jpg'),
(66, 42, 'https://example.com/imagenes/parque_nacional_mochima_3.jpg'),
(67, 43, 'https://example.com/imagenes/gran_sabana_1.jpg'),
(68, 43, 'https://example.com/imagenes/gran_sabana_2.jpg'),
(69, 43, 'https://example.com/imagenes/gran_sabana_3.jpg'),
(70, 44, 'https://example.com/imagenes/islade_los_testigos_1.jpg'),
(71, 44, 'https://example.com/imagenes/islade_los_testigos_2.jpg'),
(72, 44, 'https://example.com/imagenes/islade_los_testigos_3.jpg'),
(73, 45, 'https://example.com/imagenes/laguna_de_margarita_1.jpg'),
(74, 45, 'https://example.com/imagenes/laguna_de_margarita_2.jpg'),
(75, 45, 'https://example.com/imagenes/laguna_de_margarita_3.jpg'),
(76, 46, 'https://example.com/imagenes/parque_nacional_tierra_de_indios_1.jpg'),
(77, 46, 'https://example.com/imagenes/parque_nacional_tierra_de_indios_2.jpg'),
(78, 46, 'https://example.com/imagenes/parque_nacional_tierra_de_indios_3.jpg'),
(79, 47, 'https://example.com/imagenes/monumento_la_feria_1.jpg'),
(80, 47, 'https://example.com/imagenes/monumento_la_feria_2.jpg'),
(81, 47, 'https://example.com/imagenes/monumento_la_feria_3.jpg'),
(82, 48, 'https://example.com/imagenes/cayos_margarita_1.jpg'),
(83, 48, 'https://example.com/imagenes/cayos_margarita_2.jpg'),
(84, 48, 'https://example.com/imagenes/cayos_margarita_3.jpg'),
(85, 49, 'https://example.com/imagenes/parque_nacional_sierra_de_la_culata_1.jpg'),
(86, 49, 'https://example.com/imagenes/parque_nacional_sierra_de_la_culata_2.jpg'),
(87, 49, 'https://example.com/imagenes/parque_nacional_sierra_de_la_culata_3.jpg'),
(88, 50, 'https://example.com/imagenes/salto_de_mora_1.jpg'),
(89, 50, 'https://example.com/imagenes/salto_de_mora_2.jpg'),
(90, 50, 'https://example.com/imagenes/salto_de_mora_3.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lugares`
--

CREATE TABLE `lugares` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `estado` varchar(100) DEFAULT NULL,
  `categoria_id` int(11) DEFAULT NULL,
  `imagen_principal` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `lugares`
--

INSERT INTO `lugares` (`id`, `nombre`, `descripcion`, `estado`, `categoria_id`, `imagen_principal`) VALUES
(1, 'Parque Nacional Canaima', 'Área de gran belleza natural, hogar del Salto Ángel.', 'activo', 4, 'https://example.com/imagenes/parque_nacional_canaima.jpg'),
(2, 'Isla de Margarita', 'Una de las islas más famosas de Venezuela, conocida por sus playas.', 'activo', 4, 'https://example.com/imagenes/islade_margarita.jpg'),
(3, 'Parque Nacional Morrocoy', 'Hermosos cayo y playas en el estado Falcón.', 'activo', 4, 'https://example.com/imagenes/parque_nacional_morrocoy.jpg'),
(4, 'Sierra Nevada de Mérida', 'Montañas nevadas, especialmente en invierno.', 'activo', 5, 'https://example.com/imagenes/sierra_nevada_merida.jpg'),
(5, 'Pico Bolívar', 'El punto más alto de Venezuela, en los Andes.', 'activo', 5, 'https://example.com/imagenes/pico_bolivar.jpg'),
(6, 'Cayo de Los Roques', 'Cayo paradisíaco con arena blanca y aguas cristalinas.', 'activo', 4, 'https://example.com/imagenes/cayo_de_los_roques.jpg'),
(7, 'Isla de Coche', 'Isla caribeña famosa por sus playas y actividades acuáticas.', 'activo', 4, 'https://example.com/imagenes/islade_coche.jpg'),
(8, 'Río Orinoco', 'El río más largo de Venezuela y uno de los más importantes de Sudamérica.', 'activo', 6, 'https://example.com/imagenes/rio_orinoco.jpg'),
(9, 'Salto Ángel', 'La cascada más alta del mundo, ubicada en el Parque Nacional Canaima.', 'activo', 6, 'https://example.com/imagenes/salto_angel.jpg'),
(10, 'Parque Nacional Hacha', 'Una de las áreas más importantes en cuanto a fauna y flora de Venezuela.', 'activo', 6, 'https://example.com/imagenes/parque_nacional_hacha.jpg'),
(11, 'Parque Nacional El Ávila', 'El pulmón de Caracas, ofreciendo senderos y vistas impresionantes.', 'activo', 5, 'https://example.com/imagenes/parque_nacional_el_avila.jpg'),
(12, 'Pico Naiguatá', 'Montaña ubicada en el Parque Nacional El Ávila, ideal para el senderismo.', 'activo', 5, 'https://example.com/imagenes/pico_naiguata.jpg'),
(13, 'Laguna de la Restinga', 'Laguna costera ubicada en Margarita, conocida por su fauna.', 'activo', 6, 'https://example.com/imagenes/laguna_de_la_restinga.jpg'),
(14, 'Parque Nacional San Esteban', 'Hermoso parque con áreas protegidas en el estado Carabobo.', 'activo', 5, 'https://example.com/imagenes/parque_nacional_san_esteban.jpg'),
(15, 'Pico Jaua', 'Ubicado en los Andes, popular entre los montañistas.', 'activo', 5, 'https://example.com/imagenes/pico_jaua.jpg'),
(16, 'Parque Nacional Henri Pittier', 'El parque más antiguo de Venezuela, conocido por su biodiversidad.', 'activo', 5, 'https://example.com/imagenes/parque_nacional_henri_pittier.jpg'),
(17, 'Cayo de Agua', 'Isla tranquila dentro del Parque Nacional Los Roques.', 'activo', 4, 'https://example.com/imagenes/cayo_de_agua.jpg'),
(18, 'Cayo de las Roquitas', 'Cayo de pequeñas dimensiones pero de gran belleza en Los Roques.', 'activo', 4, 'https://example.com/imagenes/cayo_de_las_roquitas.jpg'),
(19, 'Río Caroní', 'Importante río del sur de Venezuela, conocido por sus paisajes selváticos.', 'activo', 6, 'https://example.com/imagenes/rio_caroni.jpg'),
(20, 'Cascada El Vino', 'Una impresionante caída de agua ubicada en el Parque Nacional Canaima.', 'activo', 6, 'https://example.com/imagenes/cascada_el_vino.jpg'),
(21, 'Parque Nacional Sierra de La Culata', 'Área montañosa en los Andes venezolanos, famosa por su flora.', 'activo', 5, 'https://example.com/imagenes/parque_nacional_sierra_de_la_culata.jpg'),
(22, 'Pico Humboldt', 'Uno de los picos más altos de Venezuela, conocido por su paisaje nevado.', 'activo', 5, 'https://example.com/imagenes/pico_humboldt.jpg'),
(23, 'Parque Nacional Mochima', 'Famoso por sus playas, islas y fauna marina.', 'activo', 4, 'https://example.com/imagenes/parque_nacional_mochima.jpg'),
(24, 'La Gran Sabana', 'Región ubicada en el sureste de Venezuela, famosa por sus tepuyes.', 'activo', 1, 'https://example.com/imagenes/gran_sabana.jpg'),
(25, 'Parque Nacional Los Roques', 'Un paraíso para los amantes de los deportes acuáticos.', 'activo', 4, 'https://example.com/imagenes/parque_nacional_los_roques.jpg'),
(26, 'Isla de Los Testigos', 'Isla cercana a Margarita, conocida por su tranquilidad y belleza natural.', 'activo', 4, 'https://example.com/imagenes/islade_los_testigos.jpg'),
(27, 'Parque Nacional El Guácharo', 'Famoso por su cueva, el hábitat de miles de guácharos.', 'activo', 6, 'https://example.com/imagenes/parque_nacional_el_guacharo.jpg'),
(28, 'Pico Espejo', 'Una de las cumbres más visitadas en la Sierra Nevada.', 'activo', 5, 'https://example.com/imagenes/pico_espejo.jpg'),
(29, 'Río Tuy', 'Río en el centro de Venezuela, conocido por sus paisajes montañosos.', 'activo', 6, 'https://example.com/imagenes/rio_tuy.jpg'),
(30, 'Laguna de Urao', 'Hermosa laguna ubicada en los Andes venezolanos.', 'activo', 6, 'https://example.com/imagenes/laguna_de_urao.jpg'),
(31, 'Desierto de Lara (Barquisimeto)', 'Zona árida con paisajes rojizos y cactus.', 'activo', 1, 'https://example.com/imagenes/desierto_de_lara_barquisimeto.jpg'),
(32, 'Desierto de Jacura (Falcón)', 'Área semiárida poco explorada con formaciones rocosas.', 'activo', 1, 'https://example.com/imagenes/desierto_de_jacura_falcon.jpg'),
(33, 'Glaciar La Corona', 'Parte de los glaciares desaparecidos del Pico Humboldt, hoy zona de interés geológico.', 'activo', 2, 'https://example.com/imagenes/glaciar_la_corona.jpg'),
(34, 'Laguna de Mucubají en invierno', 'Paisaje andino cubierto de escarcha, muy visitado en temporada fría.', 'activo', 2, 'https://example.com/imagenes/laguna_de_mucubaji_en_invierno.jpg'),
(35, 'Cerro Negro de Nirgua', 'Formación volcánica apagada, excelente para senderismo.', 'activo', 3, 'https://example.com/imagenes/cerro_negro_de_nirgua.jpg'),
(36, 'Cerro Platillón', 'Su forma y origen geológico son de tipo volcánico.', 'activo', 3, 'https://example.com/imagenes/cerro_platillon.jpg'),
(37, 'Playa Los Caracas', 'Hermosa playa en Vargas, con fuerte oleaje.', 'activo', 4, 'https://example.com/imagenes/playa_los_caracas.jpg'),
(38, 'Cayo de Agua', 'Paraíso virgen con arena blanca en Los Roques.', 'activo', 4, 'https://example.com/imagenes/cayo_de_agua.jpg'),
(39, 'Playa Punta Arenas', 'Tranquila y alejada, ideal para relajarse en Margarita.', 'activo', 4, 'https://example.com/imagenes/playa_punta_arenas.jpg'),
(40, 'Playa Patanemo', 'Muy visitada por turistas locales, ubicada en Carabobo.', 'activo', 4, 'https://example.com/imagenes/playa_patanemo.jpg'),
(41, 'Playa Mochima', 'Rodeada de montañas, parte del Parque Nacional Mochima.', 'activo', 4, 'https://example.com/imagenes/playa_mochima.jpg'),
(42, 'Monte Roraima', 'Uno de los tepuyes más famosos del mundo.', 'activo', 5, 'https://example.com/imagenes/monte_roraima.jpg'),
(43, 'Auyantepuy', 'De donde nace el Salto Ángel, impresionante formación.', 'activo', 5, 'https://example.com/imagenes/auyantepuy.jpg'),
(44, 'Sierra de Perijá', 'Cordillera entre Zulia y Colombia.', 'activo', 5, 'https://example.com/imagenes/sierra_de_perija.jpg'),
(45, 'Pico El Toro', 'Pico andino accesible desde Mérida.', 'activo', 5, 'https://example.com/imagenes/pico_el_toro.jpg'),
(46, 'Parque Nacional Tierra de Indios', 'Un parque con rica historia indígena, rutas ecológicas y flora tropical.', 'Monagas', 6, 'https://example.com/imagenes/parque_nacional_tierra_de_indios_1.jpg'),
(47, 'Monumento La Feria', 'Monumento emblemático que celebra la cultura popular venezolana.', 'Barinas', 3, 'https://example.com/imagenes/monumento_la_feria_1.jpg'),
(48, 'Cayos de Margarita', 'Pequeños islotes con aguas cristalinas, ideales para snorkel y descanso.', 'Nueva Esparta', 4, 'https://example.com/imagenes/cayos_margarita_1.jpg'),
(49, 'Parque Nacional Sierra de La Culata', 'Montañas y paisajes nevados con rutas de senderismo espectaculares.', 'Mérida', 5, 'https://example.com/imagenes/parque_nacional_sierra_de_la_culata_1.jpg'),
(50, 'Salto de Mora', 'Impresionante caída de agua escondida en el bosque tropical de Yaracuy.', 'Yaracuy', 7, 'https://example.com/imagenes/salto_de_mora_1.jpg'),
(52, 'Colonia Tovar', 'Un lugar lleno de alemanes', 'Miranda', 5, '../uploads/1_6KVk7wsU5ENn8HbYAXA2TQ.webp');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `coordenadas`
--
ALTER TABLE `coordenadas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lugar_id` (`lugar_id`);

--
-- Indices de la tabla `imagenes`
--
ALTER TABLE `imagenes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lugar_id` (`lugar_id`);

--
-- Indices de la tabla `lugares`
--
ALTER TABLE `lugares`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoria_id` (`categoria_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `coordenadas`
--
ALTER TABLE `coordenadas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `imagenes`
--
ALTER TABLE `imagenes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT de la tabla `lugares`
--
ALTER TABLE `lugares`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `coordenadas`
--
ALTER TABLE `coordenadas`
  ADD CONSTRAINT `coordenadas_ibfk_1` FOREIGN KEY (`lugar_id`) REFERENCES `lugares` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `imagenes`
--
ALTER TABLE `imagenes`
  ADD CONSTRAINT `imagenes_ibfk_1` FOREIGN KEY (`lugar_id`) REFERENCES `lugares` (`id`);

--
-- Filtros para la tabla `lugares`
--
ALTER TABLE `lugares`
  ADD CONSTRAINT `lugares_ibfk_1` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
