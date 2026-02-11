 
--
-- Host: localhost    Database: xyz_db
-- ------------------------------------------------------
-- Server version	12.1.2-MariaDB


--
-- Table structure for table `actividades`
--

DROP TABLE IF EXISTS `actividades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `actividades` (
  `id_actividad` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_actividad` date NOT NULL,
  `tipo_actividad` varchar(60) NOT NULL,
  `descripcion_actividad` varchar(255) NOT NULL,
  PRIMARY KEY (`id_actividad`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actividades`
--

LOCK TABLES `actividades` WRITE;
/*!40000 ALTER TABLE `actividades` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `actividades` VALUES
(1,'2025-01-15','Integración','Actividad de integración de inicio de año'),
(2,'2025-01-30','Capacitación','Capacitación técnica mensual'),
(3,'2025-02-15','Bienestar','Jornada de bienestar laboral'),
(4,'2025-02-28','Reconocimiento','Reconocimiento al desempeño'),
(5,'2025-03-15','Integración','Actividad recreativa trimestral'),
(6,'2025-03-30','Capacitación','Capacitación en habilidades blandas'),
(7,'2025-04-15','Bienestar','Charla de salud ocupacional'),
(8,'2025-04-30','Reconocimiento','Reconocimiento mensual'),
(9,'2025-05-15','Integración','Actividad deportiva'),
(10,'2025-05-30','Capacitación','Capacitación de liderazgo'),
(11,'2025-06-15','Bienestar','Actividad de mindfulness'),
(12,'2025-06-30','Reconocimiento','Reconocimiento semestral'),
(13,'2025-07-15','Integración','Actividad recreativa'),
(14,'2025-07-30','Capacitación','Capacitación técnica'),
(15,'2025-08-15','Bienestar','Jornada de salud'),
(16,'2025-08-30','Reconocimiento','Reconocimiento mensual'),
(17,'2025-09-15','Integración','Actividad cultural'),
(18,'2025-09-30','Capacitación','Capacitación especializada'),
(19,'2025-10-15','Bienestar','Actividad de ergonomía'),
(20,'2025-10-30','Reconocimiento','Reconocimiento trimestral'),
(21,'2025-11-15','Integración','Actividad de integración anual'),
(22,'2025-11-30','Capacitación','Capacitación de cierre de año'),
(23,'2025-12-15','Bienestar','Actividad de fin de año'),
(24,'2025-12-30','Reconocimiento','Reconocimiento anual');
/*!40000 ALTER TABLE `actividades` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `fidelizacion_participacion`
--

DROP TABLE IF EXISTS `fidelizacion_participacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `fidelizacion_participacion` (
  `id_participacion` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) NOT NULL,
  `id_actividad` int(11) NOT NULL,
  `puntos_otorgados` int(11) NOT NULL,
  PRIMARY KEY (`id_participacion`),
  KEY `fk_fp_usuario` (`id_usuario`),
  KEY `fk_fp_actividad` (`id_actividad`),
  CONSTRAINT `fk_fp_actividad` FOREIGN KEY (`id_actividad`) REFERENCES `actividades` (`id_actividad`),
  CONSTRAINT `fk_fp_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fidelizacion_participacion`
--

LOCK TABLES `fidelizacion_participacion` WRITE;
/*!40000 ALTER TABLE `fidelizacion_participacion` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `fidelizacion_participacion` VALUES
(1,1,1,30),
(2,2,1,40),
(3,3,1,20),
(4,4,1,25),
(5,5,1,15),
(6,1,2,35),
(7,6,2,30),
(8,7,2,40),
(9,8,2,25),
(10,9,2,20),
(11,2,3,45),
(12,3,3,30),
(13,10,3,20),
(14,11,3,25),
(15,12,3,35),
(16,4,4,30),
(17,5,4,20),
(18,6,4,40),
(19,13,4,35),
(20,14,4,25),
(21,1,5,50),
(22,2,5,40),
(23,3,5,30),
(24,15,5,25),
(25,16,5,20),
(26,4,6,35),
(27,7,6,30),
(28,8,6,40),
(29,17,6,25),
(30,18,6,20),
(31,1,7,20),
(32,2,7,30),
(33,3,7,25),
(34,4,7,35),
(35,5,7,15),
(36,6,8,40),
(37,7,8,30),
(38,8,8,25),
(39,9,8,20),
(40,10,8,35),
(41,11,9,30),
(42,12,9,40),
(43,13,9,25),
(44,14,9,20),
(45,15,9,35),
(46,16,10,20),
(47,17,10,30),
(48,18,10,40),
(49,19,10,25),
(50,20,10,35),
(51,1,11,45),
(52,6,11,30),
(53,11,11,25),
(54,16,11,20),
(55,20,11,35),
(56,2,12,40),
(57,7,12,30),
(58,12,12,20),
(59,17,12,25),
(60,18,12,35),
(61,3,13,35),
(62,8,13,40),
(63,13,13,30),
(64,18,13,20),
(65,19,13,25),
(66,4,14,30),
(67,9,14,35),
(68,14,14,40),
(69,19,14,25),
(70,20,14,20),
(71,5,15,25),
(72,10,15,30),
(73,15,15,40),
(74,20,15,35),
(75,1,15,20),
(76,6,16,30),
(77,11,16,35),
(78,16,16,40),
(79,2,16,25),
(80,7,16,20),
(81,3,17,40),
(82,8,17,30),
(83,13,17,35),
(84,18,17,20),
(85,4,17,25),
(86,9,18,30),
(87,14,18,40),
(88,19,18,35),
(89,5,18,25),
(90,10,18,20),
(91,11,19,35),
(92,16,19,40),
(93,1,19,30),
(94,6,19,25),
(95,12,19,20),
(96,7,20,40),
(97,17,20,30),
(98,2,20,35),
(99,8,20,25),
(100,13,20,20),
(101,3,21,30),
(102,9,21,40),
(103,14,21,35),
(104,18,21,25),
(105,4,21,20),
(106,5,22,40),
(107,10,22,30),
(108,15,22,35),
(109,20,22,25),
(110,1,22,20),
(111,6,23,30),
(112,11,23,40),
(113,16,23,35),
(114,2,23,25),
(115,7,23,20),
(116,8,24,40),
(117,12,24,30),
(118,17,24,35),
(119,19,24,25),
(120,20,24,20);
/*!40000 ALTER TABLE `fidelizacion_participacion` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `id_login` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) NOT NULL,
  `fecha_hora_login` datetime NOT NULL,
  `estado_login` enum('exitoso','fallido') NOT NULL,
  PRIMARY KEY (`id_login`),
  KEY `fk_login_usuario` (`id_usuario`),
  CONSTRAINT `fk_login_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `login` VALUES
(1,1,'2025-01-05 08:10:00','exitoso'),
(2,2,'2025-01-05 08:12:00','exitoso'),
(3,3,'2025-01-06 09:00:00','fallido'),
(4,4,'2025-01-06 09:05:00','exitoso'),
(5,5,'2025-01-07 10:00:00','exitoso'),
(6,6,'2025-01-10 08:30:00','exitoso'),
(7,7,'2025-01-10 08:35:00','fallido'),
(8,8,'2025-01-11 09:10:00','exitoso'),
(9,9,'2025-01-11 09:15:00','exitoso'),
(10,10,'2025-01-12 10:20:00','exitoso'),
(11,11,'2025-02-01 08:00:00','exitoso'),
(12,12,'2025-02-01 08:05:00','exitoso'),
(13,13,'2025-02-02 09:00:00','fallido'),
(14,14,'2025-02-02 09:10:00','exitoso'),
(15,15,'2025-02-03 10:00:00','exitoso'),
(16,16,'2025-02-10 08:30:00','exitoso'),
(17,17,'2025-02-10 08:40:00','fallido'),
(18,18,'2025-02-11 09:15:00','exitoso'),
(19,19,'2025-02-11 09:20:00','exitoso'),
(20,20,'2025-02-12 10:10:00','exitoso'),
(21,1,'2025-03-01 08:00:00','exitoso'),
(22,2,'2025-03-01 08:05:00','fallido'),
(23,3,'2025-03-02 09:00:00','exitoso'),
(24,4,'2025-03-02 09:10:00','exitoso'),
(25,5,'2025-03-03 10:00:00','exitoso'),
(26,6,'2025-03-10 08:30:00','exitoso'),
(27,7,'2025-03-10 08:35:00','exitoso'),
(28,8,'2025-03-11 09:10:00','fallido'),
(29,9,'2025-03-11 09:15:00','exitoso'),
(30,10,'2025-03-12 10:20:00','exitoso'),
(31,11,'2025-04-01 08:00:00','exitoso'),
(32,12,'2025-04-01 08:05:00','fallido'),
(33,13,'2025-04-02 09:00:00','exitoso'),
(34,14,'2025-04-02 09:10:00','exitoso'),
(35,15,'2025-04-03 10:00:00','exitoso'),
(36,16,'2025-04-10 08:30:00','exitoso'),
(37,17,'2025-04-10 08:40:00','exitoso'),
(38,18,'2025-04-11 09:15:00','fallido'),
(39,19,'2025-04-11 09:20:00','exitoso'),
(40,20,'2025-04-12 10:10:00','exitoso'),
(41,1,'2025-05-01 08:00:00','exitoso'),
(42,2,'2025-05-01 08:05:00','exitoso'),
(43,3,'2025-05-02 09:00:00','fallido'),
(44,4,'2025-05-02 09:10:00','exitoso'),
(45,5,'2025-05-03 10:00:00','exitoso'),
(46,6,'2025-05-10 08:30:00','exitoso'),
(47,7,'2025-05-10 08:35:00','exitoso'),
(48,8,'2025-05-11 09:10:00','fallido'),
(49,9,'2025-05-11 09:15:00','exitoso'),
(50,10,'2025-05-12 10:20:00','exitoso'),
(51,11,'2025-06-01 08:00:00','exitoso'),
(52,12,'2025-06-01 08:05:00','fallido'),
(53,13,'2025-06-02 09:00:00','exitoso'),
(54,14,'2025-06-02 09:10:00','exitoso'),
(55,15,'2025-06-03 10:00:00','exitoso'),
(56,16,'2025-06-10 08:30:00','exitoso'),
(57,17,'2025-06-10 08:40:00','fallido'),
(58,18,'2025-06-11 09:15:00','exitoso'),
(59,19,'2025-06-11 09:20:00','exitoso'),
(60,20,'2025-06-12 10:10:00','exitoso'),
(61,1,'2025-07-01 08:00:00','exitoso'),
(62,2,'2025-07-01 08:05:00','fallido'),
(63,3,'2025-07-02 09:00:00','exitoso'),
(64,4,'2025-07-02 09:10:00','exitoso'),
(65,5,'2025-07-03 10:00:00','exitoso'),
(66,6,'2025-07-10 08:30:00','exitoso'),
(67,7,'2025-07-10 08:35:00','exitoso'),
(68,8,'2025-07-11 09:10:00','fallido'),
(69,9,'2025-07-11 09:15:00','exitoso'),
(70,10,'2025-07-12 10:20:00','exitoso'),
(71,11,'2025-08-01 08:00:00','exitoso'),
(72,12,'2025-08-01 08:05:00','exitoso'),
(73,13,'2025-08-02 09:00:00','fallido'),
(74,14,'2025-08-02 09:10:00','exitoso'),
(75,15,'2025-08-03 10:00:00','exitoso'),
(76,16,'2025-08-10 08:30:00','exitoso'),
(77,17,'2025-08-10 08:40:00','exitoso'),
(78,18,'2025-08-11 09:15:00','fallido'),
(79,19,'2025-08-11 09:20:00','exitoso'),
(80,20,'2025-08-12 10:10:00','exitoso'),
(81,1,'2025-09-01 08:00:00','exitoso'),
(82,2,'2025-09-01 08:05:00','exitoso'),
(83,3,'2025-09-02 09:00:00','fallido'),
(84,4,'2025-09-02 09:10:00','exitoso'),
(85,5,'2025-09-03 10:00:00','exitoso'),
(86,6,'2025-09-10 08:30:00','exitoso'),
(87,7,'2025-09-10 08:35:00','fallido'),
(88,8,'2025-09-11 09:10:00','exitoso'),
(89,9,'2025-09-11 09:15:00','exitoso'),
(90,10,'2025-09-12 10:20:00','exitoso'),
(91,11,'2025-10-01 08:00:00','exitoso'),
(92,12,'2025-10-01 08:05:00','fallido'),
(93,13,'2025-10-02 09:00:00','exitoso'),
(94,14,'2025-10-02 09:10:00','exitoso'),
(95,15,'2025-10-03 10:00:00','exitoso'),
(96,16,'2025-10-10 08:30:00','exitoso'),
(97,17,'2025-10-10 08:40:00','exitoso'),
(98,18,'2025-10-11 09:15:00','fallido'),
(99,19,'2025-10-11 09:20:00','exitoso'),
(100,20,'2025-10-12 10:10:00','exitoso');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `perfiles`
--

DROP TABLE IF EXISTS `perfiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `perfiles` (
  `id_perfil` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_perfil` varchar(50) NOT NULL,
  `descripcion_perfil` varchar(255) DEFAULT NULL,
  `fecha_vigencia_perfil` date NOT NULL,
  `encargado_perfil_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_perfil`),
  KEY `fk_perfiles_encargado` (`encargado_perfil_id`),
  CONSTRAINT `fk_perfiles_encargado` FOREIGN KEY (`encargado_perfil_id`) REFERENCES `usuarios` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfiles`
--

LOCK TABLES `perfiles` WRITE;
/*!40000 ALTER TABLE `perfiles` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `perfiles` VALUES
(1,'Administrador','Perfil con acceso total al sistema','2025-01-01',NULL),
(2,'Gerente','Perfil gerencial con acceso a reportes','2025-01-01',NULL),
(3,'Supervisor','Supervisa equipos y actividades','2025-01-01',NULL),
(4,'Analista','Analiza información y métricas','2025-01-01',NULL),
(5,'Operativo','Colaborador operativo','2025-01-01',NULL),
(6,'Recursos Humanos','Gestión de personal y perfiles','2025-01-01',NULL),
(7,'Finanzas','Gestión financiera y salarial','2025-01-01',NULL),
(8,'TI','Soporte técnico y sistemas','2025-01-01',NULL),
(9,'Marketing','Gestión de campañas y actividades','2025-01-01',NULL),
(10,'Auditor','Revisión y control interno','2025-01-01',NULL);
/*!40000 ALTER TABLE `perfiles` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `usuario_perfil`
--

DROP TABLE IF EXISTS `usuario_perfil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario_perfil` (
  `id_usuario` int(11) NOT NULL,
  `id_perfil` int(11) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date DEFAULT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id_usuario`,`id_perfil`,`fecha_inicio`),
  UNIQUE KEY `ux_usuario_perfil_activo` (`id_usuario`,`activo`),
  KEY `fk_up_perfil` (`id_perfil`),
  CONSTRAINT `fk_up_perfil` FOREIGN KEY (`id_perfil`) REFERENCES `perfiles` (`id_perfil`),
  CONSTRAINT `fk_up_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_perfil`
--

LOCK TABLES `usuario_perfil` WRITE;
/*!40000 ALTER TABLE `usuario_perfil` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `usuario_perfil` VALUES
(1,1,'2025-01-01',NULL,1),
(2,2,'2025-01-01',NULL,1),
(3,3,'2025-01-01',NULL,1),
(4,4,'2025-01-01',NULL,1),
(5,5,'2025-01-01',NULL,1),
(6,6,'2025-01-01',NULL,1),
(7,7,'2025-01-01',NULL,1),
(8,8,'2025-01-01',NULL,1),
(9,9,'2025-01-01',NULL,1),
(10,10,'2025-01-01',NULL,1),
(11,5,'2025-01-01',NULL,1),
(12,4,'2025-01-01',NULL,1),
(13,3,'2025-01-01',NULL,1),
(14,9,'2025-01-01',NULL,1),
(15,8,'2025-01-01',NULL,1),
(16,7,'2025-01-01',NULL,1),
(17,5,'2025-01-01',NULL,1),
(18,6,'2025-01-01',NULL,1),
(19,10,'2025-01-01',NULL,1),
(20,2,'2025-01-01',NULL,1);
/*!40000 ALTER TABLE `usuario_perfil` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `estado` enum('activo','inactivo') NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `cargo` varchar(80) NOT NULL,
  `salario` decimal(10,2) NOT NULL,
  `fecha_ingreso` date NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `usuarios` VALUES
(1,'Juan','Perez','activo','pass123','Administrador',3000.00,'2023-01-15'),
(2,'Maria','Gomez','activo','pass123','Gerente',2800.00,'2023-02-10'),
(3,'Carlos','Lopez','activo','pass123','Supervisor',2200.00,'2023-03-05'),
(4,'Ana','Martinez','activo','pass123','Analista',2100.00,'2023-04-01'),
(5,'Luis','Rodriguez','activo','pass123','Operativo',1500.00,'2023-05-12'),
(6,'Sofia','Hernandez','activo','pass123','Recursos Humanos',2000.00,'2023-06-20'),
(7,'Pedro','Diaz','activo','pass123','Finanzas',2500.00,'2023-07-08'),
(8,'Laura','Castro','activo','pass123','TI',2300.00,'2023-08-15'),
(9,'Miguel','Torres','activo','pass123','Marketing',1900.00,'2023-09-01'),
(10,'Elena','Ramirez','activo','pass123','Auditor',2600.00,'2023-10-10'),
(11,'Jorge','Mendoza','activo','pass123','Operativo',1500.00,'2023-01-20'),
(12,'Paola','Vargas','activo','pass123','Analista',2100.00,'2023-02-25'),
(13,'Ricardo','Suarez','activo','pass123','Supervisor',2200.00,'2023-03-18'),
(14,'Daniela','Rojas','activo','pass123','Marketing',1900.00,'2023-04-22'),
(15,'Andres','Morales','activo','pass123','TI',2300.00,'2023-05-30'),
(16,'Valeria','Ortega','activo','pass123','Finanzas',2500.00,'2023-06-14'),
(17,'Fernando','Cruz','activo','pass123','Operativo',1500.00,'2023-07-19'),
(18,'Camila','Pineda','activo','pass123','Recursos Humanos',2000.00,'2023-08-03'),
(19,'Hector','Navarro','activo','pass123','Auditor',2600.00,'2023-09-27'),
(20,'Natalia','Silva','activo','pass123','Gerente',2800.00,'2023-10-05');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Temporary table structure for view `v_actividadesporperfil`
--

DROP TABLE IF EXISTS `v_actividadesporperfil`;
/*!50001 DROP VIEW IF EXISTS `v_actividadesporperfil`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `v_actividadesporperfil` AS SELECT
 1 AS `id_perfil`,
  1 AS `nombre_perfil`,
  1 AS `descripcion_perfil`,
  1 AS `cantidad_usuarios_con_este_perfil`,
  1 AS `total_actividades_participadas_por_perfil`,
  1 AS `promedio_puntos_por_usuario_en_este_perfil`,
  1 AS `porcentaje_participacion_total` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_desempenocolaboradores`
--

DROP TABLE IF EXISTS `v_desempenocolaboradores`;
/*!50001 DROP VIEW IF EXISTS `v_desempenocolaboradores`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `v_desempenocolaboradores` AS SELECT
 1 AS `id_usuario`,
  1 AS `nombre_completo`,
  1 AS `cargo`,
  1 AS `salario`,
  1 AS `fecha_ingreso`,
  1 AS `total_puntos_fidelizacion_acumulados`,
  1 AS `promedio_puntos_por_actividad`,
  1 AS `estado_fidelizacion`,
  1 AS `dias_desde_ultimo_login` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_historiallogindetallado`
--

DROP TABLE IF EXISTS `v_historiallogindetallado`;
/*!50001 DROP VIEW IF EXISTS `v_historiallogindetallado`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `v_historiallogindetallado` AS SELECT
 1 AS `nombre_usuario`,
  1 AS `apellido_usuario`,
  1 AS `cargo_usuario`,
  1 AS `fecha_hora_login`,
  1 AS `estado_login`,
  1 AS `tiempo_desde_anterior_login_min` */;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `v_actividadesporperfil`
--

/*!50001 DROP VIEW IF EXISTS `v_actividadesporperfil`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_uca1400_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_actividadesporperfil` AS select `p`.`id_perfil` AS `id_perfil`,`p`.`nombre_perfil` AS `nombre_perfil`,`p`.`descripcion_perfil` AS `descripcion_perfil`,count(distinct `up`.`id_usuario`) AS `cantidad_usuarios_con_este_perfil`,count(`fp`.`id_participacion`) AS `total_actividades_participadas_por_perfil`,ifnull(sum(`fp`.`puntos_otorgados`) / nullif(count(distinct `up`.`id_usuario`),0),0) AS `promedio_puntos_por_usuario_en_este_perfil`,round(count(`fp`.`id_participacion`) / nullif((select count(0) from `actividades`),0) * 100,2) AS `porcentaje_participacion_total` from ((`perfiles` `p` left join `usuario_perfil` `up` on(`up`.`id_perfil` = `p`.`id_perfil` and `up`.`activo` = 1)) left join `fidelizacion_participacion` `fp` on(`fp`.`id_usuario` = `up`.`id_usuario`)) group by `p`.`id_perfil`,`p`.`nombre_perfil`,`p`.`descripcion_perfil` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_desempenocolaboradores`
--

/*!50001 DROP VIEW IF EXISTS `v_desempenocolaboradores`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_uca1400_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_desempenocolaboradores` AS select `u`.`id_usuario` AS `id_usuario`,concat(`u`.`nombre`,' ',`u`.`apellido`) AS `nombre_completo`,`u`.`cargo` AS `cargo`,`u`.`salario` AS `salario`,`u`.`fecha_ingreso` AS `fecha_ingreso`,ifnull(sum(`fp`.`puntos_otorgados`),0) AS `total_puntos_fidelizacion_acumulados`,ifnull(avg(`fp`.`puntos_otorgados`),0) AS `promedio_puntos_por_actividad`,case when ifnull(sum(`fp`.`puntos_otorgados`),0) > 500 then 'Excelente' when ifnull(sum(`fp`.`puntos_otorgados`),0) between 200 and 500 then 'Bueno' else 'Regular' end AS `estado_fidelizacion`,to_days(curdate()) - to_days((select max(`l`.`fecha_hora_login`) from `login` `l` where `l`.`id_usuario` = `u`.`id_usuario` and `l`.`estado_login` = 'exitoso')) AS `dias_desde_ultimo_login` from (`usuarios` `u` left join `fidelizacion_participacion` `fp` on(`fp`.`id_usuario` = `u`.`id_usuario`)) group by `u`.`id_usuario`,`u`.`nombre`,`u`.`apellido`,`u`.`cargo`,`u`.`salario`,`u`.`fecha_ingreso` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_historiallogindetallado`
--

/*!50001 DROP VIEW IF EXISTS `v_historiallogindetallado`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_uca1400_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_historiallogindetallado` AS select `u`.`nombre` AS `nombre_usuario`,`u`.`apellido` AS `apellido_usuario`,`u`.`cargo` AS `cargo_usuario`,`l`.`fecha_hora_login` AS `fecha_hora_login`,`l`.`estado_login` AS `estado_login`,timestampdiff(MINUTE,lag(`l`.`fecha_hora_login`,1) over ( partition by `l`.`id_usuario` order by `l`.`fecha_hora_login`),`l`.`fecha_hora_login`) AS `tiempo_desde_anterior_login_min` from (`login` `l` join `usuarios` `u` on(`u`.`id_usuario` = `l`.`id_usuario`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2026-02-05 20:53:20
