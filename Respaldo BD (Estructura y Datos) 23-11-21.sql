-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: sales_app
-- ------------------------------------------------------
-- Server version	5.7.20-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `administradores`
--

DROP TABLE IF EXISTS `administradores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `administradores` (
  `Id_Admin` int(11) NOT NULL AUTO_INCREMENT,
  `Identificacion` varchar(100) DEFAULT NULL,
  `Nombres` varchar(100) NOT NULL,
  `Apellidos` varchar(100) NOT NULL,
  `Telefono` varchar(100) DEFAULT NULL,
  `Fecha_Nacimiento` date DEFAULT NULL,
  `Id_Usuario` int(11) NOT NULL,
  `Fecha_Creacion` datetime DEFAULT CURRENT_TIMESTAMP,
  `Fecha_Actualizacion` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id_Admin`),
  UNIQUE KEY `Id_Usuario` (`Id_Usuario`),
  UNIQUE KEY `Identificacion` (`Identificacion`),
  CONSTRAINT `FK_Admin_Id_Usuario` FOREIGN KEY (`Id_Usuario`) REFERENCES `usuarios` (`Id_Usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administradores`
--

LOCK TABLES `administradores` WRITE;
/*!40000 ALTER TABLE `administradores` DISABLE KEYS */;
INSERT INTO `administradores` VALUES (1,'0801-2000-19327','Miriam Ariel','Mondragón Espinoza','98379065','2000-09-27',1,'2021-11-06 14:56:42','2021-11-06 14:56:42'),(2,'0801-2000-17903','Karol Stephany','Palma Ventura','90245322','2000-07-06',2,'2021-11-06 14:58:43','2021-11-06 14:58:43'),(3,'1','1','1','1','2020-02-02',4,'2021-11-11 13:27:56','2021-11-11 13:27:56'),(9,'0801-2002-12212','Mario Luis','Espinal Paz','90345223','2002-09-09',11,'2021-11-11 15:35:17','2021-11-21 21:58:29');
/*!40000 ALTER TABLE `administradores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bitacora`
--

DROP TABLE IF EXISTS `bitacora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bitacora` (
  `Id_Registro` int(11) NOT NULL AUTO_INCREMENT,
  `Id_Usuario` int(11) DEFAULT NULL,
  `Tipo_Dispositivo` varchar(50) DEFAULT NULL,
  `Sistema_Operativo` varchar(50) DEFAULT NULL,
  `Fecha` date DEFAULT NULL,
  `Hora` time DEFAULT NULL,
  `Detalle` text,
  PRIMARY KEY (`Id_Registro`),
  KEY `FK_Bitacora_Id_Usuario` (`Id_Usuario`),
  CONSTRAINT `FK_Bitacora_Id_Usuario` FOREIGN KEY (`Id_Usuario`) REFERENCES `usuarios` (`Id_Usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitacora`
--

LOCK TABLES `bitacora` WRITE;
/*!40000 ALTER TABLE `bitacora` DISABLE KEYS */;
INSERT INTO `bitacora` VALUES (2,1,'Samsung Galaxy Note 4','Android 6','2021-11-06','14:58:43','Inserción de nuevo administrador. Usuario: kpalma: Karol Stephany Palma Ventura'),(3,1,'Samsung Galaxy Note 4','Android 6','2021-11-06','15:06:11','Inserción de nuevo cliente. Usuario: manuelguarda: Manuel Maria Guardiola Espinal'),(4,1,'Samsung Galaxy Note 4','Android 6','2021-11-06','15:30:20','Actualización de cliente. Usuario: manuelguarda: Manuel Maria Guardiola Espinal'),(5,1,'Samsung Galaxy Note 4','Android 6','2021-11-06','15:30:58','Actualización de cliente. Usuario: mguarda: Manuel Marcos Guardiola Espinal'),(6,1,'Samsung Galaxy Note 4','Android 6','2021-11-06','15:38:55',NULL),(7,1,'Samsung Galaxy Note 4','Android 6','2021-11-06','15:40:04',NULL),(8,1,'Samsung Galaxy Note 4','Android 6','2021-11-06','15:44:21',NULL),(9,1,'Samsung Galaxy Note 4','Android 6','2021-11-06','15:45:10','Desactivación de cliente. Usuario: mguarda: Manuel Marcos Guardiola Espinal'),(10,1,'Samsung Galaxy Note 4','Android 6','2021-11-06','15:48:59','Actualización de cliente. Usuario: mguarda: Manuel Marcos Guardiola Espinal'),(11,1,'Samsung Galaxy Note 4','Android 6','2021-11-06','16:11:24','Actualización de administrador. Usuario: kpalma: Karol Stephany Palma Ventura'),(12,1,'Samsung Galaxy Note 4','Android 6','2021-11-06','16:11:43','Actualización de administrador. Usuario: kpalma: Karol Stephany Palma Ventura'),(13,1,'Samsung Galaxy Note 4','Android 6','2021-11-06','16:14:53','Desactivación de administrador. Usuario: kpalma: Karol Stephany Palma Ventura'),(14,1,'Samsung Galaxy Note 4','Android 6','2021-11-06','16:15:11','Actualización de administrador. Usuario: kpalma: Karol Stephany Palma Ventura'),(15,1,'Samsung Galaxy Note 4','Android 6','2021-11-07','13:13:40','Inserción de nuevo descuento: 1: Tercera Edad, con valor de: 0.4000'),(16,1,'Samsung Galaxy Note 4','Android 6','2021-11-07','13:16:38','Actualización de descuento 1: Descuento de Tercera Edad, con nuevo valor de: 0.2000'),(17,1,'Samsung Galaxy Note 4','Android 6','2021-11-07','13:17:09','Actualización de descuento 1: Descuento de Tercera Edad, con nuevo valor de: 0.4000'),(18,1,'Samsung Galaxy Note 4','Android 6','2021-11-07','13:17:33','Actualización de nombre descuento 1: Tercera Edad'),(19,1,'Samsung Galaxy Note 4','Android 6','2021-11-07','13:20:46','Desactivación de descuento 1: Tercera Edad'),(20,1,'Samsung Galaxy Note 4','Android 6','2021-11-07','13:21:12','Actualización de descuento 1: Tercera Edad, con nuevo valor de: 0.4000'),(21,1,'Samsung Galaxy Note 4','Android 6','2021-11-07','13:26:31','Inserción de nuevo impuesto: 1: Bebidas Alcohólicas, con valor de: 0.2000'),(22,1,'Samsung Galaxy Note 4','Android 6','2021-11-07','13:27:38','Actualización de impuesto 1: Bebidas Alcohólicas, con nuevo valor de: 0.5000'),(23,1,'Samsung Galaxy Note 4','Android 6','2021-11-07','13:28:52','Desactivación de impuesto 1: Bebidas Alcohólicas'),(24,1,'Samsung Galaxy Note 4','Android 6','2021-11-07','13:29:03','Actualización de impuesto 1: Bebidas Alcohólicas, con nuevo valor de: 0.5000'),(25,1,'Samsung Galaxy Note 4','Android 6','2021-11-07','13:58:00','Inserción de nuevo proveedor ID 1: Consome y Más'),(26,1,'Samsung Galaxy Note 4','Android 6','2021-11-07','14:07:08','Actualización de proveedor ID 1: Condimentos Co.'),(27,1,'Samsung Galaxy Note 4','Android 6','2021-11-07','14:09:36','Desactivación de proveedor ID 1: Condimentos Co.'),(28,1,'Samsung Galaxy Note 4','Android 6','2021-11-07','14:09:43','Actualización de proveedor ID 1: Condimentos Co.'),(29,1,'Samsung Galaxy Note 4','Android 6','2021-11-07','14:39:44','Inserción de nueva categoría 2: Verduras'),(30,1,'Samsung Galaxy Note 4','Android 6','2021-11-07','14:40:43','Inserción de nueva categoría 1: Verduras'),(31,1,'Samsung Galaxy Note 4','Android 6','2021-11-07','14:42:53','Inserción de nuevo producto: 4: Tomate, con precio de: 20.50'),(32,1,'Samsung Galaxy Note 4','Android 6','2021-11-07','14:44:39','Inserción de nuevo producto: 5: Tomate, con precio de: 20.50'),(33,1,'Samsung Galaxy Note 4','Android 6','2021-11-07','14:45:57','Inserción de nuevo producto: 1: Tomate, con precio de: 20.50'),(34,1,'Samsung Galaxy Note 4','Android 6','2021-11-07','14:49:27','Inserción de nuevo producto: 2: Chile Verde, con precio de: 20.50'),(35,1,'Samsung Galaxy Note 4','Android 6','2021-11-07','14:55:38','Descontinuación de producto 1: Tomate'),(36,1,'Samsung Galaxy Note 4','Android 6','2021-11-07','15:09:38','Actualización de producto 1: Tomate, con nuevo precio de: 22.50'),(37,3,'Samsung Galaxy Note 4','Android 6','2021-11-07','18:51:14','Nueva factura de venta registrada. Usuario: 3'),(38,2,'Samsung Galaxy Note 4','Android 6','2021-11-07','19:07:54','Nueva factura de compra registrada. Usuario: 2'),(39,1,'Samsung Galaxy Note 4','Android 6','2021-11-07','19:18:32','Anulación de factura 1'),(40,1,'Samsung Galaxy Note 4','Android 6','2021-11-07','19:21:57','Anulación de factura 1'),(41,1,'1','1','2021-11-11','13:27:56','Inserción de nuevo administrador. Usuario: 1: 1 1'),(42,1,'','','2021-11-11','14:25:50','Inserción de nuevo administrador. Usuario: mespinal: Marcos Luis Espinal Paz'),(43,1,'','','2021-11-11','14:29:33','Inserción de nuevo administrador. Usuario: mespinal: Marcos Luis Espinal Paz'),(44,1,'','','2021-11-11','14:33:44','Inserción de nuevo administrador. Usuario: mespinal: Marcos Luis Espinal Paz'),(45,1,'','','2021-11-11','14:54:53','Inserción de nuevo administrador. Usuario: mespinal: Marcos Luis Espinal Paz'),(46,1,'','','2021-11-11','14:56:32','Inserción de nuevo administrador. Usuario: mespinal: Marcos Luis Espinal Paz'),(47,1,'Google AOSP on IA Emulator','Android 9','2021-11-11','15:00:47','Inserción de nuevo administrador. Usuario: mespinal: Marcos Luis Espinal Paz'),(48,1,'Google AOSP on IA Emulator','Android 9','2021-11-11','15:35:17','Inserción de nuevo administrador. Usuario: mespinal: Marcos Luis Espinal Paz'),(49,1,'Google AOSP on IA Emulator','Android 9','2021-11-11','16:16:43','Actualización de administrador. Usuario: mespinal: MARIO Luis Espinal Paz'),(50,1,'Google AOSP on IA Emulator','Android 9','2021-11-11','16:28:42','Desactivación de administrador. Usuario: mespinal: MARIO Luis Espinal Paz'),(51,1,'Google AOSP on IA Emulator','Android 9','2021-11-12','10:09:49','Inserción de nuevo cliente. Usuario: mpaula: Maria Paula Castro Paz'),(52,1,'Samsung Galaxy Note 4','Android 6','2021-11-12','10:37:34','Actualización de cliente. Usuario: mguarda: Manuel Marcos Guardiola Espinal'),(53,1,'Google AOSP on IA Emulator','Android 9','2021-11-12','10:50:51','Actualización de cliente. Usuario: mpaula: Mario Paulo Castro Paz'),(54,1,'Google AOSP on IA Emulator','Android 9','2021-11-12','10:57:58','Desactivación de cliente. Usuario: mpaula: Mario Paulo Castro Paz'),(55,1,'Google AOSP on IA Emulator','Android 9','2021-11-12','14:25:35','Inserción de nuevo producto: 3: Corn Flakes, con precio de: 30.00'),(56,1,'Google AOSP on IA Emulator','Android 9','2021-11-12','14:32:14','Inserción de nuevo producto: 4: Carneeeeee, con precio de: 30.00'),(57,1,'Google AOSP on IA Emulator','Android 9','2021-11-12','14:35:41','Inserción de nuevo producto: 5: Carne, con precio de: 30.00'),(58,1,'Google AOSP on IA Emulator','Android 9','2021-11-12','14:37:18','Inserción de nuevo producto: 6: Carne, con precio de: 30.00'),(59,1,'Google AOSP on IA Emulator','Android 9','2021-11-12','14:38:17','Inserción de nuevo producto: 7: Carne, con precio de: 30.00'),(60,1,'Google AOSP on IA Emulator','Android 9','2021-11-12','14:39:42','Inserción de nuevo producto: 8: Carne, con precio de: 30.00'),(61,1,'Google AOSP on IA Emulator','Android 9','2021-11-12','14:40:32','Inserción de nuevo producto: 9: Carne, con precio de: 30.00'),(62,1,'Google AOSP on IA Emulator','Android 9','2021-11-12','14:41:54','Inserción de nuevo producto: 10: Carne, con precio de: 30.00'),(63,1,'Google AOSP on IA Emulator','Android 9','2021-11-12','14:42:51','Inserción de nuevo producto: 11: Carne, con precio de: 30.00'),(64,1,'Google AOSP on IA Emulator','Android 9','2021-11-12','14:44:21','Inserción de nuevo producto: 12: Carne, con precio de: 30.00'),(65,1,'Google AOSP on IA Emulator','Android 9','2021-11-12','14:45:16','Inserción de nuevo producto: 13: Carne, con precio de: 30.00'),(66,1,'Google AOSP on IA Emulator','Android 9','2021-11-12','15:01:21','Actualización de producto 3: Corn Flakes, con nuevo precio de: 10.00'),(67,1,'Google AOSP on IA Emulator','Android 9','2021-11-12','15:10:51','Descontinuación de producto 3: Corn Flakes'),(68,1,'Samsung Galaxy Note 4','Android 6','2021-11-13','11:26:31','Actualización de administrador. Usuario: mmondragon: Miriam Ariel Mondragón Espinoza'),(69,1,'Samsung Galaxy Note 4','Android 6','2021-11-19','16:23:19','Inserción de nuevo producto: 4: Manzanas, con precio de: 40.50'),(70,1,'Samsung Galaxy Note 4','Android 6','2021-11-19','16:25:09','Actualización de producto 1: Tomate'),(71,1,'Samsung Galaxy Note 4','Android 6','2021-11-19','16:32:12','Inserción de nuevo impuesto: 2: I.S.V, con valor de: 0.1500'),(72,2,'Samsung Galaxy Note 4','Android 6','2021-11-19','16:32:28','Actualización de producto 1: Tomate'),(73,2,'Samsung Galaxy Note 4','Android 6','2021-11-19','16:33:21','Actualización de producto 1: Tomate'),(74,1,'Samsung Galaxy Note 4','Android 6','2021-11-19','16:33:45','Actualización de producto 1: Tomate'),(75,1,'Samsung Galaxy Note 4','Android 6','2021-11-19','17:20:44','Actualización de producto 4: Manzanas'),(76,1,'Samsung Galaxy Note 4','Android 6','2021-11-20','11:18:44','Inserción de nuevo descuento: 2: Oferta Navideña, con valor de: 0.0500'),(77,1,'Samsung Galaxy Note 4','Android 6','2021-11-20','13:24:07','Desactivación de descuento 2: Oferta Navideña'),(78,1,'Samsung Galaxy Note 4','Android 6','2021-11-20','16:33:28','Inserción de nuevo producto: 5: Peras, con precio de: 40.50'),(79,2,'Google AOSP on IA Emulator','Android 9','2021-11-21','21:58:29','Actualización de administrador. Usuario: mespinal: Mario Luis Espinal Paz'),(80,3,'','','2021-11-22','13:36:16','Nueva factura de venta registrada. Usuario: 3'),(81,3,'','','2021-11-22','13:39:11','Nueva factura de venta registrada. Usuario: 3'),(82,3,'','','2021-11-22','13:48:02','Nueva factura de venta registrada. Usuario: 3'),(83,3,'','','2021-11-22','14:13:01','Nueva factura de venta registrada. Usuario: 3'),(84,3,'','','2021-11-22','14:16:03','Nueva factura de venta registrada. Usuario: 3'),(85,3,'','','2021-11-22','14:24:47','Nueva factura de venta registrada. Usuario: 3'),(86,3,'','','2021-11-22','14:30:07','Nueva factura de venta registrada. Usuario: 3'),(87,3,'','','2021-11-22','14:35:13','Nueva factura de venta registrada. Usuario: 3'),(88,3,'Google AOSP on IA Emulator','Android 9','2021-11-22','15:00:05','Nueva factura de venta registrada. Usuario: 3'),(89,1,'Google AOSP on IA Emulator','Android 9','2021-11-22','15:40:05','Inserción de nuevo cliente. Usuario: mmargarita: Miriam Margarita Mondragon Espinoza'),(90,2,'Google AOSP on IA Emulator','Android 9','2021-11-22','16:20:26','Actualización de producto 4: Manzanas'),(91,2,'Google AOSP on IA Emulator','Android 9','2021-11-22','16:25:27','Actualización de producto 5: Peras'),(92,2,'Google AOSP on IA Emulator','Android 9','2021-11-22','16:26:02','Actualización de producto 5: Peras'),(93,2,'Google AOSP on IA Emulator','Android 9','2021-11-22','16:27:26','Actualización de producto 5: Peras'),(94,2,'Google AOSP on IA Emulator','Android 9','2021-11-22','16:48:36','Actualización de producto 5: Peras'),(95,3,'Google AOSP on IA Emulator','Android 9','2021-11-22','16:55:23','Nueva factura de venta registrada. Usuario: 3'),(96,2,'Google AOSP on IA Emulator','Android 9','2021-11-22','20:01:49','Actualización de producto 1: Tomate'),(97,1,'Google AOSP on IA Emulator','Android 9','2021-11-22','20:39:55','Nueva factura de venta registrada. Usuario: 1'),(98,1,'Google AOSP on IA Emulator','Android 9','2021-11-22','20:45:18','Nueva factura de compra registrada. Usuario: 1'),(99,1,'Google AOSP on IA Emulator','Android 9','2021-11-22','20:49:52','Nueva factura de venta registrada. Usuario: 1'),(100,1,'Google AOSP on IA Emulator','Android 9','2021-11-22','20:51:06','Nueva factura de compra registrada. Usuario: 1'),(101,1,'Google AOSP on IA Emulator','Android 9','2021-11-22','20:52:10','Nueva factura de compra registrada. Usuario: 1'),(102,1,'Google AOSP on IA Emulator','Android 9','2021-11-22','20:52:54','Nueva factura de compra registrada. Usuario: 1');
/*!40000 ALTER TABLE `bitacora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carrito`
--

DROP TABLE IF EXISTS `carrito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carrito` (
  `Id_Usuario` int(11) NOT NULL,
  `Id_Producto` int(11) NOT NULL,
  `Cantidad_Unidades` int(11) DEFAULT NULL,
  `Id_Descuento` int(11) DEFAULT NULL,
  `Id_Impuesto` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id_Usuario`,`Id_Producto`),
  KEY `FK_Id_Usuario_Carrito_idx` (`Id_Usuario`),
  KEY `FK_Id_Producto_Carrito_idx` (`Id_Producto`),
  KEY `FK_Id_Descuento_Carrito_idx` (`Id_Descuento`),
  KEY `FK_Id_Impuesto_Carrito_idx` (`Id_Impuesto`),
  CONSTRAINT `FK_Id_Descuento_Carrito` FOREIGN KEY (`Id_Descuento`) REFERENCES `descuentos` (`Id_Descuento`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_Id_Impuesto_Carrito` FOREIGN KEY (`Id_Impuesto`) REFERENCES `impuestos` (`Id_Impuesto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_Id_Producto_Carrito` FOREIGN KEY (`Id_Producto`) REFERENCES `productos` (`Id_Producto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_Id_Usuario_Carrito` FOREIGN KEY (`Id_Usuario`) REFERENCES `usuarios` (`Id_Usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carrito`
--

LOCK TABLES `carrito` WRITE;
/*!40000 ALTER TABLE `carrito` DISABLE KEYS */;
INSERT INTO `carrito` VALUES (3,1,1,1,2),(3,2,1,1,1),(3,4,1,1,1);
/*!40000 ALTER TABLE `carrito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorias` (
  `Id_Categoria` int(11) NOT NULL AUTO_INCREMENT,
  `Categoria` varchar(45) DEFAULT NULL,
  `Descripcion` text,
  `Activo` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`Id_Categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Verduras','Conjunto de verduras y vegetales frescos.',1),(2,'Frutas','Conjunto de frutas frescas y deshidratadas.',1);
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes` (
  `Id_Cliente` int(11) NOT NULL AUTO_INCREMENT,
  `Identificacion` varchar(100) DEFAULT NULL,
  `Nombres` varchar(100) NOT NULL,
  `Apellidos` varchar(100) NOT NULL,
  `Telefono` varchar(100) DEFAULT NULL,
  `Fecha_Nacimiento` date DEFAULT NULL,
  `Direccion` text,
  `Latitud` decimal(10,8) DEFAULT NULL,
  `Longitud` decimal(11,8) DEFAULT NULL,
  `Id_Usuario` int(11) NOT NULL,
  `Fecha_Creacion` datetime DEFAULT CURRENT_TIMESTAMP,
  `Fecha_Actualizacion` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id_Cliente`),
  UNIQUE KEY `Id_Usuario` (`Id_Usuario`),
  UNIQUE KEY `Identificacion` (`Identificacion`),
  CONSTRAINT `FK_Cliente_Id_Usuario` FOREIGN KEY (`Id_Usuario`) REFERENCES `usuarios` (`Id_Usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'0802-2000-19423','Manuel Marcos','Guardiola Espinal','90905432','2000-04-28','Blvd. Morazán Edificio No. 25 Apartamento 17',14.10000000,-87.21670000,3,'2021-11-06 15:06:11','2021-11-06 15:30:58'),(2,'0801-2000-19423','Mario Paulo','Castro Paz','90894311','2000-01-01','Por aqui vive la Paula',14.10000000,-87.21670000,12,'2021-11-12 10:09:49','2021-11-12 10:50:51'),(3,'0801-2000-19898','Miriam Margarita','Mondragon Espinoza','90890999','2021-11-22','Col. Aqui venga a dejarme la anvorguesa plis',14.09844337,-87.23188419,13,'2021-11-22 15:40:05','2021-11-22 15:40:05');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `descuentos`
--

DROP TABLE IF EXISTS `descuentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `descuentos` (
  `Id_Descuento` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre_Descuento` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Id_Descuento`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `descuentos`
--

LOCK TABLES `descuentos` WRITE;
/*!40000 ALTER TABLE `descuentos` DISABLE KEYS */;
INSERT INTO `descuentos` VALUES (1,'Ninguno'),(2,'Oferta Navideña');
/*!40000 ALTER TABLE `descuentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalles_facturas_compras`
--

DROP TABLE IF EXISTS `detalles_facturas_compras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalles_facturas_compras` (
  `Id_Factura` int(11) NOT NULL,
  `Id_Producto` int(11) NOT NULL,
  `Cantidad_Unidades` int(11) DEFAULT NULL,
  `Id_Descuento` int(11) DEFAULT NULL,
  `Id_Impuesto` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id_Factura`,`Id_Producto`),
  KEY `FK_Id_Factura_Detalle_Compras_idx` (`Id_Factura`),
  KEY `FK_Id_Producto_Detalle_Compras_idx` (`Id_Producto`),
  KEY `FK_Id_Descuento_Detalle_Compras_idx` (`Id_Descuento`),
  KEY `FK_Id_Impuesto_Detalle_Compras_idx` (`Id_Impuesto`),
  CONSTRAINT `FK_Id_Descuento_Detalle_Compras` FOREIGN KEY (`Id_Descuento`) REFERENCES `descuentos` (`Id_Descuento`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_Id_Factura_Detalle_Compras` FOREIGN KEY (`Id_Factura`) REFERENCES `facturas_compras` (`Id_Factura`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_Id_Impuesto_Detalle_Compras` FOREIGN KEY (`Id_Impuesto`) REFERENCES `impuestos` (`Id_Impuesto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_Id_Producto_Detalle_Compras` FOREIGN KEY (`Id_Producto`) REFERENCES `productos` (`Id_Producto`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalles_facturas_compras`
--

LOCK TABLES `detalles_facturas_compras` WRITE;
/*!40000 ALTER TABLE `detalles_facturas_compras` DISABLE KEYS */;
INSERT INTO `detalles_facturas_compras` VALUES (1,2,1,1,1),(2,1,20,1,2),(3,1,20,1,2),(4,1,20,1,2),(5,2,30,1,1);
/*!40000 ALTER TABLE `detalles_facturas_compras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalles_facturas_ventas`
--

DROP TABLE IF EXISTS `detalles_facturas_ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalles_facturas_ventas` (
  `Id_Factura` int(11) NOT NULL,
  `Id_Producto` int(11) NOT NULL,
  `Cantidad_Unidades` int(11) DEFAULT NULL,
  `Id_Descuento` int(11) DEFAULT NULL,
  `Id_Impuesto` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id_Factura`,`Id_Producto`),
  KEY `FK_Id_Factura_Detalle_Ventas_idx` (`Id_Factura`),
  KEY `FK_Id_Producto_Detalle_Ventas_idx` (`Id_Producto`),
  KEY `FK_Id_Descuento_Detalle_Ventas_idx` (`Id_Descuento`),
  KEY `FK_Id_Impuesto_Detalle_Ventas_idx` (`Id_Impuesto`),
  CONSTRAINT `FK_Id_Descuento_Detalle_Ventas` FOREIGN KEY (`Id_Descuento`) REFERENCES `descuentos` (`Id_Descuento`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_Id_Factura_Detalle_Ventas` FOREIGN KEY (`Id_Factura`) REFERENCES `facturas_ventas` (`Id_Factura`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_Id_Impuesto_Detalle_Ventas` FOREIGN KEY (`Id_Impuesto`) REFERENCES `impuestos` (`Id_Impuesto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_Id_Producto_Detalle_Ventas` FOREIGN KEY (`Id_Producto`) REFERENCES `productos` (`Id_Producto`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalles_facturas_ventas`
--

LOCK TABLES `detalles_facturas_ventas` WRITE;
/*!40000 ALTER TABLE `detalles_facturas_ventas` DISABLE KEYS */;
INSERT INTO `detalles_facturas_ventas` VALUES (1,1,2,1,1),(1,2,1,1,1),(2,1,1,1,2),(2,4,1,2,1),(3,1,3,2,2),(4,1,1,1,2),(5,1,2,1,2),(6,1,5,1,2),(7,1,2,1,2),(8,4,2,2,1),(9,2,2,1,1),(10,1,1,2,2),(11,2,1,2,1),(11,4,2,2,1),(11,5,2,2,1),(12,1,20,1,2),(13,1,20,1,2);
/*!40000 ALTER TABLE `detalles_facturas_ventas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facturas_anuladas`
--

DROP TABLE IF EXISTS `facturas_anuladas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facturas_anuladas` (
  `Id_Factura` int(11) NOT NULL,
  `Fecha_Anulacion` date DEFAULT NULL,
  `Hora_Anulacion` time DEFAULT NULL,
  `Id_Usuario_Anulador` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id_Factura`),
  KEY `FK_Id_Usuario_Anuladas_idx` (`Id_Usuario_Anulador`),
  CONSTRAINT `FK_Id_Factura_Anuladas` FOREIGN KEY (`Id_Factura`) REFERENCES `facturas_ventas` (`Id_Factura`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_Id_Usuario_Anuladas` FOREIGN KEY (`Id_Usuario_Anulador`) REFERENCES `usuarios` (`Id_Usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facturas_anuladas`
--

LOCK TABLES `facturas_anuladas` WRITE;
/*!40000 ALTER TABLE `facturas_anuladas` DISABLE KEYS */;
INSERT INTO `facturas_anuladas` VALUES (1,'2021-11-07','19:21:57',1);
/*!40000 ALTER TABLE `facturas_anuladas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facturas_compras`
--

DROP TABLE IF EXISTS `facturas_compras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facturas_compras` (
  `Id_Factura` int(11) NOT NULL AUTO_INCREMENT,
  `Fecha` date DEFAULT NULL,
  `Hora` time DEFAULT NULL,
  `Id_Usuario` int(11) NOT NULL,
  `Latitud` decimal(10,8) DEFAULT NULL,
  `Longitud` decimal(11,8) DEFAULT NULL,
  `Id_Metodo_Pago` int(11) DEFAULT NULL,
  `SubTotal` decimal(9,2) DEFAULT NULL,
  `Total` decimal(9,2) DEFAULT NULL,
  PRIMARY KEY (`Id_Factura`),
  KEY `FK_Id_Usuario_Factura_Compras_idx` (`Id_Usuario`),
  KEY `FK_Id_Metodo_Pago_Factura_Compras_idx` (`Id_Metodo_Pago`),
  CONSTRAINT `FK_Id_Metodo_Pago_Factura_Compras` FOREIGN KEY (`Id_Metodo_Pago`) REFERENCES `metodos_pago` (`Id_Metodo_Pago`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_Id_Usuario_Factura_Compras` FOREIGN KEY (`Id_Usuario`) REFERENCES `usuarios` (`Id_Usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facturas_compras`
--

LOCK TABLES `facturas_compras` WRITE;
/*!40000 ALTER TABLE `facturas_compras` DISABLE KEYS */;
INSERT INTO `facturas_compras` VALUES (1,'2021-11-07','19:07:54',2,14.00000000,-81.00000000,1,20.50,22.55),(2,'2021-11-22','20:45:18',1,14.10000000,-87.21670000,2,450.00,517.50),(3,'2021-11-22','20:51:06',1,14.10000000,-87.21670000,2,450.00,517.50),(4,'2021-11-22','20:52:10',1,14.10000000,-87.21670000,2,450.00,517.50),(5,'2021-11-22','20:52:54',1,14.10000000,-87.21670000,2,615.00,615.00);
/*!40000 ALTER TABLE `facturas_compras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facturas_ventas`
--

DROP TABLE IF EXISTS `facturas_ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facturas_ventas` (
  `Id_Factura` int(11) NOT NULL AUTO_INCREMENT,
  `Fecha` date DEFAULT NULL,
  `Hora` time DEFAULT NULL,
  `Id_Usuario` int(11) NOT NULL,
  `Latitud` decimal(10,8) DEFAULT NULL,
  `Longitud` decimal(11,8) DEFAULT NULL,
  `Id_Metodo_Pago` int(11) DEFAULT NULL,
  `SubTotal` decimal(9,2) DEFAULT NULL,
  `Total` decimal(9,2) DEFAULT NULL,
  PRIMARY KEY (`Id_Factura`),
  KEY `FK_Id_Usuario_Factura_Ventas_idx` (`Id_Usuario`),
  KEY `FK_Id_Metodo_Pago_Factura_Ventas_idx` (`Id_Metodo_Pago`),
  CONSTRAINT `FK_Id_Metodo_Pago_Factura_Ventas` FOREIGN KEY (`Id_Metodo_Pago`) REFERENCES `metodos_pago` (`Id_Metodo_Pago`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_Id_Usuario_Factura_Ventas` FOREIGN KEY (`Id_Usuario`) REFERENCES `usuarios` (`Id_Usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facturas_ventas`
--

LOCK TABLES `facturas_ventas` WRITE;
/*!40000 ALTER TABLE `facturas_ventas` DISABLE KEYS */;
INSERT INTO `facturas_ventas` VALUES (1,'2021-11-07','18:51:14',3,14.00000000,-81.00000000,1,65.50,72.05),(2,'2021-11-22','13:36:16',3,14.10000000,-87.21670000,1,63.00,64.35),(3,'2021-11-22','13:39:11',3,14.10000000,-87.21670000,1,67.50,74.25),(4,'2021-11-22','13:48:02',3,14.10000000,-87.21670000,2,22.50,25.88),(5,'2021-11-22','14:13:01',3,14.10000000,-87.21670000,1,45.00,51.75),(6,'2021-11-22','14:16:03',3,14.10000000,-87.21670000,1,112.50,129.38),(7,'2021-11-22','14:24:47',3,14.10000000,-87.21670000,1,45.00,51.75),(8,'2021-11-22','14:30:07',3,14.07098538,-87.17275020,1,81.00,76.95),(9,'2021-11-22','14:35:13',3,14.10000000,-87.21670000,2,41.00,41.00),(10,'2021-11-22','15:00:05',3,14.10000000,-87.21670000,1,22.50,24.75),(11,'2021-11-22','16:55:23',3,14.10000000,-87.21670000,1,182.50,173.38),(12,'2021-11-22','20:39:55',1,14.06693510,-87.17129041,2,450.00,517.50),(13,'2021-11-22','20:49:52',1,14.07027608,-87.17411108,2,450.00,517.50);
/*!40000 ALTER TABLE `facturas_ventas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historico_precios_descuentos`
--

DROP TABLE IF EXISTS `historico_precios_descuentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `historico_precios_descuentos` (
  `Id_Descuento` int(11) NOT NULL,
  `Valor_Descuento` decimal(5,4) NOT NULL,
  `Fecha_Inicio` datetime NOT NULL,
  `Fecha_Fin` datetime DEFAULT NULL,
  PRIMARY KEY (`Fecha_Inicio`,`Id_Descuento`),
  KEY `FK_Id_Descuento_Historico_idx` (`Id_Descuento`),
  CONSTRAINT `FK_Id_Descuento_Historico` FOREIGN KEY (`Id_Descuento`) REFERENCES `descuentos` (`Id_Descuento`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historico_precios_descuentos`
--

LOCK TABLES `historico_precios_descuentos` WRITE;
/*!40000 ALTER TABLE `historico_precios_descuentos` DISABLE KEYS */;
INSERT INTO `historico_precios_descuentos` VALUES (1,0.4000,'2021-11-07 13:13:40','2021-11-07 13:16:38'),(1,0.2000,'2021-11-07 13:16:38','2021-11-07 13:17:09'),(1,0.4000,'2021-11-07 13:17:09','2021-11-07 13:20:46'),(1,0.0000,'2021-11-07 13:20:46','2021-11-07 13:21:12'),(1,0.0000,'2021-11-07 13:21:12',NULL),(2,0.0500,'2021-11-20 11:18:44','2021-11-20 13:24:07'),(2,0.0500,'2021-11-20 13:24:07',NULL);
/*!40000 ALTER TABLE `historico_precios_descuentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historico_precios_impuestos`
--

DROP TABLE IF EXISTS `historico_precios_impuestos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `historico_precios_impuestos` (
  `Id_Impuesto` int(11) NOT NULL,
  `Valor_Impuesto` decimal(5,4) NOT NULL,
  `Fecha_Inicio` datetime NOT NULL,
  `Fecha_Fin` datetime DEFAULT NULL,
  PRIMARY KEY (`Id_Impuesto`,`Fecha_Inicio`),
  KEY `FK_Id_Impuesto_Historico_idx` (`Id_Impuesto`),
  CONSTRAINT `FK_Id_Impuesto_Historico` FOREIGN KEY (`Id_Impuesto`) REFERENCES `impuestos` (`Id_Impuesto`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historico_precios_impuestos`
--

LOCK TABLES `historico_precios_impuestos` WRITE;
/*!40000 ALTER TABLE `historico_precios_impuestos` DISABLE KEYS */;
INSERT INTO `historico_precios_impuestos` VALUES (1,0.2000,'2021-11-07 13:26:31','2021-11-07 13:27:38'),(1,0.5000,'2021-11-07 13:27:38','2021-11-07 13:28:52'),(1,0.0000,'2021-11-07 13:28:52','2021-11-07 13:29:03'),(1,0.0000,'2021-11-07 13:29:03',NULL),(2,0.1500,'2021-11-19 16:32:12',NULL);
/*!40000 ALTER TABLE `historico_precios_impuestos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historico_precios_productos`
--

DROP TABLE IF EXISTS `historico_precios_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `historico_precios_productos` (
  `Id_Producto` int(11) NOT NULL,
  `Precio` decimal(9,2) NOT NULL,
  `Fecha_Inicio` datetime NOT NULL,
  `Fecha_Fin` datetime DEFAULT NULL,
  PRIMARY KEY (`Id_Producto`,`Fecha_Inicio`),
  KEY `FK_Id_Producto_Historico_idx` (`Id_Producto`),
  CONSTRAINT `FK_Id_Producto_Historico` FOREIGN KEY (`Id_Producto`) REFERENCES `productos` (`Id_Producto`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historico_precios_productos`
--

LOCK TABLES `historico_precios_productos` WRITE;
/*!40000 ALTER TABLE `historico_precios_productos` DISABLE KEYS */;
INSERT INTO `historico_precios_productos` VALUES (1,20.50,'2021-11-07 14:45:57','2021-11-07 15:09:38'),(1,22.50,'2021-11-07 15:09:38',NULL),(2,20.50,'2021-11-07 14:49:27',NULL),(3,30.00,'2021-11-12 14:25:35','2021-11-12 15:01:21'),(3,10.00,'2021-11-12 15:01:21',NULL),(4,40.50,'2021-11-19 16:23:19',NULL),(5,40.50,'2021-11-20 16:33:28',NULL);
/*!40000 ALTER TABLE `historico_precios_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `impuestos`
--

DROP TABLE IF EXISTS `impuestos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `impuestos` (
  `Id_Impuesto` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre_Impuesto` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Id_Impuesto`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `impuestos`
--

LOCK TABLES `impuestos` WRITE;
/*!40000 ALTER TABLE `impuestos` DISABLE KEYS */;
INSERT INTO `impuestos` VALUES (1,'Ninguno'),(2,'I.S.V');
/*!40000 ALTER TABLE `impuestos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metodos_pago`
--

DROP TABLE IF EXISTS `metodos_pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `metodos_pago` (
  `Id_Metodo_Pago` int(11) NOT NULL AUTO_INCREMENT,
  `Metodo_Pago` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Id_Metodo_Pago`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metodos_pago`
--

LOCK TABLES `metodos_pago` WRITE;
/*!40000 ALTER TABLE `metodos_pago` DISABLE KEYS */;
INSERT INTO `metodos_pago` VALUES (1,'Efectivo'),(2,'Tarjeta de Crédito'),(3,'Tarjeta de Debito');
/*!40000 ALTER TABLE `metodos_pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productos` (
  `Id_Producto` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) DEFAULT NULL,
  `Descripcion` text,
  `Id_Categoria` int(11) DEFAULT NULL,
  `Id_Proveedor` int(11) DEFAULT NULL,
  `Cantidad_Unidad` varchar(45) DEFAULT NULL,
  `Unidades_Almacen` int(11) DEFAULT NULL,
  `Cantidad_Minima` int(11) DEFAULT NULL,
  `Cantidad_Maxima` int(11) DEFAULT NULL,
  `Foto` text,
  `Estado` tinyint(1) DEFAULT '1',
  `Id_Impuesto` int(11) DEFAULT '1',
  PRIMARY KEY (`Id_Producto`),
  KEY `FK_Id_Categoria_Producto_idx` (`Id_Categoria`),
  KEY `FK_Id_Proveedor_Producto_idx` (`Id_Proveedor`),
  CONSTRAINT `FK_Id_Categoria_Producto` FOREIGN KEY (`Id_Categoria`) REFERENCES `categorias` (`Id_Categoria`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_Id_Proveedor_Producto` FOREIGN KEY (`Id_Proveedor`) REFERENCES `proveedores` (`Id_Proveedor`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'Tomate','Tomate tipo Cherry rojo importado y empaquetado.',1,1,'1 libra (16 onzas)',30,10,50,'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',1,2),(2,'Chile Verde','Chile verde importado y empaquetado en caja.',1,1,'1 libra (16 onzas)',43,10,50,NULL,1,1),(3,'Corn Flakes','Caja familiar de Corn Flakes de Keloggs',1,1,'100 gramos',10,5,20,NULL,0,1),(4,'Manzanas','Manzanas importadas tipo gala.',2,1,'1 libra (16 onzas)',10,10,50,'/9j/4AAQSkZJRgABAQAAAQABAAD//gA7Q1JFQVRPUjogZ2QtanBlZyB2MS4wICh1c2luZyBJSkcgSlBFRyB2NjIpLCBxdWFsaXR5ID0gODAK/9sAQwAGBAUGBQQGBgUGBwcGCAoQCgoJCQoUDg8MEBcUGBgXFBYWGh0lHxobIxwWFiAsICMmJykqKRkfLTAtKDAlKCko/9sAQwEHBwcKCAoTCgoTKBoWGigoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgo/8AAEQgBkAKcAwEiAAIRAQMRAf/EAB8AAAEFAQEBAQEBAAAAAAAAAAABAgMEBQYHCAkKC//EALUQAAIBAwMCBAMFBQQEAAABfQECAwAEEQUSITFBBhNRYQcicRQygZGhCCNCscEVUtHwJDNicoIJChYXGBkaJSYnKCkqNDU2Nzg5OkNERUZHSElKU1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6g4SFhoeIiYqSk5SVlpeYmZqio6Slpqeoqaqys7S1tre4ubrCw8TFxsfIycrS09TV1tfY2drh4uPk5ebn6Onq8fLz9PX29/j5+v/EAB8BAAMBAQEBAQEBAQEAAAAAAAABAgMEBQYHCAkKC//EALURAAIBAgQEAwQHBQQEAAECdwABAgMRBAUhMQYSQVEHYXETIjKBCBRCkaGxwQkjM1LwFWJy0QoWJDThJfEXGBkaJicoKSo1Njc4OTpDREVGR0hJSlNUVVZXWFlaY2RlZmdoaWpzdHV2d3h5eoKDhIWGh4iJipKTlJWWl5iZmqKjpKWmp6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uLj5OXm5+jp6vLz9PX29/j5+v/aAAwDAQACEQMRAD8A76Nj9tDFvlC4qSe52854qG7JSM7BlsVn+ZuXBz15r8wkmtD6+MVPU0hKpySQTVVp3XzTj5j0FVt5U5U4pPtGCGc8nimtkzaEbD7C8kIbfxs45qK9BlDEvjPI9KSWUCMuCA2fzrJu71txG4Adcdq7aTe5104c8uaOhHeMIreRztaQcYrCJeX1Z+CV7gd6tu6XN4IHbCyHpmqN1vsbhzHkyB9uD6V6dGWh6MFb3epahn25ESbiBnDdqijfev7xgGJJx7VBBq6NqDPIkeFU7kHGa56TU42v22thCSMV6FJ3NFScr6Hb2t8iqu4cevenanq/lQ4Utgj71chb36Bf3kh8rPOOtR3urFrJrcESLnKetdKbvoY/Vk3ZmTq920927l8npxVJL6URNAWyretRhhLOqkgFjgk1Vuf3N4YyQ21sEqcirkl8J6nOqcUj0XQdRjfTEin+8oxXGeO3imwY3DFcjApJdTfC+V8gC7eO9c9qs5O/cck1zxwqhPmRx4pxUJSfU5WUgk4qsw5yKsTwsh3joah616yPzOS1aEV2U8VYimK4IOKjWPfnFI0LDpSdmVFyjsbVpfzcbZT9DWpb6g0x2SRKx7EVy8D7Fw6nPrWx4f0a81e4DQlooAcNIf6VhNKCu9EdVLmqtRirs6GytorkiLyTvbpiu/8ACnwytryRJtRclOvlDv8AU1N4c0qw0W3RpnUyDqzjcTW3/bSi52WUNxwM7lU/N9K8mvip1PdpHu0Mssry3/A9E0DSbLQoBBZWkUKDrsGM/Wupt2RlB4rx2x8ZpHI0Ts/2kdIpiVH51tW3jSa0w15askP95TkCvKlCcXeQquWVZfCeoBYgM5waeOMjOa5PTvEcF9EJrZw6H3rYt9QWQDHANQpqTtszzp4WpDSRoSW6ucrnNNFqhUqcbe3tTxNtQHFVZtSjSYRvxuFXypbkR53oiQRrbsdvAPUU8TRsp6ZB6CoLuQbM5/GsFbx11IoOVIyWzWX1jklymsKbqJvqjt7fbLGCpGMVBM8Ubod+BnbWZ9uEdoWU4b0rkdZ1tkaBhIpZiT1/pXuUMVBq3UnD4SVaTSZ6WtrEx3FQ2elZ+paHDcRmONQpPzHFcdonjJoHVZiWQtj6V0uieKbe91OWCRypb7nHGBXoe0o1fdYTwmKw7clsjPv9A8iBh5SupHHYr715t4g06GW+azvoY5oT0LDJGa99eeN4wRtOe9Y9/wCHbS6Y3BgQtjJFc9bAR+KB0YLNvZ3VdXTPl7xb8L72JVutFkDIx/1THp9DXnVxZajp07RXUJjlXqG4r7Tu9NjSLMUZTA5yK838R+H01cPHe2iMDnDBeR+I6VxqpVpe7NXR201TxN3DRnzqNRuUjMbDA/lRHqkiHk5rd8YfD7V9JvHaGUSWR5D4+77GsS38K6g+GW7g/GuyEKU1e6OGtWnRfK4mhFqjSIAEJqdNTwMHI/CqD+HtZgAK39tge+Kyr231a3Ys8sLn/ZYVosNB7SOV46fWB0Yvw7YztU9eKkLI3MciY9K4iW71CVTERnP92tDTtC1m8jzBE231ZwKUsNb7Q44tPeNjpwBkBnXFTMLYR5aWNSO2aq2nhG+vLIQX91FaFW3By+cj04qdPA2kRDN5rjtjrtwKhUO7Jlie0SrJf2cT/NPGoHvTDrunL9yXeR2UVNPoHhO1TLTzXLD/AKaYrA1K20rzD/Z8TxKB0yWz+NaqhHzM/byvsjVbxEjcQwkntms57rxBqsrJaQNHFnAbbjj6mm6a722DBb7m9SK6C1fWZ4jtUqv5U4qnDXcmTnU0Whzh8L3W8tqV2FJ5POTTjpNlEpEIMrgZyeldBJo93Iwe6k69cmpDp+nwqTLI+T2BwKbxFxKjY5SDTZJ5j5URZR1AHStJNMZQFZNg+lbKXcFuNtkpHv0qCRprpz5kyqp7CsZ179TWNJorRxwWvJAZ/fmlZZ7n/VLtX1NX7a0t1OWdc+5q3vt04MqfnWHtTXkOcbQfObMzFv5VYi8O264+QE1s/a7YHCtuPtUb6nDb5d14HrT9rN6In2USmuipkYTAqeLRgeifpVC88b20LYihMhFVP+Ezvro/6Laqi/3mPFaKlWlqzN1KUXa50i6MP7mKkXTYk67R+Fcle+KL8IFEy7z12im2Gp3VzKolkdh3zSdCaV2NVYPY7IxWUC5Z4x9TUZ1SwtPnEie23nNefNY31xeSlt+xmOMntXYeFfDgllX7S2VX1FaexjHVslVW9EjotLvrjVJo47SNsscAkV734F0GHQ9NFzd4Nww3EmuD8LwadpO2SJFeUdPauiv9dub1BbwjDvwFHaojOMXpuKcJSVuhc13Um1W/MS58hOXPoK5TxHeQB9qgbFGBW7q//Ep02K0hXdczDMh71x/ifTpo9LeSTP2iXhV9KJxaVurKpNN36I5nV/EYhYxW37yU8ADtV3wd4au9YvUu9TLCAHJJ6Yo8LeGYLUfaNSGSDnB713Fq9zfqILVPJtRxkDHFXThGLsldhUlKSu3ZHRWdyhUadoq7YU+V3Aro7KEwRCIgFfWqOhw2tjbLEgAbufU1sOoKDaetejTp8ur3PNq1ObRbCbTEcrkrU6ybhxTIWKEBhkUt1CVUy25z6itTAmjCvkMOabGnluyt901Wgu9v+sGCKnFwHGVGaYh8tshXIJzUCo2cNwKmSUj71BnAcBgCKAICoWTOcU9LjDBXbj1qw0UUy/KRUJsj35WgCSQK0ZYYz2xVXzCvBWrCRmPjOVp2welMDh524we9ZkzCNiQD1qzJKd5BU+xqvL8wJ9q/NakdT62n7u5WuJMqcDtVa3bdFhj901JISyYBqsjbSVAPHrUW0O2L0sOkJ8t0boaxp2XeYyeB1rUlUmNyxPzViatE1uqsrgFhkV0U12OvDyV7XM+8mRJBKr8Z2g+hrPvNRla6kaVkWMkbt3BFSXdpK1vNsXcjHLA9j61mX8WbNgoLSSMFJPJ69a9Ki0epTUWUtSuGg1GR0BWOQce4xWTNO7srcZAxxxVm4lluZAknIhG3IGMCs6VscetelSlbQ6n7sSdbp1Bwfzpjzs68tnFVYctKF9TgU+6RoZXicgMDggGupTOV1G9R/mdxUEjfxdTShlEWMHfnr7U1+RilF3kRUleI7zwUxj5vXNZWpPnJqzI22su/lyCK6rXZ42OxH7tplOOcNmN+naq0ybGyOlWp7L92JIzniqpdh8r10I+Mle+oRSYPNXIVLMKokA9K1fDthPeXqhN3lqcsaipZK5th4TqzVOKu2aukaI99KNy4jHU9q72wW2060TaQ4B2rGnJJ9hWZdLJZ2UcYQLGOT23e1ZkM3ztLLO6Pn5VjGAK8uo3V3eh9rgsFHDxst+rO0XXo7Fgk9jI5cZCFtpB96mn8QpbxrI8EkQYcAHBrk5miuArxPObjIO+R85rRttPutQZYSIz8nLs4H49aydCKR6HLBayLI1uylvQ8nJOPnYZxXQLqqBIv38ckchIwrgkfUVx50rLCBkTcDhpNwwB68VIuhIpLwXTMg6ELzWM6MH1LbhdJnZQpIkxl027ELk425+Vq6/R9cniAtNSR4ror8h/hceoNeZWA1CFW3jKrgg4rYtNYuZpIYrhN4jbo45HuK5ZUN+b7zCvSVTTR/mezaRrAkREmbnofrT9TDfaFljbjHFecW2tCGZp0Jx0ZfStmHxVFcYjjcFsdK5qqko2PFq4SUJc0EdiLsNAA/X3rmdTlaG7jniPIO0/QmpEvDLECT1FZV5c7mIPrXlTqtTTZzU/3czcutVEGmNJJ6eteM6r4ikS5LIpw4ynPQE12nie/zp6xK2M9a8qhsFll3FmA3Hj2zXs4GUVeTPUy5QgpSl1O0ttYnstMgeRmy74J6kk1vWWsPagPkq5P0NcNcXSQm3DL8kWTg+vaq82s3Fzd7zt8sc+7GuunOU2dsbVeh7n4b8WyhG+1uCB0Fd9pmvW94n7s4HGCeK+adP1RkljeUMEY4UepxXeaDqiB5ZZpCoxkbTgCu6OLlDc8rGZbTleSR7htW4BUqCp6kVga3p0tuJHhUMoGcYrD8N+L1nuFtw5WFhgOetdlbzv5Y3P5iP8AdY9CK7oqGIjseE4VcHPXY8x8QAyx4ihYORhkZQytXiXijQbyySS4tU2qpJMY9PavpfX9MYymRGAjJzgDpXH+INKETmORIptw3Ag5rzKlOdBuyPocPUoYmmoSX+aPmEXqs37xmB/3jSu9rKeZME+prqviV4WisM6haRlck+bGOg9xXmjXsAPK7q7KS9quaJ5eLjDCz5ai9PM6U2tpEqutwhPsasQvKVPk3EgX2NcmmqRqeIARV2LWyq/LFt/GqlRqLY5Y16EtEb6w3txIN1yQg9TRdaSzt/x8M3rzWZba28mUWLJxkAd6sxajqsvEOkuxPcg1KhVuTKpRNCDTYo9hCo5HWtSK1ti4LwLgdQOK5W9bxBaQG4mhFvDnB6Zqtb6lcScyzMc+9OVOdrtkQlF7HVapd2tmQUVEX3NZs3jKGJSqFnPovAqvHoEGrRpcXV95Q6BB1q1B4U0iPmSWaX8cVcKULXkYTqTvaOxlXHi67uBtiTYPXvWZcarcyNl3JaurfS9Ih4ht8n1Y5qH+zbQPmGFWb+VU/ZR6C/ePqculxfyn5WKj1rQs4rhsF5nY/Wugg02W4OEg49xirqaalsP3pFZTqq2iNIQfVmRbWckmMlj+NaMdjHEu6Wra38VsCLeHexGM44rOmhurti0rEKf4RwK53JM6FFjL2/gt0KWqeZJ7dK5q8ivr5iZZNqH+EV1aaWoXkipI9OjzgkfjVQqqGy1JnSc9zjINICsCxLH0rYh02Vo+EIX0AroRBb27DJUkVfWa18vJZQfTNOWJnImOHhE5e30hMglRn3rTttMJPyYwBV86lYIhBZA1V5tdt7WJnJ3KBziocpy0ZahGOpPa2hMgLphRWzAdhUp8oB6CuRHjKKT5be3dj9K0dOGr6pKCE8mBumBzTVGez0JdWC2O90++8x1itY98p4wK9F8P2kWmxLcXuGuCM4PauG8I2kWkSqzMrTtwMnPNdOsk+p332YA7s/Mw7CuiFONJX6nPOcqjt0NbTk/tTVJrmYAxKflzXM+M9Ti/tAouMR8V03ifUbbwx4emlBAKJx6k1434aN74k1I3d3lLfcWxWbg5suMlFXOy06ymuVjeZvkY/KteiaRYpHbIiYHrXKWQ3SIEHypwK6+xB2qCSCe9d2HpqPvHJiKjl7pYv9PygeBsMKrWl3cwvslUsua2lhzGMk5qjdITLsXrXScxdhmEi89anWTH3azIN0UirJ161pgow6gZoJZDMiyMGHXuKciowwvy4ptwFC5U4IqLa7qGQ4b+dMC7CFxh+afJCGGV4NVPOBULjDip7aYt8kgxnoaBFfLROSrYNTpe78I/y+9E9ud+D09aqPbsxIz8tMZdJKNnOVNWEYFckVStwyIVYbl96nEbkfK3FAjzx5eAG61DJjoOlVXmyuGOCO9Rpcru2849a/O6sOp9h7Nocww5xxVe5YKQB1p9xOmVIP5VkXU7+Y2RlR096xjDWxtTi2y48yqmB29a5PxTdhHilZwAp4Hqa0Hld3YEnBHSsvV7WB7cPMmSnzAV10VyvU7qCUJpsfpd+0lk+AD5gIbNUzMsULo4BO7hu4ploEW2WSMFVbsao6ixMMnl8uRx710xT5rHdFRcnYXU/I8vbFCAXOWkH8R9K5/UbCW3USkZiJ2hu2a1C8q2KGdP9Wck1m6pd+ZbpEHJUNu9q7KV72Rsm4xt0KLxqtv5ocBw2Av9aqtIXOSeafKwKjBquGAYZrtjsc9WdnoSc5pJZsMADzTZZRuJXgelVJJB5vWuilE5K9bkVkx9w5Kk5rKvW+Wrc8ny9ayrxixIFdcVqeBmFf3WT21yU+Vvu0XEAkXfHWerMvUVahn2dDx6VfLbY8JTUtxttC806xL1J/KvQdBkSxjSNVUBeeBya5/SbdVTzyuGf+VatvI0bMyA9MH8a5q0lPQ+wybBKjT9pJe9L8EX9Y1Rrw4I3AHaDjGBUFvYPP8AMBtU8ZfjNOszJ56lIwBkZOOlbNynmzuqO8oXgFuB+Vc22iR67kqb5TPTTpE6MuR6mnPPc2xDNyuemQaR7W5lkRHYKnQse1OuNP8AJlCrJHcDuRkU52W7NKVRS0YyO4lll3CLJP8Ac6mtnTr4HbEUdHQ5OetY8CpHP8uUkHdHrXs3gNyrXU05kbqZBk4+tc80paGtRK2x1mnLFdIP3qlj1zwa05dCPkEkk/3SD/WqmmaZDeANY3QZgM5YbSPrW6qXmnSKlxbM/GQwP+c1zSpyWvQ8mpNp+69exgtpsts5IViuOvrWXHbnTr9ZMnyZW79j/SvS4kimhVlXBI5U9qxNRtVinKsoKSevY+tcEqsruLRzLHNNxkiL7cY4wB2FZN3qQbcc1HfXBiV4iOQeD7Vzl1dA7hmuBUfaSuefUkua5Nq9+8qY3ZUDNYWl+YzO78KBgCrBlB4q1aalpVlIsN5HKWJBYqM8Edl79fWvUw9BuLhBG31uNKNjM1dsxomOWNQ2kLllYkeWo2qp569a0tZewvUjudODryUZD2xUEAKRAHAPtW8k6K5HudVHFpwUkXIZVjI3nAUfl7U66v5pGjXIjiB6etU5ASCVUsR0HTNZsErfa2M8csu3p5Y4B/GtKC5nzSOylWUtTvdBvmSRCzOAnJYdDXs3gHxDb30BtJpssOUr5njikSUSzPLPJuyI1OAPrXo/hDUZbe6tpGcQgMD7Y969KjNQejMsbhViKb7nvtzCXhIPIPeuI1mwnW4woyueCO1dfpWsxXybYJklYf3RTtesvtFk0qHbKB/CcZ9q6a1NVI3R8/ha8sPU5Z6XPLdb0W1u7cRXALOwxyODXiHiL4c2WlXkk93I8do74UqMgH0r3+9lMNyyxq6qOnmf1rmPFawa3YT2RjIdk6E/xdsV5MZTw87x26nvV8N9dpKEvVPseJjTfC9sMkySkep61yeuxwtqEh06Blt+MDFWdRsbmwv5LecMrI2MGrVvcFFCgHPv0r0/aW1Wp8zLCzg3BqzRj6aJ4LhJVifKHPSukl8Uaoy7Y4WUD/ZpY711UARKT64p7SSTEAxbamVZdUR9Xl3MnUb/AFPUohHcn5M5xVW3s2DfvCfoK6ZERDhggPqal+zwysCDk+1Zuv2RapNKzZl2zCMYRDn1NXo2uZRtUE1eSO2twWmZEA7saq3PiXT7QEW4aZx/dHFSpSn8KBxjHdlm30mZiGlO0Vd22GnL5k8qqw7ZritS8S6leZEatDH6KKwmW6uXLNvcnqWrWOHk9ZOxnKulpFXPQL3xfbrlLYhVHesifxLFIRuZnP0rnbfSppGG4VsWmjKoyw5pTp0o7u5cJ1Ja2sXoNeDgCKA/iKtLqNzKfkiwKW0skVMhQPeppLy3s48Ehn9BXO1Fu0Ub8zSvJiLLdMMthRWdqGqiI7FkLv6Cku7m5vUKjMaHsKpw6cEOWAB9Sa1hRW8jGpXe0StLcXEvzSzFV7KDzULzXEg2wh8epNbMFpBI+wMGbrS3Nt5C7ViZiehFdKaWyOZ3e5hxWkxbdJIB65Nb1lpX2q2be6sncZqrFpd1cuWK7E681t2Nrb20GXc57gniplJMaTsNgtodM8vbCrEnhR1rqNDu768ikjtwIlzgkj7orIOrWFqAxQTSD7oHOKuaZcXmpybYEMKMecdahztqy1G+iO100IJY7e13TXLHls16ho1rFpViJJCDcNyzGuR8LWNrpUKSHmbHJNHiHWJWcLCx+bg+1czq3dkbKl3Oc+Id3L4h1ZLCJj9mRsuexq/ZRQ6ZZJbwYHGDjvWdHIlu5bALseSa1bG0+1OGbhjyBXRRpuenQxqzUNep0OiwPJsf+HvXY2MfyccgVx+kmS2lAIwo4NdppzLLEWRhXorTQ8+V9zSV/LgJYZFUGZZH3oc+1XAT5e0DA9KofZJI3MluQx/ummSToFl++PmHQ1E8kkUgV1yh71PZ3CzNtkXY461LIpaQhhxQBCrY4xuU9/Srsce5Bt6VBGscbg9Qeoq2GVBuQgoe1MREYdyluNy1Ck3mMF6EVM/OSh49KaIxkEfeoETElk2seexpiAqTu6UqyDoaHdQcA5BoAmWPJBHNOBVRgmqiF4ZC27KelO+1xnqeaAPHp5QUYg5B6VV+07Y8cKvSqEtyxDeWo2g8VSumIRTK2B6GvialI/QY0lszTa8wyqSBn1OajubhMH5hmuZnusXCLuyvTPpVoSiU4J56VmqRo6KWppmdGgB/izg4qpdTIU2tnGKqXaPbwZDgseRz0rH1HUGjtyCfnxitYU7uw4QTeheku45F2IyEKMYFZxkCEfKSpbAHpWNpVysdy5fqw4qW71QiRWjXC9Oe9dTou9kdahyuyNDUbiRYHXZ+76bj3rmbltzHHA9K1L7U/PtFiU/LnJB7VjSNnmuihBxWpTlaFmMHJwTioHOJCuc4OMilaTBNQB8vgV2RiebVqrRCysdxFVZD89Syv81V5m5rpgjzcRUvcZO3y1SLfOSelSyvzUkZhMYB61vE8TEz5nYhHlt6VLa2iTzqoPHU/SmNArfdNa3hyzUPJJK+1ccH6Upz5YtiwOG9vXjB7dTVhJAwAApGPwqyJGMYjBymc4HrUUczRltgU7ht5GcVoaLZebKruwCjqa4Yu+599f2cX5F2Ef6OhjxkdB3/ABrTtIjjexJJ6moNkSklOB601WbH3mHoKvkuedKo3qbkcEEiHqfXIqGKO2W4/wBWvyjJ2n+dUoxJsy7HHpmsS9mT7aFMrRxsfnKjJArnnSu9zagnK6ubeoTaTuVYoVD/AMUme9Q293bNOwMilAcKCDXP3c6tIREWeMfdLDB/Gp9LIDnLBee9T7Lrc74xtE9N8PXsqbfskqp6naDx6Gu305bq6VFFwJlC/wCrIwF+hrgfC8cZdD5gO48jGK9f0TQY4/KljlChhu6/1qowmlpqjxcbVhDfcz4bZkfaylWPr0rK8R2/+jNuHTncO1ekTWgSAFip+vWuP8TW7JBI8YBXowryMZC07pHh1K6m+ZHjOsXRiZkbgjiuTmvdznmtjxfIy3bnPFcVcXIV2Hf1rTC0FJXOaVZt6mwLrnrVLWt1xcI8rEnbjk46DiqcE3mSqueSau3UiyXOM8Dmu2MXSldGsGqid+hc0uMW1uBnk849K0IHLt1rLhkLYweK0rFN7gHOK5aurcpGsavRGzCq7AAMkirkFhuXIjFLaWyMFxuNbFtZhk2knA7VyyrxvY7aLd7sxZLfaCoUc+laWl/IkYEZx0Oa2IrK3RPm3A9c4qD7RCJm8txtXuRwa7sPNvZHs06vMrJHoPgKQJM25OMZ4OCK79pFlt2jjDEf7VeY+ENSWxuUN1GGRz99QeB/hXpEMlvId8B+Q9CrZ/Svbw8rxsfP5jBqtzWON1qzyW3AA5PzVyE8MEV6xnXLDgkHqK9N1S1WZm2cMeMg9a861qwWK6PmhsA8qTjj2rmr00ndnr5diHJctzy74p6SpiW7t0Dyoucjqy968t+2LCR50Drn1r6Q1fTrWaX/AEWTfbbD8rjkHHT+dfOnjFJhrVxbsPkic7OP4e1ThkpXhI5c5hKLjWp9d/URtQt1GcuPpWlHHG1t9oaXKbdw+bFcokDycc4q4LeYxbAzbcdM10ulBHhSqVHsi8mtICPLgUH1Y5q7bap5oYTMwHYJxWNDpjYyc5q9bWLhcgEn0qGqUdUO1SSsXH+xs24xFz6uxNOEsK/6uGNfotMt4WEm2SBjnvWxHpttIoZvkA6jNTKvYI4e+pmqBMQMZ9sVOlqNhKpyOwFWpJ9P01WJZST+JrGu/Fe35LGDP+0wrP8AeVPhLfJT+I2Le3jEYdyFWoby6gi/1b5PoK5xr/Ub1vnIAPYCrUFncOPnOfwp+y5dZMPaOa91FmW/uZ/kTbGv86ZblgxMoU+9Tx2Cx8yyEYqne6hbW2UQ729BVRd3aCJlDrNlmWQlCAdo9qoSXax/LJJn261mTXk9xkZ2r6CmwwGQ9DW6g1rI53JP4TVTV44CDGhJFSf23dyjKRYHqaZZ6Ym0PLz7CtBNKuLrCRLsj9h1qJTgmXGMnqzMXWrnzCsjZHoKna2u9UMYTeiDr710Wl+F0jYM6An1NddY2EFugwq8VjOtFO8TSNNvRnFad4YuYXjnKs8Y+8MdBXpOgx2scINqQQOp96qz6pb248regkYYC5qDTEkj3x5wrNuJFYylKotTaEVB6HT/AG4l8KeB1rNv78ByerdhWdd3wibybYFn7mptNsnZhJMCzE/lW1HCt6vRGNbEKOi3LWmwC+IZ8h88Cus0y3nhlCTpgDoahh06Hyh9nOHxnI9a29HlZ3EV3zjjNelFKKsjz23J3Zp28CzLkgZq1GWtyAmQM8imbTBJhAStXbchs7uaohk0c8rN0OAKnhmO/JODTJZPKIxjaRUS4zlulMRedEcbgMP6jvUmC0AJNVosjnnFTxuQTu+5QTYagXISVuverDRpbQ9SR2qJwI2Dbcof0p8jsIwrruiY9u1MCur5YspwT27VKspYZjGT3pn2UqwYHKGnCJlcGM4HegRH8xfrTjKScRgZ75qxsD84w1QyY3ZK7WH60wHITIuCcH0pn2XdyVINOWXcOV2t2NSL5wHJzQB86LcAWpKnk8c1z1/dS/aDEzFlPTmra3kYjeOQEemD3rCurwfblHbuTXzPJfQ/TqcbSZZvI5Y/LlDhlYdM9Kjiv2WUJ82RjJNZGo3fmSDZnaP1psl2GgChMSA/eHpSdG6Rb7M3LzVGWZY+XyQMelZOs3DtOyvwBwBVI3DGYSbvmHeo7ueS4lMkrZY9TWlOiotEu0dUIr7WB9KS6uGkIJ7cDFQTEK6gMDxmmSy5AAAwK6VDW5zzr6NE77hErn7p6UxcMCWbGBke9VnlYrgmmM5CA54qlA55YhD5OSagDYkOKc8nHy1V3ZYmtoxOCtVSasLM+G61BJJnrSuearyNW8UeXWqvUa5zURHpTutLWy0PNn7zuNDsveuo0lT9miUnG7rXMqu5wPU4rr7RDHAvGOK5sS/dR7uQUm6spPoi4xjjnZYv3iDgEiug0kt5GyJVG8YZj/SsDTbc3V9FCCBuOCTXVxxxwsY4TuReAR3rnXY+lryTjyjp7OO3+XzfMbqSOmaWGMZGBk/ypWBXDN1HQVFJOQfQHqBWiu0edL3S5mAEiaTaPRRmuR1uVPPKQREDOQzHk1vHe46BRVWW0SQMVB3Y++ecUnFLVmtGbUjnIozKwG/Bxk7quWK4lAZivuBUtrZXDXTCzAd1zycenvULQSRylJ5FRu+T/hWTdmepT5U7NnbWdzaad5LJcBpSR945I/CvcvAPiG11LTDbXUTCVBkMOmO1fNemiH7QsVtbG8baW3YP549BXsHw+kNq8RunVRxlQMZHpxSVX2T16nmZjQhUp+aPXxvaPaA+w9M1h6zbkQurrya6uBkMMZiXAIzyayNZhBGf51wZhRvHngfJxlzS5bHzT8TLL7NM7oCFPOK8gu7nD8Gvqv4h+GItV0uaSHK3CjgYyGr5S8QWM2nak8FwjJtbv3q8pqKd4S3RlVi4svaY+yPz5OD/AA077WGkOT941jm8IQKBx6VoaPp9xdShthwa9KcFG85jVT3eWJv6aJJ2ASut060KAHGTS+HtCaNFZ4yDXWW8MMMfzwoT05NfO4nEc8nGmrno4ag9ypaKY0B2ZC+lXo9Ra3UH7uazr25hUsInwem1ax47tZ5jHK0gI6ZGRTo4Zyd0evTwt1eR0suozvtXy28snJKtjj61WMsCzBduCx4zyDWV/aMlmUMiPKpOF2dAPWtQSWmqW6ta3LRS5+ZWHGRXpUoOB3Rhy+h2Hh8xSSLL5pLKNpVj/kGus0zUViuyr52ngkcYrzHSLy8s7hTLIsaPxvYZQ/WunstSEl49tcyRpIOUkhOVYeo9q9Om3bQ4K9FSbvselRfM2QSVI71g+IrNJYyW2kjgE1a0CY+WFlbdj0NQeMZES2BTcN+eDTq2cTgw6lTrqKOE1a3az3KGDKO4NeMeOraOa+SdFG9wQ3rxXr1tMbiZ7e4bYjHCsf515d8R7YxLetE6nyO4PXnGRXBTi1Ox9Dikp4aalq0r/ccUlr2zgVo21tDGPnYE1yYvZdpBc1GLiUtnex/GuuWHnLdnyLxcL6I7h57WMDZ8x9KQ6ksa8Qkn0FcfHPOSNualLXTffZsE1CwqW7FLESfwo3bvV5SSViC596ptdXdwNokIHtS2dg0vLsSa3bXTxCnzYGfWk5QhokSozn8TMKLS2nOZWZqv2+iIMYWtAy28GRncR2qJ9RkI2wgLUSqyZcaUUTJYRW4DOyr9ar3GoJH8trGZG9ccVWZJJm3TyFvbNW4EjXGNorNvvqaqJk3VveXpzI5VT2Wmw6Bnkg59TXVI8EUZZiuKqHWLQPtjbc3ooq1VqWtEzlSg3dmdb6CFYfLmtW30eNSCVA/CpBqYUbljOPU1QufETqTtRcDuan95MTVOB0MWnW4VRtGavCOG3X5iqD3rzm68UXhY+VtX6VnS3mpag2JJpCD2zitFhZvWTsZvER2irnp9zr9haRkCRWf2NZeoa/JLbEWhzI/C47VyNjpEjEFiT65rqNMsFTaI1y30qHTin7upam2tdCPQdJka8W7vpGll6gMa7CTzmjKWqnJ6t6VHotqTPtlXAPc12lrpiKgJ+77V206LfvTOSpWt7sDB0nT1G0Tj94f4vWurtrH9yMAAirEGmp5Y+TPvWjZQlSM/MorpOUZaWhCrj5WrUtoADuYDcOlWYoRs4IpWhIwRmnYVy5ApDAS85qc24L5jPTrVa0lJf51Jx3rTMTrlhgBhmmSRBMjbJziqxVkc4GUz+VaMKiUFWGHFMaNom5Uk0wuQRXBGVwSPX0qUxEru3ED3qPyy75j4z1FSxb921s4HY0CZKj4AR/mT19KniRgCFG5TUMcW5uvWpovMhfaM9aYmP5h4YZWnB1cgpwKsNGJVGSN1MMIVRtHNAhu0gAqKcY1ZQX5prSOmAV49RTgxOdozQIrsMSYCgpTwCR8pGKkaJsAqKTYB7UDPiSS5k3t8xznPWq00hdsscmiU/OSO9RdTz3rwkfqc5W0J55o/swUJ+8Bzu9vSqm/5c0kmW+UUgUrjdxmrS0OWc23oNLEE015SBSzgpjIxkcVXY5rRK5yVKjjdJiyHkGkZsJmo3JzTHc7K0UTjnVtcV5CTzUbPkAZ4pmSRTXOMVoonHOq3qPLZGKjc4NMLd6Y7Zq1E5p1dAd+tQMc0rGmGtUrHBUncKUUCnAUzNIlsl33MY966y1nEbLvUOoB+U9M4rmtLGLtSR0reRxvU4yM9K5K+rR9Nkvu0nLuy9YtJ9pXyiQehNdXbp5SKCfmrnrKZVmfy4wA5yP8AZ9q34JCUGetLsetX03LlxG4iV2UhW6H1quFB6Alqc88zIIwxzjAz2qxbsbYrJgFh609lY5bcxTxk4fOfSrSIpiIA/Cq8hZnLnucmpUY4wDxSauhJ2MTVJBa/u4FbcT0BrN+wySo8tzLsfrt9a3tSXzI/kHI/irm7hJY33PmQDueRU8mh0Qqc+jZr6OtzEP8AQmaJVPzSAcn6V6p4CvrFGDlgGGCzvzurxVb6X5gHYbuDtOKt2t9JEEAkYIDnaDjNcVSi5bnc6Ua8HG9j6z0fxPazTKi7VQn5WPYe9dFOEuYwy4JPc180eF/EDyEL9yBD+Jr1/QfE/mPAkTK8af6wE8qMcmt6bXLyTPnMdlvsZc1M3NStNwI6D0x1rzTxX4K0/VAwuoFd2PXHIr10XVnfwny2w/p7VXFpDI2GCtgda8zE5fU5uei7Hl30tNHzvF8KraCd3hhDBTkA8nFdPpvhCEwALEgK9sc16hcpDZtKXwI1wSfrWVezwR20jW6MJACeO1cP1fG1pJVJXN6dCL+FHISaSLILnKD0Ncl4us5GgaWFhknccZyK72VrnUdPk/d7pV445IrAVka2mtNUUJcA5jlC9fUGu/D5fKitGexh4eyd+qPKZNYuYhFGzE+UT17561Ysrx/OMjJtRuh5xVzxJpEazExgqeq/7QrmzNLbqybyOqFD1FevTp2PVcoTjojptL1iS2v3hkYJbSnHzjco989a3r3yEnRPlE2c+bCflZT0xXnkV7MF8oyHyzjgjNXoLrYVYkrjgEdKpxvsONJP3j0W3na2gWVWJHQ8ZBqs5865jntv3bdwpxz7Vyn9sPCQm4bfTsRWsNQWWOKSBQVxztqknEwdNXutz1PwzryMBbXBK3AGcH+IVLr+rC/K28TbpOcCvNX1JJIDOZcSg4GD8wNOs9Qe5dGk+WUHIcHrSnK6sc8MIlU9ob0wLZkI284wOxrz/wCIduxjdWH+uXIPrXZpIWDgk8nPNch45lLxjLAFFOCegxzWSWx0ufxJ7NM8xTSnJ6Veh0dAMuay21m5JxhQKemrSY+bJNbSjWa3PkI1KPQ2BawxD7ygCkuJbfyj84JHQCsYzmU7mLE+lPRHf7iY+tQqVtZMmVZvSKNWPUliQBE5qOfV2cEMx+gqrHp8snLsQPatC20gDnZn3NDdOIJVJGeJppj+5jP1NWIdOnmYNK7Z9BWykdraf6+RVUdcVWvPENtGDHYReY3ZjUc85/AilGMPiY6DTRHzIcAdyajutQtbb5LYedL6DpWaBeajJuuZWSP+6OKuxxW1mOAOKHFL4tWPnb20IfLvL9s3DFI/7i1Yc2emRjfjf/dHWq8t7cSZW2XYp71DFpxdt87Ese5p/wCLRE/4SO61Sa64iTanYVWS2nnbLk1txW0EY6ilM8SHCAZqo1OkEQ4fzspW+lAEFhz71qw2kcIGQM0W2+duDxVyXT5ZAGBIUGqVKpPWTJdWEPhJLZfMcBentXUaNaZcBVwRVHSNPf5SFGRzmu1062jCIwXD+ldNOlGGxzTqynuX7TT45Y14AYDmtW1QwjABZPemW6AQqCDuPcVqWio0Wxxg54atTEmtJlf7uGYdvSpolZZPTJzUKW+1yyfI4HX1qeK4PmBbgcjo1AF6AqXxkgmtGCREwjgcnGaz4F535B9CKsgFjgrkGgRsR2yIdygc88U7LDg9KoQuQPlY7V4INW1mAiyBkdKokkyAOO1TO7FBkZqorIxJJ5p6XJHGQaABsBlVeCaseWM8kYqNDG5GMBjTpEbA2nmmIkSPbkjmpRksN44pgbGN5Ap/mEMMUCJEXLZByBT2YbsHoag+ZCSTwe1PWZeCaBE8kQKDFQssiDhTipkkUnmpzKHGAeKAKok45pp2McnFWWgQ5bGDUZiANAHwfOc9Krg5z7VO8rLGyjGD7VUSQ845rxIrQ/TK01zjgTmoZJDn6U4SYJqGZsnNaxWpxVanu6MVm3LknpVd3x1p7EAZqGT5hWsUcNWbsIZQKYz5FMYEdaRulapHDKpJ7i7uKjY5NIWzTSapI5pzuBNRk0rGomNaJHLOYpNKKizzT1NUY81x4FPAxRGR3qYKD0qWUibT1/fj6GtuAYUNjv3rJsBsmDDrg1tWKCaeNJHCITyT0ArkrPU+nydL2fzNDTonaVXCnYDjOOK6eOIAAe2a56yvWjtjbg/uy+7HvXQWkgC4c84pK56uIZOu1CGPJqTcJD7VUkbkjvUsOWGB0ptHNEtlrT7GwwxnJ4PYCqP3+FPFEgzwDxSwoRntTWiIcdRsseUC9qqXM+yymt0hjLycbiORV2V8ZC1XWHLbu9VZNamVtTkJLaWB8SDBPSnRgKockHnG3vXRXtm03J2kj1rnruF4HIYY9KiUb6noUqisXI76RZA0bFDngL0Fdno2vmEt5jnzD7YrzhXO7Jq5bu+1pN+zAyP9r6Vly6anRKaqq0j3bS/EUdvpLsLkrK3K+ufT9K1bXxXMZYmjYFyAOvWvn+31K4DoDK20EHBPHFdXo2pRzJc3DSxw/ZV3Jvb73bA96yacdjCeDp25meyTeI4r2Bo59pYyY+YcDFQarqcVtG6xbNygBsHIOa8pk8RRyIT8ybzk545qPUddubZGSYZYrkc5yDXVF2ORYLojt9O1S4/tNYbdii3DgZ7Zz3qTXbCGO7lmY/vFfk5ztI6g159Hqks2kGaO5CSBwNgPzD3q+muT3NsyzuTI33izdTS8mdMqTVpRNbxJbw3ulQzQFGcA5x1GPWvMtVtyr7z1bqa6OLU3W7EIk27uuTwRWXqoaOaeNsNHk4IPf1FVG60HFcmt9znlBVsHkGrSMyx+q5ptlF9ru2tzLHExyVaRsD6Z9agL4LIcZqZNJ6HRTqJaJlhZSSFPK56Vp6ZqslhHJbyRgxMcgHqprByR3q0UmmQzYZ1Xhm64q4y5lZieruzX84Sbng4XOSPQ11ttEotYJY3Ri6glR1U+hritHUsjMema6XTpBBc7ScxvxWc1qKdTojoRPH9kXbkzKfm9MVyHi9klt5VZfmKk5rpCAkxPYjFcd8QGa3snKH5jjke9KOpyV3yRcuyOH/s5T1NT2+mQk/MRWP8AarojBc05JLo8CRq2cJ2+I+WVSL2idKllBGOq0kklvEACy/hWEsNxJ952x7mnrakH5mHvzWPsl1kXzvojZfVYUACJux0qrNqd5OCkXyD2FVh5EfcEikk1BV+5+gpxpLoiJVLbslWwln+a4kJ+pqRYrW3bgZNZ8l/cycDgVE3nP681qqU3uzF1oLZGy92uMKdoqCS5h/iOTWettKx5zViHTyeSDmqVBdyfbt7Ik+3qvEamlWa4m/1ak1ctdNBIyOa1bayCYIH1q1SiiHVkzKt7KdyPMJGe1bNro0cgBUfMKvwwBmXjB9a27SBY+V6981aSWxm23uZVppgibcgOR1Fb0FuktvjbtYVcS2jnAaL5XHFXbOw84/PkOD07GqJKGmxsswjde/Wups4Fbb/eHeoHsjEUZl46ZxWnb2rgKYhkdcU0DLsChMCchfSr6AfKqYJJqusSyxhXVm9vSrdpbmGPIyfQ+lBJYQlR/e9qsG3WSLdxnHeq6Ntkwc4POasfKW6kDHWmIS1dYtq8se4rRiBkbMfK/qKqQwBzhhz1zU8TSQ52/n60CLaAIeTgmlFwOgHSoGJVd0hyDT3U5DR42n0pgTJ+8kwuB61KAE+8Mqao7XiPmDOD6VYSfd8w9KLCJUUJINrbl/lUiTNG2c554qussbkFThsdRU+Qy7ZBjP8AEKYMkS6EuVZealBYAFcn2qmqlWGCCvf1py3JAPB298UEltLk5ww/Cn7gY/c9qzopA7OTwo7ipoX3/cOR70AXo1kUhic1MJh0bg+1U0eWMDcQQKfvRsMfvUCLSzsOQflqb7TGAM8ms4eYXOw/LU6xAjLrg0AfCUuNx2kkdqrZwTipAfU1E+OT3ryIqx+g1ZX1GOT1qGU/Lz1pSxxUTMSvNbRR5tSpcQP60E8VHmkJOK0scjnoK3NMZhjFBNRtVpGE5iGmMaVjUZPNWkck5ATxUfU0/rUiJxyKrYwkuYgxzTgtWPKBo8hu1HMTysgGRUiOfWlaMr1FGyjcNUXbJ8zKCeK3ImG1cADAxn1rm7UlJkz0zXQwqcKDxkZGa5K8dUfTZJU9xrzNDT4pZi7RoW8sb29hWpDe5IJGAOM1kQeYu+NCe4baeoFLG/7xQegNZo+hcFKOp00LbvmJrRtZkkmPmKSvVgtY8Uvl7SMHHY9Kt2czpKJUO1vane5xSi46ImA3uTztzxT2fEZ657UBuCc0gQy5I4Uc1SM9iJFO35ualjQsOOtKq4OKljPlMDV8xnYjaMLndWLqkSyR5wDg1u3UjXEjMSOfQYrOvIwQqDtQibu5xsybWIHrinvOxijjJ+VBgVfu7I/vZgflBxj3rIlHzY71M49jqU9LonjkAoZzuHOarbsDigtwKyaL9tpYuw3LpMAHI7Vdub5pHYMyzAYVXZcHAFYmeRTw+MCqTaQ41tdS6JijgoSv41bhvnUgMxCseTWQzntR5pxVKRXtt0ak9yxcBs4B+ViMEim3F4zKwySemSecVQe6keNUeRii9FJ4FNDgDrTcuxCqJqwlxlsMOtRlzxmp4xvOwck9BUc0RViMc5xUbkTT+JEsciPBjDeYG654xWro9zPDFMkYLQvgyDHHB4NZNrCckkcVpWjNChQnINXZIlVNNTRtj5RCrjaTkYrYtgd6E8gNWTaIxRs8bQCc+lallliSD05qHqaTkb17t+RoyT8oJ+ted+P70BYYj1Ykn8K7xJwse5hkD1ryrxbL9r1eTBysfyj696qlG7seZmVfko6bsx1uF7KPypTOf4Rg0q2+BwpqdIgvIHNdPIj5z2syuJpm4FPCyMMsxq2sG4Er1qaK3JI45FPlS2JcpPdmeLVmPGTViKwzjNXokx8wzxU6oGO4cEdqZNinHaLu2lTV2CxKgHbketWooNyljzira8oFJxmgdipHbKGG7mrgsD5W9QACenrViKEBgygEirUAMjqMfKOxpiKENuxcbVx61dWExjgH6mr8dvmTeSB6CrUcYdCPzoJM+2RXDIRlhyDWvaowKqw7dahWzZMOpyvpWxp0LSbRs5/rTBsS3gkjkDgHaOTiuj00xynKjDnsan0+32ArcIMGrU9ooVZLUYweRQIvw2yy2rKRk9h6VDZSeUzQuMEd6dZh2J2ttb0PepZgjykpxIRjJpiLKKo+dG+cdR61bgmEgIiGGA5FZSgwlWfOc81pwKj5dOp6CmIeo2qMYJzyD2qVSPLLjlM4x3BpfL3/AHsK3amNFKJtxI5646GgQxWeNchiw7Y7VcgmfyyJACPWq4jCsCnbqKshtoXK89/emBY8pvILKMxt2NV2LxycZ2+lMMxcEQ5GOoNNluikKo67vRu4oEXo51fEYbHqDUbxlu+MntVHzT0Ygn+8KdFdSI6eYm6LPNAWJ4I3iLgDkGrscu8qOSopFkjmHmJgqeopnKqxjXp60xE86tGu5G4NMLjjGQcc1GJT5RJPzDAzT3KFAzncSD8y0CFJUcAkE/lTwduMtg+3SoYVc8ryKkyUO04Zc80Ay4koJGRlTxVlIgRk8DrWa8kacw8leq1ANRkMuyTKqelOwjUa8jgQgDcwNQteySHch4qlOgMgk5yTyuabHIApHPWgD4qd+O1RbgTzRKRmoWNeXGJ9pVqag5xnFV2bJpzMTmou5raKPOq1LvQUmmluKR+lRs3FWkcsqlh2aY7UwvTfvVaRzSq9EDPQnzGnrCSalW2IqrpGPvNhHFmrSQjGMVAivG3HIq7BKp+8MVEm+hcbdRghx2p6pVkAN0waeI6y5jVRKwhDdRTTZg9qvInNTbPSp52h8iZjNbOhyBkCtGMliuT90VPsB7UIiLIxfIyOMetKUuZanpZY+So49zQhZ7ONLiNhlgy/TsaqxEs/HJphYsgFWLZoVim80HdtGwg9DmsmfTqWpp2UjTJtRSxUc4q9ExGMGsCymkjf90eW4I9avR3YVsE807diZR6m5vZWKOCp7g1YRtqYz1rHiuN75c5q7FMJDwelUczi9zQClIfNI4JxmoxIsn1qCSUhChbg84zUAnWOJyQcjoaDOzLcsqRkAkcdqr3EokJO3B9KdaRq6CSYfNjPTvVWeULcKuCd5Iz6VcWS49ilqgKwEqeB29a55wGYkdK6LV49trnIw3TBrDkj2xKcYJqnqjSmrq5TYYpjVYcYBzVZuaxFNWHZofg5pAtNlbgUIzcrLUlDDHPWmsc9KiVjilUktx17U7C9rdJD0BZipIUjJ54p2OBzTCGDnf175qWGNpCdoJwMnHYUWHB9GPz8y7c1aWFm5P40sMIRQ3er/mjYWYDnsOKDdT5dCPyTGxUgIQM4bioWkCtimXFyWOScn61XBOcmmvMiEebU1oJ3mfkn0/CtywfYSDWDYxkvDghQ3OSe1a1uSdxz0pdbBUkki9qV4IdPZjgbVrgPJDys7nJY5JroNbn84+ShyByTWSqbTg8iuinGyufOZhX9pU5VshVigCgdacLeInAWlEJ27kGcc1ctUV42Y/w9R3rQ4CKC1jJqdrZGP7vrUgTA+XoeRThCyIHHUdaBDfIQgEKA/cGnR2gYgsADU8cayHPIkzWjDb5m+cAHGaAM+3gCPhgMVMdPEqFo16HnmtVbdSuGwKmtgFTCrx60xGbaWo3YPXpV17XCBUBz6ircFusxA4H0qcIEwvJwaBFW2tGlOxwRt7VdisBuHzYXsRV63jjZcjO7uBVh7VoyMfMr849BTEQWUKrLtlG4D8q27GGPMixgKRyBTLG2Qg7lO0VZtn+zXO2Rck8j3oEy9pnmypJFLG3+9irYjMMJHO7OQBVnTrtklPlhQh6+9NkaR5CMZbNMkiiQtITx7AVaMaFclRvpksEsTK2Auec+vtU8EgmjYMNrUDZXUGQFLlMLn5T3FSQb7YBD3PBqwJAPlZT1+9TljBJEoDRZ5HcUxXJop1MgJXc3vVlpFf5XAVT0PpWbNb+UymIkoRkGhTIYnEvB7CgVido8OSjcryKZKwZgMkMOflPWrMBLoARzjmoZowhHGW7YpgMUtnaxIHXOKdJAzA/MSccHtSQuysROP3Yq5bBkVtoDxn19KAM5Y2UYIOSeQe9W4ljEOCcHuD2pLsKz5Rj05HpVMfNndlm7EUAXABHlkwEqeKfcwVn2uR3rLgLZYdD1HoatlBLgEFWIGO9MTRaw5DYIAPQinqjx4ZW6+vSmQwy28eZHBjPb0pr3sbRbIzuGDjHagRoC5jiBJA8wdFqrNdLcSMUBGRzjtWH508jP53B6BvUVbtZhgBhgcAn1oCwxpfs85ZXbsOTV4yrcRh2G/wDve1QSbT9xQ657iqeBbzF1PJ+8vamBqRTDAUNn3NNnQvJuRwQaY6K0fnRkLGOvenpLEqgGKXPqO9MR8TmTnk0xnz3rZ8QeGb7SLx4riNwuflYjgisZ7WQGvOpyhNKUXoz36lZxbiyJmqJmAzUjQSUgtmJ5rVWOSdVvYgaTPSmYY9qufZSO1Sx2/HIquZIwfNLcoLETU8cPTIrQjtgasR2p9M1LqCVMrW9vuxxV9LTjpVi1tCecYFaC27AcLmsZS7G0YmM9sOhX9KhlsyVyBXQCHK4YUjQYHQUlNorlTOXCzQH2qzFcZ++Me9bD2qntVWWyxyBT509xcjWwkW1xlWBqXA6HrVF7cxnMRKt6UsN0VOJhz60ON9hqVty8UqKROOKmjkV/usCPSnNHkVGxtRqcklJEKP5D4Uq3Q8jPvUc7q2McEtz6UlwdsmCMVGw3sAmSe1LzPp1UUoe71LbMbd3jRlbnG4Dr9KjEnzcmoATuyaV8ow3AjPIpa3NfaWRqW7ASR/vAQw59vatC5vIbd3EMZjBxlT24rCjO0ZpZJmdiXJJPrUc2pv7vLqbEF4Zs/MBgZ5OKfFciUqDxg5rCD88Vdtyvlszy7SB8q4zmtVK6MnBPY3zc7YsKeaZ8mxZnKjbkc1lrONg5496V7kN8u4bf500YOm0W7gpIvzYI7Vl3SmSQso+UDFOmkBK7TjFSwkLHzVuViKV+byKMiRfZmLM3nbsBccY9c1numMYIPtWncICQR0zVcwhtx9KzNKiUmVodoYbgCAeR60y4TOSAAM9KmWPGTQy5Bo21MmlKNisicGpEQggij7tOaUbztGF7DNWpGdkrEjR7yS5yx6mpbcGMnaxGRg4PUVWE2Kd9oySTjNJvSwW1L7NhOtQzS/IAp69faqZn3NyaHkDOcDA7CpNU4iHJar9qgnlUSPgY61T2lWGe/NaVpCXkGOAetJvQuHu3LdpCWdQo4rXm/cWhJ4Hb3pmn23zcDqcCptTtJ7gqsA3Rp1APNKMk5K552MrOMG47nO7DIWYHk9vWkKKEORtbPAq75DxvuAO5eq0NCswLJ/rByVPeu4+ber1K9twcDv0q5HE6MWCAZ6471HaIF5YfN6GtCJgCAR8xNMRXAGDgYPpU6QiRQfTtTRbnzCwYk+lWY4yz/Jwy9RTEOtkjVvnBUjp71tWtob9Ts2hkH4mqcUImBIHK8Y96nt/NifMeQQeaBD4oVVzFIp3dmNW0iVI+EwR27Vatds3+uGSf4qstaMsOGYAbuDQIoQw+USQeKtNb+dzwD0zVlY1jzvQkfpUyRgkLFzu9aYirZr5EgAbc49q2rOA3Ayw5XqaigtFYgsoB9a0oYjCCRnPb0NAhtsoVmLfd+7Vq6jBGUiDEDIbuKdb24uMiYjKfwrViOMoCqEbCaBFa0YxyBZGADdxWjbzKrc/e6cd6ie1DMrJjBPIPenqgijBK8ZpgWGR5Uwzcf3T1psceGwBwPzq0JBtUkDBHbqKjDtglQN2eCe4piJ4AJ0KyIFx93HekiiBV42wD09xTrUmMtkZpkxTBcbiwPWgQqoY5lIBKE4z6VIUxMUVg3c1LCWdFLBcnv2NTQ253O6oA5Hr1FMVyjGoMq7/lGelWpYkCkAZJprxh5GHRjyD6VA8kkJAbBPU+lAyGW2MUYA3Nz0NRlp4DlS3lryVzV1LkSKx2knAOcdKQMJVViB16+tAFXf5hMgXGTjHQipZIFbJRiHPBzT5lVjtAIf2FPCOq7n+8BnigTZBFC8ToNm3noehFT3LrboSoyrenaq8l8LlTEP3Uy8bmHQ063kLxskzAsowTjANMRi3mp3NvlLk/umxsPrzT4ZWhuFUkLG5q5dW6qvlMQ6fwuR92qhhaKTZcMHQcg4/lQUXmVNnmDLYOBTGj8zY6t84IIXtUcPnIrDgR+4qwAoO6MEsvX0piLCOPL3KBgfeApzRwIWkADg9/Q1SSYuznIDDnGOoqeKRQ4K/6thye2aBDrcm3uPmIeFucY6U+aO435hYbDzgjpUaPskJIDJnB9qnSfYCAxYZoA6y40q0uFKzW8Mg/2kBrFv8AwZod0jCfSbJ8+sQzXT7vSkf7vHWvH9nHodaqyXU8b8TfBnQb5Waxjexk7GPlfyNeFeL/AARqHhm7ZLyMtAWwk6j5W/wNfaLrkZIrnvFWiW+r6fLb3MSPA45B/nUpyhre50Qmp6SPi37PjtThbZ6Cur8XeHpNA1qa0bJizujY91rLjgzzWqndXLcLGZFbMTgitGG3C1bjhG4ZGKtpCo7Zpcw1Eigtwy9KsrbMB8vIqWAY6CrsQyOVpXHYzmtwRyOahkt+PateSMGq8qYXFFwsY0kJXpVeVcjkVrPgHBFU5gN3TimIy50AUnrVGZI2HPWth0AzxVGZEc9gatOxLRlFHjO5Sce1WYL5kAWQZHvUpj29ORUUkaPw3Bq7p7kWa2FuXSZQ6NyOoqur4YHOCKZLA0ZyORTWIZAQMEdafKrHo4PEtLkY9nIJIoLM2361HnpjrT45PmzgD2rNxseip3dmy7JKgQFeDjBH9aj83eRk+1VyQ0uO1Bypx+tRynQ67foWQwXrU6yrjg1R84kBTjjvTwdjEHrSs0aQxHYuq9BfAyKhjnCqw2gkjAJ7UqysI2UH5W68datSsbc6ew6KYF+aui5CsCB781lKQG4qcTqqsCoJIwCe30obuZU7RTuWZ7jf2A+lQh8AjNV9+VzTPMOcCqSVjCrd7Fg4HQ01m4qEufpRvx1pMcFZWYyU81XLHdU9wU2ptYliPmGOnNMGAh4BJ70kzCer0ImanRsSCPWmFSByKcnA4qmtDGLfNqKRhxU4Uhd3viowO9Tom8Y796TOiC3ZJCpdhiup022GxWxziszSrQNyQSe1d3oulebskkUiMdBisKsrBKqS6LYAYkccAcCtWTToJuiAMe44NTwJgE7dqj5RUkaMmc9a5W22cUnzO7MiXRcEjAkX0br+dUbnw9H5m6DMbnqDyK66KToCB061J5ZfhgCvqKqNWcNmYypQn8SPPr7RriE7pISGHRgMg1WFqzgblxIK9GNjIF3RS7lP8JNZ97ojuu5VxJ2IFdlLGraZx1MG94HGrCyyjOMnmpxbjzfMRTuUZIrek0e4Xlow306iq72jBmZ1McowOeOK7IVIz+FnJKnKHxIzoF/eqyDa4/WtRmDku3yH1Hemxwox5OJRjkd6lgtpNxEmcZ4yKsgms4tydSe+K0oR5oEeMBfXtUcCp93b82fvVdi2qrBSA3T61RLJkhVQVcjb1zSG2AKMpGAaNoByFb5Rg56VatyjzLvICkZ46UEi2+AGPB55U1ftYwwGRmPpk9qhjttyuwGTxt960LddjFWABI+5TERSQ7ZV2NyOjDvV61YmH98q7h1HrUIjZVVguV9D2qU7ZGXAKsvOPWkBaFujg7SPdfSoHjZV46Zxg+lX4QXHzKF4zuHep1i+0OI1wO3Si6egNMzY2jAKp7cGmjLZCjGPSpb+0ZJVxwwxhulTIhWUBsK5GDj+KqENgjcAlSSO49Kkfb5gzhGJxj1pyjawZSQwPKU+RI7lNu4KwPA9KBBESi7JFG0elKWUNtTce3Paqyh0YJMWbPAIq20MgdXwFBPCimAxytyGVshx90rTEA2eXcgOucZHepWIaQlAFbpVi0iJOGHboaBGRLaz2xMkALw56dx9aktRuUF888la2RF9lyWbMZ7nrVa9j82LzrXAx1UdTQFyJnVGBUZB457VBcI8mQxK+lSWyjALZ5OSD2qyyeb8pG0DuKBHPy2pEjSKfmzyPWpUDsqs4JfPQCtWWNRnaec4571SkVg4Cqy88nNMY6Dy5HeKQAhh1FQTWqxSLHM++IjKNjpR5ZRgwDDB6g1akdJYyChPTK+vvQBUCjBhmKjP3T2qNoJ4mwpBQc5z2rTjRWxG6gttyjY6VAxYP5Uw478UxFCeFkIlT7w7CmWr7i8YZiWGWBGMVpGJmXhx7Y9qr4ZlIK4kzknHUUhkiW3lKxyCnXOaRYWCjywCp5GatxqgQruAyeUqyIYcAZJx6CmTc6sHIwO9FRMxBHpTg2eMnFeUpHRYRx1x0PeqNzC55X5hVxhjvxUL5bhRg+tTJc25cXY8k+LmiJeaS10sQ86FsgjrjuK8VWDnivqHxJF59jNDKi7WUg5HPIr5veMRXUkY6KxX9axjo2j0YPnjcqIrDgirccQ4xU6pmpBDg5HX2qrlWGxwEEE1I/Ap2/nDCmuwx600xNDGIZevSqzt1B5p8jY+lVZH561RBHPtIqpIpqw7Cq8r1QmVZG65qs0anJHWrUuDVZlPUUxNEJU9MVG8QPXirI4prBT3qrisUGRlOFII96hZMnG3mrsiEHim5UnDLzT5hJWdzLmQo/pUZPOe9ak0Suv+NZc0bIT6VSdztp1rqz3BZNrg1KGDcCq3IG6hX+YHoaHE3hWtoyyRkEDrUYOOtNLnPB5pTg/WpsaOaexNuIxkdanQ5RjuAx2NUxmpEZRw+ce1S4m1OrYkWTBIHenMcrjvVcHBp+7J5NFio1L6MkQN0HNKGAB4Oe1Rlhng0wuVOQetCHzqJLv+YEjIprOBTF5pHOWA9KdiHUdrjmOTSowB5BNNwduT0prHAppXIcraj3fJAPPYe1Kq9qZEpdxWhDB0BpvTQlT1uxkcPTuTVu3tS8qoBkmrNvAqgs3at3w5aobhZ5gMZ4FZuXKrkzrPY2/DOimRgWXIHUCuxjgziPYyhfugdqgtIkgkV0+70OO2aupM0cxjkBbd9x8foa4Jycnci9xqL8oRomwD1PeknjaSRNvyhT37ircLsJShck/3T2+lWGt1mBCNiTuayvZ6jKnl5dVwACOoqcRFVO04x7U5IWRwSzYXgcVKGf70keGzRcRXEbrJnqvsasRSOGA4waey52svHsalCIT83GOtVuSMmtY7hQVYxP13A1FJp88sW2RIrpcYyODUxif+A4X19aILiaGUAcEnr601dbEtXMOTQk3boy8brzsYcD8aVYZfuSgDA4PrXXQ3sc6FbiNW/wBrHNMOn286lomO737V008ZOGktTlqYaEttGckF5UONjKev1NStbbZmeNgD0rburAIwEwyufvKKgSz2O4D/ALrB28c5rup4qnPrY5J4acdtSkzuVVZRlSeoFWVRYAA/zU+OIrKwbnjnNXrWxNxLhY2kVuijtXQ5JK7ZzuLbtYSBvkXcSUI+Ur1+lXbe2kuIhshZ5c8MB0ra0/wwFCfaHbA52L/jXUWWnpBGqpgKvYVhOu3pBFKCjrJnO6ZoNzJGpuXCZ6gDmt600CzhIdkDv6tzWtEgHbipQoPfis2pS+Ji9pb4dCulnEFwI1CjtioLvTYpIyY0CsOQR61o7eOtP4Vf8azcFHVdAVRs4a6tGnhxghl4+lZSgG4eMSI8kXysqsCVOOh9K6vXEZ2K2zCKVv48Zrg/FFo1lZyXUpaAwkZ2EqZT03ZHJxn9aqlmEartBbbidLl36mzIu9OR84/i/pTvKIjClV3cdOMiuZ8D3T3t3Mbh73jhfPfcrL2IrszZMW+QZXrz1rup1I1FzR2MpLldiC3mVQQUyelPkRkb5CxA6A9KmS3CBvNICt39KeJkwI8DHQE9q0JIREjJukI3dgKljuF+6QFYcc96r3KMCXYDAPQD+VQKizJwxDDkg0Ba5ddssQT0GaZ5bR/NGwIxUaKjMdzEMo9eDUm5ymWGFPbNAEjRJKpdcCbGMAcGqsTHPlsDu68U94pFiDxOVcZ3CnJslKcbZgMYxQIW4YCL5gOOmBVabbMgKfK6jjI6/WrJPzHzMl/u9ODUpt12qU49RimBSigQJ5ZUKWGSD/jUaL5MnlMAWPRs9avxsgJGCy4xz2pkgj84LnKp7d6BEThljC7cA9SO1QzW/wC7/fNw3Cle9XzuVeRtU8cc4qCaHykGzkfePtQBREbw/KVAQ9BnkU5MMwKggdMZq6YfNi+bg4yGqrExiYDIZ/TFAE/2dAu6RQGyBUVwpjlKiUge3NW+ZTyAB1DGmMVBIG40COm8wMuCOfWmtgkfSggbsnNRycE4JIrym3bU6UDbenPvUUgcD5WBGPWkYn0OKgnfGcdPeo5ykjL1jy5YZPMkKMFOMjqa+c9WhVtUumjOB5jY/OvoDxA7myll6qowTnpXgUjLcTSOMgsxNZPe56GH+EroCuC5OParCvzxyOxoKhcZ5qF+/NUbErkHOeDVWQ85zikd8YGTUbuMcmquQ0MkmYA7lyPWqruG5qWR+CKXT9LudTulhsomdyeSOg+tNd2SylISTwKs2+jalexGS2tJZEAzkCvW/C3gG2tIllvVE9wRyW6L9K7q10iCCHaiKFHYCsqlVx2RPPFHyvLFJDI0cqNG6nBVhgimZHSvUviNoaX15LPbRqkqnAb+9j1ry+aNopCkilXXsanC4uniY3jui5QtqRsM1A6c5U1KxPrQoJ4UE/Suq5Nitk9GpVRCTuqeSM55Ug+4qFkIPFNMLELpnIFQtb7lIIq0fekJHrTuTsYlzbPEc8laq5ro3G4YI4NZ11ZAklDWsZ33KVTuZuaerYoeJl6iozkVdrmkahIX9DzTlcnrUFOU0nEuNV3LG+l3+1Vy1Ac4wKXKaKsTM5pobJ60xjnrSKaaiTKo2ywG28E00H5qjBp2R+NK1i/aDyxJqSNS3XpUSjJq9BESASKTdhOp5j7dAvar8ZVRlulMt7fJ5/Kr8drngjIrJu5DrW2K6z+YQF+7/OtzS7vyGXgEZ5qiumc5TI+lW4LKVANy7h7U7Rehzc0r3O50vUlOedykdM1vxZkCy7l27eAT0rzW3UxEbdykV0emak0SLvO7B6HvWFSh1ibQrdzsI1g2AOw39sVYVMSROnzN0OKybO+iumSQIV28EZrWjmjiOQwDH9a5JQa0OhSvqXfNy5XG3Yc5z1p8C/aNzMw25xxVOJ0GFZS4YEgetS2iHzx8u1GHy4PArPlHcstZH7yOduOOe9QNEwTLk+9TpJsCx+U7Dd3bpV2JlniZQNjdOnSlqhXM5Ec4Ip6hfvMATV+OBSpQYLDrTfspBCkqCfSmpdwbRWSP5iQAMjrTVLJl439jVoxMmU43Y6U9VVgAVG4dfSqumSNgk8z/AFpJ29PSrUq2rRguBknGAOTUdvayXEhjgj3MPyH1roNJ0NYHV3PmSd3I4H0qo03LYyqVow9TMtdBa6dfMQpE3Rf4j9fSuq07T4bSNY4kC49BV2ONUGAPqTU+QRhR+OK7qdNRVjzKtaU3qMVRtwAPxqSNcctSouOT1qTHAyMitUkYNjhxSjGeabkZwKjklUfWqukhbkskgzVa4ugqdRUTSM5ITpT0sS/MhJB7VzVHOorQLTUdzlteuWuR9mVXbeDwrbSQOTz2+tcrfaBr/i/V5pb6SO308QLHDbbj8pBzv+vJGDXqM2iQkMdoDPjef9kfw/j3qaxhWHKquK8qjg8RS5oN2Unr/kjo9vF9NjmdI8I/2dbWyxOZXSII5bv34rQMEqHBjkUA9SK6eFamKA9cV7mEjKlDlRyVJKT1OBuFMM2ZVzG45qvKFVlCxnk8H1Fd9cWscykOin8K5LVtKa0ZmXLwsc4/uGupVdbSQkr7GZPPtQRsCdvpyazLhWVt5BPPIHUVYmidJsOSpPQg8Uj7nYFDt9wefxrUWwYDKoViM9VNTQzs8ixJjI9+gqrCkolKkh8DOwfzqxaKrSPuB3HpjpTBlsuAcZOc4INWBCHKmP7wHzYFQ2jmBgLiLIz8pHarou1lBVE8tx1A7igljQUCtG2C2OO9RyO0RUgfd7etV5SVlyOC3SmvdZwsxAAxtI70xWFmiZ900TBVHJXvUawksGhYndzmrAkNuo43dz70BsSPJEoIYcp3oAVJAiBZxx0YelKkoRGGAykYHtUIwF3BcBuoY8ipDIvlAxoMdCTSCwGIuA8edmeVPakeOB34Uhx0PpUqrhAYn3Yp0iDblQu/P86YiJ8pGCRvKn7gpR5bjcy4JpTEF+WcEHrx2qJp4UwH8wHHagZ0L4JGOvTNROjRv13D2qQ7scdM1EXIJGefavIdup0oiklJJzxVR9rhgWx3yasO43EnBPvVC5cIGNQ9WUjjvHN2bfS5wj4JG365ryJrYMModuK7X4t6qIIbeAL+8L5wD2FcHbagkyfKcE9RWfmj06KtFDZDJHjILCoHlDZwcGrjOG5qlcRB8sBg1SNGiNieDVeVsH1FNd2Q+orsPB/g2fV2ju70GO0zkIer/wD1qpGcmkrsyfDHh6516fKho7YH5pCOvsK9p8OeHbXSrVIraEA9WY9Sav6XptvZwrDbRAADHTAFbEcXl4Ax+FTKpZ2OSc3LYbDb7Uyw4qO/fyrRypxngH3q4qNI4jjBJq3aeH5ruYHUAFgUZWNT1+tcOKhUmvZ0VeT/AA9TNSS1kzzUeG7/AFlysCNszy56D8ac3wasZ2WXU7uZ27rF8v617ZDbR28SpGqqq8ADiq8sW489KrCZQsLHWTcvuIeJk9FseWWnwx8NWZXZp3msP4pWLn9TitRPDOmWylYrK3Qf7MYFdvKiA9ATVKeFWPTFbSw3Vu7KjUZwd94b0+dSJLSFh2+QVxWufD7TZ1cwxeQ56FDj9K9intxzWReWowcDIrPllDY6I1Wz5m8SeFrvSGZsebB/fA5H1Fcw8RH3TX07qukpcxMJEBU+1eMeN/CjaVI1zaK7WxOWXH3P/rVvRr3fLI1dmro4foOeDSHaeDUzEd6ieLPIODXYjMrzQq3TiqE1vjkCtNgR1pki5GKtSsQ0YrIR1FRk4rWkgB7VXa19K1U0yeaSM8uBQHHrVl7YiojAO9Umg9pJDN4x1pBKo71L9moFmWoug9pMar56VPEhbsaRLRh0/KrtqNjYYEVMmuge0m9yW1txkEjmtaC3BHtVeIBwMD8RWlagHpziueTbNYvuPgtgGytaMMO3kjiltVVhxWnb25OBjr3rFs2SQy1hViO1bdrZqqg4GPUVDb2uP4Bn1BrZtIsgAr+VJyHyjP7Ot54+UGfUVWn0UxqTCx47EVv28HlgbRkVYABbOfwNCm0NwTONVprQHdCRnv2qzFfAwhCrcHPJrqjHC+VdMH6cVSuNIglOVADf7JqudPdCSa2YWupwvFmUkMOMelbVhfRzWjMjjb0Oe1clcadc2rkwjzB6UQ3xhXYyCM55B4qJUoyXulKbW52VlNJLcqIm+Qr0NWo2uDKCAw+bBGMfj9K53TNSSBg0zgZGARyMVr6dfQXTurynA5DEY49KwlTad7FqaZuGTBJjOCD0xyaiinV1MzAhyee4xUETD5wp+Xs+adaxPHuyo8tu4OTms+XSwy+ojZhIZAM9PpUlrp8t5ISMpFnr61Z0rSnkXfcfdznZ/jXUW9uFUYxjHAFa06F3dnLWxPLpEr2FgkCqkYx61qBdoxxxSKuFwABT9nI9q7IQ7HnSk29ReWAzxTlHtS/TpTWkCDnk1q7RV2RuSAjrTXmC8DrUALyHptFKQFI7kVj7Vz+Badx2S3EdpH6DA9aVYS2MnJpGfAO78qiMzn7g4+tK0VrJ3HdvY0oY1QZOKswrls9AOgqlaxSOoZidvpTNR1BLRlTPzHt6U62JjRp+1npFERg5S5VqzVxnNVtn7w4qOxvY7heDzVjHzVvTqwxFNThqiXFwlZjkBBzUm71NNHFDAYyRnFaWstBbj81WvYvOhZcdRU4xSHnNElzKw4uzuef3sLw3DwzBjj9fes+WBllBclUI++vYehrsPEKiGH7WV/1f3jjPy96wJdssfmfLJAScMvX8a0pT5lZ7o1qR+0tmZ0EawS+YrEknHzHnFTZUcxHa277o70k1vsMe9t0YOc9xSB5GQsoACeg5NbGRoWxjWExzjAzyM1DMhjYleVz8uOopjyBQkq/LKuNysKcLtZdxUMu04YHp+FMmw8AODIASMcj/AAqKAJOgKsqDPSQYxVkPEhLg5zwBUUtsZwDGVQE/epAR+a0LrGvzjHLZq7b/ACkyAAZwST3qJbeIonB3f3vSoZZ5YJNko3RkfK2OAaALphifMsPLdwxqCVImJDtnBHyjoDTkdkVmVgfYCkMPmJ5wT5jyV6ZoAjcNE+U+6xwO2aehAIG7PbHpUmSUG9QApI2mmPGnmB4lLEnk546UCER5JSHLFgenPSp02EHcq9eM1ThQwFiSR7e/vVhJkdcyEK3cGmBryEqcEEGopHJQAAcc5709sscEGiYxsqn7pAwfevHs5HUUZBnqeaydVnWGCRicYHXNaN/KCMDggdu9eceP9bFvam1iO6WUEdfuispNR0RvSg5yPOPF962qanNN1QfKn0FclPazKdy8fQ10L981TnTgkHn0pxlY9FxRkRX9xF8rguBV2PUEmXbna3oaglj3NgDk16D8O/h/5ko1HWY8AHMUTfzNaWTMpS5Fdi+B/BjaiY77UVKwg7kjP8Xua9fsbNYo1jjGFAxwOlTWVmiqqooCjgAVppAFXFQ03ojjnVcnqQxRpFgLjPc0lw4jBK9TUzKME8fWooYzNKGYERdM+tcmMr/Voe78T2JguZmlocBIEh6Z4966WI4QDmsazVohtyNvY1oRycgHOa0wE+SN5/E9zKquZ6FluvtVeT5jUpYEcmmEj0r0XOL6mNrFWRfYVBKOORmrz7SCaryLkdahrsWmZcq7s1UmgG07ularx/hVaWM+xrBw7mikYE1uCpUrgVz2taVFdQvFIuVYYIrtZEB+tZt1BkHI4rnnCyN4Tsz5P8XaNJoery27A+USWiJ7rWL5h+6SQa9u+MuhefpP2qJf3luSx9dvevCwSDz+dddGfNHU3fcsZyMEc1GyZ7Uzed2Gp2/aPUVpsIj2sO2RTcCrAIYZxSGMP7GnclogKB+KabQZ6VP5TpyBmp4xuHvT5rC5bmf9mdTxyKmSLkZArQSI1JHb5JzScrjUSpHEhOMVOLTdxjj6VcS1AGQOa19B8P6rrNyItOtJJPVyMKPqahysUkc8mntGcplT7VoaTaX13eLDZWclzKf4I0O6va/DPwjBEcmuT7jwTFFwPoTXrWg+HNO0eAR6faRQqByVXk/jQpOWyIlOMDxbwv8AC3U9QjSbUguno3Ox/mk/IcD869L0j4aaFYqu+GS6cdTM5wT9BxXbBQOAufepGYRRFiDwOBWU48qbm9DJ15PY5HXPCGlS6e0NpZQQzH7rouCK801HRrnTLryrqIgfwuPutXscjzMzuAc+/wDKs/Ufs97bG3uow+7qTxtPsa8KOZQVVx2R20ZSatueVwqyHB5X9an8nPIAzWrrmjTaUfNVWmtScK69vY1mpJu6ZHsa9aE1OPNF6G10xnl4GDTlXkEgg+1SlSRng0qJnhTg+9VzC5QaNJRnPP0qvPpkc6fMisPcVeW2dQSxzQGCrgniqUuwrHOzaKUP+jMVPZTyKj865s22TxAJ/eTmumSMM2fMOPSmXFkspXbhsnHHer531FZFDSNQluJFiRsux4XbndXoui6Wyoklwo39gB0qr4X8ORWQ85ox5z+3SuuhixwAMUKCk7nLWrW92IkUXG1B06mrGWXHAp0ce0c5pz8444roUdDibGjJOafnDc0gOBilY7VqpSUI3I3FLHovU00oF68mkjkA6in7lPfFc8Gqj5psb0G5PYUwsFGTSuy5qOSZQvI+X2rVzglqxWZVuGcnil03M0xUfdXrn1qnfalEImERy/QCjTEuYTESx3E5K+n/ANc14OLzOHto06HvLd2/I6qdJ8rctDo5roW9sTgjHAHrXH6iJZrySVn5P6V0sySTxiSVenAUdMVSbTmkbMbYzU5lCpjYqFnZbLb5lUHGnqRaCzRff610qsGww71k2loYnKsuCO1akXAxxXo5RRlQoqm+hhiJKUrosDpS9aavSlzivZOUOlA56GgjJzTfu0noMrX8SzQvG4DKwxg9K4vyPsM7xRYcKxBUDgA+tdzPloyB6VwesxTQ6nI8Jfy2ALAdKhS5aifc6IJzptdtS/cQQJB5oPyLjIqjN5fl7olCg4znrTobgRKhUgw8go3Jz70XFuVAeIkAgZH9K7LmFrFZLWViTkMh5yew9PpUsmj3LxiVnUYO7Aap7ICVdsaHHfdxii8fEvzk+WBgqn86YitFm1Iyu5iOfQVYeQFoy7bl5+UdBUDzH7QsbcIBnPtTJJxFcgbcs4zx0+tILFqeUuqm3l6DjIwPoaiE3mI0UwO0jpnJ/CmRHgPK+EIJx61Y3IyAw9Qpwx/lTArlVgG5NxHTLetTWWo72I2lSOuakt4kkQrIckjJGetZl3aqsbNCrl93MYoFubbhH/eIc7uuTSP842xJwDnFZsW8gZBAAyUqz9pdGXy2VSAPxoFYbLExVtzHnoR7U5EJUY2/lmrkbeeh4UMBkgVAkAXcI3wuehHSmCNBncHrjH6VVnkxnJzUs0mc81japex28TvJIqKoySTjFeG5WO2MeZmd4g1eOxtndyBgcD1NeOarcy3l1JcTHJY8ew9K0/Eervq14zq37gH5B6+9Yz9Md6zTb1Z6dKmqa8zOl65B4NVZFLNgDJPYVdnU5wBxXa+BPCbXE6X99GQg5jVh196tFSkoq7IfAvg12mTUNTh4BzHGR09zXrtlZnCnA29qksrIFBlcYrTRAgAHQVpFdzzatXnZGkaoML1pCD3qVh+FeeeLNd1DWdctPDnhqYQrOzC6vV+9Gi/f2fTpn1OKpuy0MormdjuI3S4kVY2DgsVO3kZHWtcwqsKqByKztKsoLC3ht7VQtvCoRB1OB79/rWrnp7151OHtOec+u3oXN2skOhOQARzVtMEdKgj9anU8V10o2VmZSZIh7UpHcjim8EZpckriutWM2Rtg8dc0x154qRunuKZk7cjtS0GVnUjkjioZBjPerjDcvIqBlx1qXoUjPdAWGAOOKqzw5znitMRg5/Sq0gO4qRmsZRVtS0zjvE2nre6ZcxOu7chXBr5O1O3eyv7i2fOYnKH8DX2ffRB42PTFfK3xWtRaeNb4KMLIRJg/59qmjpKx2U3eJx+R6fnT8UeWTzTgCvbPrXSyhQCBUiAseVpYiCM7cVOAO9Rew7BGmBzUwjXGcUqjcMEfQipre2nmmWK3iklkY4VVGSaXMPlIkibBIrS0vTbvUZ1gtLd5ZG4wo6V3/hP4aXt1JFLqoMcTc+Uh+Y/U9q9m0Lw1Y6TCkdrBEgHoOaNZbGUqkYHmHhD4Wnzkm1lg4HPkoePxNex6Zo9vYxRxwQoiqOABgCtCK1GB2/CrixjHPatI0tbnLUrOWhEkYGMAZ9asRrxSogB6irEYXIz+FaO0dWYtkDbYl3OcelV5LuBmwXDH+6vNTz2crzf64iM/eGMkj+lWLe0gt4wscaqPYV59WFau3FKy8yrxSMtp4gMbJMf7tVbqKCVeYyD2O3pW68QJ4AqPaASMDNeXWy2q9G19xpCpy6oxYUiEBimmEinjDAdK4XxJ4ZEcr3ek52dXiHb6DuK9Oe1ibO6NG/CoHsYc5UFT7GlSo4nD22t8zqhXV7s8Q82QHbIpBz1FWobtSNrLn3rtvFnhOS4DXWlOiXAGTGw+R/r6H3rzU3kH2h4L6KS2uYztdTwVIr1Kc1U9TpU09mb9vJu4U49j3qZolkHzqAaxlaZSDE63EWO33hVqC+C8c5/ut1FU4vdFpltkSMZK5HqK6Tw5pGGFzIvLcqpHSqWhWQvZ0lkH7oc/7xruLeHaAE+lEI87OevV5VZCwRkADP5VciG3ntQkbLz3p4GeDx7V1xjY8+TuNf5255xTgOaeoH+RTgMdK1SM2yPGf/r0yXG3kirDKDUDLkEUpxTVmJMroSrY+Uj8qV5j3CinNFxkE/lUJhJOOnvXKqLjomXdPcjeXKk5b6AVm6hdww27NKr89MmtG6aCwtp7q4ciNFLYHVvYD1NcVeX0l+6XF/A1tbrz5ROSK8zNpqhR5VrKWn/BNaS5nfoX9LKfaY5Zx8pPyg9/euwtEkzuVQPQ1z3h3Sn1Oxiv7mNooyD5ascHbng/jiustlaIKpHy9BXLk2WVMPG9VWT27/MVetzPQsZ/d4YYPekjiVeNpwe47U5h60zcw6E19JOhZ3OdSHyLgcY+ppqHPFNLHHXilj45qorUGWFNOOOppqnNOyK6EQxM801hkcHmlwM0pA7VL1HsQuSUxXH6+DHqVtl/3citkDqCOn1rsnB5ycY7VxPi2Ux6naYGRhs4+lc9daanbg379hpgyGZWVlI6EYpYwUbY64XAPTNUIpiVJYnGeKsR3LrkyHcn9KmE5R+FnTUpRl8SH3ENxCweIllY5+Q9Pwqt5xDFoclgcsjdvcVo27xum6Msp9M1KYELhiik/wB5eDXRHE/zHLLDdjLE0LZMygFehH8Of50hiIjLghkIyrHqCPSr8kcAfHl7fXIwKgLbOGhXBBOeoFdCnF7HM4SW6K8ZcofMyGPKnHFMxKAREApJ+cHkHip5v3jfvFyQAeOlMSZgylwDFJwGHaruSPQbE3tISox8uOVqa6uPN2bVA3dHzineSyY2HJIGcU9UDo0TbBt7L1FAitJEsqjezI5GQR/KpxH+5CH5ccfX3qGdnSE7C0g9e689adGJJAyXGWVThHBx260xDpJPKbBDNtBIalTU4AuZo2LHkFRwRSMro+8FX3AfNVm3udNMKi4LLIOCAhNMRU1G9jtoneR1VQMnPavDfGXiWfxFftaWTldOQ/O/TzP/AK1U/FfjWfxFdvBblo7AHgd5Pc/4VWtFAjAAxxXz7Tk7vY96jTVLXqSiQfd7AUwkH3qRuP4c11Xgvw4NTulurlMQIeF/vn/CrsU5cquyPwd4Wm1G4jubmM+QDlVYdfc16/a2IVU6AAYxipbK0EaKoUKoHCgVfWMdTyauMbHn1armxqKBgCn7eakAxT0jLkACtVsc7Zg+JGun0u6jsQxmMTFdvUnHAH1Nc58JvB8+iaM91qxLazfnfNu6wr2jH8z9a9JNqEABAyep9qbt2nIxxXPV52nB7FQlbYqLHhgBwoqeI8460jjndjHtTolOc9B61yc3K7I03WpbX7vTipR6dqjQcdaeT0r0YbGDHEY6dKRSM4707ORzTJFBOauV0rxEvMeRk1GwxmnqR3/CjA9aafMhbELD5uOtRyLmpmyBjGfpTH5X0qWiiB4xjAxnsaqyKRk4zjtVvkVFLkcNgik1oNMzLiMPEwwcdcDtXzV8e7IQeJbW4yCJ4SP++T/9evpmcqindnHqK+c/2g/m1jTBnOInx9MjmsErSR2ULu55RGQByalUcZ61DtI7VJHkHuK15jo5SZcHp+VSojEgIMk8Y61teGfDGpa7OotbciHPMrjCj6ete2eEPh3Z6YqSSxie57yOP5elS5X2JlNQ3PMfCPw/1LVXWa5DW1qeuRyfwr2nwn4OsNJVRDACwGS7Dlj7muttNNWNVRcbB2xWlFbqoBP0q402zlqV29CraWypyFFXolAPIGTShRgZ/IU7G48DArbl5VoczlcV329ajefYPmIAHqarz3EcTY3DNY+pXsrS+THGwJGdzentXmY7Mo4aLtrLsjSFJy9DSl1MKWWNgWHTPSprO9aWcb24Fc3a23mSqrMevNbscAXbtPTp9K+bw9XHYqo6lXZPY6uWEVY6RJBtBzQ0uelULfdtBB3ewqfcCcHg+lfY06jlFdDicUmS+YTxQxBHbI9aQhQCGOB61E/yjaCSPWrasJajy3FITzziow2e/PaojL8xBrCbRokWAPQVwXj/AMGx6qGv7ICO+UfOoHEg/wAa7gSY4zSOQy9aytbWO5rCTi7nzbLFdaZKSJGjI4w+QM/WtTQbu61bUIrR4gS3WRegHrXoHjXRUDm7jUFG4kQgEZ9ar+CdKt4HlnhhVGY7c1Tr80bNa7HdpbmWx1ulWotrdIkHAAH1rXjjC5IPao4I9oBP3sc1ZVTxXRThZWPNqTu7je3BzTkPPQ5pfLwOKFG0859sVqkzK4/6GlUY69aMA4xxRjnrVEi89aBgLkdaMelNZsLlmAHvQ3ZXYhvJbAyQeapaldwWaMbhtvGQo6ms3W9fitEZLch3HcngV5zr2sS3LszyFiRjrXzmPz6MG6WG96Xfov8AM2hRb1ZtTa+us+IrayZd1ogdyueMhTgn8aqLC+teMdP04SEWwIa4UDqgGdntnHNYHga4QeKUSfJSVWQsOx7CvQfCOkpY+KrmQPv+Usrnqc+tedQjOpWpVKjveWv4fpsdDfJTdj0VY1VAqqAoGAAOKimXjjtU6H5cmo5RkGvvJpSieYtxmAVBppFERIBDU7uTURd1qVsRmnLgDgc0Ac0uRUFDk/SndOfWkHSnZqkhDC4yFI60p+XoaGx3qIkgjio23KFk+7muH8XsftUDFQV5H4V28jZTHfHFcV4uINxBhMHknFZVtjqwfxmNHOhUICSfyqeNxghm+XGKz3UMy7s+1OjV0OU5HbJrJNHpOJqWrsuWjwSOnpWhFc5QlsZHpWFDcBSVbK89B3q5bsc70fkj7p6VRk4l4XDSHhtynsaejFXIK4DdxVFXEQD4+8cYHSpg5VywJIov2J5Sw0CySf6wE9doOKgFq1sd5QOvXYBwaeXRwpdtp7ECrNsrgYEgKjpnmtY15RMJ0Isit7gxgywSK8J+8NvKGkeBpJGmJ+R+eOPxrTTDqytGuGGGI71UNuiOTFgHJwpJFdMK0ZbnJOjKOw1CEClOR1J68VFPulh3R4C56Y6+4p0sOG3AmMk/dxxTsKwYMoVlwQW6fhWy1MdjO3NGQHbEZ5yxq6YYHw0UisvrnFRTQo8jsVO8AgkjINJ9kTAPmRrkA4PamB8p6SvIzXTWvy9awdPTaBXX+G9Lm1W8SGFTs/ibsBXiM+g0WrNDw5o0uq3agKRAp+ZsfoK9p0fTIrK3SNIwuBjFQaBokWn20aIoAX2rfRcnIHAqoxtuefWrc7stgRMDpT9vHtTgBSkevStEjnuRd8VqafCBGHbv0rIeZUlXcRWpbX0TRjnHtWNLF0lVcJNXQpwk1oW5QGNVZVyeakNxE2cHNBZGBPHHrXQ5wqbMhJoqhATkjNO2AHK9O+akxk5pQPeud0UacwL1xTiQBTCdo60gOe9aJ20Fa5KM96OCaQD5eKQHHBzWnqSPAx3o47000Eg8Z5p2tsA4+tRS8HNPDc0xyvTPWm3dAV5SAM4yarykMh4O4c5zU021evOf0qpK6rkhjjNQ/MtFO8lBiO7gAYyK+aPjPOt14pSON9yxRY+hJzX0FrVwoikKE9OK8CHhPVfGviu9ntlMNkJCrXDjgAcYHqawvfU78PFRi2zg7Wzlupkht4mklY4CqMk1634H+GIVku9aQO/BWAchfr6mvSPCPgOz0O3RbaNWlI+eZx8zf59K7S3sVjUDP6UtWTUr20iYmm6OluqJFCsajj6VuW9sqDAHPv3q3HCiAYBp2Ce4wK1hC2xxym2NjwvGDn0p55HvSrxnNQXEkhGIcjP61rKfIrszWos06Q9Bk1WkkmkQvJtRPpzSgR2+HmO+U+vasTV9TRWLSzCKIDnd1/L0rkqVXKHNJ28jWMdbIfdNCoYscgds8mmFjKiStJkfdCnqtcRrfigSnybAbQOsp6n6f40aDqcomy7Fs9c18rUxEaNa6V49T0fZuUPM9AtUTzCVBFakAypVuorM00CWPeuORWjbZDEnk55r6DCxTSlFaM4ZvoS+aYGODleuBVtp1ljVlINVWAYcDnNMkzCysmCp+8K3blRba+H8jP4i8sxA+bGKDIGY4PNIjcAsoApjNhjtzgV3X0IQ4YYjHBqORWQ7t2fwpWbuePxqJ5cEfpWc4q2ppFjmcjkgUCXI7ZphfglSDVOZ2QZB+b3NYSXKaR1IdaZZLSZJPuspGfTiqvhK3RdJhIOSec++eazPEGo/6MVzg+mazvAviSKEzWVwduJDsYnjB5x+debHEKOJ5Xtuej7GUqDa3PSYlOeOanwccH61BbyIyghsg9MGp9+BjgCvcg4tXR48riDOeaeh9Bn3pm5cccVG9zHGGJkAI9apzUepNmyfec9aRnVecisDVPEltaRkl1JHbNcHq/j5bmY29rIX3dkPA+przcRm9GjdQ95+R10cBVq6paHpOoa1bWin5gzDstcTr3iG5uWIjkEcQPTua4q68SK8jQQv5846qp4X61Ru9TZI8TOC/cDoK+XxmNxeNfLP3Yvp/mdiwHs1dmxeap5qMQ3PvXO3N27scnJqo92zsSThegFQCQjLHJzzxWdLDKmZOJtaMN03ygrg9R616J4c8Sxw6jGt7IgbhHycHOB/TBrzzQTlVbpuOa7XRfC+ma7dH7fFJukj2MyOUJA6HI7jJ/OqoVeTFRj3at6ji4pNT2PZIHDRK64ZWGQRyCKcTWToGlx6JpyWkNxPNGmApmbcQMYxWkWD9K/Q4zbir7nkyilJ2egjHDUc45pW7UgORzQtxCD1/WjAqTFN5xQ0AoIFBPao3B60qZx71HM72HYcMk80uwbTjrRnnHpTWyM4p2sBH5uwEhST0Fchqz+ZfuGUMoXOCcdTXYkiO2dzXCXm6S7uZVJ252Z9Mf8A66wxF7JHZg1eTZCbBZfu/UH0qqbN0crlT7VoQ3CoixsOncUC7iWQgvHjod3WuZXPQ5mUFjH/AC0QkLx0prQEIxiJznp61rOIZE+duPVfSq5tomhJgfIFWmK5QHmKyrIM4ORUwm3o2CATwPah4wUwGbg/nSS2yHZhX3eo6fjTv3BpEol2IoJzjgn1qykq/Lu4X68g1mDMcgADY61aSZWOckH0NUiZI14p9gLA5HbNOF5HOpRvlYVQiGVPzFs8+v4VNEWJHy49u9NGTiaKNIVxhJUx909voarXNsk0LCNWwQQynqPxojnTOBkEe2DUwdsF4SC2OnTNb06jiYVKXMZ1nttNhunJhBwGJ55qxcC2aQkMuO2Bmm34DrHNzkkKVYcA1TjYwoEDle+MZrsUro4pRaZ86aJp8t1dR28EZeRzgACvoLwboMWj6cieWPNbljjkn3rI+HvhUadCLiYA3DgbiR0HoK9CiiCqAK8mEep6OIrX91CIMjBGBUoFKFAoZggJYgCtDjDGOa5vxt4ptfDGmfaZlaWRmCrGnX1yfQYBo8Q6/LbWUsmmQfapFYJ8rDAJ6fX6CuF1LQ7ua4n1a/YvJAMiPeSF3dRzxnHHpXDisU4K1OLa6v8Ay/z6G9GkpNczOq0y/XVYoLtWdo50V1z6EZrp7SEHbnGR0xXP6Hbq1lE8SgKUGF44rprZfkGK+bynCylOU6ivfU6sRJJWRZB2cAcVJ83pTVG73qZOMD2r6ynTtojz5MbuIHtSeb+dTFQe1Ryx4IYDgda0lGSV0Smhi5brToxtOKcuMA96kUDBpRp9RuQiE044brSfWmscEVYh2OxP0prjHpSCQE4FI7Ajriq0aCwZOOABUbSALkgGmyHGCSaqyThMqcgVLdhqNyWVo2TLk57YrJ1AiMHD9RS3FzkBY1Jb171PaaeZCHn59B6VLalokaJcurMOLSJdQfM5YQf3f71dHY6dFaoscMYVVGAAMAVfjhCjgVKq0o01EU6rloQrF7Yp2xR2qXnnmmN61qoGTYwqMdaRFJPOKV8KhdyFUckmqT6tawY3uFLfdz1NTVxNGh/FkkJJy2L7IOcgZ9ap3EypkggAdzUK3sl5xAPk9abewRxWzySncwBPPQVwyxDxi/cL3e/Q0ilD4tziPH/i+PRLJpIdzyngbeTWDD4n8FeILSL7XdPBcsoykzlPmPfpg81kR3UfiH4h29lcYa3gR5ipGQSCAP510XxE8C2XiLQZYbaGOC/hUm3lRQM4/hPsaMBQliKTqT67XR1ucKVov8Dk7uOKK6xb3ENzbk4SaJgQfYjOQa0dKO2QZrwDwyLi38a2FjeSyRg3Kxv17nFfTGnaLI+tzQD/AFUTkMwHGPQV4+bZa6bi6avzfmdarwaO60LK2KZOMgA1rRhV56g1QsIxDF5Z5BNaEZ2jsRXuYGg6VCEH0R5VSV5NkqYPHWknGIxuweaeChXIGD7Uu5QCMA11ygmrGdyGGYDhSR7ZqxKfMAJyAPeqTqqNvGOvSpBKVX6+9RTdlyyKa6oR+nWoptwAOSMClkbe2Q3P6VDLINpBGR09qJWLiQtcCPOSAazL29yp549akuywVsdeua5vUZyoO5uK4as2tDspQTdzI1++J3jPHauMsb1heXQjfDDaR9eav69cn5+a5DTrndd3pOMfIPx5riw1H2lb3lpZnrKXJT0PUdD8X3CRrE0jArxgnNak/jx4ExLJsIGSzMAK8anuJBOr27gMOGVuAajaQTjzLlnEu3aY8j881hUw1XDzcFN2O+lRw2JiptevqevJ8S7eWQxfalaQAkhGJ4rF1bx48sJFmkh3kgMTjJry7Sxp9lLKbu52sD0Xrj0rXhvjck/2bDsjPCzSMCcewqZ0XfVuS89jd4GhTleMf8i3qmuToGk1q82K33IE6sPp/jXPjWr7VWe3sFNta9Nyjk89z/hV4eHlupfNuN0sh5ZnOc1ObMWrxRoqoinoKuMaVNaK7/D7jRuK0RoaXbR2dsEicliMs56saZdSbnOGyaq3N07horYr5qj7uelJCj4USHLHk1y8jvzy3PPqrRtlmJfl5PFSxMHzt7cUko2wkcDiltkwkS9CfSoe1zz5UdLnSaPFhY/TFek+CRtv4xnjBxXAWCbQoxiu58H7or62Zs9cGvLp1LYqnJ/zL8zkqU/dZ6YQcDPSlQcUEk4x1pQa/S4tXPGYdfWm96f1ppGKpgOQ9qceuKiJI6delIsg3bWPPY1LqKOjC1yQnA9qR+Bkd6OSeRTc9cVTdwEB6k0M/wAp9hzSjuM01FMhZSSKlJgVb9ytqA3GQWrhRM+4kcKzFieveup8WXfk2c6rwQm0fU1wEN40YVJQVB4DZzWFZc0tOh6WDVotvqbAMJk/ebmDdiSKXEcm9QECjrkcGqMUjGXiTH61O0rCQeVKpOOVAzWVjqZMn7ohUTcinDHpge1TpcQI2QyYPH4023kXyjuyQ3cinRIiIS7BieyrQkiGyRHgmcqM5/z0pY4o+igsR3NRCJ+Zl5UdjxipYZYwx2gM/fFIRHLCAeeKia3wwIAJzwe1aqxjbgjGTTJY8nb8o/Hr+FNOwuYymVouFzn0p0F06qryEqOhBHOP8anFuyuwCfd7jnNJHEWTaRg56N1FXFgyykwK5baffFORGZt8UvykcKRTEhIJ4H40P5kYYn8PaqRDLFifNneGRg8bqeM96yLmItKSrcdOlX7Ahbsvj7iEtjgdKrkh8FwFYfhn3rtpPSxxVo63Ogt4FiQKo4FWAB9aXbj61DcXCRDkgGuKTUFeROsnoOmlSFSzHFeceKPEU13LLbwt/o3KnHf61u63fGYFd2F9B3ri72D5izDjPAFfM5jmrk/Z0dj1MJhUvemYt3JOlvG0DSqBJkhTj2NdFpc93quhTWEk7SXPYlsblPQkdDj0NYl9GNrKmSxFW/BKN/wk8CBzvWMlgP61jg5X91v+mbYjDxtzx0aPTtEtlt7SOHqFUKDjHT2rZgTa2Kgs4+c9K0Am1hjvXvYWiqcVY8mpNthtx04qQAbaNvPal2gDFeglYxDFKDxijv1oPFUhEZGOgpFbA5p7DIzjpUTYK8GobsUiQnmmS8jPGaYX5GDSM4IIP51N7jsNJU9TTWbCcg+3vUMjbOn51HLMMZY49xSvbcq1x8spA+boBVKWdpT5cQy3v0HvUZme4k8mPO7oT6Vq2FgsKZ6seST3qYty2LaUdyOxsFQhn+Z+5rT2YHFOVQo4pT61tCNkZSk29Rg+tLkU13CjrWbf6pHbxksyjHcnFTOcYK7JSb2L8kgHSuW8aeNdJ8I6cLvVJGYM/lpHENzM3XHoOnU1g6t4uinu7uxhuZLZ4Yt7y7QVwemD68iuD1nV9OleEeJVn1UK/mx2tnBuViDwzknA+lc31irKaUY2j1b0+42jRTV27vsdyuu634jszdQWX2W06xmRsbvQAdzWfp2n3kt8iX02+5DZnYN8qdwoA6n17Vy6fEzUdb8QQaN4e0mXTVYES3VwuWRQMlV7D8K9K0qzis7dQuS5HLE8k9zXnYrBUqklGPvSerk/0NW2lqreR19jGscKhccDjHFR6gv2i3eMplipA9qht5SEUA8intcyA9ua96nGMaah0OF3vc+cPFNjrXhPxlFq1jbPIqZSQKNwZSc16Hp/jiO7sFMGn3k9w3AhERXB92PAFeh3UMdyds8auvfIyKgjs7eIIEgiA7ADFZ0aU6C5YS09DolVjNe/HU8o0j4bQSeK/wC2tQjRm2BoYNv3JCxYsW7kE8V6pHCFGT94/ewO9WjEd3yKAPbvTokVGdWA3Z9abptvUzc2xEQ7ht5wKsDAHzDg1CcDOODntSlsDrzVaIW5PGcZI6dqJHO35TULFsAjpQr+veob6DsJP9xT78mk3K4Hzc5pJgzoQtVUbYpBzvFc3M41LPZmiV0TzSlR0xz0FU2kBYgmmTTEdzVOV2IPc96qUrs0jHQddTBQQTlemTXHa9cKBhcD2rZvbvapVh9K4/W7kNk559a5a0ro7KMbM5nW59yvXJabJhbk5OWkI49gK2Ndn2xvj0yTXNWrlLKMNkMw3H8earBx1bZ2Tl7lia7uMs2c1h3gmz+5kdlz93J4q3O45JPNZdxcFDlTyK7pR5gw1d0ZXWxesdLmmlBYDBGeTXaaTZSW8G11J2gBcd/pXLaPqpmZNu0MPvA9q7ixulKqTgt9a8LHTqL3ZI9x4i8Lx2NKKeO3tAMYI9RiueWSS8v5NqkgdZOw9hVnWC1xb+XGwTJ+Yj0qbS5EtYAhKnA61y0vejdmSXuuS3YxoY7SLc4x6eppYMD5pcbmHI9KuzW4uAtxITtA+Qe/rWZeyiEOxZQqjJ9zUSjd8qIUVL1Hyv5svloeF61b08F76JcfKvJrH0xy1oZ2yDId2PSrmj3IN7IwOcdOeuKJ03ZxXQipT3SPQLUjCnFdh4bkAnQjsa880/UC1qruMHbkiun0LUUWeP5vqK8WtSlSqqdtEzkqUG4s9nhbMYPWjODVTSbkTWiEHPHNXGUHnsK/R6cueCkj5iceWTTHZ4pD0oHTnpQK23IFAIGajZecjrUnSkI7Gk4poBMk4oZeMjrSlRgHHOaY3c9s4ot3ATOR15FPQeXG0jdcUwFVcZG7NQX92EiI6cZb2oUlFczHZydkcZ42n+07INzLuO5to5rkJ4Lq3ZRGWdDzW1qc73N284554B9KjjbeAWXt+tYQm9z1VDlikZsd4ucKwz3zVm2uFSQ/MQT/ALXFOmsYZwSoCSdfrVZI54Af3QbHfrV2ix8zRuwXPmlSmG2n5gTiphtWY4y27tngVz7ap5UgjljG31X/AArQ85JYxs+ZhyCGwRUSg0Clc1NzqCQrjnopqyojdlLBt2Pug8VnowZFLM4OORxzViF0Zw5yoIwdwwazAsRhwpXaUI6Atk0CX51lmZUAHOW4pYtmSu7HofWiJjJ93YFBIIZeTTJLDOm8MrhSR68GgyKcqBuYccHmqj7RBiVoyA2ORgCkAj875SGkwDuBGSO3TrRYC+kY4wV59etMMbGQ54Uenc1XE258IGBHBGau2reZIACMnj6VSQnoU2JjsLmQ4RpPkTPGfWsuG92xICm7jg7Sf5A1T8V6sr3Hl20hKIfLUA9eeTWpaxTrbReWYSu0Hnd6exrfDS55yt00MMTHlgr9TR1PXUijxAQXPQntXN3WqyXEhHmZHt3rmrq7jtoiCxZuBuLEn86ntZHZQ4zyOh7V8Zj8RXr9bRPchgYUY3RpOzSOWbmqV5zznpxUyttjJXlu/PWq7g7RnqK8p0/ZJvqS12KawO8jMi5IHGfWuq8FaFHbapNfcmR0x9M9aztLiBC7uSepru/D0ICuR2GK7Mt5qlaN+5hiqjUGjUgTBz3q2AcDimBACPWnfMD9K+0hGyseHIdtA/wpc5ByODSE5we1J9OvvW60JGPwTTjnANI2SRnBHTNKMdD0rNbsobyMcZFRynqBgVIQQfb0qJ2AfOBTktARWd847VGzgFck8nBqS6KgZCiqszLj7xrCcWrmiI7h2B29cntVNhJNKI0PzHnJPSi8cgZDVp6RaiOFXYgu3JNTy87sa35Vcs6dZJbpwMk8sfU1orgDgUxSAKhkvYlz84OPSt3KNNXbsjnfNNlljiq1xcrGDkjisu91XbnbjFc1qGrSOGwQG+teJjc9pUPdhqzopYWUtzS1vWxCDsP4mvHfi54xmstNit4xN/pDHdKv8AHoexziuqvb3PBfPua5zU4IdTgnguYllhZSpDdK8WjmdSrXjUqq8U9j1IYRKFo7nleh6pPfyCw1jU9RmtCpnEjyltqAE4GT3OK73w3pFlrVl5+mXghn27PJk42nvgj/AArKsvBNpbuRFLK8ewrgtxyc1JaaS+kXdqbWST5pQNu7jmvcxOOpYi0Ya2OZYetTd4vU9Q8K+G4NPlYpKZpCoBYjFdlHbZZaydDdjt3Dbkdq6BCQuMcDvXRhXBx0VjiqObfvMkj3YIbjsCKfvymAPmFIJQcEA1IyZ6A884r01LsYWGxuTwe3WlZQTkE8dPeonJMh6+1Cvk81Sn0E4ieZnIHBpztmQHGeP1pSmQeBUZBUbif/AK1S2xlhACMtU4EZGCuaqocAHjBqQv6du9VdIVhxGwg8gelMlJYjj9KjEodirH6UjSYrLmTRVhjs0fORmqjyYkJPINWHDSA7VJA5P0qncKMnHArKpG+ppEbOAQGJ49QKzZZigO01YnIVTkVj3zlVyp5rKWmptBGfq8zbiTzXG6tccGug1C5fDB+lcZrU/wB7BrCaOunocr4guRIohUnMjbc+3f8ASqUrDGO1Q3MhmvnbOVj+UfU9aiunCpnNd1CPLG76mspdCreSYyM1jzyEmrFzNuJOaoSNk1uhCLM0L7o2IOMHHeuh0TWXWLY7sAPu46iub25p8W6NgV7VFWlGpGzOjD1/ZO0tjuY9XPnKmXLZy57YrTtZD9o8x5PLgYDqfmP+FcRDcRGRHUHP8an+lahuUuLiP95iMLkp0wR0ry6uGS20PbpzhON4s9Bub8tbMVwAPU8D3rip72a+u12DELscZHYdasW8x1ASW4cqhXllqGX7PasI4mLYwNo5PX+dc9Gmqbd9WVTjGF0joY5cWm6RCAq5wOgrPtZzZyboOUYFixPQk1SudWDTzQxH5cBPqc81XluiJViLhRnANVSpOO6JjTfU7CDUJfNkTIB8sMAa19D1Nj5ZZwTnj6jmuKed1v4Z0YNFswwzUdldTW8+XcxKXO1vc9PwrOvRjVg0kXGjeJ9P+B9bQhIZTgSDjPr6V3u4FT6V80+DPEcjqGbassThWHuP8a978O6tFqdijRt84HzKeCDW2T4pwvhau62Pls2wbpy9okbg5xS9CeKjJIUYINKHwOa+gvY8Sw/0pCpBoB44pC4IwaLgDcDI5zTHYdqVW3VFLJsORik3pcaQyeUK6mP9a5PxJqBP+jo3zNy2PSrfibXINKtGnlYbjwi55Y+lcHb37XkzXMjB2Y53DpXJUblod+GpW95mipPQqSParCQrGoG04PTPNV1kJUeWQR3/AM9quw5dcE8fWkk0dcpEEiAOCMgd89qcq5OVK7sevBq4nI2uVJ9aabdlUjoatMzZmy2MU8v72La/95RVOexeMkZLqTxgdK2xEWbJ4x3FNljJI8sKfU1Sm0Kxjx3NxaDEoUxjo3erdpdiV/3jjzO3BAI+lTyxRyAqyjbjtVB7WSIBYsM39407qQF8XJN2gbI29MHrVz7Qscw3D73GM1hA3AUYk2tnrVqCUEuspZnHTI/zmm4IVzajRjceYJAExyuatCSP7v8AB2A4rm/7SeDJlUtGDg/LzV2C/Ex+U5Q4xgdKnkaB2ZpXLGUFD86qcrjIP/16zdUujaablmZZpshWB5VB1P8ASrW4q4bJESfMzdgK898Ua62oag7RgBWyu0fwrngf1pSfKrLdjjHmfkiVZftlyrDgA7VB9K7tFmRAqIWUDg+aR+lcP4Yh8+5iwuR1Jx2rvWMscjhYEOTnLvz0+tdGChZNnNjp3aieQwT/AGq5Mz5YDhTJ0z64710MVwsRSPzOvUVwWlaootFjugUuAfkBHaujtZ4jPEZztMg6kd/Wvl50+ZW7H2eIpdzp2mjjG4fMW/SnxlXzxyeeax2lRxGF/iOBg1ahmELhmckY5rkrUFynmOmdDYhAwHTBFdv4ex5bH1rzqxuVZtx5+bAru/C9wHR1zyDmnl8eSvG5w42m1Bs6Tg0x87+OlKWGRSORivrTwxc96bk5zUZfbnNCtgckVKldjsI/yZwT16Uebu7U2VwFB9+lVvNHQ/hUzfK7FRVyyZM/xc1DL8oHvzioGfac5JFRSXPJXPWkpprUfL2JmcAMr4Poc1m3RPllgw+maSeVQ/zMc9qyry7I44IqJyTVmaxi73I769KRlc4I61nL4pvLULHDKu0HHzrnFUdTugpY5x681xupahl2IOa5avM1aD1PQwqgpLnV0enW/iSe5GbmchemEGAan+3AgBWIHUDNeJReIZrYjMbuu4cbshc8V1thr+9MyMVGNvHIzXz2InXelQ9etl6iuaC08jsb294IB+uawry7PIUZqib4Tj5WbGfvE0qRtguGGWPOea8t4Wcpc7RjGgobkM7BmyQSKkW33pwAakMRIBBB56etWIgdxwMcV0UsNLqOWi0Ky2vlp8g61XtNIkvNbtWx8kR3fVq3I4tw3EnGOlb3hmzG/ewGcV30Ie8oI5atTli2alnahCCq4rRAzKM4GeKcIyrgLz6Z5p6x7pF3cV9JThyKyPDlK4sq42gYA+lODjjC+3WpmRWBzjd2xVVlAdMfL9a6btO5G5PLGrEHAPHcVBKmzIXkdcVYRh0PNNfaeBz71q7MlFON8k9Q2e1OZN6NtzTXIXseTyaBLgdeM1jzLZlW7ES/K21+tIXI4OfpT5CD8yr35NRSZxnPP8ql+RQqEbmLA57c0PKobqKruWEhYk7RTJT5pGzjA5qL22KsTy3AVflxVF3+XcTweMUksboSwJI96q72IAboDTcm9y0kJNJ8pBrMu2TBJbHGPpVyWRSMDHrmsXVJ1jVhx9ahmkTm9cn2uyhsjsa8/wDEd55UDEHLHhR6ntXS67d7XZmPFefXFw17eNKw/dISI/c+tTTp87OuOmpFEnlxAE5PVj6nvWdfSfMQDWncPsjO4YNc/dtlyRXaC11K0pzUYWnYLGpkjPUUXsUMVKcB2qZI8HnipgvrxUOQFbyz1HWpI3KZ3Ln3FT+X6Ypuw55qb33LhUlTd4smtr+a2hbySxGOnpUVvqLJIJGBJz170gQg5QlT7UwtxtljDD1HBqOSLvodlPHNfESTXSyOcDaDzgetSAvcKABlgePeqr28UjDyJAjej8frVhLe4gjJkBYDkFD+tDUUtDupYtS0L63TKqRvuDJgbs45HamJdf6QHY5PABPQVUulkhjRmJcOM5qC3y5I3KOM/McVmqaaudsa0dkdbpl+0F6Z45NjgYdD/FivTvCvj9dNlgcEMkh2kbq8M89hsO/O3ipTKSAYGyrHcyk4wfUVyVcEpSU07NCq04VVaSumfcGheIrPVrdXhkXcRyhOCD71seauQM9q+KdB8VXmmPGTcTJs6MpJr0vSfjVJZKiXmy8QcFjlWH445rohiKsfcqK/mj53FZG1K9F38j6MEmMAEGjzAG6//Wrx+y+Nvh2YZkFzEe4KZFS3nxo8ORIfKa5nbHAWIj+ddca0Typ4CtB2lE9WmmCZK9O5rmvFfim00WyMk7hpD9yNT8zmvJNZ+M11dKyaTYiEEYEk53EfgK4mO7vdW1A3V7cvNOe7nPHoPSk5OW2iNKWFSd5nR6xeah4j1P7VPKBtP7uHkKo9BViwe9sJA0isP1BH1q5pSIY1WZBz3xmt+K0VY8hgVI4V+n51UKlla2h0Sgt0Q2GrJLKM5STv2/8A11uwXcci4Zdvuv8AhWFPoyOC8YZG9hkVSSO8tJD5bFl+uV/xFbKMZrQwk2tzuYSjj+FvdeDVtEdOjKV7cVxdnqjBsOSj/mDW7a6qCQH44+8ORn6VEqbQlJGvGSc5I9qjztk2tgM3TimNcq6/eyvcjkVNbbZI/m2nHQ5zWbVhqRDJbbQGCbjnscYqOSM4UBRk/pVtgSeex6A0+SJGQM6gleQe4pIq5mCIpH5bFc+gqOSySV42EmHXkBh1rTEZYhwQAPUdaiGxk3oC4J4J4xVKTQjD1C2IYAlgP9nkGoxCY2VR988exrfNuxO51Vkxkcc5qtq15badphuHjzMwIjXHQ/3vwraNRRV5ENNuyOI8Z+JZNMP9l2bZYjMzdfm/u/SuVthhEdiMnknuTVXV3FxdNMR1bvyav6Batf6hBEQ5jz85Xk4qNaj03Zomqcddkej+C4zBavcEjawC7R1wfftXWLnaPL8sr6FAxHtzzWFHYJFaL9mJeIkYDYBJB6cj/PrV+Aq8e7zTz6JkfnxXfCKirI8qpJzk5M+cTIbrYrSN5qkAEgZA74rdF9GZkhuH3vCNobb04rklfnkZpJ5Jx5Zhf5VbLDvivm6mHvrA+1oY5TtCq/md5DqUMdurIylFbGScGtKG+KKyuy7T8wVjnNeb219a+T9nkifeDuBLfxfStP8AtVbuG2UOV2OVkQ9R9BXJOnLZo7fYxlsei2V+FmhVSAjNkiuz8M6gI9R3E4Vjgkn1A/wrxq31fF3BsORhlkGcYYf4iuhsdbSORlMuG4ZT16+v41x1OanJSXQwrYP2kWu59CrICoJ/SpQyshx1rjPBmuHUbERTupuIxyQeGHY11UbfLzX0tCqqkeZbM+PxFCVGbhLdDnGflNMburZ56CleQgHnimCYBwWFaOyZiNZiAMgCopjuxinztjOMHNVZGI6VnN6WKihCp3nJJBFRDaGzIpbHvilMhB5P+NUru6Vc4P51EVZXL30K+oSZf5Bx+ZrA1K6VVPzDNSarqIRSQ2DXF6zqoAYu2Kzd2zppwGaveFicNwOtcVr+sW1hEzzyBR6dz9Kx/EvjaG2Z4bP99MDzjoPqa841K/udUuTLdvubsB0H0rppUHLV6I2clHRG+niyRtWaUJsgOAB3+prpLTXJ2ESQybYifmJ7e+a82SEnkVq6dNJCURj8vp6UsRhKctUj1cuzD2f7utt08j2PwxqW6SYM5ZRjaxPyk+1dVFdJKyIDubOCM8AV5PpuotarCjBngHIweD3rq/D+qq0TPKrGWTrhfuYNeLKjyt32PVr0VP34naxzf6S6A7ioHHarane6BT8wzn3rmZbovcwrC3yEFmK9eK3LEN9nJJZmZSwx2xSnSUVdHDUp21N6I5QlSCQMAV1mhw7LfPc8VyGlfdi3LtbGSO9dzpJJtUIGOK5sLHmxGvQ8fGe7GxopjOT6VHykoHXPNKrEkdhTFJDsepPAr6G97HkWJUXJyB9eaS6QtjGfrUe6Q/Kucmp8ExYf71bxSasS9CmFkQ/3hUsRODu65ofC5P50qlQpI/A0RVmDFZdufcdRUDRB149amyHxuNMVgOByDUzjd+QIr+VJtKqMnk/SqMjlZMHgH1rYDBSN9VLtIyS+Mnv7VMoaaMuMu5XGHQgc/WoVBjkIPAI6mml8SDZnBGKjupNqrgkmlzK1+xSXQdPK4Qg4yBgVkTztu+YYNXCzOMkn5eeRWfqEgyOnoKiV3qXFWKN1dY3etcvrF43ltuPata/nSNG3H5hXmXjjxJFZAwxsGuHGAM9Pc0knJ2RvBdTG8U6kZp/s8bHB++R6elZKjK/umxjse1Z8Nx5sm5jkk5J9avjKoTxiuqEeRWNG7lO+uGAKsKyzl2q1dMWkOeahQc5xQ2XEVI/aplj9ODT4gD161Y8shflIIrJs0RXCnHPSnFe2KkXAYAggn8ql8vnOPrU3EysEZeh/OnjB5IqXHbaTTfLPuKLiG7M8jFNaOpB8venr81K4FGSDPOKYnmwnMUjL9DWg0ZqN4uOlPm7hbsVn1C6K7H2Onoy1UZmJJ8tR9DWgYR1xTBCSTkU4uK2Raq1I6Jmf845xj8aeJHB6Vd8njgUvkZ7fpVc6LWIqraRBDczLlVOAanGXOWPJ9KUQc+tSpFjtUO3Qft6st5MRIu+au26FmAao4EJICjJ71p29vuOO47UrmerLVnbbypXPFddo9nhQzJz0JrK0i2TK5ODXc6TBiLIwaXMOxa0+A8bSAcZAzW9bKV+VhyfSobOAEguMnHUVdWMg5BLCrWpjJlqGMxplCD/sE8VHNbRPJu2tE/dh0P1p65YYDZb0NIkkikqQAR68itY6GLM690tJG3SR7iOjp1P1FZU1rLayE2sjH1Q8GurDrIuDhG9DyDSNACwaWIN2/wAmtY1GtyHFM5m01OSIgTAxlerc/wAq27S/jeI+aR82f3kQx+YpbvS0ky0I6/8ALN+h+hrHfTxCwIL2z+h5B/GrXJMmzR2FlKdmYnSVeoH8Q/Cp4pllYo46jkEYNcYJJICrhlYA8MOoPrWrZa+4AWbZLj04YVDpBzHSBVT5EYgDqOuKRAkseCqD1HaqtvfJcMNjAAj7pOG/wNX0RQflDEntjkVnyD5iFsJ87sFiQEuR2FeXeMdVN3fPtJAPGM52jsK6XxvrQjBsbdwdv+sYd29PwrzW4J3c96zk+Z26I2grLmK10oK8+teg+DtG8qyRygMrYYhz29sVznhyyW5vEeTbsX5cMSDk9MflXoNjFhmeAsrRLtKkcex56E/jXdh6dlzM4cTUu+VGmLcs8Ugh/wBWM7fQe4PanCFl42OnqCM/lweKdZXDzKsTl45PvfMOSPz/AJ0l4EklVtqKdoyrdQfxGa6TkPloMoPOQfalDD1zWJFcyQfLMpdP1FW4blHPyPu/2TwRXjum0e8ppl2QLJjco9jUEyyed5kUzKcYIPNKJw4PPT8xTSS3I5rNxXU3p4idP4GKl7cQ3bXDYZjyw98Y/WrTapGsyzxySRs/yspxwPp6VRIzVeWNXPKispUYydzvpZpOL99XPT/DHiY2lzG6TBCuCATxn/A17d4d8TW2qQARyL5w+8melfH6O8ePLdgB0Ga1NP8AEWpWE6S2twySJjk85rKlQnRleD0Ixc8NjFq7M+xzONxBOe+aa0oyAD+Jr5/0z40TxRomqWXmEDBaM7T9a6a1+Mfh6RQJHuIj/txE4/KutSb3R4k8K47NP5nrRmB4PWqUl2oDDIHpXmcnxb8PAgC6cnuRG3+FYms/FzRojiz8+5J/uoVA/OndvoQsPLqerXF+B3wRXOavrEcKs7SKqjrk4rxHV/ivq1yT9kt4rdOmWJc/0rh9W1rVNWYtfXksoJztzgflVKnJ7mkacY7nq3iv4jWFs7pbE3M44xGeAfc15NrviTUtYkPmymOIniNDgfj61m+XnpT0iYHkZFbQpwgXzPZaFZI8nkVOluDzVmOHd2/Cp44O2OKcqg4xIYbU9RzVqOAIQxHNW4Y1VcsDx6VOY89ORWLm2aWILZniJwxK9cVr2+ouyloC8Ui8535wfXB61miME4B2n0qeKIpz+B461hUgpanfhcbKj7r1R0VhrL7YgWLTAcrjr7V2em68iRo0jBc8HJAI9sdq8ogjEVwGJIAGPxq3aanNHctIVDAgk55DHv8ApXLOi9ontp0sQrxPb9L1US3iHBCj1+nFem+H51nsRg9B3718++HL8Xhl8g52Sja2eSMZGa9P8H64vniLcArfLz615lGTo4jXqeNmGEvF8vQ9FwNgGOetN4H3c0sFwsqj1IpJFIwfX0r6ONmro+ZejsxGcpyMGp45FcDjmqjhAW3npzinRSptHtxmqU7MTVyaZBkkYzVG4LI3HA9KuPIVbggg1VuB5h4B6daU3fYFpuNWVjHjAzSxZxhuMd6rvGwQKCcg8H1pQ7BQrZ+uaSb6ja7Fp23Dkj1pjsPLOD1qvJnYCDj171FOzlCPTv60pVLX0BIik2hsk0yRFkTJ496iupAqgDJaqM10Yx84wKjVbmlr7E0ziJThh055rB1C4+8WI2gVBqutQW1tNJNIqIozuJwAK8V8Y/Ep5/MtdGJIPBnP9BVRTnpE2hTe7Nzx94vt9NEltbMJbt/4Qfu+5rx+4nlu53mmYvIxySagkeSWRpJWLyMcksck1LFHkcV1QpqmjR6qxLA0kbAjmtVLwCLDcMapwxHIJFSTxhhgDNEpJijFolyH5FTJbggHpWcu+A8E496u21yM4JwaxkmtjZT7k/lYOcfiKkUMOQcj9alhCyHrg1N5Q75z6isrl3ItqFfmFP2Dbwcil2FRn7w9RThgn0NIGRqqtxxmhoyoz1/CneXyWWlViSRjp60BchO0nkdaVVUZ21OQGJG1gR0NN8vaSF5NAEZx+NAG7qKkHzdRTtpbtxSBELRgjgGmeVz0q3sPb0p2zAw1IZSEGemacIHFXUjGeMiphHjHB5pJsqxRW3JwX5+lSR24DAt+Rq/5ecCp0tTg45NNMLFAW+GyExn0rX06yDSKOvfn1qS2sJmPOD7V0OnWfmAbjhv9oU7jSLGk2C5DlOK63S4FRQqkbSaztNt5CowoI9h1rZtgqbFIx61O43Y0o1VAOoHqORVmNBtyp+hU1BE20Yfr64q7bMsakPjnvjFaRdjnmis4D5BBRh0YdvwqQq4HOSv94DJq1sWQkoeRwaikWWEgoMitFIyaEij3DOAfY08Eh9q5HHTPSmpc7mJeMqw7joasxSrj5wG9CKpMlob5oHEyEf7QH9KcUSZPlKSL/n8qJjlgei+4zUbIY3LxfmD0qlYkz7rTLVpSXjeJhyGIyvPoaoyaEpBMUqsf4TnBroYrgsAs67t3TA4NOa1tScBdrHuelaKckTZM5iKK7tH/AHqtj86k1DxI2iWqmSVt8+VjU87ePve1b08At4nmeUrDGCx3cjHtXi/i28l1LVJLhjhOir6AdBWjmpKz3JUXe/Q0ZZzcDzWJOecmorGB7y7EQBwe4GcDvVaGbdbRjHUAfWu+8HaV5SgvH+/fB+b0x0/zmsaVLml5F1q3JHTdmxp+kQtaLHHsKBVxx8x46+4/SpYB9mZ1t9zB33bSuCPUH/P+NX4rY/vDKwVQCoLEbe9TpErRlGQIAx3SdQ3TBJr0DzbkbQyXSRyQ5Ck7dp/hx168/wA6iO1D5bmHKfL80hz/AD/nV2ON7UZ3lTjAwDlT0z7/AI1ejmgiXDBcn5iVGQc9+MUyT48nt0fOcA1mXVmF5HB7GuhubZZM/wALfoaozQSICjDcv6V48Jn0EomKs0kZw+WHr3FWEu/fJ/WnTWxIPljPqvcfSqbxds4atXaRlqi604bn09OtOWQMvNZW506fMKmiuELDLYNQ4FKZoDGOMGonAxwKQMp6cUoOQOxrIsiZD9R6GmPCDyOParqJkZyD7UxhzinewrXM94SKYUB4IyfWtB0PYAik+zg8g/hTUw5DO8sjpzQYfwq/5WO3NHl5PIp84+QoiHJwRj3qT7KQMj9KvJEM9Kmjg9c59KOcFGxnomMZH5VegiyBvX5auQ2nOSKWZdoIx+VS2BXfGcIfwNKit75pAN33wcetSKpVvlOcdqRVxnlBnyU5Hf1qYDJ+Qj3BqQEN1ypo8vvikCGMgYYK8+oqF4pMhkOGB/Mehq0ucYHFKfVhila5pTqSpu8WR6VcPaXqlWKp0YdsdjxXc6DqqHcfOAfOTnufWuDlUspOKhWWWIBoyQwOQehFcuIwqq6rc9GGPUlapofUvhDxAmq2KkEC4i4YD+L0Irqop/MXnr6V8teHfFz6bOkySGCcEcfwn/61e1eH/Gljq8aFJkjuMYKbv5U6VaVP3amh5OMwib56Wq/I7l1D/eOcDpVST5D8n3feq9vqaH5ZCM9zUryIULZHPINdTcZq6PN5XF2Zbim+UEYP40+SUSKDkcDGAKxUuGU5QEj0FOhuiVyeg96cZO1hOBblm456fSq0k6lSXY+oFQyXSliGI6cVnajIECuBhR1x0pNuxcYdDWku9sOABkc89qr/AGoFf3h5ri9f8X6ZpsB+03Ucb9gWyx/CvONc+KpCldLiMrA4DSAgUo8zfuo1VB2u9D2rVNXht4iWZQB3bgV5f4v+KVhYrJDbH7VdDjYnCr9TXkGt+J9Y1l2F5dyCM/8ALNDtUVi+WzksfmJ5JPWuiNL+dmijGOxpeIPEuq6/Iftk7CEnIhQ4Qfh3rISEmrUUHt+FWo7Y8cVrzqKsiuVvcoxwsT0q9DB69u9WktSTwM+1Tra4UZHA61jKpctRGRR4iGRx60NbswJztx04rQiiLYAXgfrUwjUjGG9wTWfMwsY5hIGCSfr2qGS2Y8gZ+nFa7w4LAjgH86hdDjAHvQpsHBMz42ngIIBZPetC2vFb5ScHuKhKFCCSeO3rUbRqxJGQ1NtSFZo112M2c4PtUphBGScenpWJFLJF3yPetG3vVcDJ6dqhpoalcnKbM7hx+dAUdTjFWIpg6k9aXyUOCAVPqKQyFQCBgU1x/s5+lT+WVbP3l6ZFIyq4IXI9xxii4yHaSPSlWMgcZqSMNjDfNnvjmlHmrKPkyh4yCOPwqWP1I/LG7OORUqQk8gA1PHGxO4Ywf4SKlWFhgrgeuKExlZEYE7h9KnCE8d/Splxu2vkN/OrkMHAbjB455p2GUo4ixwyke9a1pZvuAAB78VNbWbE5KjPUAV0WmWY4O3BxUvQaGadYr8u4A/WultLFNo+Vcenem2tmAgYjmte2i3FT2FRcGxsVjhMqMDrkdqti0yVGAR9KuRABcEVOkOSCCQewq4oyc7FKO1CtkDkc9KcyAjLBcdOKvbCx6YYdj3qMICCQMD9K11I5itCSsmc5HvVoSq65PHb2pjxHAxgH6cGozEY+hIPoaSYNJkpRHOFxuPY0x4SBgrgdiOopiklzlSQOTxwPxqzG7EY5Psf8au9iWiKGR1PzEuPcYIqyvlsuFIH14phVWPB2sexpGiGAJVz6EVafczaXQVoHXnfx2xSFHJAwDn1ohY+ZiOUMB1B4I/Cq2v6gNN05mLBbiQFUHp71pe2rIs9jl/HOvLt/s62clEb96QeC3p+Fee6km2PPGau3LM8zO/PGaatnNqtwltbrlm5OPTvUwvKVy5WjEv8AgO0F1MtxKEKRNhVcEgn1r0+0Ux5CEk8EMfm2juOD9fT8elYWh2cGnoRawtsBRXXvGSMbh/kk/mK3IleCAPNlFjU5BIUcZwTnIAPv/wDq9GMeVWR5k5uTuy6uzdEZYzkZ2/NnPt/nj61et4juG7mAANsTGPwrNsrlTA3lptRiWkzg49ST079//r1LC0qSp5M4XKZCsOD/ACPtVmZeYMqq3zmHduUZzgehB4xQkNlMztKqbg2MMeV745PvSwyxSx7F2rJHkOmPuk/z/KrARWGY3STscgEg+nIJoA//2Q==',1,1),(5,'Peras','Peras importadas tipo gala.',2,1,'1 libra (16 onzas)',13,10,50,'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',1,1);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proveedores` (
  `Id_Proveedor` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) DEFAULT NULL,
  `Contacto` varchar(45) DEFAULT NULL,
  `Telefono` varchar(45) DEFAULT NULL,
  `Correo` varchar(100) DEFAULT NULL,
  `Direccion` text,
  `Latitud` decimal(10,8) DEFAULT NULL,
  `Longitud` decimal(11,8) DEFAULT NULL,
  `Estado` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`Id_Proveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES (1,'Condimentos Co.','Marcos Santos','90902312','condimentcomp@gmail.com','Blvd. Morazán Edificio No. 25 Torre Cilueña',14.10000000,-87.21670000,1);
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles_usuarios`
--

DROP TABLE IF EXISTS `roles_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles_usuarios` (
  `Id_Rol` int(11) NOT NULL AUTO_INCREMENT,
  `Rol` varchar(100) NOT NULL,
  `Comentario` text,
  `Fecha_Creacion` datetime DEFAULT CURRENT_TIMESTAMP,
  `Fecha_Actualizacion` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id_Rol`),
  UNIQUE KEY `Rol` (`Rol`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles_usuarios`
--

LOCK TABLES `roles_usuarios` WRITE;
/*!40000 ALTER TABLE `roles_usuarios` DISABLE KEYS */;
INSERT INTO `roles_usuarios` VALUES (1,'Administrador','Usuario Administrativo (Solamente ingresados desde Mantenimiento de Usuarios)','2021-11-06 14:32:12','2021-11-06 14:32:12'),(2,'Cliente','Usuario Normal (Auto-Registro o mediante Mantenimiento de Clientes)','2021-11-06 14:33:20','2021-11-06 14:33:20');
/*!40000 ALTER TABLE `roles_usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `Id_Usuario` int(11) NOT NULL AUTO_INCREMENT,
  `Usuario` varchar(120) NOT NULL,
  `Correo` varchar(120) NOT NULL,
  `Clave` varchar(100) NOT NULL,
  `Token` varchar(200) DEFAULT NULL,
  `Id_Rol` int(11) NOT NULL,
  `Estado` tinyint(4) DEFAULT '1',
  `Fecha_Creacion` datetime DEFAULT CURRENT_TIMESTAMP,
  `Fecha_Actualizacion` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id_Usuario`),
  UNIQUE KEY `Usuario` (`Usuario`),
  UNIQUE KEY `Correo` (`Correo`),
  KEY `FK_Usuario_Id_Rol` (`Id_Rol`),
  CONSTRAINT `FK_Usuario_Id_Rol` FOREIGN KEY (`Id_Rol`) REFERENCES `roles_usuarios` (`Id_Rol`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'mmondragon','miriamdragon927@gmail.com','12345','c573fa2036976e8c9e9b5ced550f7c5f5c22c82a8cb2237d0679ca88db6464eac60da96345513964',1,1,'2021-11-06 14:56:42','2021-11-13 11:26:31'),(2,'kpalma','karolpalma@gmail.com','54321','e71e6164a3ae0113b167d7f9cf3f339e5b2ec36d',1,1,'2021-11-06 14:58:43','2021-11-13 11:30:18'),(3,'mguarda','manuelmaria@gmail.com','12345','f547325323e903d34c92b084da55e51e683083e3',2,1,'2021-11-06 15:06:11','2021-11-13 11:35:14'),(4,'1','1','1','356a192b7913b04c54574d18c28d46e6395428ab',1,0,'2021-11-11 13:27:56','2021-11-13 11:30:18'),(11,'mespinal','marcos@gmail.com','12345','2dd8c4300b6775716994062a2d3fe579c19e1b2d8cb2237d0679ca88db6464eac60da96345513964',1,1,'2021-11-11 15:35:17','2021-11-21 21:58:29'),(12,'mpaula','correo@gmail.com','12345','8cb2237d0679ca88db6464eac60da96345513964',2,0,'2021-11-12 10:09:49','2021-11-12 10:57:58'),(13,'mmargarita','miriamdragon900@gmail.com','12345','cbc80bccf1f1612975b8a4ef365ce17e926495588cb2237d0679ca88db6464eac60da96345513964',2,1,'2021-11-22 15:40:05','2021-11-22 15:40:05');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `v_administrador`
--

DROP TABLE IF EXISTS `v_administrador`;
/*!50001 DROP VIEW IF EXISTS `v_administrador`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `v_administrador` AS SELECT 
 1 AS `Id_Admin`,
 1 AS `Identificacion`,
 1 AS `Nombres`,
 1 AS `Apellidos`,
 1 AS `Telefono`,
 1 AS `Fecha_Nacimiento`,
 1 AS `Id_Usuario`,
 1 AS `Usuario`,
 1 AS `Correo`,
 1 AS `Clave`,
 1 AS `Estado`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_administradores`
--

DROP TABLE IF EXISTS `v_administradores`;
/*!50001 DROP VIEW IF EXISTS `v_administradores`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `v_administradores` AS SELECT 
 1 AS `Id_Admin`,
 1 AS `Nombres`,
 1 AS `Apellidos`,
 1 AS `Usuario`,
 1 AS `Estado`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_bitacora`
--

DROP TABLE IF EXISTS `v_bitacora`;
/*!50001 DROP VIEW IF EXISTS `v_bitacora`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `v_bitacora` AS SELECT 
 1 AS `Id_Registro`,
 1 AS `Usuario`,
 1 AS `Tipo_Dispositivo`,
 1 AS `Sistema_Operativo`,
 1 AS `Fecha`,
 1 AS `Hora`,
 1 AS `Detalle`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_cliente`
--

DROP TABLE IF EXISTS `v_cliente`;
/*!50001 DROP VIEW IF EXISTS `v_cliente`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `v_cliente` AS SELECT 
 1 AS `Id_Cliente`,
 1 AS `Identificacion`,
 1 AS `Nombres`,
 1 AS `Apellidos`,
 1 AS `Telefono`,
 1 AS `Fecha_Nacimiento`,
 1 AS `Direccion`,
 1 AS `Latitud`,
 1 AS `Longitud`,
 1 AS `Id_Usuario`,
 1 AS `Usuario`,
 1 AS `Correo`,
 1 AS `Clave`,
 1 AS `Estado`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_clientes`
--

DROP TABLE IF EXISTS `v_clientes`;
/*!50001 DROP VIEW IF EXISTS `v_clientes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `v_clientes` AS SELECT 
 1 AS `Id_Cliente`,
 1 AS `Nombres`,
 1 AS `Apellidos`,
 1 AS `Usuario`,
 1 AS `Estado`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_descuento`
--

DROP TABLE IF EXISTS `v_descuento`;
/*!50001 DROP VIEW IF EXISTS `v_descuento`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `v_descuento` AS SELECT 
 1 AS `Id_Descuento`,
 1 AS `Nombre_Descuento`,
 1 AS `Valor_Descuento`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_detalles_facturados_compras`
--

DROP TABLE IF EXISTS `v_detalles_facturados_compras`;
/*!50001 DROP VIEW IF EXISTS `v_detalles_facturados_compras`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `v_detalles_facturados_compras` AS SELECT 
 1 AS `Id_Factura`,
 1 AS `Id_Producto`,
 1 AS `Nombre`,
 1 AS `Cantidad_Unidades`,
 1 AS `Precio`,
 1 AS `Monto`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_detalles_facturados_ventas`
--

DROP TABLE IF EXISTS `v_detalles_facturados_ventas`;
/*!50001 DROP VIEW IF EXISTS `v_detalles_facturados_ventas`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `v_detalles_facturados_ventas` AS SELECT 
 1 AS `Id_Factura`,
 1 AS `Id_Producto`,
 1 AS `Nombre`,
 1 AS `Cantidad_Unidades`,
 1 AS `Precio`,
 1 AS `Monto`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_encabezado_factura_compras`
--

DROP TABLE IF EXISTS `v_encabezado_factura_compras`;
/*!50001 DROP VIEW IF EXISTS `v_encabezado_factura_compras`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `v_encabezado_factura_compras` AS SELECT 
 1 AS `Id_Factura`,
 1 AS `Fecha`,
 1 AS `Hora`,
 1 AS `Id_Admin`,
 1 AS `Nombre_Administrador`,
 1 AS `Id_Usuario`,
 1 AS `Correo`,
 1 AS `Metodo_Pago`,
 1 AS `Latitud`,
 1 AS `Longitud`,
 1 AS `SubTotal`,
 1 AS `Total`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_encabezado_factura_ventas`
--

DROP TABLE IF EXISTS `v_encabezado_factura_ventas`;
/*!50001 DROP VIEW IF EXISTS `v_encabezado_factura_ventas`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `v_encabezado_factura_ventas` AS SELECT 
 1 AS `Id_Factura`,
 1 AS `Fecha`,
 1 AS `Hora`,
 1 AS `Id_Cliente`,
 1 AS `Nombre_Cliente`,
 1 AS `Id_Usuario`,
 1 AS `Correo`,
 1 AS `Metodo_Pago`,
 1 AS `Latitud`,
 1 AS `Longitud`,
 1 AS `SubTotal`,
 1 AS `Total`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_impuesto`
--

DROP TABLE IF EXISTS `v_impuesto`;
/*!50001 DROP VIEW IF EXISTS `v_impuesto`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `v_impuesto` AS SELECT 
 1 AS `Id_Impuesto`,
 1 AS `Nombre_Impuesto`,
 1 AS `Valor_Impuesto`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_llenardescuentos`
--

DROP TABLE IF EXISTS `v_llenardescuentos`;
/*!50001 DROP VIEW IF EXISTS `v_llenardescuentos`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `v_llenardescuentos` AS SELECT 
 1 AS `Id_Descuento`,
 1 AS `Nombre_Descuento`,
 1 AS `Porcentaje_Descuento`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_llenarimpuestos`
--

DROP TABLE IF EXISTS `v_llenarimpuestos`;
/*!50001 DROP VIEW IF EXISTS `v_llenarimpuestos`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `v_llenarimpuestos` AS SELECT 
 1 AS `Id_Impuesto`,
 1 AS `Nombre_Impuesto`,
 1 AS `Porcentaje_Impuesto`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_llenarproveedores`
--

DROP TABLE IF EXISTS `v_llenarproveedores`;
/*!50001 DROP VIEW IF EXISTS `v_llenarproveedores`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `v_llenarproveedores` AS SELECT 
 1 AS `Id_Proveedor`,
 1 AS `Nombre`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_productos`
--

DROP TABLE IF EXISTS `v_productos`;
/*!50001 DROP VIEW IF EXISTS `v_productos`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `v_productos` AS SELECT 
 1 AS `Id_Producto`,
 1 AS `Nombre`,
 1 AS `Descripcion`,
 1 AS `Id_Categoria`,
 1 AS `Categoria`,
 1 AS `Id_Proveedor`,
 1 AS `Proveedor`,
 1 AS `Cantidad_Unidad`,
 1 AS `Unidades_Almacen`,
 1 AS `Cantidad_Minima`,
 1 AS `Cantidad_Maxima`,
 1 AS `Foto`,
 1 AS `Estado`,
 1 AS `Precio`,
 1 AS `Id_Impuesto`,
 1 AS `Nombre_Impuesto`,
 1 AS `Porcentaje_Impuesto`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_proveedores`
--

DROP TABLE IF EXISTS `v_proveedores`;
/*!50001 DROP VIEW IF EXISTS `v_proveedores`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `v_proveedores` AS SELECT 
 1 AS `Id_Proveedor`,
 1 AS `Nombre`,
 1 AS `Contacto`,
 1 AS `Telefono`,
 1 AS `Correo`,
 1 AS `Direccion`,
 1 AS `Estado`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'sales_app'
--

--
-- Dumping routines for database 'sales_app'
--
/*!50003 DROP FUNCTION IF EXISTS `CalcularDescuentos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `CalcularDescuentos`(tipoFactura TINYINT, varIdFactura INT(11)) RETURNS decimal(9,2)
    DETERMINISTIC
BEGIN
	DECLARE descuentos DECIMAL(9,2);
    IF tipoFactura = 0 THEN
    -- SI LA FACTURA DE ORIGEN ES DE VENTA
		SET descuentos = 
		(
		SELECT SUM(((DF.Cantidad_Unidades * HPP.Precio) * HPD.Valor_Descuento)) AS Descuentos
		FROM Detalles_Facturas_Ventas AS DF INNER JOIN Historico_Precios_Productos AS HPP ON DF.Id_Producto = HPP.Id_Producto
			 INNER JOIN Historico_Precios_Descuentos AS HPD ON DF.Id_Descuento = HPD.Id_Descuento
			 INNER JOIN Facturas_Ventas AS F ON DF.Id_Factura = F.Id_Factura
		WHERE DF.Id_Factura = varIdFactura AND 
							   (CONCAT(F.Fecha, ' ', F.Hora) >= HPD.Fecha_Inicio AND 
								CONCAT(F.Fecha, ' ', F.Hora) <= IFNULL(HPD.Fecha_Fin, (CONCAT(F.Fecha, ' ', F.Hora))))
								AND 
							   (CONCAT(F.Fecha, ' ', F.Hora) >= HPP.Fecha_Inicio AND 
								CONCAT(F.Fecha, ' ', F.Hora) <= IFNULL(HPP.Fecha_Fin, (CONCAT(F.Fecha, ' ', F.Hora))))
		GROUP BY F.Id_Factura
		);
        
	ELSEIF tipoFactura = 1 THEN
    -- SI LA FACTURA DE ORIGEN ES DE COMPRA
        SET descuentos = 
		(
		SELECT SUM(((DF.Cantidad_Unidades * HPP.Precio) * HPD.Valor_Descuento)) AS Descuentos
		FROM Detalles_Facturas_Compras AS DF INNER JOIN Historico_Precios_Productos AS HPP ON DF.Id_Producto = HPP.Id_Producto
			 INNER JOIN Historico_Precios_Descuentos AS HPD ON DF.Id_Descuento = HPD.Id_Descuento
			 INNER JOIN Facturas_Compras AS F ON DF.Id_Factura = F.Id_Factura
		WHERE DF.Id_Factura = varIdFactura AND 
							   (CONCAT(F.Fecha, ' ', F.Hora) >= HPD.Fecha_Inicio AND 
								CONCAT(F.Fecha, ' ', F.Hora) <= IFNULL(HPD.Fecha_Fin, (CONCAT(F.Fecha, ' ', F.Hora))))
								AND 
							   (CONCAT(F.Fecha, ' ', F.Hora) >= HPP.Fecha_Inicio AND 
								CONCAT(F.Fecha, ' ', F.Hora) <= IFNULL(HPP.Fecha_Fin, (CONCAT(F.Fecha, ' ', F.Hora))))
		GROUP BY F.Id_Factura
		);
	END IF ;
    
    RETURN descuentos;
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `CalcularImpuestos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `CalcularImpuestos`(tipoFactura TINYINT, varIdFactura INT(11)) RETURNS decimal(9,2)
    DETERMINISTIC
BEGIN
	DECLARE impuestos DECIMAL(9,2);
    IF tipoFactura = 0 THEN
    -- SI LA FACTURA DE ORIGEN ES DE VENTA
		SET impuestos = 
		(
		SELECT SUM(((DF.Cantidad_Unidades * HPP.Precio) * HPI.Valor_Impuesto)) AS Impuestos
		FROM Detalles_Facturas_Ventas AS DF INNER JOIN Historico_Precios_Productos AS HPP ON DF.Id_Producto = HPP.Id_Producto
			 INNER JOIN Historico_Precios_Impuestos AS HPI ON DF.Id_Impuesto = HPI.Id_Impuesto
			 INNER JOIN Facturas_Ventas AS F ON DF.Id_Factura = F.Id_Factura
		WHERE DF.Id_Factura = varIdFactura AND 
							   (CONCAT(F.Fecha, ' ', F.Hora) >= HPI.Fecha_Inicio AND 
								CONCAT(F.Fecha, ' ', F.Hora) <= IFNULL(HPI.Fecha_Fin, (CONCAT(F.Fecha, ' ', F.Hora))))
								AND 
							   (CONCAT(F.Fecha, ' ', F.Hora) >= HPP.Fecha_Inicio AND 
								CONCAT(F.Fecha, ' ', F.Hora) <= IFNULL(HPP.Fecha_Fin, (CONCAT(F.Fecha, ' ', F.Hora))))
		GROUP BY F.Id_Factura
		);
	ELSEIF tipoFactura = 1 THEN
    -- SI LA FACTURA DE ORIGEN ES DE COMPRA
        SET impuestos = 
		(
		SELECT SUM(((DF.Cantidad_Unidades * HPP.Precio) * HPI.Valor_Impuesto)) AS Impuestos
		FROM Detalles_Facturas_Compras AS DF INNER JOIN Historico_Precios_Productos AS HPP ON DF.Id_Producto = HPP.Id_Producto
			 INNER JOIN Historico_Precios_Impuestos AS HPI ON DF.Id_Impuesto = HPI.Id_Impuesto
			 INNER JOIN Facturas_Compras AS F ON DF.Id_Factura = F.Id_Factura
		WHERE DF.Id_Factura = varIdFactura AND 
							   (CONCAT(F.Fecha, ' ', F.Hora) >= HPI.Fecha_Inicio AND 
								CONCAT(F.Fecha, ' ', F.Hora) <= IFNULL(HPI.Fecha_Fin, (CONCAT(F.Fecha, ' ', F.Hora))))
								AND 
							   (CONCAT(F.Fecha, ' ', F.Hora) >= HPP.Fecha_Inicio AND 
								CONCAT(F.Fecha, ' ', F.Hora) <= IFNULL(HPP.Fecha_Fin, (CONCAT(F.Fecha, ' ', F.Hora))))
		GROUP BY F.Id_Factura
		);
	END IF ;
    
    RETURN impuestos;
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `CalcularSubtotal` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `CalcularSubtotal`(tipoFactura TINYINT, varIdFactura INT(11)) RETURNS decimal(9,2)
    DETERMINISTIC
BEGIN
	DECLARE subtotal DECIMAL(9,2);
    IF tipoFactura = 0 THEN
    -- SI LA FACTURA DE ORIGEN ES DE VENTA
		SET subtotal = 
		(
		SELECT SUM(DF.Cantidad_Unidades * HPP.Precio) AS Subtotal
		FROM Detalles_Facturas_Ventas AS DF INNER JOIN Historico_Precios_Productos AS HPP ON DF.Id_Producto = HPP.Id_Producto
		WHERE DF.Id_Factura = varIdFactura AND HPP.Fecha_Fin IS NULL
		GROUP BY DF.Id_Factura
		);
        
	ELSEIF tipoFactura = 1 THEN
    -- SI LA FACTURA DE ORIGEN ES DE COMPRA
        SET subtotal = 
		(
		SELECT SUM(DF.Cantidad_Unidades * HPP.Precio) AS Subtotal
		FROM Detalles_Facturas_Compras AS DF INNER JOIN Historico_Precios_Productos AS HPP ON DF.Id_Producto = HPP.Id_Producto
		WHERE DF.Id_Factura = varIdFactura AND HPP.Fecha_Fin IS NULL
		GROUP BY DF.Id_Factura
		);
	END IF ;
    
    RETURN subtotal;
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `CalcularTotal` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `CalcularTotal`(tipoFactura TINYINT, varIdFactura INT(11)) RETURNS decimal(9,2)
    DETERMINISTIC
BEGIN
	DECLARE total DECIMAL(9,2);
    IF tipoFactura = 0 THEN
    -- SI LA FACTURA DE ORIGEN ES DE VENTA
		SET total = 
		(
		SELECT SUM((DF.Cantidad_Unidades * HPP.Precio) - ((DF.Cantidad_Unidades * HPP.Precio) * HPD.Valor_Descuento) + 
				   ((DF.Cantidad_Unidades * HPP.Precio) * HPI.Valor_Impuesto)) AS Total
		FROM Detalles_Facturas_Ventas AS DF INNER JOIN Historico_Precios_Productos AS HPP ON DF.Id_Producto = HPP.Id_Producto
			 INNER JOIN Historico_Precios_Descuentos AS HPD ON DF.Id_Descuento = HPD.Id_Descuento
			 INNER JOIN Historico_Precios_Impuestos AS HPI ON DF.Id_Impuesto = HPI.Id_Impuesto
		WHERE DF.Id_Factura = varIdFactura AND HPP.Fecha_Fin IS NULL AND HPD.Fecha_Fin IS NULL AND HPI.Fecha_Fin IS NULL
		GROUP BY DF.Id_Factura
		);
	ELSEIF tipoFactura = 1 THEN
    -- SI LA FACTURA DE ORIGEN ES DE COMPRA
        SET total = 
		(
		SELECT SUM((DF.Cantidad_Unidades * HPP.Precio) - ((DF.Cantidad_Unidades * HPP.Precio) * HPD.Valor_Descuento) + 
				   ((DF.Cantidad_Unidades * HPP.Precio) * HPI.Valor_Impuesto)) AS Total
		FROM Detalles_Facturas_Compras AS DF INNER JOIN Historico_Precios_Productos AS HPP ON DF.Id_Producto = HPP.Id_Producto
			 INNER JOIN Historico_Precios_Descuentos AS HPD ON DF.Id_Descuento = HPD.Id_Descuento
			 INNER JOIN Historico_Precios_Impuestos AS HPI ON DF.Id_Impuesto = HPI.Id_Impuesto
		WHERE DF.Id_Factura = varIdFactura AND HPP.Fecha_Fin IS NULL AND HPD.Fecha_Fin IS NULL AND HPI.Fecha_Fin IS NULL
		GROUP BY DF.Id_Factura
		);
	END IF ;
	RETURN total;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Anular_Factura_Ventas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Anular_Factura_Ventas`(
	IN varIdFactura INT(11),
    IN varUsuarioActual INT(11),
    IN varTipoDispositivo varchar(50),
    IN varSistemaOperativo varchar(50)
)
BEGIN
  DECLARE cantidadActual INT(11);
  DECLARE productoDetalle VARCHAR(45);
  DECLARE cantidadDetalle INT;
  DECLARE done BOOLEAN DEFAULT FALSE;
 
  DECLARE productosCursor CURSOR FOR 
	SELECT Id_Producto, Cantidad_Unidades 
    FROM Detalles_Facturas_Ventas 
    WHERE Id_Factura = varIdFactura;
  DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
  
 IF varIdFactura = '' || varIdFactura = NULL || varUsuarioActual = '' || varUsuarioActual = NULL THEN
	SELECT 'LOS PARAMETROS NO PUEDEN SER NULOS - NO ANULADO EN FACTURAS' AS 'ERROR';
ELSE
	IF (SELECT COUNT(*) FROM Facturas_Anuladas WHERE Id_Factura = varIdFactura) = 0 THEN
		-- Suma de los productos devueltos --
		OPEN productosCursor;
		detalle_loop: LOOP

		FETCH productosCursor INTO productoDetalle, cantidadDetalle;
			IF done THEN
				LEAVE detalle_loop;
			END IF;
				SET cantidadActual = (SELECT `Unidades_Almacen` FROM Productos WHERE Id_Producto = productoDetalle);
				UPDATE Productos
				SET `Unidades_Almacen` = (cantidadActual) + cantidadDetalle
				WHERE Id_Producto = productoDetalle;
				SET cantidadActual = 0;
		END LOOP;
		CLOSE productosCursor;


		INSERT INTO Facturas_Anuladas(`Id_Factura`, `Fecha_Anulacion`, `Hora_Anulacion`, `Id_Usuario_Anulador`)
        VALUES(varIdFactura, CURDATE(), CURTIME(), varUsuarioActual);

		CALL Insert_Bitacora(varUsuarioActual, varTipoDispositivo, varSistemaOperativo, CONCAT('Anulación de factura ', varIdFactura));
	END IF;
END IF;
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Deactivate_Administrador` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Deactivate_Administrador`(
	IN varIdAdmin INT(11),
    IN varUsuarioActual INT(11),
    IN varTipoDispositivo varchar(50),
    IN varSistemaOperativo varchar(50)
)
BEGIN
		DECLARE V_USUARIOID INT;
		IF varIdAdmin = NULL || varIdAdmin = 0 THEN
			SELECT 'LOS PARAMETROS NO PUEDEN SER NULOS - NO DESACTIVADO EN ADMINISTRADORES' AS 'ERROR';
		ELSE
			SET V_USUARIOID = (SELECT Id_Usuario FROM Administradores WHERE Id_Admin = varIdAdmin);
			
			UPDATE Usuarios
			SET `Estado` = 0
			WHERE `Id_Usuario` = V_USUARIOID;
            
			CALL Insert_Bitacora(varUsuarioActual, varTipoDispositivo, varSistemaOperativo,
            CONCAT('Desactivación de administrador. Usuario: ', (SELECT Usuario FROM Usuarios WHERE Id_Usuario = V_USUARIOID),': ', 
			(SELECT CONCAT(Nombres, ' ', Apellidos) FROM Administradores WHERE Id_Admin = varIdAdmin)));
		END IF;
	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Deactivate_Categoria` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Deactivate_Categoria`(
	IN varIDCategoria INT,
    IN varUsuarioActual INT(11), 
    IN varTipoDispositivo varchar(50),
    IN varSistemaOperativo varchar(50)
)
BEGIN
 IF varIDCategoria = NULL THEN
	SELECT 'LOS PARAMETROS NO PUEDEN SER NULOS - NO DESACTIVADO EN CATEGORIAS' AS 'ERROR';
ELSE
	UPDATE Categorias
    SET `Activo` = 0
    WHERE `Id_Categoria` = varIdCategoria;
    
    CALL Insert_Bitacora(varUsuarioActual, varTipoDispositivo, varSistemaOperativo, CONCAT('Desactivación de categoría ', varIdCategoria,': ', (SELECT Categoria FROM Categorias WHERE Id_Categoria = varIdCategoria)));
END IF;
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Deactivate_Cliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Deactivate_Cliente`(
	IN varIdCliente INT(11),
    IN varUsuarioActual INT(11),
    IN varTipoDispositivo varchar(50),
    IN varSistemaOperativo varchar(50)
)
BEGIN
		DECLARE V_USUARIOID INT;
		IF varIdCliente = NULL || varIdCliente = 0 THEN
			SELECT 'LOS PARAMETROS NO PUEDEN SER NULOS - NO DESACTIVADO EN CLIENTES' AS 'ERROR';
		ELSE
			SET V_USUARIOID = (SELECT Id_Usuario FROM Clientes WHERE Id_Cliente = varIdCliente);
			
			UPDATE Usuarios
			SET `Estado` = 0
			WHERE `Id_Usuario` = V_USUARIOID;
            
			CALL Insert_Bitacora(varUsuarioActual, varTipoDispositivo, varSistemaOperativo,
            CONCAT('Desactivación de cliente. Usuario: ', (SELECT Usuario FROM Usuarios WHERE Id_Usuario = V_USUARIOID),': ', 
			(SELECT CONCAT(Nombres, ' ', Apellidos) FROM Clientes WHERE Id_Cliente = varIdCliente)));
		END IF;
	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Deactivate_Descuento` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Deactivate_Descuento`(
	IN varIdDescuento INT,
    IN varUsuarioActual INT(11), 
    IN varTipoDispositivo varchar(50),
    IN varSistemaOperativo varchar(50)
)
BEGIN
		IF varIdDescuento = 0 || varIdDescuento = NULL THEN
			SELECT 'LOS PARAMETROS NO PUEDEN SER NULOS - NO DESACTIVADO EN DESCUENTOS' AS 'ERROR';
		ELSE
			UPDATE Historico_Precios_Descuentos
			SET `Fecha_Fin` = CURRENT_TIMESTAMP()
			WHERE `Id_Descuento` = varIdDescuento AND Fecha_Fin IS NULL;
				
			INSERT INTO Historico_Precios_Descuentos (`Id_Descuento`, `Valor_Descuento`, `Fecha_Inicio`, `Fecha_Fin`)
			VALUES(varIdDescuento, 0.0, CURRENT_TIMESTAMP(), NULL);
            
            UPDATE Carrito
            SET `Id_Descuento` = 1
            WHERE `Id_Descuento` = varIdDescuento;
			
			CALL Insert_Bitacora(varUsuarioActual, varTipoDispositivo, varSistemaOperativo, CONCAT('Desactivación de descuento ', varIdDescuento, ': ', 
			(SELECT Nombre_Descuento FROM Descuentos WHERE Id_Descuento = varIdDescuento)));
		END IF;
	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Deactivate_Impuesto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Deactivate_Impuesto`(
	IN varIdImpuesto INT,
    IN varUsuarioActual INT(11), 
    IN varTipoDispositivo varchar(50),
    IN varSistemaOperativo varchar(50)
)
BEGIN
		IF varIdImpuesto = 0 || varIdImpuesto = NULL THEN
			SELECT 'LOS PARAMETROS NO PUEDEN SER NULOS - NO DESACTIVADO EN IMPUESTOS' AS 'ERROR';
		ELSE
			UPDATE Historico_Precios_Impuestos
			SET `Fecha_Fin` = CURRENT_TIMESTAMP()
			WHERE `Id_Impuesto` = varIdImpuesto AND Fecha_Fin IS NULL;
				
			INSERT INTO Historico_Precios_Impuestos (`Id_Impuesto`, `Valor_Impuesto`, `Fecha_Inicio`, `Fecha_Fin`)
			VALUES(varIdImpuesto, 0.0, CURRENT_TIMESTAMP(), NULL);
			
			CALL Insert_Bitacora(varUsuarioActual, varTipoDispositivo, varSistemaOperativo, CONCAT('Desactivación de impuesto ', varIdImpuesto, ': ', 
			(SELECT Nombre_Impuesto FROM Impuestos WHERE Id_Impuesto = varIdImpuesto)));
		END IF;
	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Deactivate_Producto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Deactivate_Producto`(
	IN varIdProducto INT,
    IN varUsuarioActual INT(11),
    IN varTipoDispositivo varchar(50),
    IN varSistemaOperativo varchar(50)
)
BEGIN
		IF varIdProducto = 0 || varIdProducto = NULL THEN
			SELECT 'LOS PARAMETROS NO PUEDEN SER NULOS - NO DESACTIVADO EN PRODUCTOS' AS 'ERROR';
		ELSE
			UPDATE Productos
			SET `Estado` = 0
			WHERE `Id_Producto` = varIdProducto;
			
			CALL Insert_Bitacora(varUsuarioActual, varTipoDispositivo, varSistemaOperativo, CONCAT('Descontinuación de producto ', varIdProducto, ': ', 
			(SELECT Nombre FROM Productos WHERE Id_Producto = varIdProducto)));
		END IF;
	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Deactivate_Proveedor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Deactivate_Proveedor`(
	IN varIDProveedor INT,
    IN varUsuarioActual INT(11), 
    IN varTipoDispositivo varchar(50),
    IN varSistemaOperativo varchar(50)
)
BEGIN
		IF varIDProveedor = NULL THEN
			SELECT 'LOS PARAMETROS NO PUEDEN SER NULOS - NO DESACTIVADO EN PROVEEDORES' AS 'ERROR';
		ELSE
			UPDATE Proveedores
			SET `Estado` = 0
			WHERE `Id_Proveedor` = varIDProveedor;
			
			CALL Insert_Bitacora(varUsuarioActual, varTipoDispositivo, varSistemaOperativo, CONCAT('Desactivación de proveedor ID ', varIdProveedor,': ', 
			(SELECT Nombre FROM Proveedores WHERE Id_Proveedor = varIdProveedor)));    

		END IF;
	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Delete_Producto_Carrito` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Delete_Producto_Carrito`(
	IN varIdUsuario INT(11),
    IN varIdProducto int(11)
)
BEGIN
		IF varIdUsuario = 0 || varIdUsuario = NULL || varIdProducto = 0 || varIdProducto = NULL THEN
			SELECT 'LOS PARAMETROS NO PUEDEN SER NULOS - NO ELIMINADO EN DETALLES' AS 'ERROR';
		ELSE
			DELETE FROM Carrito WHERE Id_Usuario = varIdUsuario AND Id_Producto = varIdProducto;
		END IF;
	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `fotoProducto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `fotoProducto`(
	IN foto TEXT
)
BEGIN
		DECLARE idProducto INT DEFAULT 0;
		
        IF foto = "null" THEN
			SET idProducto = (SELECT (MAX(Id_Producto)) FROM Productos);
            
			UPDATE Productos 
			SET Foto = null 
			WHERE Id_Producto = idProducto; 
		ELSE
			SET idProducto = (SELECT (MAX(Id_Producto)) FROM Productos);
				
			UPDATE Productos 
			SET Foto = foto 
			WHERE Id_Producto = idProducto; 
		END IF;
			
	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Insert_Administrador` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Insert_Administrador`(
	-- PARAMETROS ADMINISTRADOR
    IN varIdentificacion VARCHAR(100),
    IN varNombres VARCHAR(100),
    IN varApellidos VARCHAR(100),
    IN varTelefono VARCHAR(100),
    IN varFechaNacimiento DATE,
	-- PARAMETROS USUARIO
    IN P_USUARIO varchar(120),
    IN P_CORREO VARCHAR(120),
    IN P_CLAVE VARCHAR(100),
    -- PARAMETROS BITACORA
    IN varUsuarioActual INT(11), 
    IN varTipoDispositivo varchar(50),
    IN varSistemaOperativo varchar(50)
)
BEGIN
		DECLARE ID INT;
		DECLARE `_ROLLBACK` BOOL DEFAULT 0;
		DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET `_ROLLBACK` = 1;
		IF varIdentificacion = NULL || varIdentificacion = '' || varNombres = '' || varNombres = NULL || varApellidos = '' || varApellidos = NULL || 
		   varFechaNacimiento = '' || varFechaNacimiento = NULL || P_USUARIO = '' || P_USUARIO = NULL || P_CLAVE = '' || P_CLAVE = NULL THEN
			SELECT 'LOS PARAMETROS NO PUEDEN SER NULOS - NO INSERTADO EN ADMINISTRADORES' AS 'ERROR';
		ELSE
			START TRANSACTION;
			
			INSERT INTO `Usuarios` (`Usuario`, `Correo`, `Clave`, `Token`, `Id_Rol`) 
			VALUES (P_USUARIO, P_CORREO, P_CLAVE, CONCAT((SELECT SHA1(P_USUARIO)), (SELECT SHA1(P_CLAVE))), 1);
			
            INSERT INTO `Administradores` (`Identificacion`, `Nombres`, `Apellidos`, `Telefono`, `Fecha_Nacimiento`, `Id_Usuario`)
			VALUES(varIdentificacion, varNombres, varApellidos, varTelefono, varFechaNacimiento, (SELECT MAX(Id_Usuario) FROM Usuarios));
			
			IF `_ROLLBACK` THEN
				ROLLBACK;
				-- RESTABLECER AUTOINCREMENT USUARIOS
				SET ID = (SELECT MAX(Id_Usuario) FROM `Usuarios` );
				SET @sql = CONCAT('ALTER TABLE `Usuarios` AUTO_INCREMENT = ', ID);
				PREPARE st FROM @sql;
				EXECUTE st;
				-- RESTABLECER AUTOINCREMENT ADMINISTRADORES
				SET ID = (SELECT MAX(Id_Admin) FROM `Administradores` );
				SET @sql = CONCAT('ALTER TABLE `Administradores` AUTO_INCREMENT = ', ID);
				PREPARE st FROM @sql;
				EXECUTE st;
				
				SELECT 'ROLLBACK EJECUTADO - NO INSERTADO' AS 'EXCEPCION';
			ELSE
				CALL Insert_Bitacora(varUsuarioActual, varTipoDispositivo, varSistemaOperativo, CONCAT('Inserción de nuevo administrador. Usuario: ', P_USUARIO,': ', varNombres, ' ', varApellidos));
				COMMIT;
			END IF;
		END IF;
	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Insert_Bitacora` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Insert_Bitacora`(
	IN varIdUsuario int(11), 
    IN varTipoDispositivo varchar(50),
    IN varSistemaOperativo varchar(50),
	IN varDetalle TEXT
)
BEGIN
		IF varIdUsuario = '' || varIdUsuario = NULL || varDetalle = '' || varDetalle = NULL THEN
			SELECT 'LOS PARAMETROS NO PUEDEN SER NULOS - NO INSERTADO EN BITACORA' AS 'ERROR';
		ELSE
			INSERT INTO Bitacora (`Id_Usuario`, `Tipo_Dispositivo`,	`Sistema_Operativo`, `Fecha`, `Hora`, `Detalle`)
			VALUES(varIdUsuario, varTipoDispositivo, varSistemaOperativo, CURDATE(), CURTIME(),  varDetalle);
		END IF;
	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Insert_Categoria` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Insert_Categoria`(
	IN varCategoria varchar(45), 
	IN varDescripcion TEXT,
    IN varUsuarioActual INT(11), 
    IN varTipoDispositivo varchar(50),
    IN varSistemaOperativo varchar(50)
)
BEGIN
		IF varCategoria = '' || varCategoria = NULL || varDescripcion = '' || varDescripcion = NULL THEN
			SELECT 'LOS PARAMETROS NO PUEDEN SER NULOS - NO INSERTADO EN CATEGORIAS' AS 'ERROR';
		ELSE
			INSERT INTO Categorias (`Categoria`, `Descripcion`, `Activo`)
			VALUES(varCategoria, varDescripcion, 1);
			
			CALL Insert_Bitacora(varUsuarioActual, varTipoDispositivo, varSistemaOperativo, CONCAT('Inserción de nueva categoría ', LAST_INSERT_ID(),': ', varCategoria));
		END IF;
	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Insert_Cliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Insert_Cliente`(
	-- PARAMETROS CLIENTE
    IN varIdentificacion VARCHAR(100),
    IN varNombres VARCHAR(100),
    IN varApellidos VARCHAR(100),
    IN varTelefono VARCHAR(100),
    IN varFechaNacimiento DATE,
    IN varDireccion TEXT,
    IN varLatitud DECIMAL( 10, 8 ),
    IN varLongitud DECIMAL( 11, 8 ),
	-- PARAMETROS USUARIO
    IN P_USUARIO varchar(120),
    IN P_CORREO VARCHAR(120),
    IN P_CLAVE VARCHAR(100),
    -- PARAMETROS BITACORA
    IN varUsuarioActual INT(11), 
    IN varTipoDispositivo varchar(50),
    IN varSistemaOperativo varchar(50)
)
BEGIN
		DECLARE ID INT;
		DECLARE `_ROLLBACK` BOOL DEFAULT 0;
		DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET `_ROLLBACK` = 1;
		IF varIdentificacion = NULL || varIdentificacion = '' || varNombres = '' || varNombres = NULL || varApellidos = '' || varApellidos = NULL || 
		   varFechaNacimiento = '' || varFechaNacimiento = NULL || P_USUARIO = '' || P_USUARIO = NULL || P_CLAVE = '' || P_CLAVE = NULL THEN
			SELECT 'LOS PARAMETROS NO PUEDEN SER NULOS - NO INSERTADO EN CLIENTES' AS 'ERROR';
		ELSE
			START TRANSACTION;
			
			INSERT INTO `Usuarios` (`Usuario`, `Correo`, `Clave`, `Token`, `Id_Rol`) 
			VALUES (P_USUARIO, P_CORREO, P_CLAVE, CONCAT((SELECT SHA1(P_USUARIO)), (SELECT SHA1(P_CLAVE))), 2);
			
            INSERT INTO `Clientes` (`Identificacion`, `Nombres`, `Apellidos`, `Telefono`, `Fecha_Nacimiento`, `Direccion`, `Latitud`, `Longitud`, `Id_Usuario`)
			VALUES(varIdentificacion, varNombres, varApellidos, varTelefono, varFechaNacimiento, varDireccion, varLatitud, varLongitud, (SELECT MAX(Id_Usuario) FROM Usuarios));
			
			IF `_ROLLBACK` THEN
				ROLLBACK;
				-- RESTABLECER AUTOINCREMENT USUARIOS
				SET ID = (SELECT MAX(Id_Usuario) FROM `Usuarios` );
				SET @sql = CONCAT('ALTER TABLE `Usuarios` AUTO_INCREMENT = ', ID);
				PREPARE st FROM @sql;
				EXECUTE st;
				-- RESTABLECER AUTOINCREMENT CLIENTES
				SET ID = (SELECT MAX(Id_Cliente) FROM `Clientes` );
				SET @sql = CONCAT('ALTER TABLE `Clientes` AUTO_INCREMENT = ', ID);
				PREPARE st FROM @sql;
				EXECUTE st;
				
				SELECT 'ROLLBACK EJECUTADO - NO INSERTADO' AS 'EXCEPCION';
			ELSE
				CALL Insert_Bitacora(varUsuarioActual, varTipoDispositivo, varSistemaOperativo, CONCAT('Inserción de nuevo cliente. Usuario: ', P_USUARIO,': ', varNombres, ' ', varApellidos));
				COMMIT;
			END IF;
		END IF;
	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Insert_Descuento` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Insert_Descuento`(
	IN varNombre VARCHAR(45), 
	IN varValor DECIMAL(5,4),
    IN varUsuarioActual INT(11), 
    IN varTipoDispositivo varchar(50),
    IN varSistemaOperativo varchar(50)
)
BEGIN
		DECLARE idDescuento INT DEFAULT 0;
		IF varNombre = '' || varNombre = NULL || varValor = NULL THEN
			SELECT 'LOS PARAMETROS NO PUEDEN SER NULOS - NO INSERTADO EN DESCUENTOS' AS 'ERROR';
		ELSE
			INSERT INTO Descuentos (`Nombre_Descuento`)
			VALUES(varNombre);
			SET idDescuento = (SELECT DISTINCT LAST_INSERT_ID() FROM Descuentos);
			INSERT INTO Historico_Precios_Descuentos (`Id_Descuento`, `Valor_Descuento`, `Fecha_Inicio`, `Fecha_Fin`)
			VALUES(idDescuento, varValor, CURRENT_TIMESTAMP(), NULL);
			
			CALL Insert_Bitacora(varUsuarioActual, varTipoDispositivo, varSistemaOperativo, CONCAT('Inserción de nuevo descuento: ', LAST_INSERT_ID(),': ', varNombre, ', con valor de: ', varValor));
		END IF;
	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Insert_Detalles_Factura_Compras` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Insert_Detalles_Factura_Compras`(
	IN varIdFactura INT(11),
    IN varIdUsuario INT(11)
)
BEGIN
        DECLARE producto INT(11);
        DECLARE cantidad INT(11);
        DECLARE descuento INT(11);
        DECLARE impuesto INT(11);
        DECLARE finished INTEGER DEFAULT 0;
        DECLARE `_ROLLBACK` BOOL DEFAULT 0;
        
        DECLARE curDetalles 
			CURSOR FOR 
				SELECT Id_Producto, Cantidad_Unidades, Id_Descuento, Id_Impuesto FROM Carrito WHERE Id_Usuario = varIdUsuario;
		DECLARE CONTINUE HANDLER 
				FOR NOT FOUND SET finished = 1;
		
		DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET `_ROLLBACK` = 1;
        
		IF varIdFactura = 0 || varIdFactura = NULL || varIdUsuario = 0 || varIdUsuario = NULL THEN
			SELECT 'LOS PARAMETROS NO PUEDEN SER NULOS - NO AÑADIDO EN DETALLES' AS 'ERROR';
		ELSE
			START TRANSACTION;

				OPEN curDetalles;
					copiarDetalles: LOOP
						FETCH curDetalles INTO producto, cantidad, descuento, impuesto;
						IF finished = 1 THEN 
							LEAVE copiarDetalles;
						END IF;
						
						-- COPIAR LOS DETALLES DEL CARRITO EN DETALLES_FACTURAS_VENTAS
						INSERT INTO Detalles_Facturas_Compras (`Id_Factura`, `Id_Producto`, `Cantidad_Unidades`, `Id_Descuento`, `Id_Impuesto`)
						VALUES (varIdFactura, producto, cantidad, descuento, impuesto);
						
						-- AUMENTAR LA CANTIDAD EN INVENTARIO
						UPDATE Productos
						SET Unidades_Almacen = (Unidades_Almacen + cantidad)
						WHERE Id_Producto = producto;
						
						-- BORRAR EL ELEMENTO DEL CARRITO
						DELETE FROM Carrito WHERE Id_Usuario = varIdUsuario AND Id_Producto = producto;
						
					END LOOP copiarDetalles;
				CLOSE curDetalles;
                
			IF `_ROLLBACK` THEN
				ROLLBACK;
				SELECT 'ROLLBACK EJECUTADO - NO INSERTADO' AS 'EXCEPCION';
			ELSE
				COMMIT;
			END IF;
		END IF;
	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Insert_Detalles_Factura_Ventas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Insert_Detalles_Factura_Ventas`(
	IN varIdFactura INT(11),
    IN varIdUsuario INT(11)
)
BEGIN
        DECLARE producto INT(11);
        DECLARE cantidad INT(11);
        DECLARE descuento INT(11);
        DECLARE impuesto INT(11);
        DECLARE finished INTEGER DEFAULT 0;
        DECLARE `_ROLLBACK` BOOL DEFAULT 0;
        
        DECLARE curDetalles 
			CURSOR FOR 
				SELECT Id_Producto, Cantidad_Unidades, Id_Descuento, Id_Impuesto FROM Carrito WHERE Id_Usuario = varIdUsuario;
		DECLARE CONTINUE HANDLER 
				FOR NOT FOUND SET finished = 1;
		
		DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET `_ROLLBACK` = 1;
        
		IF varIdFactura = 0 || varIdFactura = NULL || varIdUsuario = 0 || varIdUsuario = NULL THEN
			SELECT 'LOS PARAMETROS NO PUEDEN SER NULOS - NO AÑADIDO EN DETALLES' AS 'ERROR';
		ELSE
			START TRANSACTION;

				OPEN curDetalles;
					copiarDetalles: LOOP
						FETCH curDetalles INTO producto, cantidad, descuento, impuesto;
						IF finished = 1 THEN 
							LEAVE copiarDetalles;
						END IF;
						
						-- COPIAR LOS DETALLES DEL CARRITO EN DETALLES_FACTURAS_VENTAS
						INSERT INTO Detalles_Facturas_Ventas (`Id_Factura`, `Id_Producto`, `Cantidad_Unidades`, `Id_Descuento`, `Id_Impuesto`)
						VALUES (varIdFactura, producto, cantidad, descuento, impuesto);
						
						-- REDUCIR LA CANTIDAD EN INVENTARIO
						UPDATE Productos
						SET Unidades_Almacen = (Unidades_Almacen - cantidad)
						WHERE Id_Producto = producto;
						
						-- BORRAR EL ELEMENTO DEL CARRITO
						DELETE FROM Carrito WHERE Id_Usuario = varIdUsuario AND Id_Producto = producto;
						
					END LOOP copiarDetalles;
				CLOSE curDetalles;
                
			IF `_ROLLBACK` THEN
				ROLLBACK;
				SELECT 'ROLLBACK EJECUTADO - NO INSERTADO' AS 'EXCEPCION';
			ELSE
				COMMIT;
			END IF;
		END IF;
	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Insert_Factura_Compras` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Insert_Factura_Compras`(
    IN varUsuario INT(11),
    IN varLatitud DECIMAL( 10, 8 ),  
	IN varLongitud DECIMAL( 11, 8 ),
    IN varMetodoPago int(11),
    
    IN varTipoDispositivo varchar(50),
    IN varSistemaOperativo varchar(50)
)
BEGIN
		DECLARE idFactura INT DEFAULT 0;
        DECLARE ID INT;
		DECLARE `_ROLLBACK` BOOL DEFAULT 0;
		DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET `_ROLLBACK` = 1;
        
		IF varUsuario = 0 || varUsuario = NULL THEN
			SELECT 'LOS PARAMETROS NO PUEDEN SER NULOS - NO COMENZADO EN FACTURAS' AS 'ERROR';
		ELSE
			START TRANSACTION;
            
				-- INSERTAR LA PRIMERA PARTE DEL ENCABEZADO DE LA FACTURA
				INSERT INTO Facturas_Compras (`Fecha`, `Hora`, `Id_Usuario`, `Latitud`, `Longitud`, `Id_Metodo_Pago`)
				VALUES(CURDATE(), CURTIME(), varUsuario, varLatitud, varLongitud, varMetodoPago);
				
				-- INSERTAR LOS DETALLES DE LA FACTURA SEGUN EL CARRITO DEL USUARIO
				SET idFactura = (SELECT DISTINCT LAST_INSERT_ID() FROM Facturas_Compras);
				CALL Insert_Detalles_Factura_Compras(idFactura, varUsuario);
				
				-- ACTUALIZAR CON SUBTOTALES Y TOTALES LA FACTURA
				UPDATE Facturas_Compras
				SET `Fecha` = CURDATE(),
					`Hora` = CURTIME(),
					`Id_Usuario` = varUsuario,
					`Latitud` = varLatitud,
					`Longitud` = varLongitud,
					`Id_Metodo_Pago` = varMetodoPago,
					`SubTotal` = (SELECT CalcularSubtotal(1, idFactura) AS Subtotal),
					`Total` = (SELECT CalcularTotal(1, idFactura) AS Total)
				WHERE `Id_Factura` = idFactura;
			
            
            IF `_ROLLBACK` THEN
				ROLLBACK;
				-- RESTABLECER AUTOINCREMENT FACTURAS
				SET ID = (SELECT MAX(Id_Factura) FROM `Facturas_Compras` );
				SET @sql = CONCAT('ALTER TABLE `Facturas_Compras` AUTO_INCREMENT = ', ID);
				PREPARE st FROM @sql;
				EXECUTE st;
                
				SELECT 'ROLLBACK EJECUTADO - NO INSERTADO' AS 'EXCEPCION';
			ELSE
				-- INCERSION EN LA BITACORA
				CALL Insert_Bitacora(varUsuario, varTipoDispositivo, varSistemaOperativo, CONCAT('Nueva factura de compra registrada. Usuario: ', varUsuario));				COMMIT;
			END IF;
		END IF ;
	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Insert_Factura_Ventas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Insert_Factura_Ventas`(
    IN varUsuario INT(11),
    IN varLatitud DECIMAL( 10, 8 ),  
	IN varLongitud DECIMAL( 11, 8 ),
    IN varMetodoPago int(11),
    
    IN varTipoDispositivo varchar(50),
    IN varSistemaOperativo varchar(50)
)
BEGIN
		DECLARE idFactura INT DEFAULT 0;
        DECLARE ID INT;
		DECLARE `_ROLLBACK` BOOL DEFAULT 0;
		DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET `_ROLLBACK` = 1;
        
		IF varUsuario = 0 || varUsuario = NULL THEN
			SELECT 'LOS PARAMETROS NO PUEDEN SER NULOS - NO COMENZADO EN FACTURAS' AS 'ERROR';
		ELSE
			START TRANSACTION;
            
				-- INSERTAR LA PRIMERA PARTE DEL ENCABEZADO DE LA FACTURA
				INSERT INTO Facturas_Ventas (`Fecha`, `Hora`, `Id_Usuario`, `Latitud`, `Longitud`, `Id_Metodo_Pago`)
				VALUES(CURDATE(), CURTIME(), varUsuario, varLatitud, varLongitud, varMetodoPago);
				
				-- INSERTAR LOS DETALLES DE LA FACTURA SEGUN EL CARRITO DEL USUARIO
				SET idFactura = (SELECT DISTINCT LAST_INSERT_ID() FROM Facturas_Ventas);
				CALL Insert_Detalles_Factura_Ventas(idFactura, varUsuario);
				
				-- ACTUALIZAR CON SUBTOTALES Y TOTALES LA FACTURA
				UPDATE Facturas_Ventas
				SET `Fecha` = CURDATE(),
					`Hora` = CURTIME(),
					`Id_Usuario` = varUsuario,
					`Latitud` = varLatitud,
					`Longitud` = varLongitud,
					`Id_Metodo_Pago` = varMetodoPago,
					`SubTotal` = (SELECT CalcularSubtotal(0, idFactura) AS Subtotal),
					`Total` = (SELECT CalcularTotal(0, idFactura) AS Total)
				WHERE `Id_Factura` = idFactura;
			
            
            IF `_ROLLBACK` THEN
				ROLLBACK;
				-- RESTABLECER AUTOINCREMENT FACTURAS
				SET ID = (SELECT MAX(Id_Factura) FROM `Facturas_Ventas` );
				SET @sql = CONCAT('ALTER TABLE `Facturas_Ventas` AUTO_INCREMENT = ', ID);
				PREPARE st FROM @sql;
				EXECUTE st;
                
				SELECT 'ROLLBACK EJECUTADO - NO INSERTADO' AS 'EXCEPCION';
			ELSE
				-- INCERSION EN LA BITACORA
				CALL Insert_Bitacora(varUsuario, varTipoDispositivo, varSistemaOperativo, CONCAT('Nueva factura de venta registrada. Usuario: ', varUsuario));				COMMIT;
			END IF;
		END IF ;
	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Insert_Impuesto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Insert_Impuesto`(
	IN varNombre VARCHAR(45), 
	IN varValor DECIMAL(5,4),
    IN varUsuarioActual INT(11), 
    IN varTipoDispositivo varchar(50),
    IN varSistemaOperativo varchar(50)
)
BEGIN
		DECLARE idImpuesto INT DEFAULT 0;
		IF varNombre = '' || varNombre = NULL || varValor = NULL THEN
			SELECT 'LOS PARAMETROS NO PUEDEN SER NULOS - NO INSERTADO EN IMPUESTOS' AS 'ERROR';
		ELSE
			INSERT INTO Impuestos (`Nombre_Impuesto`)
			VALUES(varNombre);
			SET idImpuesto = (SELECT DISTINCT LAST_INSERT_ID() FROM Impuestos);
			INSERT INTO Historico_Precios_Impuestos (`Id_Impuesto`, `Valor_Impuesto`, `Fecha_Inicio`, `Fecha_Fin`)
			VALUES(idImpuesto, varValor, CURRENT_TIMESTAMP(), NULL);
			
			CALL Insert_Bitacora(varUsuarioActual, varTipoDispositivo, varSistemaOperativo, CONCAT('Inserción de nuevo impuesto: ', LAST_INSERT_ID(),': ', varNombre, ', con valor de: ', varValor));
		END IF;
	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Insert_Producto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Insert_Producto`(
	IN varNombre VARCHAR(45), 
    IN varDescripcion TEXT,
    IN varIdCategoria INT(11),
    IN varIdProveedor INT(11),
    IN varCantidadUnidad varchar(45),
    IN varUnidadesAlmacen INT(11),
	IN varCantidadMinima INT(11),
    IN varCantidadMaxima INT(11),
    IN varFoto TEXT,
	IN varPrecio DECIMAL(9,2),
    IN varIdImpuesto INT(11),
    
    IN varUsuarioActual INT(11),
    IN varTipoDispositivo varchar(50),
    IN varSistemaOperativo varchar(50)
)
BEGIN
		DECLARE idProducto INT DEFAULT 0;
		IF varNombre = '' || varNombre = NULL || varDescripcion = '' || varDescripcion = NULL ||
			varIdCategoria = '' || varIdCategoria = NULL || varIdProveedor = '' || varIdProveedor = NULL || varCantidadMaxima = 0 ||  
			varPrecio = NULL || varPrecio = '' THEN
			SELECT 'LOS PARAMETROS NO PUEDEN SER NULOS - NO INSERTADO EN PRODUCTOS' AS 'ERROR';
		ELSE
			INSERT INTO Productos (`Nombre`, `Descripcion`, `Id_Categoria`, `Id_Proveedor`, `Cantidad_Unidad`, `Unidades_Almacen`, `Cantidad_Minima`,
								   `Cantidad_Maxima`, `Foto`, `Id_Impuesto`)
			VALUES(varNombre, varDescripcion, varIdCategoria, varIdProveedor, varCantidadUnidad, varUnidadesAlmacen, varCantidadMinima,
				   varCantidadMaxima, varFoto, varIdImpuesto);
                   
			SET idProducto = (SELECT DISTINCT LAST_INSERT_ID() FROM Productos);
            
			INSERT INTO Historico_Precios_Productos (`Id_Producto`, `Precio`, `Fecha_Inicio`, `Fecha_Fin`)
			VALUES(idProducto, varPrecio, CURRENT_TIMESTAMP(), NULL);
			
			CALL Insert_Bitacora(varUsuarioActual, varTipoDispositivo, varSistemaOperativo, CONCAT('Inserción de nuevo producto: ', idProducto, ': ', varNombre, ', con precio de: ', varPrecio));
		END IF;
	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Insert_Producto_Carrito` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Insert_Producto_Carrito`(
	IN varIdUsuario INT(11),
    IN varIdProducto int(11),
    IN varCantidadUnidades INT(11),
    IN varIdDescuento INT(11)
)
BEGIN
		IF varIdUsuario = 0 || varIdUsuario = NULL || varIdProducto = 0 || varIdProducto = NULL ||
			varCantidadUnidades = 0 || varCantidadUnidades = NULL THEN
			SELECT 'LOS PARAMETROS NO PUEDEN SER NULOS - NO AÑADIDO EN CARRITO' AS 'ERROR';
		ELSE
			INSERT INTO Carrito (`Id_Usuario`, `Id_Producto`, `Cantidad_Unidades`, `Id_Descuento`, `Id_Impuesto`)
			VALUES(varIdUsuario, varIdProducto, varCantidadUnidades, varIdDescuento, (SELECT Id_Impuesto FROM Productos WHERE Id_Producto = varIdProducto));
		END IF;
	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Insert_Proveedor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Insert_Proveedor`(
	IN varNombre varchar(45), 
	IN varContacto varchar(45), 
    IN varTelefono varchar(45),
    IN varCorreo varchar(100),
    IN varDireccion TEXT,
    IN varLatitud  DECIMAL( 10, 8 ),  
	IN varLongitud DECIMAL( 11, 8 ),
    IN varUsuarioActual INT(11), 
    IN varTipoDispositivo varchar(50),
    IN varSistemaOperativo varchar(50)
)
BEGIN
		IF varNombre = '' || varNombre = NULL || varContacto = '' || varContacto = NULL || varLatitud = NULL || varLongitud = NULL THEN
			SELECT 'LOS PARAMETROS NO PUEDEN SER NULOS - NO INSERTADO EN PROVEEDORES' AS 'ERROR';
		 ELSE
			INSERT INTO Proveedores (`Nombre`, `Contacto`, `Telefono`, `Correo`, `Direccion`, `Latitud`, `Longitud`)
			VALUES(varNombre, varContacto, varTelefono, varCorreo, varDireccion, varLatitud, varLongitud);
			
			CALL Insert_Bitacora(varUsuarioActual, varTipoDispositivo, varSistemaOperativo, CONCAT('Inserción de nuevo proveedor ID ', LAST_INSERT_ID(),': ', varNombre));    
		END IF;
	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `LOGIN` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `LOGIN`(
    IN P_USUARIO VARCHAR(120),
    IN P_CLAVE VARCHAR(100)
)
BEGIN
    IF (SELECT COUNT(*) FROM Usuarios WHERE Usuario = P_USUARIO AND Clave = P_CLAVE AND Estado = 1) = 1 THEN
        
        SELECT Token FROM Usuarios WHERE Usuario = P_USUARIO;
        
    ELSE
        SELECT 'SESION NO INICIADA' AS 'Token';
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `revisarToken` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `revisarToken`(
    IN P_TOKEN TEXT
)
BEGIN
    IF (SELECT COUNT(*) FROM Usuarios WHERE Token = P_TOKEN AND Estado = 1) = 1 THEN
        
        IF (SELECT Id_Rol FROM Usuarios WHERE Token = P_TOKEN) = 1 THEN
			-- ADMINISTRADORES
			SELECT U.Id_Usuario, U.Usuario, U.Id_Rol, A.Id_Admin AS ID
			FROM Usuarios AS U INNER JOIN Administradores AS A ON A.Id_Usuario = U.Id_Usuario
			WHERE U.Token = P_TOKEN;
        ELSE
        	-- CLIENTES
			SELECT U.Id_Usuario, U.Usuario, U.Id_Rol, A.Id_Cliente AS ID
			FROM Usuarios AS U INNER JOIN Clientes AS A ON A.Id_Usuario = U.Id_Usuario
			WHERE U.Token = P_TOKEN;
		END IF ;
        
    ELSE
        SELECT 'SESION NO INICIADA' AS 'Id_Usuario';
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Update_Administrador` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Update_Administrador`(
	-- PARAMETROS ADMINISTRADOR
    IN varIdAdmin INT(11),
    IN varIdentificacion VARCHAR(100),
    IN varNombres VARCHAR(100),
    IN varApellidos VARCHAR(100),
    IN varTelefono VARCHAR(100),
    IN varFechaNacimiento DATE,
	-- PARAMETROS USUARIO
    IN P_USUARIO varchar(120),
    IN P_CORREO VARCHAR(120),
    IN P_CLAVE VARCHAR(100),
    IN P_ESTADO TINYINT,
    -- PARAMETROS BITACORA
    IN varUsuarioActual INT(11), 
    IN varTipoDispositivo varchar(50),
    IN varSistemaOperativo varchar(50)
)
BEGIN
		DECLARE V_USUARIOID INT;
		DECLARE `_ROLLBACK` BOOL DEFAULT 0;
		DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET `_ROLLBACK` = 1;
		IF varIdAdmin = NULL || varIdAdmin = '' || varNombres = '' || varNombres = NULL || varApellidos = '' || varApellidos = NULL || 
			varFechaNacimiento = '' || varFechaNacimiento = NULL || P_USUARIO = '' || P_USUARIO = NULL || P_CLAVE = '' || P_CLAVE = NULL THEN
			SELECT 'LOS PARAMETROS NO PUEDEN SER NULOS - NO ACTUALIZADO EN CLIENTES' AS 'ERROR';
		ELSE
			START TRANSACTION;
			
			UPDATE `Administradores`
			SET `Identificacion` = varIdentificacion,
			`Nombres` = varNombres,
			`Apellidos` = varApellidos,
			`Telefono` = varTelefono,
			`Fecha_Nacimiento` = varFechaNacimiento
			WHERE `Id_Admin` = varIdAdmin;
			
			SET V_USUARIOID = (SELECT Id_Usuario FROM Administradores WHERE Id_Admin = varIdAdmin);
			
			UPDATE `Usuarios`
			SET `Usuario` = P_USUARIO,
            `Correo` = P_CORREO,
			`Clave` = P_CLAVE,
			`Token` = CONCAT((SELECT SHA1(P_USUARIO)), (SELECT SHA1(P_CLAVE))),
            `Estado` = P_ESTADO
			WHERE `Id_Usuario` = V_USUARIOID;
			
			IF `_ROLLBACK` THEN
				ROLLBACK;
				SELECT 'ROLLBACK EJECUTADO - NO ACTUALIZADO' AS 'EXCEPCION';
			ELSE
				CALL Insert_Bitacora(varUsuarioActual, varTipoDispositivo, varSistemaOperativo, CONCAT('Actualización de administrador. Usuario: ', P_USUARIO,': ', varNombres, ' ', varApellidos));
				COMMIT;
			END IF;
		END IF;
	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Update_Categoria` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Update_Categoria`(
	IN varIDCategoria INT,
	IN varCategoria VARCHAR(45), 
	IN varDescripcion TEXT,
    IN varUsuarioActual INT(11), 
    IN varTipoDispositivo varchar(50),
    IN varSistemaOperativo varchar(50)
)
BEGIN
		IF varIDCategoria = NULL || varCategoria = '' || varCategoria = NULL || varDescripcion = '' || varDescripcion = NULL THEN
			SELECT 'LOS PARAMETROS NO PUEDEN SER NULOS - NO ACTUALIZADO EN CATEGORIAS' AS 'ERROR';
		ELSE
			UPDATE Categorias
			SET `Categoria` = varCategoria,
				`Descripcion` = varDescripcion,
				`Activo` = 1
			WHERE `Id_Categoria` = varIdCategoria;
			
			CALL Insert_Bitacora(varUsuarioActual, varTipoDispositivo, varSistemaOperativo, CONCAT('Actualización de categoría ', varIdCategoria,': ', varCategoria));
		END IF;
	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Update_Cliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Update_Cliente`(
	IN varIdCliente INT(11),
	IN varIdentificacion VARCHAR(100),
    IN varNombres VARCHAR(100),
    IN varApellidos VARCHAR(100),
    IN varTelefono VARCHAR(100),
    IN varFechaNacimiento DATE,
    IN varDireccion TEXT,
    IN varLatitud DECIMAL( 10, 8 ),
    IN varLongitud DECIMAL( 11, 8 ),
	-- PARAMETROS USUARIO
    IN P_USUARIO varchar(120),
    IN P_CORREO VARCHAR(120),
    IN P_CLAVE VARCHAR(100),
    IN P_ESTADO TINYINT,
    -- PARAMETROS BITACORA
    IN varUsuarioActual INT(11), 
    IN varTipoDispositivo varchar(50),
    IN varSistemaOperativo varchar(50)
)
BEGIN
		DECLARE V_USUARIOID INT;
		DECLARE `_ROLLBACK` BOOL DEFAULT 0;
		DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET `_ROLLBACK` = 1;
		IF varIdCliente = NULL || varIdCliente = '' || varNombres = '' || varNombres = NULL || varApellidos = '' || varApellidos = NULL || 
			varFechaNacimiento = '' || varFechaNacimiento = NULL || P_USUARIO = '' || P_USUARIO = NULL || P_CLAVE = '' || P_CLAVE = NULL THEN
			SELECT 'LOS PARAMETROS NO PUEDEN SER NULOS - NO ACTUALIZADO EN CLIENTES' AS 'ERROR';
		ELSE
			START TRANSACTION;
			
			UPDATE `Clientes`
			SET `Identificacion` = varIdentificacion,
			`Nombres` = varNombres,
			`Apellidos` = varApellidos,
			`Telefono` = varTelefono,
			`Fecha_Nacimiento` = varFechaNacimiento,
			`Direccion` = varDireccion,    
			`Latitud` = varLatitud,
			`Longitud` = varLongitud
			WHERE `Id_Cliente` = varIdCliente;
			
			SET V_USUARIOID = (SELECT Id_Usuario FROM Clientes WHERE Id_Cliente = varIdCliente);
			
			UPDATE `Usuarios`
			SET `Usuario` = P_USUARIO,
            `Correo` = P_CORREO,
			`Clave` = P_CLAVE,
			`Token` = CONCAT((SELECT SHA1(P_USUARIO)), (SELECT SHA1(P_CLAVE))),
            `Estado` = P_ESTADO
			WHERE `Id_Usuario` = V_USUARIOID;
			
			IF `_ROLLBACK` THEN
				ROLLBACK;
				SELECT 'ROLLBACK EJECUTADO - NO ACTUALIZADO' AS 'EXCEPCION';
			ELSE
				CALL Insert_Bitacora(varUsuarioActual, varTipoDispositivo, varSistemaOperativo, CONCAT('Actualización de cliente. Usuario: ', P_USUARIO,': ', varNombres, ' ', varApellidos));
				COMMIT;
			END IF;
		END IF;
	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Update_Descuento` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Update_Descuento`(
	IN varIdDescuento INT,
	IN varNombre VARCHAR(45), 
	IN varValor DECIMAL(5,4),
    IN varUsuarioActual INT(11), 
    IN varTipoDispositivo varchar(50),
    IN varSistemaOperativo varchar(50)
)
BEGIN
		IF varIdDescuento = 0 || varIdDescuento = NULL || varNombre = '' || varNombre = NULL || varValor = NULL THEN
			SELECT 'LOS PARAMETROS NO PUEDEN SER NULOS - NO ACTUALIZADO EN DESCUENTOS' AS 'ERROR';
		ELSE
			UPDATE Descuentos
			SET `Nombre_Descuento` = varNombre
			WHERE `Id_Descuento` = varIdDescuento;

			IF varValor <> (SELECT Valor_Descuento FROM Historico_Precios_Descuentos WHERE Id_Descuento = varIdDescuento AND Fecha_Fin IS NULL) THEN
				UPDATE Historico_Precios_Descuentos
				SET `Fecha_Fin` = CURRENT_TIMESTAMP()
				WHERE `Id_Descuento` = varIdDescuento AND Fecha_Fin IS NULL;
				
				INSERT INTO Historico_Precios_Descuentos (`Id_Descuento`, `Valor_Descuento`, `Fecha_Inicio`, `Fecha_Fin`)
				VALUES(varIdDescuento, varValor, CURRENT_TIMESTAMP(), NULL);
				
				CALL Insert_Bitacora(varUsuarioActual, varTipoDispositivo, varSistemaOperativo, CONCAT('Actualización de descuento ', varIdDescuento, ': ', varNombre, ', con nuevo valor de: ', varValor));
			ELSE
				CALL Insert_Bitacora(varUsuarioActual, varTipoDispositivo, varSistemaOperativo, CONCAT('Actualización de nombre descuento ', varIdDescuento, ': ', varNombre));
			END IF;
		END IF;
	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Update_Impuesto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Update_Impuesto`(
	IN varIdImpuesto INT,
	IN varNombre VARCHAR(45), 
	IN varValor DECIMAL(5,4),
    IN varUsuarioActual INT(11), 
    IN varTipoDispositivo varchar(50),
    IN varSistemaOperativo varchar(50)
)
BEGIN
		IF varIdImpuesto = 0 || varIdImpuesto = NULL || varNombre = '' || varNombre = NULL || varValor = NULL THEN
			SELECT 'LOS PARAMETROS NO PUEDEN SER NULOS - NO ACTUALIZADO EN IMPUESTOS' AS 'ERROR';
		ELSE
			UPDATE Impuestos
			SET `Nombre_Impuesto` = varNombre
			WHERE `Id_Impuesto` = varIdImpuesto;

			IF varValor <> (SELECT Valor_Impuesto FROM Historico_Precios_Impuestos WHERE Id_Impuesto = varIdImpuesto AND Fecha_Fin IS NULL) THEN
				UPDATE Historico_Precios_Impuestos
				SET `Fecha_Fin` = CURRENT_TIMESTAMP()
				WHERE `Id_Impuesto` = varIdImpuesto AND Fecha_Fin IS NULL;
				
				INSERT INTO Historico_Precios_Impuestos (`Id_Impuesto`, `Valor_Impuesto`, `Fecha_Inicio`, `Fecha_Fin`)
				VALUES(varIdImpuesto, varValor, CURRENT_TIMESTAMP(), NULL);
				
				CALL Insert_Bitacora(varUsuarioActual, varTipoDispositivo, varSistemaOperativo, CONCAT('Actualización de impuesto ', varIdImpuesto, ': ', varNombre, ', con nuevo valor de: ', varValor));
			ELSE
				CALL Insert_Bitacora(varUsuarioActual, varTipoDispositivo, varSistemaOperativo, CONCAT('Actualización de nombre impuesto ', varIdImpuesto, ': ', varNombre));
			END IF;
		END IF;
	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Update_Producto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Update_Producto`(    
	IN varIdProducto int(11),
    IN varNombre VARCHAR(45), 
    IN varDescripcion TEXT,
    IN varIdCategoria INT(11),
    IN varIdProveedor INT(11),
    IN varCantidadUnidad varchar(45),
    IN varUnidadesAlmacen INT(11),
    IN varCantidadMinima INT(11),
    IN varCantidadMaxima INT(11),
    IN varFoto TEXT,
    IN varEstado TINYINT,
	IN varPrecio DECIMAL(9,2),
    IN varIdImpuesto INT(11),
    
    IN varUsuarioActual INT(11),
    IN varTipoDispositivo varchar(50),
    IN varSistemaOperativo varchar(50)
)
BEGIN
		IF varIdProducto = 0 || varIdProducto = NULL || varNombre = '' || varNombre = NULL || varDescripcion = '' || varDescripcion = NULL ||
			varIdCategoria = 0 || varIdCategoria = NULL || varIdProveedor = 0 || varIdProveedor = NULL || varCantidadMaxima = 0 ||  
			varPrecio = NULL || varPrecio = 0 THEN
			SELECT 'LOS PARAMETROS NO PUEDEN SER NULOS - NO ACTUALIZADO EN PRODUCTOS' AS 'ERROR';
		ELSE
			UPDATE Productos
			SET `Nombre` = varNombre,
				`Descripcion` = varDescripcion,
				`Id_Categoria` = varIdCategoria,
				`Id_Proveedor` = varIdProveedor,
				`Cantidad_Unidad` = varCantidadUnidad,
				`Unidades_Almacen` = varUnidadesAlmacen,
				`Cantidad_Minima` = varCantidadMinima,
				`Cantidad_Maxima` = varCantidadMaxima,
				`Foto` = varFoto,
				`Estado` = varEstado,
                `Id_Impuesto` = varIdImpuesto
			WHERE `Id_Producto` = varIdProducto;
            
            UPDATE Carrito
			SET `Id_Impuesto` = varIdImpuesto
			WHERE `Id_Producto` = varIdProducto;

			IF varPrecio <> (SELECT Precio FROM Historico_Precios_Productos WHERE Id_Producto = varIdProducto AND Fecha_Fin IS NULL) THEN
				UPDATE Historico_Precios_Productos
				SET `Fecha_Fin` = CURRENT_TIMESTAMP()
				WHERE `Id_Producto` = varIdProducto AND Fecha_Fin IS NULL;
				
				INSERT INTO Historico_Precios_Productos (`Id_Producto`, `Precio`, `Fecha_Inicio`, `Fecha_Fin`)
				VALUES(varIdProducto, varPrecio, CURRENT_TIMESTAMP(), NULL);
				
				CALL Insert_Bitacora(varUsuarioActual, varTipoDispositivo, varSistemaOperativo, CONCAT('Actualización de producto ', varIdProducto, ': ', varNombre, ', con nuevo precio de: ', varPrecio));
			ELSE
				CALL Insert_Bitacora(varUsuarioActual, varTipoDispositivo, varSistemaOperativo, CONCAT('Actualización de producto ', varIdProducto, ': ', varNombre));
			END IF;
		END IF;
	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Update_Producto_Carrito` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Update_Producto_Carrito`(
	IN varIdUsuario INT(11),
    IN varIdProducto int(11),
    IN varCantidadUnidades INT(11),
    IN varIdDescuento INT(11)
)
BEGIN
		IF varIdUsuario = 0 || varIdUsuario = NULL || varIdProducto = 0 || varIdProducto = NULL ||
			varCantidadUnidades = 0 || varCantidadUnidades = NULL THEN
			SELECT 'LOS PARAMETROS NO PUEDEN SER NULOS - NO ACTUALIZADO EN CARRITO' AS 'ERROR';
		ELSE
			UPDATE Carrito
			SET `Cantidad_Unidades` = varCantidadUnidades,
				`Id_Descuento` = varIdDescuento
			WHERE `Id_Usuario` = varIdUsuario AND `Id_Producto` = varIdProducto;
		END IF;
	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Update_Proveedor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Update_Proveedor`(
	IN varIdProveedor int(11),
	IN varNombre varchar(45), 
	IN varContacto varchar(45), 
    IN varTelefono varchar(45),
    IN varCorreo varchar(100),
    IN varDireccion TEXT,
    IN varLatitud  DECIMAL( 10, 8 ),  
	IN varLongitud DECIMAL( 11, 8 ),
    IN varEstado TINYINT,
    IN varUsuarioActual INT(11), 
    IN varTipoDispositivo varchar(50),
    IN varSistemaOperativo varchar(50)
)
BEGIN
		IF varIdProveedor = NULL || varIdProveedor = '' || varNombre = '' || varNombre = NULL || 
			varContacto = '' || varContacto = NULL || varLatitud = NULL || varLongitud = NULL THEN
			SELECT 'LOS PARAMETROS NO PUEDEN SER NULOS - NO ACTUALIZADO EN PROVEEDORES' AS 'ERROR';
		ELSE
			UPDATE Proveedores
			SET `Nombre` = varNombre,
				`Contacto` = varContacto,
				`Telefono` = varTelefono,
				`Correo` = varCorreo,
				`Direccion` = varDireccion,
				`Latitud` = varLatitud,  
				`Longitud` = varLongitud,
				`Estado` = varEstado
			WHERE `Id_Proveedor` = varIdProveedor;
			
			CALL Insert_Bitacora(varUsuarioActual, varTipoDispositivo, varSistemaOperativo, CONCAT('Actualización de proveedor ID ', varIdProveedor,': ', varNombre));    

		END IF;
	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `v_administrador`
--

/*!50001 DROP VIEW IF EXISTS `v_administrador`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_administrador` AS select `a`.`Id_Admin` AS `Id_Admin`,`a`.`Identificacion` AS `Identificacion`,`a`.`Nombres` AS `Nombres`,`a`.`Apellidos` AS `Apellidos`,`a`.`Telefono` AS `Telefono`,`a`.`Fecha_Nacimiento` AS `Fecha_Nacimiento`,`u`.`Id_Usuario` AS `Id_Usuario`,`u`.`Usuario` AS `Usuario`,`u`.`Correo` AS `Correo`,`u`.`Clave` AS `Clave`,`u`.`Estado` AS `Estado` from (`administradores` `a` join `usuarios` `u` on((`a`.`Id_Usuario` = `u`.`Id_Usuario`))) order by `a`.`Id_Admin` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_administradores`
--

/*!50001 DROP VIEW IF EXISTS `v_administradores`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_administradores` AS select `a`.`Id_Admin` AS `Id_Admin`,`a`.`Nombres` AS `Nombres`,`a`.`Apellidos` AS `Apellidos`,`u`.`Usuario` AS `Usuario`,`u`.`Estado` AS `Estado` from (`administradores` `a` join `usuarios` `u` on((`a`.`Id_Usuario` = `u`.`Id_Usuario`))) order by `a`.`Id_Admin` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_bitacora`
--

/*!50001 DROP VIEW IF EXISTS `v_bitacora`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_bitacora` AS select `b`.`Id_Registro` AS `Id_Registro`,`u`.`Usuario` AS `Usuario`,`b`.`Tipo_Dispositivo` AS `Tipo_Dispositivo`,`b`.`Sistema_Operativo` AS `Sistema_Operativo`,`b`.`Fecha` AS `Fecha`,`b`.`Hora` AS `Hora`,`b`.`Detalle` AS `Detalle` from (`bitacora` `b` join `usuarios` `u` on((`b`.`Id_Usuario` = `u`.`Id_Usuario`))) order by `b`.`Id_Registro` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_cliente`
--

/*!50001 DROP VIEW IF EXISTS `v_cliente`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_cliente` AS select `c`.`Id_Cliente` AS `Id_Cliente`,`c`.`Identificacion` AS `Identificacion`,`c`.`Nombres` AS `Nombres`,`c`.`Apellidos` AS `Apellidos`,`c`.`Telefono` AS `Telefono`,`c`.`Fecha_Nacimiento` AS `Fecha_Nacimiento`,`c`.`Direccion` AS `Direccion`,`c`.`Latitud` AS `Latitud`,`c`.`Longitud` AS `Longitud`,`u`.`Id_Usuario` AS `Id_Usuario`,`u`.`Usuario` AS `Usuario`,`u`.`Correo` AS `Correo`,`u`.`Clave` AS `Clave`,`u`.`Estado` AS `Estado` from (`clientes` `c` join `usuarios` `u` on((`c`.`Id_Usuario` = `u`.`Id_Usuario`))) order by `c`.`Id_Cliente` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_clientes`
--

/*!50001 DROP VIEW IF EXISTS `v_clientes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_clientes` AS select `c`.`Id_Cliente` AS `Id_Cliente`,`c`.`Nombres` AS `Nombres`,`c`.`Apellidos` AS `Apellidos`,`u`.`Usuario` AS `Usuario`,`u`.`Estado` AS `Estado` from (`clientes` `c` join `usuarios` `u` on((`c`.`Id_Usuario` = `u`.`Id_Usuario`))) order by `c`.`Id_Cliente` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_descuento`
--

/*!50001 DROP VIEW IF EXISTS `v_descuento`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_descuento` AS select `d`.`Id_Descuento` AS `Id_Descuento`,`d`.`Nombre_Descuento` AS `Nombre_Descuento`,`hpd`.`Valor_Descuento` AS `Valor_Descuento` from (`descuentos` `d` join `historico_precios_descuentos` `hpd` on((`d`.`Id_Descuento` = `hpd`.`Id_Descuento`))) where isnull(`hpd`.`Fecha_Fin`) order by `d`.`Id_Descuento` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_detalles_facturados_compras`
--

/*!50001 DROP VIEW IF EXISTS `v_detalles_facturados_compras`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_detalles_facturados_compras` AS select `f`.`Id_Factura` AS `Id_Factura`,`df`.`Id_Producto` AS `Id_Producto`,`p`.`Nombre` AS `Nombre`,`df`.`Cantidad_Unidades` AS `Cantidad_Unidades`,(select `hpp`.`Precio` from `historico_precios_productos` `hpp` where ((`hpp`.`Id_Producto` = `df`.`Id_Producto`) and (concat(`f`.`Fecha`,' ',`f`.`Hora`) >= `hpp`.`Fecha_Inicio`) and (concat(`f`.`Fecha`,' ',`f`.`Hora`) <= ifnull(`hpp`.`Fecha_Fin`,concat(`f`.`Fecha`,' ',`f`.`Hora`))))) AS `Precio`,(`df`.`Cantidad_Unidades` * (select `hpp`.`Precio` from `historico_precios_productos` `hpp` where ((`hpp`.`Id_Producto` = `df`.`Id_Producto`) and (concat(`f`.`Fecha`,' ',`f`.`Hora`) >= `hpp`.`Fecha_Inicio`) and (concat(`f`.`Fecha`,' ',`f`.`Hora`) <= ifnull(`hpp`.`Fecha_Fin`,concat(`f`.`Fecha`,' ',`f`.`Hora`)))))) AS `Monto` from ((`detalles_facturas_compras` `df` join `facturas_compras` `f` on((`df`.`Id_Factura` = `f`.`Id_Factura`))) join `productos` `p` on((`df`.`Id_Producto` = `p`.`Id_Producto`))) order by `f`.`Id_Factura` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_detalles_facturados_ventas`
--

/*!50001 DROP VIEW IF EXISTS `v_detalles_facturados_ventas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_detalles_facturados_ventas` AS select `f`.`Id_Factura` AS `Id_Factura`,`df`.`Id_Producto` AS `Id_Producto`,`p`.`Nombre` AS `Nombre`,`df`.`Cantidad_Unidades` AS `Cantidad_Unidades`,(select `hpp`.`Precio` from `historico_precios_productos` `hpp` where ((`hpp`.`Id_Producto` = `df`.`Id_Producto`) and (concat(`f`.`Fecha`,' ',`f`.`Hora`) >= `hpp`.`Fecha_Inicio`) and (concat(`f`.`Fecha`,' ',`f`.`Hora`) <= ifnull(`hpp`.`Fecha_Fin`,concat(`f`.`Fecha`,' ',`f`.`Hora`))))) AS `Precio`,(`df`.`Cantidad_Unidades` * (select `hpp`.`Precio` from `historico_precios_productos` `hpp` where ((`hpp`.`Id_Producto` = `df`.`Id_Producto`) and (concat(`f`.`Fecha`,' ',`f`.`Hora`) >= `hpp`.`Fecha_Inicio`) and (concat(`f`.`Fecha`,' ',`f`.`Hora`) <= ifnull(`hpp`.`Fecha_Fin`,concat(`f`.`Fecha`,' ',`f`.`Hora`)))))) AS `Monto` from ((`detalles_facturas_ventas` `df` join `facturas_ventas` `f` on((`df`.`Id_Factura` = `f`.`Id_Factura`))) join `productos` `p` on((`df`.`Id_Producto` = `p`.`Id_Producto`))) order by `f`.`Id_Factura` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_encabezado_factura_compras`
--

/*!50001 DROP VIEW IF EXISTS `v_encabezado_factura_compras`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_encabezado_factura_compras` AS select `f`.`Id_Factura` AS `Id_Factura`,`f`.`Fecha` AS `Fecha`,`f`.`Hora` AS `Hora`,`a`.`Id_Admin` AS `Id_Admin`,concat(`a`.`Nombres`,' ',`a`.`Apellidos`) AS `Nombre_Administrador`,`u`.`Id_Usuario` AS `Id_Usuario`,`u`.`Correo` AS `Correo`,`mp`.`Metodo_Pago` AS `Metodo_Pago`,`f`.`Latitud` AS `Latitud`,`f`.`Longitud` AS `Longitud`,`f`.`SubTotal` AS `SubTotal`,`f`.`Total` AS `Total` from (((`facturas_compras` `f` join `administradores` `a` on((`f`.`Id_Usuario` = `a`.`Id_Usuario`))) join `usuarios` `u` on((`f`.`Id_Usuario` = `u`.`Id_Usuario`))) join `metodos_pago` `mp` on((`f`.`Id_Metodo_Pago` = `mp`.`Id_Metodo_Pago`))) order by `f`.`Id_Factura` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_encabezado_factura_ventas`
--

/*!50001 DROP VIEW IF EXISTS `v_encabezado_factura_ventas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_encabezado_factura_ventas` AS select `f`.`Id_Factura` AS `Id_Factura`,`f`.`Fecha` AS `Fecha`,`f`.`Hora` AS `Hora`,`c`.`Id_Cliente` AS `Id_Cliente`,concat(`c`.`Nombres`,' ',`c`.`Apellidos`) AS `Nombre_Cliente`,`u`.`Id_Usuario` AS `Id_Usuario`,`u`.`Correo` AS `Correo`,`mp`.`Metodo_Pago` AS `Metodo_Pago`,`f`.`Latitud` AS `Latitud`,`f`.`Longitud` AS `Longitud`,`f`.`SubTotal` AS `SubTotal`,`f`.`Total` AS `Total` from (((`facturas_ventas` `f` join `clientes` `c` on((`f`.`Id_Usuario` = `c`.`Id_Usuario`))) join `usuarios` `u` on((`f`.`Id_Usuario` = `u`.`Id_Usuario`))) join `metodos_pago` `mp` on((`f`.`Id_Metodo_Pago` = `mp`.`Id_Metodo_Pago`))) order by `f`.`Id_Factura` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_impuesto`
--

/*!50001 DROP VIEW IF EXISTS `v_impuesto`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_impuesto` AS select `i`.`Id_Impuesto` AS `Id_Impuesto`,`i`.`Nombre_Impuesto` AS `Nombre_Impuesto`,`hpi`.`Valor_Impuesto` AS `Valor_Impuesto` from (`impuestos` `i` join `historico_precios_impuestos` `hpi` on((`i`.`Id_Impuesto` = `hpi`.`Id_Impuesto`))) where isnull(`hpi`.`Fecha_Fin`) order by `i`.`Id_Impuesto` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_llenardescuentos`
--

/*!50001 DROP VIEW IF EXISTS `v_llenardescuentos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_llenardescuentos` AS select `d`.`Id_Descuento` AS `Id_Descuento`,`d`.`Nombre_Descuento` AS `Nombre_Descuento`,(`hpd`.`Valor_Descuento` * 100) AS `Porcentaje_Descuento` from (`descuentos` `d` join `historico_precios_descuentos` `hpd` on((`d`.`Id_Descuento` = `hpd`.`Id_Descuento`))) where (((`hpd`.`Valor_Descuento` <> 0) and isnull(`hpd`.`Fecha_Fin`)) or ((`d`.`Id_Descuento` = 1) and isnull(`hpd`.`Fecha_Fin`))) order by `d`.`Id_Descuento` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_llenarimpuestos`
--

/*!50001 DROP VIEW IF EXISTS `v_llenarimpuestos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_llenarimpuestos` AS select `i`.`Id_Impuesto` AS `Id_Impuesto`,`i`.`Nombre_Impuesto` AS `Nombre_Impuesto`,(`hpi`.`Valor_Impuesto` * 100) AS `Porcentaje_Impuesto` from (`impuestos` `i` join `historico_precios_impuestos` `hpi` on((`i`.`Id_Impuesto` = `hpi`.`Id_Impuesto`))) where (((`hpi`.`Valor_Impuesto` <> 0) and isnull(`hpi`.`Fecha_Fin`)) or ((`i`.`Id_Impuesto` = 1) and isnull(`hpi`.`Fecha_Fin`))) order by `i`.`Id_Impuesto` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_llenarproveedores`
--

/*!50001 DROP VIEW IF EXISTS `v_llenarproveedores`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_llenarproveedores` AS select `proveedores`.`Id_Proveedor` AS `Id_Proveedor`,`proveedores`.`Nombre` AS `Nombre` from `proveedores` where (`proveedores`.`Estado` = 1) order by `proveedores`.`Id_Proveedor` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_productos`
--

/*!50001 DROP VIEW IF EXISTS `v_productos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_productos` AS select `p`.`Id_Producto` AS `Id_Producto`,`p`.`Nombre` AS `Nombre`,`p`.`Descripcion` AS `Descripcion`,`p`.`Id_Categoria` AS `Id_Categoria`,`c`.`Categoria` AS `Categoria`,`p`.`Id_Proveedor` AS `Id_Proveedor`,`pr`.`Nombre` AS `Proveedor`,`p`.`Cantidad_Unidad` AS `Cantidad_Unidad`,`p`.`Unidades_Almacen` AS `Unidades_Almacen`,`p`.`Cantidad_Minima` AS `Cantidad_Minima`,`p`.`Cantidad_Maxima` AS `Cantidad_Maxima`,`p`.`Foto` AS `Foto`,`p`.`Estado` AS `Estado`,(select `historico_precios_productos`.`Precio` from `historico_precios_productos` where ((`historico_precios_productos`.`Id_Producto` = `p`.`Id_Producto`) and isnull(`historico_precios_productos`.`Fecha_Fin`))) AS `Precio`,`p`.`Id_Impuesto` AS `Id_Impuesto`,`i`.`Nombre_Impuesto` AS `Nombre_Impuesto`,(`hpi`.`Valor_Impuesto` * 100) AS `Porcentaje_Impuesto` from ((((`productos` `p` join `categorias` `c` on((`p`.`Id_Categoria` = `c`.`Id_Categoria`))) join `proveedores` `pr` on((`p`.`Id_Proveedor` = `pr`.`Id_Proveedor`))) join `impuestos` `i` on((`p`.`Id_Impuesto` = `i`.`Id_Impuesto`))) join `historico_precios_impuestos` `hpi` on((`i`.`Id_Impuesto` = `hpi`.`Id_Impuesto`))) where isnull(`hpi`.`Fecha_Fin`) order by `p`.`Id_Producto` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_proveedores`
--

/*!50001 DROP VIEW IF EXISTS `v_proveedores`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_proveedores` AS select `proveedores`.`Id_Proveedor` AS `Id_Proveedor`,`proveedores`.`Nombre` AS `Nombre`,`proveedores`.`Contacto` AS `Contacto`,`proveedores`.`Telefono` AS `Telefono`,`proveedores`.`Correo` AS `Correo`,`proveedores`.`Direccion` AS `Direccion`,`proveedores`.`Estado` AS `Estado` from `proveedores` order by `proveedores`.`Id_Proveedor` */;
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
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-23 15:47:51
