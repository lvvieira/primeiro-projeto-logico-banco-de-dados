-- Inserção de clientes Pessoa Física
INSERT INTO clientes (tipo_cliente, nome, email, telefone, endereco)
VALUES ('PF', 'João Silva', 'joao@email.com', '99999-9999', 'Rua A, 123');

INSERT INTO clientes_pf (id_cliente, cpf)
VALUES (1, '12345678901');

-- Inserção de clientes Pessoa Jurídica
INSERT INTO clientes (tipo_cliente, nome, email, telefone, endereco)
VALUES ('PJ', 'Empresa ABC', 'contato@empresaabc.com', '88888-8888', 'Rua B, 456');

INSERT INTO clientes_pj (id_cliente, cnpj)
VALUES (2, '98765432000100');

-- Inserção de fornecedores
INSERT INTO fornecedores (nome_fornecedor, contato)
VALUES ('Fornecedor XYZ', 'contato@xyz.com');

INSERT INTO fornecedores (nome_fornecedor, contato)
VALUES ('Fornecedor DEF', 'contato@def.com');

-- Inserção de produtos
INSERT INTO produtos (nome_produto, descricao, preco)
VALUES ('Smartphone', 'Smartphone de última geração', 2000.00),
       ('Notebook', 'Notebook com alta performance', 4500.00),
       ('Tablet', 'Tablet de uso geral', 1500.00);

-- Inserção de estoque
INSERT INTO estoque (id_produto, id_fornecedor, quantidade)
VALUES (1, 1, 100),
       (2, 1, 50),
       (3, 2, 30);

-- Inserção de pedidos
INSERT INTO pedidos (id_cliente, total)
VALUES (1, 2000.00),
       (2, 4500.00);

-- Inserção de formas de pagamento
INSERT INTO formas_pagamento (id_pedido, metodo_pagamento)
VALUES (1, 'Cartão de Crédito'),
       (2, 'Boleto Bancário');

-- Inserção de informações de entrega
INSERT INTO entrega (id_pedido, status_entrega, codigo_rastreamento)
VALUES (1, 'Em Trânsito', 'RAST12345'),
       (2, 'Entregue', 'RAST67890');
