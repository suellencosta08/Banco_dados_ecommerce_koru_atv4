USE ecommerce_eletronico;


-- Exercicio 1
SELECT * FROM Produtos;


-- Exercicio 2
SELECT nome, preco FROM Produtos ORDER BY preco DESC;


-- Exercicio 3
SELECT nome, preco, quantidade_estoque FROM Produtos WHERE preco > 50;


-- Exercicio 4
INSERT INTO Clientes (nome, endereco, telefone) VALUES ('Novo Cliente', 'Rua Exemplo, 123', '(11) 98765-4321');


-- Exercicio 5
UPDATE Produtos SET preco = 75.50 WHERE id_produto = 1;


-- Exercicio 6
SELECT AVG(preco) AS media_preco FROM Produtos;


-- Exercicio 7
SELECT COUNT(*) AS total_clientes FROM Clientes;


-- Exercicio 8   
SELECT c.nome AS nome_cliente
FROM Clientes c
INNER JOIN Pedidos p ON c.id_cliente = p.id_cliente
ORDER BY p.data_pedido ASC
LIMIT 1;


-- Exercicio 9  
SELECT MAX(total_vendas) AS max_venda FROM Vendas;


-- Exercicio 10 - ajustar
SELECT p.nome AS NomeProduto, SUM(v.numero_itens_vendidos) AS QuantidadeVendida
FROM Produtos p
INNER JOIN Vendas v ON p.id_produto = v.id_venda
GROUP BY p.nome;


-- Exercicio 11
SELECT p.nome AS NomeProduto, SUM(v.numero_itens_vendidos) AS QuantidadeTotalVendida
FROM Produtos p
INNER JOIN Vendas v ON p.id_produto = v.id_venda
GROUP BY p.nome
HAVING SUM(v.numero_itens_vendidos) > 50;

-- Exercicio 12
SELECT nome AS NomeProduto, AVG(preco) AS PrecoMedio
FROM Produtos
GROUP BY nome;

-- Exercicio 13
SELECT status_pedido, COUNT(*) AS QuantidadePedidos
FROM Pedidos
GROUP BY status_pedido
LIMIT 5;

-- Exercicio 14
-- Consulta para obter o nome do cliente e o número total de pedidos que ele fez, ordenados pelo número de pedidos em ordem decrescente
SELECT c.nome AS NomeCliente, COUNT(p.id_pedido) AS TotalPedidos
FROM Clientes c
LEFT JOIN Pedidos p ON c.id_cliente = p.id_cliente
GROUP BY c.nome
ORDER BY TotalPedidos DESC;




