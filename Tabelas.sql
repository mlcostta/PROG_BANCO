CREATE database 'Hamburgueria'
USE Hamburgueria;

CREATE TABLE CIDADE(
ID int NOT NULL AUTO_INCREMENT,
NOME varchar(45) NOT NULL,
SIGLA varchar(3) NOT NULL,
PRIMARY KEY (ID)
);

CREATE TABLE CLIENTE(
ID int NOT NULL AUTO_INCREMENT,
NOME varchar(45) NOT NULL,
ENDERECO varchar(100) NOT NULL,
NUMERO int NOT NULL,
BAIRRO varchar(45) NOT NULL,
CEP int NOT NULL,
ID_CIDADE int NOT NULL,
PRIMARY KEY (ID),
CONSTRAINT FOREIGN KEY (ID_CIDADE) REFERENCES CIDADE(ID) ON DELETE CASCADE ON UPDATE CASCADE,
INDEX FK_CLIENTE_ID_CIDADE (ID)
);

CREATE TABLE TIPO_PRODUTO(
ID int NOT NULL AUTO_INCREMENT,
DESCRICAO varchar(45) NOT NULL,
PRIMARY KEY (ID)
);

CREATE TABLE PRODUTO(
ID int NOT NULL AUTO_INCREMENT,
DESCRICAO varchar(45) NOT NULL,
VALOR double NOT NULL,
QUANTIDADE int NOT NULL,
ID_TIPO_PRODUTO int NOT NULL,
PRIMARY KEY (ID),
CONSTRAINT FOREIGN KEY (ID_TIPO_PRODUTO) REFERENCES TIPO_PRODUTO (ID) ON DELETE CASCADE ON UPDATE CASCADE,
INDEX FK_PRODUTO_ID_TP_PRODUTO (ID)
);

CREATE TABLE TIPO_FUNCIONARIO(
ID int NOT NULL AUTO_INCREMENT,
DESCRICAO varchar(45) NOT NULL,
PRIMARY KEY (ID)
);

CREATE TABLE FUNCIONARIO(
ID int NOT NULL AUTO_INCREMENT,
NOME varchar(45) NOT NULL,
MATRICULA int NOT NULL,
LOGIN varchar(45) NOT NULL,
SENHA varchar(45) NOT NULL,
SALARIO double NOT NULL,
ID_TIPO_FUNCIONARIO int NOT NULL,
PRIMARY KEY (ID),
CONSTRAINT FOREIGN KEY (ID_TIPO_FUNCIONARIO) REFERENCES TIPO_FUNCIONARIO (ID) ON DELETE CASCADE ON UPDATE CASCADE,
INDEX FK_FUNCIONARIO_ID_TP_FUNCIONARIO (ID)
);


CREATE TABLE VENDA(
ID int NOT NULL AUTO_INCREMENT,
DATA date NOT NULL,
VALOR double NOT NULL,
ID_CLIENTE int NOT NULL,
ID_FUNCIONARIO int NOT NULL,
PRIMARY KEY (ID),
CONSTRAINT FOREIGN KEY (ID_CLIENTE) REFERENCES CLIENTE(ID) ON DELETE CASCADE ON UPDATE CASCADE,
INDEX FK_VENDA_ID_CLIENTE (ID),
CONSTRAINT FOREIGN KEY (ID_FUNCIONARIO) REFERENCES FUNCIONARIO(ID) ON DELETE CASCADE ON UPDATE CASCADE,
INDEX FK_VENDA_ID_FUNCIONARIO (ID)
);



CREATE TABLE PRODUTOS_VENDA(
ID_VENDA int NOT NULL,
ID_PRODUTO int NOT NULL,
QUANTIDADE int NOT NULL,
PRIMARY KEY (ID_VENDA,ID_PRODUTO),
INDEX FK_VENDA_PRODUTO (ID_PRODUTO),
INDEX FK_VENDA_VENDA (ID_VENDA),
CONSTRAINT FOREIGN KEY (ID_VENDA) REFERENCES VENDA (ID) ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT FOREIGN KEY (ID_PRODUTO) REFERENCES PRODUTO (ID) ON DELETE CASCADE ON UPDATE CASCADE
); 


create table log_Cidade(
ID int NOT NULL AUTO_INCREMENT,
ID_USUARIO int NOT NULL,
TP_OPERACAO character(1) NOT NULL,
TABELA varchar(45),
DATA date,
PRIMARY KEY (ID)
);

create table log_Cliente(
ID int NOT NULL AUTO_INCREMENT,
ID_USUARIO int NOT NULL,
TP_OPERACAO character(1) NOT NULL,
TABELA varchar(45),
DATA date,
PRIMARY KEY (ID)
);

create table log_Funcionario(
ID int NOT NULL AUTO_INCREMENT,
ID_USUARIO int NOT NULL,
TP_OPERACAO character(1) NOT NULL,
TABELA varchar(45),
DATA date,
PRIMARY KEY (ID)
);

create table log_Produto(
ID int NOT NULL AUTO_INCREMENT,
ID_USUARIO int NOT NULL,
TP_OPERACAO character(1) NOT NULL,
TABELA varchar(45),
DATA date,
PRIMARY KEY (ID)
);


