CREATE DATABASE ecommerce;
USE ecommerce;

-- Criando a tabela Produtos
CREATE TABLE Produtos (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    preco DECIMAL(10, 2) NOT NULL,
    quantidade_estoque INT NOT NULL
);

-- Criando a tabela Clientes
CREATE TABLE Clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    endereco VARCHAR(255),
    email VARCHAR(100),
    telefone VARCHAR(20)
);

-- Criando a tabela Pedidos
CREATE TABLE Pedidos (
    id_pedido INT AUTO_INCREMENT PRIMARY KEY,
    data_pedido DATE NOT NULL,
    status_pedido VARCHAR(50) NOT NULL,
    id_cliente INT,
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente)
);

-- Criando a tabela Vendas
CREATE TABLE Vendas (
    id_venda INT AUTO_INCREMENT PRIMARY KEY,
    total_vendas DECIMAL(10, 2) NOT NULL,
    numero_itens_vendidos INT NOT NULL,
    data_venda DATE NOT NULL
);

-- Inserindo dados na tabela Produtos
INSERT INTO Produtos (nome, descricao, preco, quantidade_estoque) VALUES
('Camisa Polo', 'Camisa Polo de algodão', 39.99, 100),
('Calça Jeans', 'Calça Jeans masculina', 59.99, 80),
('Tênis Esportivo', 'Tênis para corrida', 89.99, 50),
('Bolsa Feminina', 'Bolsa de couro', 49.99, 30);

-- Inserindo dados na tabela Clientes
INSERT INTO Clientes (nome, endereco, email, telefone) VALUES
('João Silva', 'Rua A, 123', 'joao@email.com', '(11) 98765-4321'),
('Maria Santos', 'Av. B, 456', 'maria@email.com', '(11) 91234-5678'),
('Pedro Oliveira', 'Travessa C, 789', 'pedro@email.com', '(11) 93456-7890');

-- Inserindo dados na tabela Pedidos
INSERT INTO Pedidos (data_pedido, status_pedido, id_cliente) VALUES
('2024-05-10', 'Em andamento', 1),
('2024-05-11', 'Entregue', 2),
('2024-05-12', 'Em andamento', 3);

-- Inserindo dados na tabela Vendas
INSERT INTO Vendas (total_vendas, numero_itens_vendidos, data_venda) VALUES
(199.96, 4, '2024-05-10'),
(59.99, 1, '2024-05-11'),
(179.98, 2, '2024-05-12');

UPDATE clientes 
SET nome = 'Wanderson Costa', endereco = 'Rua X, 999', email = 'wanderson@email.com', telefone = '(11) 99999-9999' 
WHERE id_cliente = 16;

UPDATE produtos 
SET nome = 'Blusa de Frio', descricao = 'Masculina', preco = 199.99, quantidade_estoque = '30' 
WHERE id_produto = 8;

DELETE FROM pedidos
WHERE numero_pedido = 1;


