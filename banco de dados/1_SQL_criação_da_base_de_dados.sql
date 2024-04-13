CREATE TABLE categorias_de_produto (
    id_categoria SERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL UNIQUE,
    descricao TEXT
);

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

CREATE TABLE clientes (
    id_cliente SERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    telefone VARCHAR(15)
);

CREATE TABLE vendas (
    id_venda SERIAL PRIMARY KEY,
    id_Cliente INT NOT NULL,
    data_venda DATE NOT NULL,
    total_venda DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);

CREATE TABLE itens_de_venda (
    id_itemVenda SERIAL PRIMARY KEY,
    id_venda INT NOT NULL,
    id_Produto INT NOT NULL,
    quantidade INT NOT NULL,
    preco_unidade DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (id_venda) REFERENCES vendas(id_Venda),
    FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)
);

CREATE TABLE pontuacao_de_clientes (
    id_cliente INT NOT NULL,
    pontos INT DEFAULT 0,
    PRIMARY KEY (id_cliente),
    FOREIGN KEY (id_Cliente) REFERENCES clientes(id_cliente)
);
