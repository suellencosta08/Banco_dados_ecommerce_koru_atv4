-- Criação do banco de dados
CREATE DATABASE IF NOT EXISTS ecommerce_eletronico;
USE ecommerce_eletronico;

-- Criação das tabelas
CREATE TABLE IF NOT EXISTS Produtos (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    preco DECIMAL(10, 2) NOT NULL,
    quantidade_estoque INT NOT NULL
);

CREATE TABLE IF NOT EXISTS Clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    endereco VARCHAR(255),
    email VARCHAR(100),
    telefone VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS Pedidos (
    id_pedido INT AUTO_INCREMENT PRIMARY KEY,
    data_pedido DATE NOT NULL,
    status_pedido VARCHAR(50) NOT NULL,
    id_cliente INT,
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente)
);

CREATE TABLE IF NOT EXISTS Vendas (
    id_venda INT AUTO_INCREMENT PRIMARY KEY,
    total_vendas DECIMAL(10, 2) NOT NULL,
    numero_itens_vendidos INT NOT NULL,
    data_venda DATE NOT NULL
);

-- Populando as tabelas com dados
INSERT INTO Produtos (nome, descricao, preco, quantidade_estoque) VALUES
('Camisa Polo', 'Camisa Polo de algodão', 39.99, 100),
('Calça Jeans', 'Calça Jeans masculina', 59.99, 80),
('Tênis Esportivo', 'Tênis para corrida', 89.99, 50),
('Bolsa Feminina', 'Bolsa de couro', 49.99, 30),
('Boné', 'Boné de algodão', 19.99, 120),
('Mochila', 'Mochila para notebook', 79.99, 40),
('Chinelo', 'Chinelo de borracha', 29.99, 90),
('Cinto', 'Cinto de couro', 34.99, 60),
('Jaqueta de Couro', 'Jaqueta de couro genuíno', 199.99, 25),
('Óculos de Sol', 'Óculos de sol polarizado', 69.99, 35),
('Shorts', 'Shorts de praia', 24.99, 70),
('Relógio', 'Relógio analógico', 149.99, 55),
('Camiseta Básica', 'Camiseta de algodão', 14.99, 150),
('Blusa de Frio', 'Blusa de frio unissex', 79.99, 45),
('Sapato Social', 'Sapato social em couro', 129.99, 30),
('Bermuda', 'Bermuda cargo', 44.99, 65),
('Carteira', 'Carteira em couro', 24.99, 80),
('Pulseira', 'Pulseira de prata', 39.99, 100),
('Camisa Social', 'Camisa social slim fit', 54.99, 40),
('Vestido', 'Vestido de festa', 89.99, 20);

INSERT INTO Clientes (nome, endereco, email, telefone) VALUES
('João Silva', 'Rua A, 123', 'joao@email.com', '(11) 98765-4321'),
('Maria Santos', 'Av. B, 456', 'maria@email.com', '(11) 91234-5678'),
('Pedro Oliveira', 'Travessa C, 789', 'pedro@email.com', '(11) 93456-7890'),
('Ana Souza', 'Rua D, 456', 'ana@email.com', '(11) 99876-5432'),
('Lucas Pereira', 'Av. E, 789', 'lucas@email.com', '(11) 92345-6789'),
('Fernanda Lima', 'Travessa F, 101', 'fernanda@email.com', '(11) 94567-8901'),
('Rafaela Santos', 'Rua G, 234', 'rafaela@email.com', '(11) 98765-4321'),
('Carlos Oliveira', 'Av. H, 567', 'carlos@email.com', '(11) 91234-5678'),
('Juliana Costa', 'Travessa I, 890', 'juliana@email.com', '(11) 93456-7890'),
('Marcos Santos', 'Rua J, 123', 'marcos@email.com', '(11) 99876-5432'),
('Patrícia Lima', 'Av. K, 456', 'patricia@email.com', '(11) 92345-6789'),
('Rodrigo Pereira', 'Travessa L, 789', 'rodrigo@email.com', '(11) 94567-8901'),
('Aline Oliveira', 'Rua M, 234', 'aline@email.com', '(11) 98765-4321'),
('Daniel Costa', 'Av. N, 567', 'daniel@email.com', '(11) 91234-5678'),
('Tatiane Santos', 'Travessa O, 890', 'tatiane@email.com', '(11) 93456-7890'),
('Lúcia Lima', 'Rua P, 123', 'lucia@email.com', '(11) 99876-5432'),
('Felipe Pereira', 'Av. Q, 456', 'felipe@email.com', '(11) 92345-6789'),
('Mariana Costa', 'Travessa R, 789', 'mariana@email.com', '(11) 94567-8901'),
('Vinícius Oliveira', 'Rua S, 234', 'vinicius@email.com', '(11) 98765-4321'),
('Laura Santos', 'Av. T, 567', 'laura@email.com', '(11) 91234-5678');

INSERT INTO Pedidos (data_pedido, status_pedido, id_cliente) VALUES
('2024-05-10', 'Em andamento', 1),
('2024-05-11', 'Entregue', 2),
('2024-05-12', 'Em andamento', 3),
('2024-05-13', 'Entregue', 4),
('2024-05-14', 'Em andamento', 5),
('2024-05-15', 'Em andamento', 6),
('2024-05-16', 'Em andamento', 7),
('2024-05-17', 'Entregue', 8),
('2024-05-18', 'Em andamento', 9),
('2024-05-19', 'Entregue', 10),
('2024-05-20', 'Em andamento', 11),
('2024-05-21', 'Em andamento', 12),
('2024-05-22', 'Em andamento', 13),
('2024-05-23', 'Entregue', 14),
('2024-05-24', 'Em andamento', 15),
('2024-05-25', 'Em andamento', 16),
('2024-05-26', 'Em andamento', 17),
('2024-05-27', 'Entregue', 18),
('2024-05-28', 'Em andamento', 19),
('2024-05-29', 'Entregue', 20);

INSERT INTO Vendas (total_vendas, numero_itens_vendidos, data_venda) VALUES
(199.96, 4, '2024-05-10'),
(59.99, 1, '2024-05-11'),
(179.98, 2, '2024-05-12'),
(89.97, 3, '2024-05-13'),
(149.97, 2, '2024-05-14'),
(79.98, 1, '2024-05-15'),
(39.99, 1, '2024-05-16'),
(104.97, 3, '2024-05-17'),
(209.97, 4, '2024-05-18'),
(99.98, 2, '2024-05-19'),
(69.99, 1, '2024-05-20'),
(139.98, 2, '2024-05-21'),
(69.99, 1, '2024-05-22'),
(104.97, 3, '2024-05-23'),
(149.97, 2, '2024-05-24'),
(49.99, 1, '2024-05-25'),
(89.97, 3, '2024-05-26'),
(29.99, 1, '2024-05-27'),
(139.98, 2, '2024-05-28'),
(149.97, 2, '2024-05-29')


