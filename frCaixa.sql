-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.8.5-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para frcaixa
CREATE DATABASE IF NOT EXISTS `frcaixa` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `frcaixa`;

-- Copiando estrutura para tabela frcaixa.caixa
CREATE TABLE IF NOT EXISTS `caixa` (
  `idcaixa` int(11) NOT NULL AUTO_INCREMENT,
  `idempresa` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `dtabertura` datetime DEFAULT NULL,
  `dtmovimento` datetime DEFAULT NULL,
  `dtfechamento` datetime DEFAULT NULL,
  `caixaaberto` char(1) CHARACTER SET latin1 DEFAULT NULL,
  `caixafechado` char(1) CHARACTER SET latin1 DEFAULT NULL,
  `valreforcocx` double(12,2) DEFAULT NULL,
  PRIMARY KEY (`idcaixa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela frcaixa.caixa: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela frcaixa.cliente
CREATE TABLE IF NOT EXISTS `cliente` (
  `idcliente` int(10) NOT NULL AUTO_INCREMENT,
  `nome` varchar(40) CHARACTER SET latin1 DEFAULT NULL,
  `cli_limite` double(18,2) DEFAULT NULL,
  `cpfcnpj` varchar(15) CHARACTER SET latin1 DEFAULT NULL,
  `logradouro` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `numero` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `bairro` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `cidade` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `estado` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`idcliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela frcaixa.cliente: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela frcaixa.config_balanca
CREATE TABLE IF NOT EXISTS `config_balanca` (
  `idbalanca` int(11) NOT NULL AUTO_INCREMENT,
  `balmodelo` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `portacom` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `bitsegundo` int(11) DEFAULT NULL,
  `bitdados` int(11) DEFAULT NULL,
  `paridade` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `bitsstop` varchar(5) CHARACTER SET latin1 DEFAULT NULL,
  `utilizar` int(11) DEFAULT NULL,
  `Handshaking` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`idbalanca`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela frcaixa.config_balanca: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela frcaixa.config_impressora
CREATE TABLE IF NOT EXISTS `config_impressora` (
  `idimpressora` int(11) NOT NULL AUTO_INCREMENT,
  `impressora_modelo` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `portacomusb` varchar(60) CHARACTER SET latin1 DEFAULT NULL,
  `colunas` int(10) DEFAULT NULL,
  `linhapular` int(11) DEFAULT NULL,
  `espacoslinha` int(11) DEFAULT NULL,
  `pagcod` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `buffer` int(11) DEFAULT NULL,
  `tipo_impressao` varchar(20) CHARACTER SET latin1 DEFAULT NULL COMMENT '1 - Manual 2 - Automatico',
  PRIMARY KEY (`idimpressora`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela frcaixa.config_impressora: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela frcaixa.config_rede
CREATE TABLE IF NOT EXISTS `config_rede` (
  `idrede` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_conexao` int(11) NOT NULL,
  `addressip` varchar(18) CHARACTER SET latin1 NOT NULL,
  `subrede` varchar(18) CHARACTER SET latin1 NOT NULL,
  `gateway` varchar(18) CHARACTER SET latin1 NOT NULL,
  `dns1` varchar(18) CHARACTER SET latin1 NOT NULL,
  `dns2` varchar(18) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`idrede`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela frcaixa.config_rede: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela frcaixa.config_teclas
CREATE TABLE IF NOT EXISTS `config_teclas` (
  `idteclado` int(11) NOT NULL AUTO_INCREMENT,
  `descrfuncao` varchar(80) CHARACTER SET latin1 NOT NULL,
  `descrkeycode` varchar(40) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`idteclado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela frcaixa.config_teclas: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela frcaixa.formapagamento
CREATE TABLE IF NOT EXISTS `formapagamento` (
  `idformapg` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_pg` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `vlr_pago` decimal(20,2) DEFAULT NULL,
  PRIMARY KEY (`idformapg`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela frcaixa.formapagamento: ~4 rows (aproximadamente)
REPLACE INTO `formapagamento` (`idformapg`, `tipo_pg`, `vlr_pago`) VALUES
	(1, 'DINHEIRO', 10.00),
	(2, 'CARTAO DE CREDITO', 20.00),
	(3, 'CARTAO DE DEBITO', 25.00),
	(4, 'A PRAZO', 4.00),
	(5, 'CARTAO POS', 5.00);

-- Copiando estrutura para tabela frcaixa.item_venda
CREATE TABLE IF NOT EXISTS `item_venda` (
  `iditemvenda` int(10) NOT NULL AUTO_INCREMENT,
  `idvenda` int(10) DEFAULT NULL,
  `idproduto` int(10) DEFAULT NULL,
  `descproduto` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `medida` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `qtd_item` decimal(10,3) DEFAULT NULL,
  `vlrunit` decimal(10,2) DEFAULT NULL,
  `vlrtotal` decimal(10,2) DEFAULT NULL,
  `itemcancel` varchar(1) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`iditemvenda`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela frcaixa.item_venda: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela frcaixa.orcamento
CREATE TABLE IF NOT EXISTS `orcamento` (
  `idorcamento` int(11) NOT NULL AUTO_INCREMENT,
  `nome_cliente` varchar(30) CHARACTER SET latin1 NOT NULL,
  `valor` decimal(14,2) NOT NULL,
  PRIMARY KEY (`idorcamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela frcaixa.orcamento: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela frcaixa.pagamento
CREATE TABLE IF NOT EXISTS `pagamento` (
  `idpagamento` int(10) NOT NULL AUTO_INCREMENT,
  `desc_pagamento` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `vlr_desconto` decimal(20,2) DEFAULT NULL,
  `formapagto` varchar(50) DEFAULT NULL,
  `vlr_pago` decimal(20,2) DEFAULT NULL,
  PRIMARY KEY (`idpagamento`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela frcaixa.pagamento: ~2 rows (aproximadamente)
REPLACE INTO `pagamento` (`idpagamento`, `desc_pagamento`, `vlr_desconto`, `formapagto`, `vlr_pago`) VALUES
	(1, 'PROMOÇÃO AVANÇADA', 2.36, 'DINHEIRO', 25.00),
	(2, 'DESCONTO', 13.25, 'DINHEIRO', 25.00);

-- Copiando estrutura para tabela frcaixa.produto
CREATE TABLE IF NOT EXISTS `produto` (
  `idproduto` int(11) NOT NULL AUTO_INCREMENT,
  `codbarra` varchar(20) NOT NULL,
  `descproduto` varchar(20) NOT NULL,
  `vlrproduto` decimal(18,2) NOT NULL,
  `medida` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`idproduto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='codbarra,\r\n  descproduto,\r\n  vlrproduto';

-- Copiando dados para a tabela frcaixa.produto: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela frcaixa.venda
CREATE TABLE IF NOT EXISTS `venda` (
  `idvenda` int(10) NOT NULL AUTO_INCREMENT,
  `idcliente` int(10) DEFAULT NULL,
  `subtotal_venda` decimal(10,2) DEFAULT NULL,
  `desconto_venda` decimal(10,2) DEFAULT NULL,
  `total_venda` decimal(10,2) DEFAULT NULL,
  `idpagamento` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idvenda`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela frcaixa.venda: ~4 rows (aproximadamente)
REPLACE INTO `venda` (`idvenda`, `idcliente`, `subtotal_venda`, `desconto_venda`, `total_venda`, `idpagamento`) VALUES
	(1, NULL, 2543.00, 332.00, 231.00, 'DINHEIRO'),
	(2, NULL, 345.00, 574.00, 3446.00, 'CARTAO DE DEBITO'),
	(3, NULL, 435.00, 465.00, 432.00, 'CARTAO DE CREDITO'),
	(4, NULL, 345.00, 775.00, 321.00, 'CARTAO POS');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
