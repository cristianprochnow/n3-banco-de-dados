-- MariaDB dump 10.19  Distrib 10.4.27-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: imobiliaria
-- ------------------------------------------------------
-- Server version	10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `anexo_imovel`
--

DROP TABLE IF EXISTS `anexo_imovel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `anexo_imovel` (
  `id` int(11) NOT NULL,
  `arquivo` blob DEFAULT NULL,
  `data_criacao` date DEFAULT NULL,
  `imovel` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `imovel` (`imovel`),
  CONSTRAINT `anexo_imovel_ibfk_1` FOREIGN KEY (`imovel`) REFERENCES `imovel` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anexo_imovel`
--

LOCK TABLES `anexo_imovel` WRITE;
/*!40000 ALTER TABLE `anexo_imovel` DISABLE KEYS */;
INSERT INTO `anexo_imovel` VALUES (1,'C:Usersg_henDesktopCaptura de tela 2023-05-08 202113.png','2023-01-01',1),(2,'C:Usersg_henDesktopCaptura de tela 2023-05-08 202113.png','2023-02-01',2),(3,'C:Usersg_henDesktopCaptura de tela 2023-05-08 202113.png','2023-03-01',3);
/*!40000 ALTER TABLE `anexo_imovel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apartamento`
--

DROP TABLE IF EXISTS `apartamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apartamento` (
  `id` int(11) NOT NULL,
  `area` double DEFAULT NULL,
  `qtd_quarto` int(11) DEFAULT NULL,
  `qtd_vaga_garagem` int(11) DEFAULT NULL,
  `qtd_suites` int(11) DEFAULT NULL,
  `qtd_sala_estar` int(11) DEFAULT NULL,
  `qtd_sala_jantar` int(11) DEFAULT NULL,
  `qtd_armario` int(11) DEFAULT NULL,
  `descricao` varchar(30) DEFAULT NULL,
  `valor_condominio` decimal(18,2) DEFAULT NULL,
  `portaria` varchar(10) DEFAULT NULL,
  `andar` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apartamento`
--

LOCK TABLES `apartamento` WRITE;
/*!40000 ALTER TABLE `apartamento` DISABLE KEYS */;
INSERT INTO `apartamento` VALUES (1,80.5,2,1,1,1,1,2,'Apartamento aconchegante',500.00,'24 horas','3º andar'),(2,100,3,2,2,1,1,3,'Apartamento espaçoso',800.00,'16 horas','10º andar'),(3,60,1,1,1,1,1,1,'Apartamento compacto',400.00,'8 horas','5º andar');
/*!40000 ALTER TABLE `apartamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bairro`
--

DROP TABLE IF EXISTS `bairro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bairro` (
  `id` int(11) NOT NULL,
  `descricao` varchar(25) DEFAULT NULL,
  `cidade` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_cidade` (`cidade`),
  CONSTRAINT `fk_cidade` FOREIGN KEY (`cidade`) REFERENCES `cidade` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bairro`
--

LOCK TABLES `bairro` WRITE;
/*!40000 ALTER TABLE `bairro` DISABLE KEYS */;
INSERT INTO `bairro` VALUES (1,'Ahú',1),(2,'Felicidade',2),(3,'Ingleses',3);
/*!40000 ALTER TABLE `bairro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cargo`
--

DROP TABLE IF EXISTS `cargo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cargo` (
  `id` int(11) NOT NULL,
  `descricao` varchar(30) DEFAULT NULL,
  `salario_base` decimal(18,2) DEFAULT NULL,
  `comissao` decimal(18,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cargo`
--

LOCK TABLES `cargo` WRITE;
/*!40000 ALTER TABLE `cargo` DISABLE KEYS */;
INSERT INTO `cargo` VALUES (1,'Gerente',5000.00,0.10),(2,'Analista de Vendas',3500.00,0.05),(3,'Assistente Administrativo',2500.00,0.02),(4,'Desenvolvedor Java',4000.00,0.08),(5,'Analista de Marketing',3500.00,0.05),(6,'Auxiliar de Produção',2000.00,0.01),(7,'Coordenador de Projetos',6000.00,0.12),(8,'Analista Financeiro',3800.00,0.06),(9,'Supervisor de Vendas',4500.00,0.09),(10,'Técnico de Suporte',3000.00,0.04),(11,'Desenvolvedor Next JS',20000.00,0.90);
/*!40000 ALTER TABLE `cargo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `casa`
--

DROP TABLE IF EXISTS `casa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `casa` (
  `id` int(11) NOT NULL,
  `area` double DEFAULT NULL,
  `qtd_quartos` int(11) DEFAULT NULL,
  `qtd_vaga_garagem` int(11) DEFAULT NULL,
  `qtd_suites` int(11) DEFAULT NULL,
  `qtd_sala_estar` int(11) DEFAULT NULL,
  `qtd_sala_jantar` int(11) DEFAULT NULL,
  `qtd_armario` int(11) DEFAULT NULL,
  `descricao` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `casa`
--

LOCK TABLES `casa` WRITE;
/*!40000 ALTER TABLE `casa` DISABLE KEYS */;
INSERT INTO `casa` VALUES (1,120.5,3,2,2,1,1,4,'Casa aconchegante'),(2,150,4,3,3,2,1,5,'Ampla casa com jardim'),(3,100,2,1,1,1,1,2,'Casa compacta e funcional');
/*!40000 ALTER TABLE `casa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cep`
--

DROP TABLE IF EXISTS `cep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cep` (
  `id` int(11) NOT NULL,
  `num_cep` varchar(9) DEFAULT NULL,
  `bairro` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bairro` (`bairro`),
  CONSTRAINT `cep_ibfk_1` FOREIGN KEY (`bairro`) REFERENCES `bairro` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cep`
--

LOCK TABLES `cep` WRITE;
/*!40000 ALTER TABLE `cep` DISABLE KEYS */;
INSERT INTO `cep` VALUES (1,'80530-230',1),(2,'90619-900',2),(3,'88058-221',3);
/*!40000 ALTER TABLE `cep` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cidade`
--

DROP TABLE IF EXISTS `cidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cidade` (
  `id` int(11) NOT NULL,
  `nome` varchar(25) DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `estado` (`estado`),
  CONSTRAINT `cidade_ibfk_1` FOREIGN KEY (`estado`) REFERENCES `estado` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cidade`
--

LOCK TABLES `cidade` WRITE;
/*!40000 ALTER TABLE `cidade` DISABLE KEYS */;
INSERT INTO `cidade` VALUES (1,'Curitiba',1),(2,'Porto Alegre',2),(3,'Florianópolis',3);
/*!40000 ALTER TABLE `cidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente` (
  `id` int(11) NOT NULL,
  `nome` varchar(30) DEFAULT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `cpf` varchar(11) DEFAULT NULL,
  `logradouro` varchar(50) DEFAULT NULL,
  `cep` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cep` (`cep`),
  CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`cep`) REFERENCES `cep` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Lucas','9999-1234','12345678901','Rua Plameiras',1),(2,'Cristian','8888-5678','98765432109','Avenida JK',2),(3,'Marlo Gay','7777-9876','24242424242','Rua Bambi',3);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comissao`
--

DROP TABLE IF EXISTS `comissao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comissao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `valor_comissao` decimal(18,2) DEFAULT NULL,
  `cliente` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cliente` (`cliente`),
  CONSTRAINT `comissao_ibfk_1` FOREIGN KEY (`cliente`) REFERENCES `cliente` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comissao`
--

LOCK TABLES `comissao` WRITE;
/*!40000 ALTER TABLE `comissao` DISABLE KEYS */;
/*!40000 ALTER TABLE `comissao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado`
--

DROP TABLE IF EXISTS `estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estado` (
  `id` int(11) NOT NULL,
  `uf` char(2) DEFAULT NULL,
  `nome` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado`
--

LOCK TABLES `estado` WRITE;
/*!40000 ALTER TABLE `estado` DISABLE KEYS */;
INSERT INTO `estado` VALUES (1,'PR','Paraná'),(2,'RS','Rio Grande do Sul'),(3,'SC','Santa Catarina');
/*!40000 ALTER TABLE `estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forma_pgto`
--

DROP TABLE IF EXISTS `forma_pgto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forma_pgto` (
  `id` int(11) NOT NULL,
  `tipo` varchar(10) DEFAULT NULL,
  `descricao` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forma_pgto`
--

LOCK TABLES `forma_pgto` WRITE;
/*!40000 ALTER TABLE `forma_pgto` DISABLE KEYS */;
INSERT INTO `forma_pgto` VALUES (1,'Cartão','Pagamento com cartão de crédit'),(2,'Boleto','Pagamento com boleto bancário'),(3,'Dinheiro','Pagamento em dinheiro'),(4,'Transferên','Pagamento via transferência ba'),(5,'Cheque','Pagamento com cheque');
/*!40000 ALTER TABLE `forma_pgto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `funcionario` (
  `id` int(11) NOT NULL,
  `nome` varchar(30) DEFAULT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `cpf` varchar(11) DEFAULT NULL,
  `logradouro` varchar(50) DEFAULT NULL,
  `complemento` varchar(50) DEFAULT NULL,
  `numero` int(6) DEFAULT NULL,
  `salario` decimal(18,2) DEFAULT NULL,
  `data_ingresso` date DEFAULT NULL,
  `cargo` int(11) DEFAULT NULL,
  `transacao` int(11) DEFAULT NULL,
  `cep` int(11) DEFAULT NULL,
  `imobiliaria` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cargo` (`cargo`),
  KEY `transacao` (`transacao`),
  KEY `cep` (`cep`),
  KEY `imobiliaria` (`imobiliaria`),
  CONSTRAINT `funcionario_ibfk_1` FOREIGN KEY (`cargo`) REFERENCES `cargo` (`id`),
  CONSTRAINT `funcionario_ibfk_2` FOREIGN KEY (`transacao`) REFERENCES `transacao` (`id`),
  CONSTRAINT `funcionario_ibfk_3` FOREIGN KEY (`cep`) REFERENCES `cep` (`id`),
  CONSTRAINT `funcionario_ibfk_4` FOREIGN KEY (`imobiliaria`) REFERENCES `imobiliaria` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario`
--

LOCK TABLES `funcionario` WRITE;
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
INSERT INTO `funcionario` VALUES (1,'GUSTaVO','987654321','12345678901','Rua Marova','Apto 123',123,5000.00,'2022-01-01',1,1,1,1),(2,'RYAN','999999999','98765432101','Rua Luana','Casa 456',456,6000.00,'2022-02-01',2,2,2,1),(3,'EDICARSIA','888888888','54321098765','Rua Cortina','Sobrado 789',789,7000.00,'2022-03-01',3,3,3,1);
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imobiliaria`
--

DROP TABLE IF EXISTS `imobiliaria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `imobiliaria` (
  `id` int(11) NOT NULL,
  `nome` varchar(15) DEFAULT NULL,
  `logradouro` varchar(50) DEFAULT NULL,
  `complemento` varchar(50) DEFAULT NULL,
  `numero` int(6) DEFAULT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `cep` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cep` (`cep`),
  CONSTRAINT `imobiliaria_ibfk_1` FOREIGN KEY (`cep`) REFERENCES `cep` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imobiliaria`
--

LOCK TABLES `imobiliaria` WRITE;
/*!40000 ALTER TABLE `imobiliaria` DISABLE KEYS */;
INSERT INTO `imobiliaria` VALUES (1,'Imobiliária Son','Rua Paraíso','Sala 1000',123,'9999-1234',1);
/*!40000 ALTER TABLE `imobiliaria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imoveistable`
--

DROP TABLE IF EXISTS `imoveistable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `imoveistable` (
  `id` int(11) NOT NULL,
  `preco` int(11) DEFAULT NULL,
  `imovel` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `preco` (`preco`),
  KEY `imovel` (`imovel`),
  CONSTRAINT `imoveistable_ibfk_1` FOREIGN KEY (`preco`) REFERENCES `tabela_preco` (`id`),
  CONSTRAINT `imoveistable_ibfk_2` FOREIGN KEY (`imovel`) REFERENCES `imovel` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imoveistable`
--

LOCK TABLES `imoveistable` WRITE;
/*!40000 ALTER TABLE `imoveistable` DISABLE KEYS */;
INSERT INTO `imoveistable` VALUES (1,1,1),(2,2,2),(3,3,3);
/*!40000 ALTER TABLE `imoveistable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imovel`
--

DROP TABLE IF EXISTS `imovel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `imovel` (
  `id` int(11) NOT NULL,
  `logradouro` varchar(50) DEFAULT NULL,
  `complemento` varchar(50) DEFAULT NULL,
  `numero` int(6) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  `cep` int(11) DEFAULT NULL,
  `imobiliaria` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cep` (`cep`),
  KEY `imobiliaria` (`imobiliaria`),
  CONSTRAINT `imovel_ibfk_1` FOREIGN KEY (`cep`) REFERENCES `cep` (`id`),
  CONSTRAINT `imovel_ibfk_2` FOREIGN KEY (`imobiliaria`) REFERENCES `imobiliaria` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imovel`
--

LOCK TABLES `imovel` WRITE;
/*!40000 ALTER TABLE `imovel` DISABLE KEYS */;
INSERT INTO `imovel` VALUES (1,'Rua dos Pinheiros','Apartamento 101',123,'Disponível',1,1),(2,'Avenida Paulista','Casa dos Sonhos',456,'Alugado',2,1),(3,'Rua Oscar Freire','Loja Comercial',789,'Disponível',3,1);
/*!40000 ALTER TABLE `imovel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locacao`
--

DROP TABLE IF EXISTS `locacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locacao` (
  `id` int(11) NOT NULL,
  `num_contrato` varchar(20) DEFAULT NULL,
  `data_inicio` date DEFAULT NULL,
  `data_fim` date DEFAULT NULL,
  `transacao` int(11) DEFAULT NULL,
  `cliente` int(11) DEFAULT NULL,
  `imovel` int(11) DEFAULT NULL,
  `tabela_preco` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `transacao` (`transacao`),
  KEY `cliente` (`cliente`),
  KEY `imovel` (`imovel`),
  KEY `tabela_preco` (`tabela_preco`),
  CONSTRAINT `locacao_ibfk_1` FOREIGN KEY (`transacao`) REFERENCES `transacao` (`id`),
  CONSTRAINT `locacao_ibfk_2` FOREIGN KEY (`cliente`) REFERENCES `cliente` (`id`),
  CONSTRAINT `locacao_ibfk_3` FOREIGN KEY (`imovel`) REFERENCES `imovel` (`id`),
  CONSTRAINT `locacao_ibfk_4` FOREIGN KEY (`tabela_preco`) REFERENCES `tabela_preco` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locacao`
--

LOCK TABLES `locacao` WRITE;
/*!40000 ALTER TABLE `locacao` DISABLE KEYS */;
INSERT INTO `locacao` VALUES (1,'cont1','2023-01-01','2023-12-31',1,1,1,1),(2,'cont2','2023-02-01','2023-11-30',2,2,2,2),(3,'cont3','2023-03-01','2023-10-31',3,3,3,3);
/*!40000 ALTER TABLE `locacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `locacao_cliente`
--

DROP TABLE IF EXISTS `locacao_cliente`;
/*!50001 DROP VIEW IF EXISTS `locacao_cliente`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `locacao_cliente` AS SELECT
 1 AS `nome_func`,
  1 AS `cpf`,
  1 AS `num_contrato`,
  1 AS `logradouro` */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `sala_comercial`
--

DROP TABLE IF EXISTS `sala_comercial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sala_comercial` (
  `id` int(11) NOT NULL,
  `area` double DEFAULT NULL,
  `qtd_banheiro` int(11) DEFAULT NULL,
  `qtd_comodos` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sala_comercial`
--

LOCK TABLES `sala_comercial` WRITE;
/*!40000 ALTER TABLE `sala_comercial` DISABLE KEYS */;
INSERT INTO `sala_comercial` VALUES (1,50,1,2),(2,80,2,3),(3,70,1,4);
/*!40000 ALTER TABLE `sala_comercial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `salario_total`
--

DROP TABLE IF EXISTS `salario_total`;
/*!50001 DROP VIEW IF EXISTS `salario_total`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `salario_total` AS SELECT
 1 AS `soma_salarios` */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `tabela_preco`
--

DROP TABLE IF EXISTS `tabela_preco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabela_preco` (
  `id` int(11) NOT NULL,
  `forma_pgto` int(11) DEFAULT NULL,
  `valor` decimal(18,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `forma_pgto` (`forma_pgto`),
  CONSTRAINT `tabela_preco_ibfk_1` FOREIGN KEY (`forma_pgto`) REFERENCES `forma_pgto` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabela_preco`
--

LOCK TABLES `tabela_preco` WRITE;
/*!40000 ALTER TABLE `tabela_preco` DISABLE KEYS */;
INSERT INTO `tabela_preco` VALUES (1,1,1000.00),(2,2,1500.00),(3,3,2000.00);
/*!40000 ALTER TABLE `tabela_preco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `terreno`
--

DROP TABLE IF EXISTS `terreno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `terreno` (
  `id` int(11) NOT NULL,
  `area` double DEFAULT NULL,
  `comprimento` double DEFAULT NULL,
  `largura` double DEFAULT NULL,
  `relevo` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `terreno`
--

LOCK TABLES `terreno` WRITE;
/*!40000 ALTER TABLE `terreno` DISABLE KEYS */;
INSERT INTO `terreno` VALUES (1,500,30,20,'Plano'),(2,800,40,20,'Aclive'),(3,1000,50,20,'Declive');
/*!40000 ALTER TABLE `terreno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transacao`
--

DROP TABLE IF EXISTS `transacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transacao` (
  `id` int(11) NOT NULL,
  `valor` decimal(18,2) DEFAULT NULL,
  `porcentagem` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transacao`
--

LOCK TABLES `transacao` WRITE;
/*!40000 ALTER TABLE `transacao` DISABLE KEYS */;
INSERT INTO `transacao` VALUES (1,100.50,0.05),(2,200.75,0.08),(3,50.20,0.03),(4,300.90,0.1),(5,150.60,0.06);
/*!40000 ALTER TABLE `transacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venda`
--

DROP TABLE IF EXISTS `venda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `venda` (
  `id` int(11) NOT NULL,
  `data` date DEFAULT NULL,
  `valor_estipulado` decimal(18,2) DEFAULT NULL,
  `transacao` int(11) DEFAULT NULL,
  `cliente` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `transacao` (`transacao`),
  KEY `cliente` (`cliente`),
  CONSTRAINT `venda_ibfk_1` FOREIGN KEY (`transacao`) REFERENCES `transacao` (`id`),
  CONSTRAINT `venda_ibfk_2` FOREIGN KEY (`cliente`) REFERENCES `cliente` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venda`
--

LOCK TABLES `venda` WRITE;
/*!40000 ALTER TABLE `venda` DISABLE KEYS */;
INSERT INTO `venda` VALUES (1,'2023-01-01',10450.00,1,1),(2,'2023-02-01',15440.50,2,2),(3,'2023-03-01',25500.25,3,3);
/*!40000 ALTER TABLE `venda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `vendas_cliente`
--

DROP TABLE IF EXISTS `vendas_cliente`;
/*!50001 DROP VIEW IF EXISTS `vendas_cliente`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vendas_cliente` AS SELECT
 1 AS `nome_func`,
  1 AS `cpf`,
  1 AS `id`,
  1 AS `data`,
  1 AS `valor_estipulado` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vendas_funcionario`
--

DROP TABLE IF EXISTS `vendas_funcionario`;
/*!50001 DROP VIEW IF EXISTS `vendas_funcionario`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vendas_funcionario` AS SELECT
 1 AS `nome_func`,
  1 AS `id`,
  1 AS `data`,
  1 AS `valor_estipulado` */;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `locacao_cliente`
--

/*!50001 DROP VIEW IF EXISTS `locacao_cliente`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `locacao_cliente` AS select `c`.`nome` AS `nome_func`,`c`.`cpf` AS `cpf`,`l`.`num_contrato` AS `num_contrato`,`i`.`logradouro` AS `logradouro` from ((`locacao` `l` join `cliente` `c` on(`l`.`cliente` = `c`.`id`)) join `imovel` `i` on(`l`.`imovel` = `i`.`id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `salario_total`
--

/*!50001 DROP VIEW IF EXISTS `salario_total`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `salario_total` AS select sum(`c`.`salario_base`) AS `soma_salarios` from `cargo` `c` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vendas_cliente`
--

/*!50001 DROP VIEW IF EXISTS `vendas_cliente`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vendas_cliente` AS select `c`.`nome` AS `nome_func`,`c`.`cpf` AS `cpf`,`v`.`id` AS `id`,`v`.`data` AS `data`,`v`.`valor_estipulado` AS `valor_estipulado` from (`venda` `v` join `cliente` `c` on(`v`.`cliente` = `c`.`id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vendas_funcionario`
--

/*!50001 DROP VIEW IF EXISTS `vendas_funcionario`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vendas_funcionario` AS select `f`.`nome` AS `nome_func`,`v`.`id` AS `id`,`v`.`data` AS `data`,`v`.`valor_estipulado` AS `valor_estipulado` from ((`venda` `v` join `transacao` `t` on(`t`.`id` = `v`.`transacao`)) join `funcionario` `f` on(`t`.`id` = `f`.`transacao`)) */;
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

-- Dump completed on 2023-06-22 21:16:20
