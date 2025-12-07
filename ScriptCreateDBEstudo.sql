-- Criar o banco de dados
CREATE DATABASE EstudoDB;
GO

-- Selecionar o banco criado
USE EstudoDB;
GO

------------------------------------------------------------
-- TABELA DE USUÁRIOS
------------------------------------------------------------
CREATE TABLE Usuarios (
    UsuarioID INT IDENTITY(1,1) PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Email VARCHAR(150) UNIQUE NOT NULL,
    DataCadastro DATETIME DEFAULT GETDATE(),
    Ativo BIT DEFAULT 1
);
GO

------------------------------------------------------------
-- TABELA DE PRODUTOS
------------------------------------------------------------
CREATE TABLE Produtos (
    ProdutoID INT IDENTITY(1,1) PRIMARY KEY,
    NomeProduto VARCHAR(150) NOT NULL,
    Categoria VARCHAR(100),
    Preco DECIMAL(10,2) NOT NULL,
    Estoque INT DEFAULT 0
);
GO

------------------------------------------------------------
-- INSERÇÃO DE DADOS DE EXEMPLO
------------------------------------------------------------
INSERT INTO Usuarios (Nome, Email)
VALUES
('João Silva', 'joao.silva@example.com'),
('Maria Oliveira', 'maria.oliveira@example.com'),
('Carlos Almeida', 'carlos.almeida@example.com');

INSERT INTO Produtos (NomeProduto, Categoria, Preco, Estoque)
VALUES
('Teclado Mecânico', 'Periféricos', 350.00, 10),
('Monitor 24" Full HD', 'Monitores', 899.90, 5),
('Mouse Gamer RGB', 'Periféricos', 120.00, 20);
GO

------------------------------------------------------------
-- CONSULTAS DE TESTE
------------------------------------------------------------

-- Exibir usuários cadastrados
SELECT * FROM Usuarios;

-- Exibir produtos cadastrados
SELECT * FROM Produtos;

-- Filtrar produtos com estoque baixo
SELECT NomeProduto, Estoque
FROM Produtos
WHERE Estoque < 10;
