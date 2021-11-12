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
INSERT INTO `administradores` VALUES (1,'0801-2000-19327','Miriam Ariel','Mondragón Espinoza','98379065','2000-09-27',1,'2021-11-06 14:56:42','2021-11-06 14:56:42'),(2,'0801-2000-17903','Karol Stephany','Palma Ventura','90245322','2000-07-06',2,'2021-11-06 14:58:43','2021-11-06 14:58:43'),(3,'1','1','1','1','2020-02-02',4,'2021-11-11 13:27:56','2021-11-11 13:27:56'),(9,'0801-2002-122122','MARIO Luis','Espinal Paz','90345223','2002-09-09',11,'2021-11-11 15:35:17','2021-11-11 16:16:43');
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
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitacora`
--

LOCK TABLES `bitacora` WRITE;
/*!40000 ALTER TABLE `bitacora` DISABLE KEYS */;
INSERT INTO `bitacora` VALUES (2,1,'Samsung Galaxy Note 4','Android 6','2021-11-06','14:58:43','Inserción de nuevo administrador. Usuario: kpalma: Karol Stephany Palma Ventura'),(3,1,'Samsung Galaxy Note 4','Android 6','2021-11-06','15:06:11','Inserción de nuevo cliente. Usuario: manuelguarda: Manuel Maria Guardiola Espinal'),(4,1,'Samsung Galaxy Note 4','Android 6','2021-11-06','15:30:20','Actualización de cliente. Usuario: manuelguarda: Manuel Maria Guardiola Espinal'),(5,1,'Samsung Galaxy Note 4','Android 6','2021-11-06','15:30:58','Actualización de cliente. Usuario: mguarda: Manuel Marcos Guardiola Espinal'),(6,1,'Samsung Galaxy Note 4','Android 6','2021-11-06','15:38:55',NULL),(7,1,'Samsung Galaxy Note 4','Android 6','2021-11-06','15:40:04',NULL),(8,1,'Samsung Galaxy Note 4','Android 6','2021-11-06','15:44:21',NULL),(9,1,'Samsung Galaxy Note 4','Android 6','2021-11-06','15:45:10','Desactivación de cliente. Usuario: mguarda: Manuel Marcos Guardiola Espinal'),(10,1,'Samsung Galaxy Note 4','Android 6','2021-11-06','15:48:59','Actualización de cliente. Usuario: mguarda: Manuel Marcos Guardiola Espinal'),(11,1,'Samsung Galaxy Note 4','Android 6','2021-11-06','16:11:24','Actualización de administrador. Usuario: kpalma: Karol Stephany Palma Ventura'),(12,1,'Samsung Galaxy Note 4','Android 6','2021-11-06','16:11:43','Actualización de administrador. Usuario: kpalma: Karol Stephany Palma Ventura'),(13,1,'Samsung Galaxy Note 4','Android 6','2021-11-06','16:14:53','Desactivación de administrador. Usuario: kpalma: Karol Stephany Palma Ventura'),(14,1,'Samsung Galaxy Note 4','Android 6','2021-11-06','16:15:11','Actualización de administrador. Usuario: kpalma: Karol Stephany Palma Ventura'),(15,1,'Samsung Galaxy Note 4','Android 6','2021-11-07','13:13:40','Inserción de nuevo descuento: 1: Tercera Edad, con valor de: 0.4000'),(16,1,'Samsung Galaxy Note 4','Android 6','2021-11-07','13:16:38','Actualización de descuento 1: Descuento de Tercera Edad, con nuevo valor de: 0.2000'),(17,1,'Samsung Galaxy Note 4','Android 6','2021-11-07','13:17:09','Actualización de descuento 1: Descuento de Tercera Edad, con nuevo valor de: 0.4000'),(18,1,'Samsung Galaxy Note 4','Android 6','2021-11-07','13:17:33','Actualización de nombre descuento 1: Tercera Edad'),(19,1,'Samsung Galaxy Note 4','Android 6','2021-11-07','13:20:46','Desactivación de descuento 1: Tercera Edad'),(20,1,'Samsung Galaxy Note 4','Android 6','2021-11-07','13:21:12','Actualización de descuento 1: Tercera Edad, con nuevo valor de: 0.4000'),(21,1,'Samsung Galaxy Note 4','Android 6','2021-11-07','13:26:31','Inserción de nuevo impuesto: 1: Bebidas Alcohólicas, con valor de: 0.2000'),(22,1,'Samsung Galaxy Note 4','Android 6','2021-11-07','13:27:38','Actualización de impuesto 1: Bebidas Alcohólicas, con nuevo valor de: 0.5000'),(23,1,'Samsung Galaxy Note 4','Android 6','2021-11-07','13:28:52','Desactivación de impuesto 1: Bebidas Alcohólicas'),(24,1,'Samsung Galaxy Note 4','Android 6','2021-11-07','13:29:03','Actualización de impuesto 1: Bebidas Alcohólicas, con nuevo valor de: 0.5000'),(25,1,'Samsung Galaxy Note 4','Android 6','2021-11-07','13:58:00','Inserción de nuevo proveedor ID 1: Consome y Más'),(26,1,'Samsung Galaxy Note 4','Android 6','2021-11-07','14:07:08','Actualización de proveedor ID 1: Condimentos Co.'),(27,1,'Samsung Galaxy Note 4','Android 6','2021-11-07','14:09:36','Desactivación de proveedor ID 1: Condimentos Co.'),(28,1,'Samsung Galaxy Note 4','Android 6','2021-11-07','14:09:43','Actualización de proveedor ID 1: Condimentos Co.'),(29,1,'Samsung Galaxy Note 4','Android 6','2021-11-07','14:39:44','Inserción de nueva categoría 2: Verduras'),(30,1,'Samsung Galaxy Note 4','Android 6','2021-11-07','14:40:43','Inserción de nueva categoría 1: Verduras'),(31,1,'Samsung Galaxy Note 4','Android 6','2021-11-07','14:42:53','Inserción de nuevo producto: 4: Tomate, con precio de: 20.50'),(32,1,'Samsung Galaxy Note 4','Android 6','2021-11-07','14:44:39','Inserción de nuevo producto: 5: Tomate, con precio de: 20.50'),(33,1,'Samsung Galaxy Note 4','Android 6','2021-11-07','14:45:57','Inserción de nuevo producto: 1: Tomate, con precio de: 20.50'),(34,1,'Samsung Galaxy Note 4','Android 6','2021-11-07','14:49:27','Inserción de nuevo producto: 2: Chile Verde, con precio de: 20.50'),(35,1,'Samsung Galaxy Note 4','Android 6','2021-11-07','14:55:38','Descontinuación de producto 1: Tomate'),(36,1,'Samsung Galaxy Note 4','Android 6','2021-11-07','15:09:38','Actualización de producto 1: Tomate, con nuevo precio de: 22.50'),(37,3,'Samsung Galaxy Note 4','Android 6','2021-11-07','18:51:14','Nueva factura de venta registrada. Usuario: 3'),(38,2,'Samsung Galaxy Note 4','Android 6','2021-11-07','19:07:54','Nueva factura de compra registrada. Usuario: 2'),(39,1,'Samsung Galaxy Note 4','Android 6','2021-11-07','19:18:32','Anulación de factura 1'),(40,1,'Samsung Galaxy Note 4','Android 6','2021-11-07','19:21:57','Anulación de factura 1'),(41,1,'1','1','2021-11-11','13:27:56','Inserción de nuevo administrador. Usuario: 1: 1 1'),(42,1,'','','2021-11-11','14:25:50','Inserción de nuevo administrador. Usuario: mespinal: Marcos Luis Espinal Paz'),(43,1,'','','2021-11-11','14:29:33','Inserción de nuevo administrador. Usuario: mespinal: Marcos Luis Espinal Paz'),(44,1,'','','2021-11-11','14:33:44','Inserción de nuevo administrador. Usuario: mespinal: Marcos Luis Espinal Paz'),(45,1,'','','2021-11-11','14:54:53','Inserción de nuevo administrador. Usuario: mespinal: Marcos Luis Espinal Paz'),(46,1,'','','2021-11-11','14:56:32','Inserción de nuevo administrador. Usuario: mespinal: Marcos Luis Espinal Paz'),(47,1,'Google AOSP on IA Emulator','Android 9','2021-11-11','15:00:47','Inserción de nuevo administrador. Usuario: mespinal: Marcos Luis Espinal Paz'),(48,1,'Google AOSP on IA Emulator','Android 9','2021-11-11','15:35:17','Inserción de nuevo administrador. Usuario: mespinal: Marcos Luis Espinal Paz'),(49,1,'Google AOSP on IA Emulator','Android 9','2021-11-11','16:16:43','Actualización de administrador. Usuario: mespinal: MARIO Luis Espinal Paz'),(50,1,'Google AOSP on IA Emulator','Android 9','2021-11-11','16:28:42','Desactivación de administrador. Usuario: mespinal: MARIO Luis Espinal Paz'),(51,1,'Google AOSP on IA Emulator','Android 9','2021-11-12','10:09:49','Inserción de nuevo cliente. Usuario: mpaula: Maria Paula Castro Paz'),(52,1,'Samsung Galaxy Note 4','Android 6','2021-11-12','10:37:34','Actualización de cliente. Usuario: mguarda: Manuel Marcos Guardiola Espinal'),(53,1,'Google AOSP on IA Emulator','Android 9','2021-11-12','10:50:51','Actualización de cliente. Usuario: mpaula: Mario Paulo Castro Paz'),(54,1,'Google AOSP on IA Emulator','Android 9','2021-11-12','10:57:58','Desactivación de cliente. Usuario: mpaula: Mario Paulo Castro Paz'),(55,1,'Google AOSP on IA Emulator','Android 9','2021-11-12','14:25:35','Inserción de nuevo producto: 3: Corn Flakes, con precio de: 30.00'),(56,1,'Google AOSP on IA Emulator','Android 9','2021-11-12','14:32:14','Inserción de nuevo producto: 4: Carneeeeee, con precio de: 30.00'),(57,1,'Google AOSP on IA Emulator','Android 9','2021-11-12','14:35:41','Inserción de nuevo producto: 5: Carne, con precio de: 30.00'),(58,1,'Google AOSP on IA Emulator','Android 9','2021-11-12','14:37:18','Inserción de nuevo producto: 6: Carne, con precio de: 30.00'),(59,1,'Google AOSP on IA Emulator','Android 9','2021-11-12','14:38:17','Inserción de nuevo producto: 7: Carne, con precio de: 30.00'),(60,1,'Google AOSP on IA Emulator','Android 9','2021-11-12','14:39:42','Inserción de nuevo producto: 8: Carne, con precio de: 30.00'),(61,1,'Google AOSP on IA Emulator','Android 9','2021-11-12','14:40:32','Inserción de nuevo producto: 9: Carne, con precio de: 30.00'),(62,1,'Google AOSP on IA Emulator','Android 9','2021-11-12','14:41:54','Inserción de nuevo producto: 10: Carne, con precio de: 30.00'),(63,1,'Google AOSP on IA Emulator','Android 9','2021-11-12','14:42:51','Inserción de nuevo producto: 11: Carne, con precio de: 30.00'),(64,1,'Google AOSP on IA Emulator','Android 9','2021-11-12','14:44:21','Inserción de nuevo producto: 12: Carne, con precio de: 30.00'),(65,1,'Google AOSP on IA Emulator','Android 9','2021-11-12','14:45:16','Inserción de nuevo producto: 13: Carne, con precio de: 30.00'),(66,1,'Google AOSP on IA Emulator','Android 9','2021-11-12','15:01:21','Actualización de producto 3: Corn Flakes, con nuevo precio de: 10.00'),(67,1,'Google AOSP on IA Emulator','Android 9','2021-11-12','15:10:51','Descontinuación de producto 3: Corn Flakes');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Verduras','Conjunto de verduras y vegetales frescos.',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'0802-2000-19423','Manuel Marcos','Guardiola Espinal','90905432','2000-04-28','Blvd. Morazán Edificio No. 25 Apartamento 17',14.10000000,-87.21670000,3,'2021-11-06 15:06:11','2021-11-06 15:30:58'),(2,'0801-2000-19423','Mario Paulo','Castro Paz','90894311','2000-01-01','Por aqui vive la Paula',14.10000000,-87.21670000,12,'2021-11-12 10:09:49','2021-11-12 10:50:51');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `descuentos`
--

LOCK TABLES `descuentos` WRITE;
/*!40000 ALTER TABLE `descuentos` DISABLE KEYS */;
INSERT INTO `descuentos` VALUES (1,'Tercera Edad');
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
INSERT INTO `detalles_facturas_compras` VALUES (1,2,1,1,1);
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
INSERT INTO `detalles_facturas_ventas` VALUES (1,1,2,1,1),(1,2,1,1,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facturas_compras`
--

LOCK TABLES `facturas_compras` WRITE;
/*!40000 ALTER TABLE `facturas_compras` DISABLE KEYS */;
INSERT INTO `facturas_compras` VALUES (1,'2021-11-07','19:07:54',2,14.00000000,-81.00000000,1,20.50,22.55);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facturas_ventas`
--

LOCK TABLES `facturas_ventas` WRITE;
/*!40000 ALTER TABLE `facturas_ventas` DISABLE KEYS */;
INSERT INTO `facturas_ventas` VALUES (1,'2021-11-07','18:51:14',3,14.00000000,-81.00000000,1,65.50,72.05);
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
INSERT INTO `historico_precios_descuentos` VALUES (1,0.4000,'2021-11-07 13:13:40','2021-11-07 13:16:38'),(1,0.2000,'2021-11-07 13:16:38','2021-11-07 13:17:09'),(1,0.4000,'2021-11-07 13:17:09','2021-11-07 13:20:46'),(1,0.0000,'2021-11-07 13:20:46','2021-11-07 13:21:12'),(1,0.4000,'2021-11-07 13:21:12',NULL);
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
INSERT INTO `historico_precios_impuestos` VALUES (1,0.2000,'2021-11-07 13:26:31','2021-11-07 13:27:38'),(1,0.5000,'2021-11-07 13:27:38','2021-11-07 13:28:52'),(1,0.0000,'2021-11-07 13:28:52','2021-11-07 13:29:03'),(1,0.5000,'2021-11-07 13:29:03',NULL);
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
INSERT INTO `historico_precios_productos` VALUES (1,20.50,'2021-11-07 14:45:57','2021-11-07 15:09:38'),(1,22.50,'2021-11-07 15:09:38',NULL),(2,20.50,'2021-11-07 14:49:27',NULL),(3,30.00,'2021-11-12 14:25:35','2021-11-12 15:01:21'),(3,10.00,'2021-11-12 15:01:21',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `impuestos`
--

LOCK TABLES `impuestos` WRITE;
/*!40000 ALTER TABLE `impuestos` DISABLE KEYS */;
INSERT INTO `impuestos` VALUES (1,'Bebidas Alcohólicas');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metodos_pago`
--

LOCK TABLES `metodos_pago` WRITE;
/*!40000 ALTER TABLE `metodos_pago` DISABLE KEYS */;
INSERT INTO `metodos_pago` VALUES (1,'Efectivo');
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
  PRIMARY KEY (`Id_Producto`),
  KEY `FK_Id_Categoria_Producto_idx` (`Id_Categoria`),
  KEY `FK_Id_Proveedor_Producto_idx` (`Id_Proveedor`),
  CONSTRAINT `FK_Id_Categoria_Producto` FOREIGN KEY (`Id_Categoria`) REFERENCES `categorias` (`Id_Categoria`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_Id_Proveedor_Producto` FOREIGN KEY (`Id_Proveedor`) REFERENCES `proveedores` (`Id_Proveedor`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'Tomate','Tomate tipo Cherry rojo importado y empaquetado.',1,1,'1 libra (16 onzas)',17,10,50,'/9j/2wBDAAMCAgMCAgMDAwMEAwMEBQgFBQQEBQoHBwYIDAoMDAsKCwsNDhIQDQ4RDgsLEBYQERMUFRUVDA8XGBYUGBIUFRT/2wBDAQMEBAUEBQkFBQkUDQsNFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBT/wAARCAEYAVsDASIAAhEBAxEB/8QAHQABAAEFAQEBAAAAAAAAAAAAAAcDBAUGCAIBCf/EAEkQAAEDAwMDAgQDBQMICAcBAAEAAgMEBREGEiEHMUETUQgiYXEUMoEVQlKRoSOx0RYzU2JygpLBCSQ4dqK08PEXGCU0Q2Nz4f/EABsBAQACAwEBAAAAAAAAAAAAAAAFBgIDBAEH/8QANREAAgIBAgUBBwMCBgMAAAAAAAECAxEEIQUSMUFREwYiMmFxgZEU0fChsRVCUsHh8SQzcv/aAAwDAQACEQMRAD8A/VNERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBEUf6t6r01oqnUNrYyuq4z/AGz3Z9KMeRkfmd9B28rTbdXRHmseEba652y5YLJuF9v1Fpy3SVtdMIYWdvLnnw1o8k+ygvUPWHU9wqZnWqpitUTnNMTXUzZ9rRnIOSMl2ecdsDH1xmodQ3DWFcK6tkGzGYYGZ2RNPgfX3PcrHvpXAB4GSRj2Cruq107Hip4X9yc0+jjBZsWWbLa/iG1JaQ1t707Dd4hwaizy7ZPv6T+/6EredMfELonU1QKQXT9mXDsaO5MMEoPnhyhWZjt+3bk+3kqHdT69p9U3CaO3NL6GyVcD/wAZgOE0wnY1zYyf3Gtc7Lh3J9hlaauI3weG8r5m6egpmsxWPofofTVcFbEJaeaOeI9nxODmn9Qqy4es2uLvpyrkNHVup5M4EjSQe/nGMhdhaD1GNWaQtV1//JUQNMoxjEg+V4/4gVO6XWx1TaSw0RGq0ctNht5TM+iIpEjwiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCItJ6hdS6XRsP4WBray8StzHTZ4YP43+w+nc/1WuyyNUXObwjOEJWS5Yrc8dXNT09j0xPTCqMVwqtrYIosl7huG44HIbjOSobNOzPpw/JT+A0Y49vsraWSrvFfLcK+d1VVzHLpXf0A9gPAHCv4IQ0c9/fwFUdTb+qs52sJdCzaen9PDlzuz4ISG4Hb2C+SBpG0jP0V4yAuOO/sMZXMfxPdeDQ6duFi0vUBxJZFWXGF5ADTI0PjjP1GQ53tkDvlck5xrS5n1OuEZTbwZTq31MbfpJtN6aqssOWV1whf8rm+YY3D/wATh9QPJWMtNjjtOjJ6WIARNg3YHABDmux9vlCwHT6zhlI15aHMHAP+KkappQ61VkYIw+B4JHYfKVqhmT5mdTSjFoup6cOkcBzhzjge/typR6QdWDoqodb61r5aCV2X8klpxjc0Y74GCPIA8jmMaiqj2scJdpIG7x3Hf7Kwmr43zOkMm6RoxkrZXbKianB7mNtMb4ck+h3hZdS2vUUAmt1dDVt8iN3zN+jm9wfoQsmuDrXfJoiyeCZzJRhoe15BaPoRyFJOn+tuprQ8tdWOromHmKrAkz27O/N/VWGnikJf+yOPoV63hc4/A8nVCKHLN8SFrcGMvNG+ic7j1IHiRvf2OD29sqQrD1A07qUNFvu1NNI7GIi/ZJ/wuwVKV6iq3aMkRlmntr+KJsKL5lfV0nOEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREARY2/6hoNM26StuE4hhZ2GMucfZoHJP2UOao6zX2eCVtshio2VTvShc9u6WEckv743Edhjhcd+rp0203v4OmnTWX/Ajb+pfVaLS++2WvbU3hw+YnllMD5d7u9m/qfrB0TJ6urkqqiSWonmcXSyynLnOPuV6gpXSEueXOe4kue85Lj3JJ8k+6ytLSBoaQRkDCq2o1E9TPMunZFjoohp44j18lxSUzWsG3cOOyv4YARuPytHcleIWhrHPcA1jQXEk4AA5JJ8D6rnDrT1pOpHyWOxVLo7PHltRVxO2msP8Lf/ANY/8XnjC4dTqYaSvnn9l5OyiiepnyQ+78F31q62G6PqdPacqXNoG/JVV8J2mf3Yw9w3Ocnz27d+bdc0hl0zXhvGI9wHgEc/8lsBkbETkcHjP6LWNZXmFlqrY3n5TC5o3HsS0qsQ1FmpuVkv+ixSohp6XCJO+lom09kp5d2CQCQ098hZN9/kZva3J3NLc575GFEtN1Wsdr07QtrL5S08hp4z6ZfySWjx4VxauptorJ2tirGSseeXh2Qc+2FY3PkSIpRUyRKW7SSUMBbKC4xsyT2ADQP5BWj7kTUGNxYcjHBUd0vU2jiZFGyfL2tAIHjHCxNX1Hghn3YL3ZOdvlc8rFk2xjtknGzV+1wLnB3+rz4W4vvtBbLf+PrKqOGLGBvP53Y7AdyfsoM0z1ApayF7t+wRt3EeTwrptVPeZmVFQTK88Rs/dib/AAt/9cqM4hxaPDq00syfRfuWXgns/PjVknKXLXHq+/0X82L+/XXUupbrILE2lla539m2sm9PI8dxj+a1yfqJq3p3dY6DUlsfQVGN7A7hsjM8ljwS1w+oWzUsM1LUNO0x45Bx5Wxa3udv1h05rrBf/SmewCWhrSAJaWQfvNPkEdwoXQ8Wsvb/AFHuvtgtHE/ZevTwUtF73lP+5vvSb4i7rVW7dRXSpc1naGV4ka0e2HZH8lOGnviVEhbHc6GOQ45fA703f8Lsg/zC/LnpB1EGmb/NTVc+1jXOhkAzje12M/zC6ItnUS2XKqaYKpjy/s0OyQr5Rr76VyuR8mv0FF2Xy4P0EsnVzS182NZcmUkru0dYPSPfHc/Kf0K2+OZk0bXse17HchzTkH9VwZaa+K4DaJ3Mfk/PuzwfH2W1WPU1304S+juE9E5hGRDIWgjPlvY/qFYKuJt/HH8EBbwxL4Jfk7MRc56a+Ia+U7Q24xU1yYDy4j0n4+7Rj/wrbJPiWsUFHukt1cKr/Qt2kE/R2R/cpGOuoksuWPqR0tFfF45ckjXHWVltF0Zbqy4w09Y9geI3kjDTnBJ7DOD3Ky0FRFUxNkikZLG4ZD2OBB+xC4y1Lqmu1PqatvFQ/ZJUOADIzxGwcNaPfA/mcrIOqtf6UfBU6brKOYFpdUUFVM+CQnxtkAcwnHcPYefIXCuJ+88x2O2XDWorEtzsFFzhp34sJLSGQ6309X2bnBrHQh0Pf/Sxl0f6ks+ymvSfUXTmuKZk1lu1NXNeMgRvGSPoPP6ZUnVqqrvgkRlmnsq+JGyIiLqOcIiIAiIgCIiAIiIAiIgCIiAIiIAvh7L5JI2JjnvcGMaCS5xwAPcqBOpvWJ98fLaLDI5lvyWT1rO848tYR2b9e58cd+XUamGmhzT/AB5Oiiid8uWJZa+1JRXXVd2l/HsrYqOQRU+x+7GWgua0dvzdytWa6eul9R/yjGGMaOGD2H+Kt7db4w7d6W77LPx07Y2gABoPhUuWbbHbLuWuKVcFBdilDCdga3luO5V46aGgppZ55I4IIml8ksrg1jWju5zjwB9SrW6Xai05bKmvuNQyjo4Gb5Jn/lA8fcnsB7lcgdZuuNZ1BuLqOjMtDp6LIipS7D5z2MkoBwfo390HyeVo1Gphpo5lu+yOiiieolhbLyZTqX8Uw11r6+dP7SBR2ejgbN+LY/Lrl82H+OIxxhv73c+AtBnnY2N24BoxwVA+pbz/AJNdWdM3s8QzE0VQfo/gf1wpLvmo5IjKI2SSGJm4taD8oJABP0JI5+qr2vqnfOu5f5o/hp4f7/cntHOFMZ1/6X+c9P2+xfXK8PJZTwRvqqh3+bjiGXH/ANe6wzOmOotQTme5MibE4/JS+pl2P9bGR+il7p9p+jNNC2tLGy+m576r5QY88nOfzNH8wrmtZO+tdSxODPTcWySRnId9AR4+qqtvEraF/wCOko9OZ/7H1Hhns9p5zT1jzYlnl25V9euWtsrtlbbpvQrT00moI5Iq6gYIg3IDGiQEe3GcfYqI9TW6js2ozNZcw4laJKJgOJD52j904BJ8cc4XWema+awVbZNnqR5+YeSsh1K6aaU6zacq6ykc2xaopIjK2pi/sjOB3a8j8wOMZ7jwu/hWtjbNylPd9V/Ov9zD2k0E/wBO40VKT7Px+N1/bzscYUtdG+WWRjnNbvd+dpHn6/4q5luRY3JALe60u4aj1jFri4afoXS0MtFIWzGpqZJwz3wHkt58ADkLeWw1dPaDFdvwksc5GyshpRC+KcA7C/aMFhPBB8kd1b7o+i4uWPe3STy8P7Y/qfIoabXSosvVPu15TeV264TxnHyMnoi8EX+lZJvFPK4sDsHaXY4XVXTm0NqLrTB8bpogQ9zGckj3AXJ/SShaLjJU1M80heAwRTuyWnnJPPf+7suhqi53rpxZ6W+S0c8tnkwYa+EE+nzgB/tzwD2+yp/Fa5W62Lqi5KGMr7n2X2cou0vB/Tvkoytbcd/KSW/zxklLrlqLSlBNTwaXc6oqdgbKJG42v8j34UJR6LOrZyblf6627z3hjY5o/Q/4rL6Qin1bcZK6cepU1Ly858DwFvNbpv8AZsQc9m7HsOAom3V226l211pJPp2LVXRVoNMtBKbcmt23vv8AM5r6n9Cbj0xon3yIRXaxSSHfd7eZHPge4/L68bnHGSSNw47YOeDpdl1YI4muZN8zXEAgYJ+q7At9xo3w1ltuDBNa6+B9JVwvGQ+JwweD7dx9QuU/wthoKmo0fbrHR3HUNPUvjrauudLuEZJ9OWNzHtAAHcYOMt4IJxf9Hq69bTzTWGt38ku58Q45wa/hWprhp4ucbHhecvtv5Je6e9XHNe3ducXcFw5GVumpuslNGY2w1D3zZa10MfLgT4x5P0UQ6T6YU1kiZ6kstbNj5nPeQ0n/AGRwB/NSLS6R0fcacx11rnt9x2kCvtcpilBP72DlpP3C44ca0rs9GMvuSd3sZxWuj12o83+nO/32x+Gy70z1vttXUAPq/SOeA88A+xBUx26/0d8gikbK0uc0YPg5GcrjLqJ0YuOhIZLpZax1/ssY9R5LPTqado8uYMggeSO3spB+GCe8a41TDRQmY22mYJ6mYnLY2ZwB93HgfqewU/XbzpOL5kykajT2aebhdFxkjrXTNB604rJG5iicfSB7Of5d9h/f9lsZL5Dl73DJ7YVSOnZAwRsaGNaA1rR2A8BWtxqmUFNPUSkiKNhc4tBccfYZJP0C7CMbzueKhscbnYPzHjOecLS75BZtLF97ZRQ0twjP9lJSZhke/wAcsIyfOTlZme+U8IqnVMjGMhaHvHILWn8vfnJ9sd+FFOoLxPqa5erJlkEfEUX8Lf8AErktsxtHqbq4c28uh+gHTq7Vl+0JYbjcHNfW1VFFNM5owC4tBJwtjWC0LSGg0VYac8GKggafvsCzq+g1Z5I564RSbMc7x5CIi2GAREQBERAEREAREQBERAERfCgOWeuXXeO5VdVZ2Grtmnaed9NUV4hc+OeRhw5r3MyWMB9xg9yfC13T0lHcaCOqoqmnrqR/5ZqWVsjXfZwJCuqiP9m6+1pQEYbHdXyD2w9o8foVga/pHYq64PulsfWaYvDzudXWab0C85/fjwWSf7zSqXfzW2ylN5ZbaVGutKK2NzpZPR4D/k5PzeFS1Fq+1aPs8l1u1W2loWZBONzpHfwsb3c4+wWgyP6iaQc4VdLbtc0GAPxFM00Vcz6uYMskA84LSfAyuQ+ofUDUWotRVMmpDPDUwEsjopWuY2nbnsxh8duccqPvudMdo5Z2VVq17vCN+63db67qBTsazdbbJDMDT0AducfG+Vw/M7+g7BQpW3TfG3dIHtHGFitZ390lsEdOC/dIwBo5cSeO3ckqNLhe6uWobROq4KOVz3QNNS9wBeMZb8od5IGewPdR9Ois1T9Sb3O+zUwoxCCNnuenjr2tttva7BqrvT0jJxnawb2bgD/ERICM+GFXlVqGutr6a7zwtrH1j55PScXOYYBIWMYQP/5kg5z2IxhSx0Y6d2imtNnp/wALNc6iKpiudRVUV5ppfRrGtc31PTwHBgaSADxjucnK3jUsFsoBNVaOs0FxqXxsDYZWPg2y78PGzO3GCD8hxlp917q9fVp0qcZx52ycPDdZdHidlColZZhbRWcdfiecR7bvphlha36cumlLdDqSz1rH3KJs9HRPqH/iqYg/LKcDO08/MdvB5HKkfpJpKTU+oKC0QtIa4HaAOcAKArrZdfaeo33KosjKwyTRvLaR4D2AOBcHk4c8kZAAyO57rp34TOsmlrXfJ6+6F9NM2Exjc07onZ5BHcf/AOKr6jT036miM2o1c3vbrC7/AGz0yz6t7P18W02i4jrr4znfLlST3woqSXL5Szh7tvCbxku9f6UZpS5SUm/eY+D9CtJkurKWGbDuS0hb31Y1bb9S6hrKugeXwyHIcW4ChnVFwZQ0bsYMryGNBOOScD+9VjXqqesdWle2dmvqfSuD1W36av8AUp8zSzkh+62alvHUy4VI3+pUxxslZC0N+baAXbuTnAHspdquiFmu+jpHC5VYJYC+AAFxwQeD9wtc6A9O7lrzUlbW00T5myzODHNGQRuxnPtwpOu0hdVz0NJORRQPMTpojj1iODg/w5z91M63UXaVwa+GKUc/NJdPoeajS6K+bqpSy95fR+fGTk+5aWvWk9TSi2SS1tO57nR7oyH7ic7DgEEnnHbOMd8A7zcPizu8/TqLR0sQipYS4SRvb8xzwRzyPsujunkbKepNO0Rgkn5JGja77rRutHSuzdWHSOnpH2m40/yuuNLBl7SDyC394YI/mFP6TiNVkISuW7WG14264+xUOMTq4bta16cd1zdmot9fonjrvhd9nRXVNJTQ2q4+vGaYyNGSfzDGXDH0Hf8AT3XVut9c9NLnpYGhq2Nry38uwjnC/MXqhq289HOoNLaZbRLadPU1Oyns5Iy2aIAb3uP+kc8lzvPI8YWwWvrjTV9F6zy6PkNLuSzPtlePQ6rQ1z/TVxsrs3y1nH0w9vn8zop1PDPah06yy91Wx6wyl9M56prfK23J11Ze4ozM6me0NwTnsoN0w9lf1TvU8T2ubIyKEPAxkge/6rEap6ounpKZjHPL6wksbENx9NudzsD7H+RWm9Hdaxv1BVw1E5E00nrMe/gn/wBuFq03CtTVpLrp9Wsf1X7FqXGeEz1mn0EZqU1JvPhqMor75bS+n0O5enmh59R1sVLBHvfnhZLXmlY9IXR9PV4hmjbl7T/eo76f/ELW9Ma1tVTsgmlc3a0zDIWq6365XLqLqCprKhpqq6rkDWRQtJLiThrWtHfngBQFWij+lXLFu1vfxg3T0vEZa6Vk2lQl1zu3+xfuul/1vrClsWmITPVykta39wN/ec8+GAdyfH3wuteknSi2dI9Iw2a2ta52TLU1IbgzSnufoB2aPAA+q174dOkE3TfT9RXXYRnUN22yVDQP/toxy2AO84Jy7xu48KWJTgDDuPIX0Hhuj/SUpPq+p8F9rOLU8S1vp6VL069k/wDU+7+nj89yiSA/kg8eVouutU0lvdFTRubU1ZeWMp2uyd2GnkfYg5IwBkreHNc44HlRf1XggvEFZQ0cjaKtlhED7lDEx00YByGhxGccnzxk4wVIWS5YlLhHmZGct7qr7qN1JQPZUNY8OuFbsy1wBOGDPPfIb57k9jnZrRp+pu11o6CkgdPVVMrYo42DJcSV4sdipbHbxT0zflB3Pce73YAyf0AAHgAKYvhloxN1RDy3cYKCaQOPcEljc/yJCwoqV1kYeTO611Vymux1lQ04pKKCAdoo2sH6ABV0RfQFsUgIiL0BERAEREAREQBERAEREAXw8hfUQHLHUGjdbutmo48DZU08FUM+eCD/AFKRZIBxx/cpZ68UbDYLfW7B6kVW1heByGua7j7ZAUT07f7Ic4PYgqq6qv07pLzv+Sy6afqVRfjYq8gY7sPYjuFGHxGaSg1N0uur47ZT191p9ksDpYwXna4OLQe/zAFvHupSjw3k8gkcey8S0UNwp5qepYJIpAWOaeMg+3t91ySXMmjqi1Fps/MilpLHHDC2Nks9TXQh9I2OpLZIHSOcxzGvLeHsDXN3Y4JyO4WOpulenbxqWjoX0FXa46QCCjuVNUmaAu5JE7S0lpLnEFzSef5Lo3rD8NdJpq51tzpaRzrdWZInpC5hidnJBwfuT7e+FDGr9RQaAi9KlpDJA2mcJPTYHES4/sx3GGZHOASqxZqL673RDKk8/T7b7/cn6uATu09nEKrublWYqOeZSS7p5XXGeue2ESLpbT0GnIKq20stNNI1/o1FTSAlkmP3Wud8xbn37nwBgLfbFpKqq6d88cZ2M/e8BQf0w6gUj7VTmeVrZJGNlJP1HP8AVdfdI+suj6LRtVarqGeu9pLZcZyVSrNHPV66ders5Fvu+mV0R91gpcJ4XW9BV6kpcrk11k31k/P+y2WyI+kfWQNfSTuL4Xja5rxkKAeuN7boC9M1JSS+k+KRkNWSMCRh4aXY7kHAz7Y9lNur9dUsldIaYgR5Oz3wubutuo6K6Uxt9W5hNbIxnzPDQA1wcTuIOO3fC2cLi7dTClpyh0fzXf8Acl9RbboOH263CjJR2/8Artlf0fk3Wx9fqDU9rhNEySrqntI/D0sMkrsjv+VpUMdWepepLjWsBslfR2iGTE1RNGWjP8Jxnbx/Fz9lPui9OWfTGnLbYmufUOqZY7hFANrauGB7dpdngFgzkjOTnICvLXFBcrrdnRMZNbXSO3Q4xHIAOMjsf/dTFdeh4Xd61dOVnG7856fxlG4V7RW+0bt0FFvpzinLMY7NJxSXvZfvZaa2ax1wzZPhw672Cx9Mr7HbzFT3iWhkp4Ijw4PczY3b9s5V/amR/ho2RNHygN4XGXUCqp+n+qYL3ZqX8AylqmvnomE+k4bs7mj93PYjtzkYXSWheo9HeoqOtopPxEdQwSRhgycH/wBYXBx7SWSopspy6lnHyb3af79y0cNUYanUUWbX+62s9VhpNfLr9GThBpyrs9DTXKogdAJRlr3D8wUcdS7XcrjNHW0d0qHQmrZUPpGSbMPAwOfDfJHkgcgrede9ZL7rbTlpsQhp7XS0IaPUiYDI/AxyT2+yjW42W4XiI0lFdyXyja8ytwB+oWqp6eqxLSWZ6ddt++3c49XwV8Y0M6uK1r3s7J52T237P/owvUe42ejoqWl1RRW6/W4SgRwNjxsc4gCVgfu2uZlxzjBHcEKz6h1FoslJarCyGg1BR/h46qSSvpmBkbA3a3Bw0ZcQThgwcZAGFT65dINcM0ZR1dDbnXehpWO/EVNFMZJonH5WP2twdrWnxkZccjjKr6p0my59R6OaVsU0EFopIQwuBPyx8gNHJ5BVnjC2FMXOWerwvO2MHy2zgWhfEaqKF6dfJLKbe7i1h5Uk0929ms9Wanpe9aJbWboaWO1VbjK1zoZhLFFEBhwAfy0EZAAJ5P1VtqXQtlvtufJbKSCOuMYnj9FmXwtz2+XgOzxx7EDjk7vL0usmqNSUEjIfRYMSlsOGsmI7eOfst3u9kitVylp4pgGxnD49m3Z24Pue/b6KE1fEvRfPUnzLrl/0+eceC4ezfCrdNrXHUahTrmm4Ld5jF93u8Rc8rMnlvO5xxebjf9ObI7lba91JnZHUiB+0H2ORwft3XdvwmfD5JpGgp9X6ppCzUVQzdSUc7cOt7CDyR4lcDz5aOO+cSH0Y0RU/s110rgH0E7f+qwSt3B5B/wA4QfAxx7nnwFLLmNjb+X5/fCt/D7P1OnjfOrkb/mfuQPtPx3VK63h1N7lX0fn5xz3Xnv2bZ8IbGGjPYeFTcCXHHfPZHk5OT+hVjd7xDZaF0zsOlI2sZnuVJtpbs+apZLHVV6/ZNKYYnD8XKMDH7g91GNRGZBkkl2cnPlWevddU2nLTXXu71jYIIWmWaaQ/lA/v9gPchaz0k6hSdS9JMvktM2kjqJniCIO3O9MH5S//AFiOSPquOWZ+92OmKUdu5uLYyxpB4WV6YVGpqbrhoptorvwNnlkkjuuwjfO3LDHFyD8pIcXduGjlWT28AHuty6J0pqOqlgHJ2Suk/kxxXRps+tDHlHPqMelLPg7MHZfV8ByF9V/KWEREAREQBERAEREAREQBERAERfCcICKPiFv01psdlpWxRvp664MimkeCSzHLdvjJdjv4yoypHOLDnGPocqSfiapw/pyyrDA59HX08zXE424fyVHEIG3IxjOCWqt67Pr7+ET+ix6O3llcNPbuffyFWa7+ndW5cGgHvzjIVZj+TyMrhO0rGBkrC2WJk8TvzMlaHNP6FR7r34dNDdSIpBcrJFFK4EetTEscP1BB/qpFZjueFVjk2PAwCOxCOMZfEjZXdZS+aqTT+TwcW3//AKPqSyOe/RuppYwS5zKK6ND2jn8oe3Bx55BUO6x6cdRulJmddrDVOp4ck1tvzPFtHk7eWj6kBfpy0DzwT7r5V0UNXA6KWJksbu7XDIwuW7SVah5mslr4Z7V8R4WlCMuaPhn45XnrRIxji6tceNuGcn7LM9K6Gl18a29T1xN/om5obbNTl7XDIy/OcF2MnBGF+gXVP4MemnVB8tTV2WG3XN5LjWUA9CQn3Lm9/wDeDvsueNXfAzq7Qj/xuirk26MhO5jHERVDB9x8rv5NWqeippqa065ZPvt/N+526/2n1/Houm61VxWGo7pS+Un2z57FhYdIvudunul0nkmiqpXBswlIzg+D5PlbA79laXs1Q31HRUuMbyCSM+5x/Vav6VdpNzqa5UU1HXOeXPbPEWbnn8xaO3J9lJWgNT01NC5lwiirKWob6c1NUDLXNK+a32yV+LE+XO7f98dkfaNHpq6NFGzTRitltHH4z3x5ORetttgvlvFXRn0op6F1S5j9z3OayV8Ze0AH5TtBz2GT4Clj4X9BjSOgLfUzAuqrgw1hLjnY1/LGj2G3B+7irjrp0qtenb5NedP0lHe6OWma2jpKyWRjrYAH59NrCN5+bIyePY5IW5dN7lTXXSVsdShrI/wkTWBnYANAx9MYwpbjusX+Ew09D93m978bL+eCt8Kru1HG7tXqoNNQxFtPeLlvjzjZP6meusfp07tv+cJxke5Smo3UNO0vG157rL6U07JqHVVptsjg1s87Q4k/VSf1s6cRaYucDKdoMW0AlvbKqen0Vj0r1EVmKeG/my438Up0+pr0M370039kaFpfV1dYahslLUOZjgsPLXD2IUGfEDQSW3Wlu1hZ3SW9hLIKqnpCGNi5c5r254Dcl2c/T3Usw04gdI93BHAUXdVLvbZKaWK4MZVU/D3wOPDw05x/RS/DuI2RuhR8Szuvl3OLX6Cu+FltWIzxs/mV9L9Q5odPTzWypoq27lwe6d4IZNk44LWuI5OezT9Spp6GdObl1Co/8oNTOcym9Xa+HnFQ5udwY53OwHAJ/QY8Qf8ACP03qdcUD5I2SU2n4ap34iuf+Z/OREz+J+Mc9mjk+Ae9LfSwWqhp6OiiZT0sLBHFGz8rGjx/678+6t60K1FrjfD3IvbPWX/H86ZPgtlMOB6qet017lqLVvhKMYJ7vZbcz8vLXVvOGZJu2GINY1scTGhrGxjAAHAAA7DwsbdbqKKmLi1z3H8jWgkk4J5Pgcd1UlqGEAb/AJhwQOy0LqJfa6PZRW+hqJpXM9R9R6RMETOclzx2wQ0kd+2O+RPt4WxXUuZ7lFmuv2Vd42Vr2SvdCPxlREAyNsnAYCC44HJAAPgkrC6o1H60T6yaVrImtJG52Gtb3z/zyovkMmvbo+30Mj2WaL+0qq3cC6bkgnOO7sEN9hkjhrcwJ8XPWm4UtwZ0+s1KWtlijEu1u/1twAjp2t+20nPfIHbOdEK53zUI9WbZNUxc32Ne699Tr71W1lbtLaeg9a0PPqRS7nbZcHmZwH7rfA+o4yQF1p0Z0ZUaK0PQWype6SZjQ8hwwWZA+UjwfJHucKJPhZ6Ey6UtcWoL/H6t3lAMbXY2x+QGY42jx7uyewauj4wckDjC2WuMUqY9u/kxXK5u1LGcbeP4yu9mcZBwFIXw9wer1Qo5MZ9Gnmf9vlx/zUfFwc3/AAUr/DlbJ36nr7kIz+FhpzD6p7F7iDgfoFs0azfD6nPqpYok/kdPMfkL2OVZQTZA5V212VeUyoHtF8ByvqyAREQBERAEREAREQBERAFTe7C9nhUpDwgI+67UJuvSXVEDQS9lG6Zo+rPm/wCShix1YrLVSVcYO2eBknB/iaCuj75QNutsrKJ/5KiF8J/3mkf81yzoNs1JpO3U1SD6tPGYHgjBDo3FnP8AwqA4hH34yJnQS92UTZgM8dznv5Xtpxz5CpMGMEeVVDiDx3KjESTLphJA5+X3VUl35uCB3Vq121w3cFVYpsPxgOHYj6rMxK7ZckAjt/RVmzY7jjKpR7fOAT7qp6fOQf5L0PB7cfOP0VVuHNHfKphgcMEc59+yrsZyO4H0XpjnBj7vpe06kidBdLdTXCIjGJYwf6qMNQfC9YaqQ1FiqpbZN3EEp3xZz/MKZMeRzt9l93nzw379ly3aanULFsUyR0nENXoXnTWOP0e346HGnVTo9q6z25++zm5RsaQKiieHYH+z3/Rcl2vqFdOmGoZ7XVQyQxCRz2wTsLCwk/M0g4I55X69SsLu591o+u+jGj+olI6G/wCn6K45BAkfEN7fse4+4wo2HBtJHmi45jLt+xeNL7b66qEYWxTa7/3TXTf5YOGtNdc6Krr4JIah1JUNIc0u4LT91Ndt6qXrqFVUdnbLFd62pcI4GB4Di7HbJPsCsbqv/o+rPPUvdpvUFTaqVx3fg6hvrsb7YJOR/MqQ+g/wnUHSS+tvlXdpr3dYwW0+5gjigyMFwGSS7BIznjJURP2dhB8umscYPqvJY7vbPQ36fnnUnbFe7t3+vjzuRR1N0/rHSNHJJV6frRGRn1KZnrNH325IUS9NeiV6+Ie4XGd9TLb9PUcrYK6qh5n3EbvTjaQcOx+87gZHfsv03lijkbse3c0j8rhkLBVXT3TtdUmqNubS1nisoZHU07frvYQT+qkdHwTT6GfPVu/mVTV+2et1ellppRUW+68fT/k0zQ2l7XorTlvsdnpI6C20MYjjijA/Vzj5c48k+SVshc3njBx3wvEmkNQ22TNLcaXUFHniG6R+jVMHsJ4xh3++0n6qwqLiKIFlfSVNnkA5/FgPhP2lbxj/AGg1TDjJbso/NzPqXR/tX4a7APGQOVpuv66lq4JrMI21LZo3RVbXjLdjhgs/UHlZe/6jFloW+i9j6ydvydiGj+L/AAUfMcWvLnEue7kknJP3XDZLPuo664/5mW9usVLYLOyht8Igp427WtBye2Bk+eMD7ALm3SHRyTXnXbVWqr1C82+jr3U1LHIDyGNDCRnycEfRpPuF1RH82Gk48ZK+Po2MO5gDQfmIA7lITcMtdWey3WGWwY2CMMY0NY0YDWjAA7AYXwHIyOFWk2tA9z/RYjUN4faKD/q1P+NuM7vSo6PO31pSOAT4b5J8D64XkVl4Rqk8bszdqt1Re7hBQ0zd0srtox4HuV1doSwRaZsdPQQDDWDLneXOPclRd0P0DXadstNVX2SKpv8AOzdUPhbhkZJzsZ9BnH6BTfQR7GgKzaLS+iuaXVld1up9V8seiMpS5HdZGM8BWMA4Cu4ypyJFFwO69KmDkL21bAfUREAREQBERAEREAREQHw9lSkGQqy8ObwgMdO3HKjDUfTCklnqKm2ymklmkdK+JwzGXOOTjHI5JUrTx5WOmptxPGVy21xsWJrJtrslW8xeDn+utFws8m2qpi1v+kYdzD+vj9VSZMAAHcf3Kc622slaQ9gIP0Wj33Q8EjnSQD0X/wCr2/kouzR43gyTr1udpo04P3NHIOP7kYSCSOfqvdZZ6u3vJfGXtH70f+CoxSbnHHt29v0XBOMoPEkd8Jxmspl5HIHsBI5A7L1HU4IB7clW8YLSHH8pVZkmfI57ccBYZM8F4H4GRwfZXUZHHfCsIsEDcPHCvmSNdGSCRjx2WWTBo9Ofl5HgDukcgc0Fp4Xhx3fNwdvsvjTg88N+h7Ielc4APg984XkEua4HBaTnnheWnnl38ivjtzckHPnjwh6VA1hODwR7hVNoaT/zVu2UnJ45VRkpJxjuvTxoqeoWnPcgeUDgcEjHlUy4bgP5gr45wIIPHsjCLgSBo4yPsqhMdQ305WtkaeC1w7jyrIbhjCrRP5DscZ7L1Hkkc3XOqbVVweGCFrA6ERt7NDHuY0fba0JG4OPufqsBZ521Tqt7DkGqmPf3eStgpmdscHGcKCa95kvnYumv3FoGFVfNsAbhUWNG4Yxle3tJcM4/ULJI1N5KMjCSfH1W6dJ+mJvOoX6mrhuhiaIaFjhwP4n49yf7h7LE6T01Lqu9R0jMinZ808g/db7D6ldIWW0xW6liggYI4o2hrWgdgFMaGjmfqy6diH113LH049e5fWy3CmaABk+6ztOwgBW9LHwFkYQMBWWKwV/OSvCMK6Z2VFg4VZnC3I8KzV6HdeWr6O6zQPaIi9AREQBERAEREAREQBfDyvqICk5uVbyQq8IyvDm5XjWQY58ORyFjaugDgeFnXxqk+IOBWDQNJrrQHZ+Va/XaagnyXRAO/ibwVJU1EHg8LHVFrBBw1aJVp9TZGbj0Itq9O1FOCYneowfuu7rDySfhn+nMDE/xvClme098BYyt0/FVsLJYWvB8EKPs0kX02O+vWNfFuR/HLnHP6BXUMoO368K9r+nz4SX2+odAe/pu+Zn8vH6LCzUtytQIqqQlgP8AnIfmH8u4XBKmcO2SRhfXPvgym7xkEL4CS7Az9ljoK9ko+R4OPHsrpswc7GcLnydGCt6gbnOQ4fRemSlzCDgtznlUHv3Dk598LyHujAI7fRe5PMF9uaRtJxjjshbtJP8AerR03GWjJK+x1LicOGMlZZMcMuwATkAZC+ecHv8AUqiJRux3x3BX18gIOeP+S9PCu1275eM/Re9+2PdtGQCVaAuaQc8L3NLtglcCcemT+uF7k8aONa26SWrqXQaYpJCynHrVk8gJDpCHYDMZ/LySfsP1kaMhwABxhQhbL9Fqf4kLsaON88Nuo3xy1Ab/AGbXF5ON3/CMDvzzwprh+Yj6qHazgk/JdNAA+6uKWnmr6uOmpmGSaQhrGj3KtJ3tjLGl43P4Y3PLsd8Dypi6RaFdRRtuVZHmpkHyNI/I3/FdOnod0+Xt3OXUXqiHM+vY3XQOjYNNWmOINDp3/NLJjlzv8Fu0EAGOFTpYtrQA3CyEMXZW2uCikl0KlKbm22VIYeyvYo8KnE3AV0wLpSMD21iqBq+NC9gZWaB9avqIswel9XxfUAREQBERAEREAREQBERAF8IyvqIDwQvBYquMr5tQFs+PCovjV8RleHRj2WOAY2SAOHZW76Rpzwss6HKpOgWOAYWajb4CsJ7a14OWgrYnU/PIXh1MMdlqcEz1Noj+6aNo6wlxi2SeHs4K1yr0jW0OXQSeuz+F3Dv5qW5aNrlZzUA9guazTxn1RvhqLK+jIfcZIHYmjdE7tyOF53fIBnz4UnVtmhqGkPjB/Ra3X6RYcmElhPgKOno2vgZI165PaxGqh5jBBJ+69CTkDJ48KpX2iroz+Xe0e3dWDZSHYJw4eMLhlGVbxJElCcLFmLyZFkgZg7c/ZVNzXYxyT7qxa/z4+qqtmZnBd3KJhruXbXB3GOfGAra8zejZLhK04LKaRxOORhpK9xPa15A5PfKstREu0/dR2Bo5h9PyOXr6M8SyzmLSFjpLDbhBSxhjXudI92cl7nHJOfr/ACW0tmbA10j3BjGjc5xPAGOViKYOjeGObhwDQR7fKPqVsdj0fLrSqit4yKdz2umcP4Qckfqo6MHOfKvJ2SmoQ534Mp0k6fjWWqItWV8MwZTsdT0Eb3EN2Eguft7Zdgc+wHsup7VQCCFrQMceFhdLaditVFDBFGGRRtDWtA7BbbBHgBWyilVRUUVG+53S5mV4IsK9ij7KlEAAFcsGV3JHOVGNwqzAvLGqs1qzQPoC9gIAvqzSAX0BAF9XoPqIiAIiIAiIgCIiAIiIAiIgCIiAIiIAvOML0iA8YXktVQjK+FqAt3R5Xh8Zx3V3tyvDmZWOAY58ZKoOjIysq6L6Ki6H6LFoGJfBuB4VpLSA+OVnHQ48KjJAD45WtxBrdRbRICHNDgfda9c9KQVHLW7H+CFv76ZWc1KD3GVqlBMyjJp5RE9bpurpSdjg5nthYrEkEu2RjmY557KXKm3gk8LF1FihmBD2A58rgnpYPpsSFessjtLdGgROBx/era/O/wDodyB7fhZe3+wVuNTpMd4fl+iw150/UuoKuJrN5khewbeTktK5J6ecV5O6Gqrm12Obbdbp627mjiYXzuldGGnnz/h/7Dsunun+iINPW6NuA6dwBe8jklav006bOoq2su9bCWVNRM8wseMFkee+PBKl2mgLABhbdJpvTzZJbs5dZqfUxXF7IuaeMMaAFexZKoxRkq/gpyVMpESe4m4V1G0r5FBhXUca2JAMYqwbhA3C9gLYkDyBlegF9RegIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiA+ELyW5XtEBSMYKpuhz4VxhNq8wCxdAqD6XPhZPYhjBWPKDBvpPoreSjHstgdACqTqb6LBwBrrqIeytqi3tJ4GCtmdRg+FSdQDOcLBwPcmvw0pYOB/RXcUBPcLJijA8KqynA8L1QBawUw8hX8cOMcKpHCB4VYNwtqieHlsYC9hq+hq9LMHwDC+oiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAvmAvqID5gL4WAr0iAomML6IwqqIDyG4XpEQBERAEREAREQBERAEREAREQGqdJ9df/ABQ6WaN1l+B/Zn+UVlorv+C9X1fw/wCIgZL6e/a3dt343bRnGcDstrUVfCd/2WOjf/cyzf8AkYVKqAIiIAiIgCIiAIiIAiIgCKPr91apqXWly0fRW64TXWltpr5q6MQCnpg5khjLmvkEj8mIjLI3tBwHEE4WjdLviXp7lo/R8OprXe6fUNxt9leZ6imgYyvdWlsIqYwyTDY/W3bg5rHAEEMIIQE9IoXq/iFq6jqbatN2PR13vdHL+14KqaF1JG8TUU0ETiz1alg2ZmycjJ3x4HD9urUHxraesPTnR191xbaiwXS/W79pCjdVUMQdTtawuqI/UqvmYS/DYwTO7a7+y4QHSKKIrr8Stjtv7eljsF9rqC0VsFsfcYW0sdNUVcwgdFDG+WdndtQx29+2MYILg4tBtrl8Qstg11eqC8aVutBpu2aapL9PcXCnfJC6Z1QPTextQXuJMIia2Njj6gdk7S1xAmZFE3/zFW0VQtL9K6kZq11U2mZpd0NN+OcHQumEod6/oCLYx53GUYLS0/N8qsel/W//ACl6j6v0jVmrrrvS3dxioWQxNdaaD8FSyNNSQRgGaSRreXvc4uxlrHFoEzotHvHVmgtOsanT8dpulxNBBFVXS40rIvwlsjk37HTOfI1xyI3OIja8tbguABC1IfFFYWUdPLPprU1JPXMo5rXST0sAmuUNTO2CGWECYgDfJGHNlLHt3tLmgFATKijHQvX20a71HTWaOx3y0TVLaxsM9zghbE+opJGxVdOCyV59SJ7tpONjtrtj3gErdbFq+06luF7orbV/iaqy1Yoa+P03s9GYxslDMuADvkkYctyOcZyCEBmUUSaK6ja81LRdRKeo07aYtR2K8RW+322OscIhHLR0lQw1ExBy5gqSX+m3GGbWhxw50dal+J3VFt6ZdN79T09siuOodLSahrWx2mruI9VkNO/0WQQSCSGJxmfmpkLo49rQ7JcEB1Aihuv6k65odWaUdJQWIWa/1cVLT2aFz57jJEaX1pqsTtf6bWRPy0t9MgtDT6gL2tVhpfqn1ErdVao0xWWuxV2oaG201bT0kUdRb4oJpZCwxmWYuNXFGCHOqIWNbkFgbuIAAnNFBEvWzWMnRTpbrWjs9pll1EbI69TSvkZDStrailhe2CLcXOcTUuLdzsNDCXFxw12H1t8UFborqHdbfVSWYUVuuf4A6aMUv7aqaf8ACfiHV8bvU2eiMP49Mgtjd/aB3ygDo9FzjcuuXUPTlpp23S22iqut8sMd8tTbNbKus/BD8VSQTxTQMkMlT6ba6KTfF6ZcGSfK3AKl3pRquTWWj4rhPe6G/VInlgmqKC0z2sRvY4tMT6WeWSWJ7exD3Z84GUBuKIiAIiIAiIgCIiAIiIAiIgIq+E7/ALLHRv8A7mWb/wAjCpVREAREQBERAEREAREQBERAaJqvpFQaz1fbL7crvdHMtu99NbI3QCmjldDJCZQ70vVB2SuG0SBh4JacLBV3w3adrLZZ6WO6Xmjms9pt9poK2nmh9aAUUzZoJxuiLTKHsGdzSwjI2coiAuLB0Btem7xZrrR6gvxuVurK6sfUyzQPdWfjHxPqY5sw42OfDG75AxwxgEDhWVp+HG36etlkpbRrDVFqns9LJbqWtppqX1hQOLCKR26nLTG0xt2v2+q3n+0yTkiA2SbpPSi2ampaC+Xa1S6guX7TqaunNPJIyT0YoSxrZYXxlhZC3LXsdyXc9sa8fho0uKKGgjrrvFbG6di01PRMqI9lTTRGR0L3uMe9skbppHNdG5gyRkEAAEQA/DpbnVYuztWaldq5tU2pbqky0v45obC6EQhv4f0PS2PeNpiOS4uzu+ZZC0dB7JYtSN1DR3S7x338ZLVyXB00TpZmyUsNPJDJmPD43fh4ZcEZ9RgcCBwiIC4qujVJV6i/bD9Q3ts1VR09Hd6dj6dsN5bCHBjqlvo/K4h7g70TEHA7SNoAGEtvw0WCiltslVfdQXeS1uoW219fUQuNFT0lQyeKnZtibuYXxx7nP3SODQC/gFEQGw2Ho5ZdPXq23Omqq99RQVt3r4myyMLXSXGoM84cAwHa1xIZgggdy48rfERARrp7o1V6ardXVtN1C1RJW6lmbVVFRNFbCaedscULZYgKINBEUEceHh7cAnG4lywVt+GG3WjTVjtFHrXVdNJaLY+xwXGKWibUvtzgwfhX4pdha3027XhglBJ/tOURAX1l+Hmj05qtt4tusNSUtI2kp7a2zEUMlLHQwsDWUjHvpXTxxEDLtkrXOJ3F2cEXth6HRaddVVNPrLU9RdnUDbXQ3atmpZ6i20oeH+nDvpyx+S1u58zZXu2jLjgIiAxR+HGIdLtPaDi19quns9jlpZKWdjbaagtpZIpKWN7nUZaWxPgjcMNDnch5eDhbpJ02t9fqKO83eqq77URWw2uKGv8ATMEbH/5+RsbGNHqSgND3dsNAaGguBIgNYsnw/UOnonmi1bqdldDQx2u23CSop5J7VRse14gg3QFrmksj3GZsjnBjQ5xwFuWhdD0WgbPNQ0tTV181TUy1tXX172vqKqeQ5fI8ta1oJ4ADWtaA0AAAIiA2JERAEREAREQBERAEREAREQH/2Q==',1),(2,'Chile Verde','Chile verde importado y empaquetado en caja.',1,1,'1 libra (16 onzas)',16,10,50,NULL,1),(3,'Corn Flakes','Caja familiar de Corn Flakes de Keloggs',1,1,'100 gramos',10,5,20,NULL,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'mmondragon','miriamdragon927@gmail.com','12345','8cb2237d0679ca88db6464eac60da96345513964',1,1,'2021-11-06 14:56:42','2021-11-06 14:56:42'),(2,'kpalma','karolpalma@gmail.com','54321','348162101fc6f7e624681b7400b085eeac6df7bd',1,1,'2021-11-06 14:58:43','2021-11-06 16:15:11'),(3,'mguarda','manuelmaria@gmail.com','12345','8cb2237d0679ca88db6464eac60da96345513964',2,1,'2021-11-06 15:06:11','2021-11-06 15:48:59'),(4,'1','1','1','356a192b7913b04c54574d18c28d46e6395428ab',1,1,'2021-11-11 13:27:56','2021-11-11 13:27:56'),(11,'mespinal','marcos@gmail.com','12345','8cb2237d0679ca88db6464eac60da96345513964',1,0,'2021-11-11 15:35:17','2021-11-11 16:28:42'),(12,'mpaula','correo@gmail.com','12345','8cb2237d0679ca88db6464eac60da96345513964',2,0,'2021-11-12 10:09:49','2021-11-12 10:57:58');
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
 1 AS `Precio`*/;
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
			VALUES (P_USUARIO, P_CORREO, P_CLAVE, (SELECT SHA1(P_CLAVE)), 1);
			
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
			VALUES (P_USUARIO, P_CORREO, P_CLAVE, (SELECT SHA1(P_CLAVE)), 2);
			
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
								   `Cantidad_Maxima`, `Foto`)
			VALUES(varNombre, varDescripcion, varIdCategoria, varIdProveedor, varCantidadUnidad, varUnidadesAlmacen, varCantidadMinima,
				   varCantidadMaxima, varFoto);
                   
			SET idProducto = (SELECT DISTINCT LAST_INSERT_ID() FROM Impuestos);
            
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
    IN varIdDescuento INT(11),
    IN varIdImpuesto INT(11)
)
BEGIN
		IF varIdUsuario = 0 || varIdUsuario = NULL || varIdProducto = 0 || varIdProducto = NULL ||
			varCantidadUnidades = 0 || varCantidadUnidades = NULL THEN
			SELECT 'LOS PARAMETROS NO PUEDEN SER NULOS - NO AÑADIDO EN CARRITO' AS 'ERROR';
		ELSE
			INSERT INTO Carrito (`Id_Usuario`, `Id_Producto`, `Cantidad_Unidades`, `Id_Descuento`, `Id_Impuesto`)
			VALUES(varIdUsuario, varIdProducto, varCantidadUnidades, varIdDescuento, varIdImpuesto);
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
		IF varNombre = '' || varNombre = NULL || varContacto = '' || varContacto = NULL || varLatitud = 0 || varLatitud = NULL || varLongitud = 0 || varLongitud = NULL THEN
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
			`Token` = (SELECT SHA1(P_CLAVE)),
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
			`Token` = (SELECT SHA1(P_CLAVE)),
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
				`Estado` = varEstado
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
    IN varIdDescuento INT(11),
    IN varIdImpuesto INT(11)
)
BEGIN
		IF varIdUsuario = 0 || varIdUsuario = NULL || varIdProducto = 0 || varIdProducto = NULL ||
			varCantidadUnidades = 0 || varCantidadUnidades = NULL THEN
			SELECT 'LOS PARAMETROS NO PUEDEN SER NULOS - NO ACTUALIZADO EN CARRITO' AS 'ERROR';
		ELSE
			UPDATE Carrito
			SET `Cantidad_Unidades` = varCantidadUnidades,
				`Id_Descuento` = varIdDescuento,
                `Id_Impuesto` = varIdImpuesto
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
			varContacto = '' || varContacto = NULL || varLatitud = 0 || varLatitud = NULL || varLongitud = 0 || varLongitud = NULL THEN
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
/*!50001 VIEW `v_productos` AS select `p`.`Id_Producto` AS `Id_Producto`,`p`.`Nombre` AS `Nombre`,`p`.`Descripcion` AS `Descripcion`,`p`.`Id_Categoria` AS `Id_Categoria`,`c`.`Categoria` AS `Categoria`,`p`.`Id_Proveedor` AS `Id_Proveedor`,`pr`.`Nombre` AS `Proveedor`,`p`.`Cantidad_Unidad` AS `Cantidad_Unidad`,`p`.`Unidades_Almacen` AS `Unidades_Almacen`,`p`.`Cantidad_Minima` AS `Cantidad_Minima`,`p`.`Cantidad_Maxima` AS `Cantidad_Maxima`,`p`.`Foto` AS `Foto`,`p`.`Estado` AS `Estado`,(select `historico_precios_productos`.`Precio` from `historico_precios_productos` where ((`historico_precios_productos`.`Id_Producto` = `p`.`Id_Producto`) and isnull(`historico_precios_productos`.`Fecha_Fin`))) AS `Precio` from ((`productos` `p` join `categorias` `c` on((`p`.`Id_Categoria` = `c`.`Id_Categoria`))) join `proveedores` `pr` on((`p`.`Id_Proveedor` = `pr`.`Id_Proveedor`))) */;
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

-- Dump completed on 2021-11-12 17:42:11
