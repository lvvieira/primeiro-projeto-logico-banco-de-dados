-- Criação do banco de dados (opcional, se necessário)
CREATE DATABASE ecommerce;
\c ecommerce;

-- Criação das tabelas
CREATE TABLE clientes (
    id_cliente SERIAL PRIMARY KEY,
    tipo_cliente VARCHAR(2) NOT NULL, -- 'PF' ou 'PJ'
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    telefone VARCHAR(20),
    endereco TEXT
);

CREATE TABLE clientes_pf (
    id_pf SERIAL PRIMARY KEY,
    id_cliente INT REFERENCES clientes(id_cliente),
    cpf VARCHAR(11) UNIQUE NOT NULL
);

CREATE TABLE clientes_pj (
    id_pj SERIAL PRIMARY KEY,
    id_cliente INT REFERENCES clientes(id_cliente),
    cnpj VARCHAR(14) UNIQUE NOT NULL
);

CREATE TABLE fornecedores (
    id_fornecedor SERIAL PRIMARY KEY,
    nome_fornecedor VARCHAR(100) NOT NULL,
    contato VARCHAR(100)
);

CREATE TABLE produtos (
    id_produto SERIAL PRIMARY KEY,
    nome_produto VARCHAR(100) NOT NULL,
    descricao TEXT,
    preco DECIMAL(10, 2) NOT NULL
);

CREATE TABLE estoque (
    id_estoque SERIAL PRIMARY KEY,
    id_produto INT REFERENCES produtos(id_produto),
    id_fornecedor INT REFERENCES fornecedores(id_fornecedor),
    quantidade INT NOT NULL
);

CREATE TABLE pedidos (
    id_pedido SERIAL PRIMARY KEY,
    id_cliente INT REFERENCES clientes(id_cliente),
    data_pedido TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    total DECIMAL(10, 2) NOT NULL
);

CREATE TABLE formas_pagamento (
    id_pagamento SERIAL PRIMARY KEY,
    id_pedido INT REFERENCES pedidos(id_pedido),
    metodo_pagamento VARCHAR(50) NOT NULL
);

CREATE TABLE entrega (
    id_entrega SERIAL PRIMARY KEY,
    id_pedido INT REFERENCES pedidos(id_pedido),
    status_entrega VARCHAR(50) NOT NULL,
    codigo_rastreamento VARCHAR(50)
);
