--Descrição
--Projeto de sistema de banco de dados desenvolvido para gerenciar as operações da Band perfumaria. 
--Contém a modelagem do banco de dados relacional, scripts SQL para criação e manipulação das tabelas.
-- Database: db_band
---------------------------------------------------------------------------------------------------------------
CREATE DATABASE db_band
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'Portuguese_Brazil.1252'
    LC_CTYPE = 'Portuguese_Brazil.1252'
    LOCALE_PROVIDER = 'libc'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;

--criação tabela categorias de produtos
CREATE TABLE categorias_de_produto (
    id_categoria SERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL UNIQUE,
    descricao TEXT
);
--criação tabela produtos
CREATE TABLE produtos (
    id_produto SERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao TEXT,
    preco DECIMAL(10, 2) NOT NULL,
    quantidade_estoque INT NOT NULL,
    estoque_minimo INT NOT NULL,
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES categorias_de_produto(id_categoria)
);
--criação tabela clientes
CREATE TABLE clientes (
    id_cliente SERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    telefone VARCHAR(15)
);
--criação tabela vendas realizadas
CREATE TABLE vendas (
    id_venda SERIAL PRIMARY KEY,
    id_Cliente INT NOT NULL,
    data_venda DATE NOT NULL,
    total_venda DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);
--criação tabela itens das vendas
CREATE TABLE itens_de_venda (
    id_item_venda SERIAL PRIMARY KEY,
    id_venda INT NOT NULL,
    id_Produto INT NOT NULL,
    quantidade INT NOT NULL,
    preco_unidade DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (id_venda) REFERENCES vendas(id_Venda),
    FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)
);
--criação tabela de pontuação por cliente
CREATE TABLE pontuacao_de_clientes (
    id_cliente INT NOT NULL,
    pontos INT DEFAULT 0,
    PRIMARY KEY (id_cliente),
    FOREIGN KEY (id_Cliente) REFERENCES clientes(id_cliente)
);
