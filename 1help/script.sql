CREATE DATABASE SERVICO;
USE SERVICO;

CREATE TABLE CLIENTES (
    cadastroID INT(4) PRIMARY KEY AUTO_INCREMENT,
    nome varchar(50) NOT NULL,
    login varchar(50) NOT NULL,
    senha varchar(50) NOT NULL
) CHARSET=utf8;

CREATE TABLE CUPONS (
    ClienteID INT(4) NOT NULL,
    cupom varchar(7) NOT NULL,
    valor decimal(4,2) NOT NULL
) CHARSET=utf8;

CREATE TABLE AGENDAMENTO (
    agendamentoID INT PRIMARY KEY AUTO_INCREMENT,
    data_registro varchar(20) NOT NULL,
    data_agendada varchar(20) NOT NULL,
    horario varchar(7) NOT NULL,
    duracao FLOAT(10,2) NOT NULL,
    descricao varchar(50),
    custo FLOAT(10,2) NOT NULL,
    cadastroID INT(4)
) CHARSET=utf8;
ALTER TABLE AGENDAMENTO ADD CONSTRAINT fk_AgendaClientes FOREIGN KEY(cadastroID) REFERENCES CLIENTES(cadastroID);

INSERT INTO CLIENTES VALUES (NULL, 'Adriana Silva', 'adriana_silva', '8154869454'),
(NULL, 'Ana Costa', 'ana_costa', '6465835783'),
(NULL, 'Maria Lima', 'maria_lima', '6638821884'),
(NULL, 'Sandra Silva', 'sandra_silva', '3124739458'),
(NULL, 'Juliana Cavalcanti', 'juliana_cavalcanti', '5152245684'),
(NULL, 'Antonio Silva', 'antonio_silva', '8681953457'),
(NULL, 'Carlos Pereira', 'carlos_pereira', '8175861248'),
(NULL, 'Francisco Costa', 'francisco_costa', '6493775443'),
(NULL, 'João Souza', 'joao_souza', '1122381485'),
(NULL, 'José Santos', 'jose_santos', '9753343354'),
(NULL, 'Bruna Souza', 'bruna_souza', '4852968547'),
(NULL, 'Camila Oliveira', 'camila_oliveira', '2824333142'),
(NULL, 'Jéssica Costa', 'jessica_costa', '2748748376'),
(NULL, 'Leticia Carvalho', 'leticia_carvalho', '9265433641'),
(NULL, 'Amanda Santos', 'amanda_santos', '3123483479'),
(NULL, 'Lucas Silva', 'lucas_silva', '1695842192'),
(NULL, 'Luis Cavalcanti', 'luis_cavalcanti', '6215788934'),
(NULL, 'Mateus Rodrigues', 'mateus_rodrigues', '9192839126'),
(NULL, 'Guilherme Pereira', 'guilherme_pereira', '5372886871'),
(NULL, 'Pedro Santos', 'pedro_santos', '2318722962'),
(NULL, 'Alice Silva', 'alice_silva', '5976649393'),
(NULL, 'Isabella Pereira', 'isabella_pereira', '3539644932'),
(NULL, 'Júlia Lima', 'julia_lima', '2674735688'),
(NULL, 'Sophia Rodrigues', 'sophia_rodrigues', '8943581148'),
(NULL, 'Valentina Carvalho', 'valentina_carvalho', '4426986648'),
(NULL, 'Arthur Rodrigues', 'arthur_rodrigues', '3841156332'),
(NULL, 'Miguel Cavalcanti', 'miguel_cavalcanti', '6716252124'),
(NULL, 'Davi Silva', 'davi_silva', '5754877665'),
(NULL, 'Gabriel Santos', 'gabriel_santos', '4592644876'),
(NULL, 'Bernardo Rodrigues', 'bernardo_rodrigues', '6588474347'),
(NULL, 'Ana Carvalho', 'ana_carvalho', '7595847342'),
(NULL, 'Maria Rodrigues', 'maria_rodrigues', '3569513838'),
(NULL, 'Sandra Santos', 'sandra_santos', '8111396877'),
(NULL, 'Juliana Carvalho', 'juliana_carvalho', '5283624687'),
(NULL, 'Antonio Pereira', 'antonio_pereira', '5856197287'),
(NULL, 'Carlos Rodrigues', 'carlos_rodrigues', '3375858836'),
(NULL, 'Francisco Carvalho', 'francisco_carvalho', '8595618496'),
(NULL, 'João Lima', 'joao_lima', '4728447711'),
(NULL, 'José Silva', 'jose_silva', '7427758847'),
(NULL, 'Bruna Pereira', 'bruna_pereira', '7366796586'),
(NULL, 'Camila Pereira', 'camila_pereira', '8727946149'),
(NULL, 'Jéssica Pereira', 'jessica_pereira', '6287797432'),
(NULL, 'Leticia Souza', 'leticia_souza', '9892515696'),
(NULL, 'Amanda Rodrigues', 'amanda_rodrigues', '5588984649'),
(NULL, 'Lucas Rodrigues', 'lucas_rodrigues', '9765181918'),
(NULL, 'Luis Pereira', 'luis_pereira', '4519224792'),
(NULL, 'Mateus Souza', 'mateus_souza', '9263641921'),
(NULL, 'Guilherme Cavalcanti', 'guilherme_cavalcanti', '1926817247'),
(NULL, 'Pedro Costa', 'pedro_costa', '6869562587'),
(NULL, 'Alice Cavalcanti', 'alice_cavalcanti', '2912812796');

INSERT INTO CUPONS VALUES (22, 'TDXU9B', 0.10),
(24, 'W7KWWAH', 0.11),
(22, '8IWKZEM', 0.11),
(15, 'UBN5ZW6', 0.12),
(5, '91RR8JJ', 0.13),
(32, 'IZ1T1C', 0.14),
(27, '8C6MLAK', 0.15),
(42, 'SJF1JLO', 0.15),
(19, 'QR3U9PZ', 0.16),
(50, 'DUQRV7G', 0.18),
(24, 'WBQDR2', 0.19),
(6, 'FIYM6DB', 0.19),
(34, '9PDZSI', 0.20),
(12, '8U5XRBD', 0.22),
(37, '4FBFQSA', 0.22),
(27, '8LAF9QP', 0.22),
(5, 'PVB1SO', 0.22),
(8, 'UGUGFHA', 0.23),
(15, '9KB7H73', 0.23),
(12, 'SSUVJ8', 0.24),
(35, 'QPI23JY', 0.25),
(24, 'EQIX9Z', 0.26),
(27, 'NQRI74A', 0.26),
(25, 'E8GWH9G', 0.27),
(21, '1PPNT2', 0.27),
(48, 'ZCXDQJ', 0.28),
(2, 'QLGOR72', 0.28),
(5, 'CDVU9NV', 0.28),
(35, '3K54GS7', 0.29),
(42, 'FKH3WBV', 0.31),
(18, 'BOMPRGM', 0.32),
(40, 'HU6G31G', 0.33),
(27, 'RRZE98', 0.33),
(30, 'FBL8MHD', 0.34),
(41, 'JFUPOEE', 0.35),
(13, 'NZKSZL', 0.36),
(34, 'Y54A8GU', 0.37),
(13, 'PNLQY9I', 0.37),
(8, '5HVAWHX', 0.38),
(2, 'UBUEIDA', 0.39),
(12, '69M4WN9', 0.40),
(32, '155HP1H', 0.40),
(13, 'ZJA9L6U', 0.41),
(35, 'BKRME4', 0.41),
(49, 'WXVXAVH', 0.41),
(38, 'L9HWN35', 0.42),
(50, 'FZ4QE5W', 0.42),
(2, 'DECYH2H', 0.42),
(3, '7CS55RX', 0.42),
(40, '2IHOS97', 0.43),
(21, '6BSAHO3', 0.44),
(25, '5AR6NL7', 0.45),
(28, 'C1RRZM3', 0.45),
(49, 'R7UDKF', 0.46),
(35, 'HCCSOVL', 0.47),
(22, 'IKE8YR5', 0.48),
(46, 'OJMZYDN', 0.49),
(17, '6C7KO4Y', 0.49),
(12, '1FZGTRZ', 0.49),
(2, 'VEJLNZX', 0.51),
(36, '16GF6BR', 0.51),
(3, 'QGZN3NF', 0.52),
(9, 'P6XGLP', 0.54),
(46, 'ISEGNI5', 0.55),
(1, '16SE84O', 0.56),
(46, 'VJZ6LP3', 0.57),
(23, 'QW3W6LX', 0.58),
(3, 'PEPJQ9Z', 0.61),
(45, 'BYFNID', 0.62),
(15, 'G3MJ85', 0.62),
(6, 'OHIK4ZY', 0.64),
(3, 'S15HCGU', 0.64),
(12, 'CJA54GY', 0.65),
(25, 'AUW7OE', 0.66),
(47, '1CU6QJ1', 0.66),
(34, '7NSQIPQ', 0.66),
(47, 'L2GK9FC', 0.68),
(3, 'X4ULGJF', 0.69),
(9, '6IUHQ2U', 0.69),
(39, 'QB118C6', 0.71),
(14, 'S1L1FF', 0.71),
(35, 'KU3Y7L3', 0.71),
(37, 'HOR2ZUR', 0.72),
(33, 'N73LC9K', 0.72),
(5, 'RRAUSHF', 0.74),
(38, 'YMY9C5A', 0.75),
(22, '4I698E', 0.75),
(20, 'AKEA566', 0.75),
(50, 'QDRCV2Q', 0.75),
(40, 'ARGTNP', 0.75),
(24, 'L5CIDS3', 0.76),
(1, 'UNKF3IX', 0.76),
(1, 'VDUFON8', 0.77),
(9, '42II2C', 0.78),
(21, 'Q2KUZT9', 0.78),
(38, '83RDQTO', 0.78),
(29, '28JAXQG', 0.78),
(15, 'UGYVUQ9', 0.80),
(44, '9O98KUR', 0.82),
(30, 'ELRXD5U', 0.82),
(42, 'Y9LVYS', 0.84),
(13, 'A22ES18', 0.84),
(16, '83BAFKK', 0.85),
(44, 'YEBRYDJ', 0.87),
(16, 'K47UO6J', 0.88),
(41, 'AFUWRD9', 0.88),
(50, '7QQR1ML', 0.88),
(35, 'R5OO3FH', 0.88),
(22, '7Y8XNOC', 0.89),
(10, 'DYUTPV7', 0.94),
(10, 'V6GZRRI', 0.94),
(43, 'JWFMBE6', 0.94),
(17, 'N1D24V1', 0.96),
(19, 'NVVSGIN', 0.97),
(15, 'UWCRCJ9', 0.98),
(31, '1TXG73', 0.99),
(16, '3DKL48B', 0.10),
(7, 'BPVMO2', 0.10),
(12, 'RRKGW7B', 0.10),
(44, '5T8ZXBJ', 0.10),
(26, 'PI9W5ZD', 0.50),
(11, '2LUSM7', 0.50),
(39, 'D2D84RH', 0.50),
(9, '6APWE7', 0.50),
(31, 'YCLAUV3', 0.50),
(27, '1HET1', 0.50),
(25, 'AMUSI4D', 0.50),
(38, '4WP4BON', 0.50),
(49, 'WN76WXZ', 0.50),
(17, 'KQ77NRP', 0.50),
(6, 'ZQFYAWA', 0.50),
(26, 'QUJE1KS', 0.50),
(7, '6MM6HVS', 0.50),
(4, 'PYQVFWI', 0.50),
(43, '96BW4NR', 0.50),
(7, 'FP1QT6E', 0.50),
(47, 'ZJ1JDQM', 0.50),
(2, '4BQ6GN', 0.60),
(42, 'SOJVFO6', 0.60),
(45, 'H7FPLFI', 0.60),
(37, 'M3YT81Q', 0.60),
(44, 'JVIQSB', 0.60),
(13, 'SIFSYEH', 0.60),
(49, 'CP6TCP', 0.60),
(7, 'ZA25L1Y', 0.60),
(45, 'H5FUP3', 0.60),
(18, '5FM5U9', 0.60),
(28, 'EELLFSN', 0.60),
(17, '52YWWC', 0.60),
(37, 'BA8UUOG', 0.60),
(33, 'SWMLG6H', 0.60),
(6, 'M1QAG1', 0.60),
(22, 'ZNEHYKS', 0.60),
(16, 'OCZUCOA', 0.60),
(22, 'H7DFVG1', 0.60),
(27, 'NG8XL8A', 0.60),
(1, 'QB3MDO5', 0.60),
(36, 'ETPRLV', 0.60),
(47, 'SQATIKG', 0.60),
(4, '6BWNRSC', 0.60),
(20, 'ES13LV', 0.60),
(44, 'VUSB6AV', 0.60),
(47, '7Q4N165', 0.70),
(49, 'TPZ4WZF', 0.70),
(36, 'TBBGA6C', 0.70),
(7, '22UM1KN', 0.70),
(43, 'OLBWMPF', 0.70),
(44, 'EBY27JE', 0.70),
(24, '483KPT', 0.70),
(10, 'MW3X1L7', 0.70),
(49, '3W1QPCE', 0.70),
(46, '1F3T78N', 0.70),
(49, 'AASV5GD', 0.70),
(26, 'GF59UWH', 0.70),
(49, 'Z1T2KP', 0.70),
(39, '6TXR19I', 0.70),
(46, 'EUXCL9K', 0.70),
(25, 'OJ8LE35', 0.70),
(40, 'YNHINJE', 0.70),
(48, 'KJI94E', 0.70),
(25, 'ILG1HQI', 0.70),
(3, 'MMAXXED', 0.70),
(34, 'TMB6PE', 0.70),
(34, 'TYYT8BR', 0.70),
(45, 'MXBKQ5S', 0.80),
(23, 'JPQFUGE', 0.80),
(2, 'OWXO8I', 0.80),
(39, 'H5IUZ6S', 0.80),
(26, 'ZUFN6I8', 0.80),
(28, '6DW6WWR', 0.80),
(35, '8AHT38C', 0.80),
(34, '2VJEOW', 0.80),
(21, 'AN4AAJ', 0.80),
(21, 'XTQ6KK3', 0.80),
(6, 'Y2EICF', 0.80),
(42, 'LZ3HFIA', 0.80),
(38, '58YJOMS', 0.80),
(50, 'DR6VLOM', 0.80),
(10, '9EDZCDW', 0.90),
(10, 'MQOP723', 0.90),
(38, 'DMCMEDZ', 0.90),
(43, 'R8GK8K1', 0.90),
(5, '6UQIA2X', 0.90),
(25, '5SKPNV3', 0.90),
(14, '1MAHVH', 0.90),
(24, 'VWPQ26A', 0.90),
(2, '3AA34MA', 0.90),
(14, '14GOB24', 0.90),
(15, 'MFB6Q17', 0.90),
(4, 'K6FUSK2', 0.90),
(15, 'GFY336', 0.90),
(9, 'V3DDEI5', 0.90),
(45, '3XBZLQ6', 0.90),
(32, 'EAONEDM', 0.90),
(24, 'RJT9ZA3', 0.90),
(1, 'MK32XR3', 0.90),
(12, 'XIB2MOL', 0.90),
(50, 'C1ZAI1E', 0.90),
(24, 'AF9MUN1', 0.90),
(41, '62RMNHQ', 0.90),
(46, 'WYUYY73', 0.90),
(14, 'ZOHUDFW', 0.90),
(45, '84NY6KR', 0.90),
(24, 'HEE2HPS', 0.90),
(33, 'JXN7FQ6', 0.90),
(40, '8FB5Z8E', 0.90),
(44, 'VMAE57I', 0.90),
(45, 'SHZFZA', 0.90),
(12, 'H22TLUK', 1.00),
(35, 'BW9S88X', 1.00),
(5, 'Q59ZCHC', 1.00),
(30, '3X7C24B', 1.00),
(39, 'GNTFTEU', 1.00),
(20, 'EN3TBAB', 1.00),
(3, 'UFTC8IE', 1.00),
(29, 'OQOJUHI', 1.00),
(34, '6YA7QEF', 1.00),
(48, '8UJDL2T', 1.00),
(48, 'IJQ9L3O', 1.00),
(49, 'G3YJGQR', 1.00),
(25, 'CW2PZX5', 1.00),
(8, 'M6IGTKQ', 1.00),
(49, 'TLVCJAM', 1.00)