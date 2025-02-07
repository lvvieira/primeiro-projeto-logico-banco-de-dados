-- 1. Quantos pedidos foram feitos por cada cliente?
SELECT c.nome, COUNT(p.id_pedido) AS total_pedidos
FROM clientes c
JOIN pedidos p ON c.id_cliente = p.id_cliente
GROUP BY c.nome;

-- 2. Algum vendedor também é fornecedor? (Caso exista essa relação futura)
SELECT f.nome_fornecedor, c.nome AS nome_cliente
FROM fornecedores f
JOIN clientes c ON f.nome_fornecedor = c.nome;

-- 3. Relação de produtos, fornecedores e estoques
SELECT p.nome_produto, f.nome_fornecedor, e.quantidade
FROM estoque e
JOIN produtos p ON e.id_produto = p.id_produto
JOIN fornecedores f ON e.id_fornecedor = f.id_fornecedor;

-- 4. Relação de nomes dos fornecedores e nomes dos produtos
SELECT f.nome_fornecedor, p.nome_produto
FROM produtos p
JOIN estoque e ON p.id_produto = e.id_produto
JOIN fornecedores f ON e.id_fornecedor = f.id_fornecedor;

-- 5. Clientes que compraram produtos acima de 3000 reais
SELECT c.nome, p.total
FROM clientes c
JOIN pedidos p ON c.id_cliente = p.id_cliente
WHERE p.total > 3000;

-- 6. Total de produtos vendidos e quantidade no estoque atual
SELECT p.nome_produto, SUM(e.quantidade) AS total_estoque
FROM produtos p
JOIN estoque e ON p.id_produto = e.id_produto
GROUP BY p.nome_produto;
