-- Relacionamentos e junções - ATIVIDADE 3 KORU

-- O INNER JOIN retorna registros que têm valores correspondentes em ambas as tabelas.
-- juntar as tabelas Pedidos e Clientes para listar os pedidos e os nomes dos clientes que os fizeram.

SELECT Pedidos.id_pedido, Pedidos.data_pedido, Clientes.nome
FROM Pedidos
INNER JOIN Clientes ON Pedidos.id_cliente = Clientes.id_cliente;

-- O LEFT JOIN retorna todos os registros da tabela à esquerda e os registros correspondentes da tabela à direita. 
-- Se não houver correspondência, os resultados da tabela à direita serão NULL.
-- listar todos os clientes e seus pedidos, incluindo clientes que não têm pedidos.

SELECT Clientes.nome, Pedidos.id_pedido, Pedidos.data_pedido
FROM Clientes
LEFT JOIN Pedidos ON Clientes.id_cliente = Pedidos.id_cliente;

-- O RIGHT JOIN retorna todos os registros da tabela à direita e os registros correspondentes da tabela à esquerda. 
-- Se não houver correspondência, os resultados da tabela à esquerda serão NULL.
-- listar todos os pedidos e os nomes dos clientes, incluindo pedidos que não têm clientes correspondentes (teoricamente, neste exemplo, sempre haverá correspondência).

SELECT Pedidos.id_pedido, Pedidos.data_pedido, Clientes.nome
FROM Pedidos
RIGHT JOIN Clientes ON Pedidos.id_cliente = Clientes.id_cliente;


-- O FULL JOIN retorna todos os registros quando há uma correspondência na tabela à esquerda ou à direita. 
-- Se não houver correspondência, o resultado é NULL para o lado sem correspondência.
 

SELECT * FROM Pedidos 
FULL JOIN Clientes
ON id_pedido = Clientes.id_cliente;

-- SUBCONSULTAS

-- encontrar o nome do cliente que fez o pedido mais recente.
SELECT nome 
FROM Clientes 
WHERE id_cliente = (SELECT id_cliente FROM Pedidos ORDER BY data_pedido DESC LIMIT 1);

-- encontrar produto mais caro
SELECT nome, preco 
FROM Produtos
WHERE preco = (SELECT MAX(preco) FROM Produtos);

-- encontrar o cliente que fez mais pedidos
SELECT nome, max_pedidos 
FROM Clientes
JOIN (
    SELECT id_cliente, COUNT(*) AS max_pedidos
    FROM Pedidos
    GROUP BY id_cliente
    ORDER BY max_pedidos DESC
    LIMIT 1
) AS subconsulta ON Clientes.id_cliente = subconsulta.id_cliente;



-- retornam nomes de clientes e produtos em uma única lista.
SELECT nome FROM Clientes
UNION
SELECT nome FROM Produtos;

-- adicionar uma coluna data_nascimento à tabela Clientes.
ALTER TABLE Clientes
ADD COLUMN data_nascimento DATE;

-- VIEWS

-- view que lista o nome do cliente, a data do pedido e o status do pedido.
CREATE VIEW view_pedidos_clientes AS
SELECT Clientes.nome, Pedidos.data_pedido, Pedidos.status_pedido
FROM Pedidos
INNER JOIN Clientes ON Pedidos.id_cliente = Clientes.id_cliente;

-- Para usar a view criada
SELECT * FROM view_pedidos_clientes;













