-- PROJETO: SISTEMA DE CADASTRO DE CLIENTES
-- AUTOR: ERIK VINÍCIUS NUNES DE SOUZA

-- 1. Criar o banco de dados
CREATE DATABASE cadastro_clientes;

-- 2. Selecionar o banco de dados
USE cadastro_clientes;

-- 3. Criar a tabela de clientes
CREATE TABLE clientes (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    telefone VARCHAR(20),
    cidade VARCHAR(60)
);

-- 4. Cadastrar clientes
INSERT INTO clientes (nome, email, telefone, cidade)
VALUES
('João Silva', 'joao@email.com', '61999990001', 'Brasília'),
('Maria Souza', 'maria@email.com', '61999990002', 'Taguatinga'),
('Pedro Santos', 'pedro@email.com', '61999990003', 'Planaltina'),
('Ana Oliveira', 'ana@email.com', '61999990004', 'Ceilândia');

-- 5. Consultar todos os clientes
SELECT * FROM clientes;

-- 6. Consultar clientes de Brasília
SELECT * FROM clientes
WHERE cidade = 'Brasília';

-- 7. Pesquisar clientes pelo nome
SELECT * FROM clientes
WHERE nome LIKE 'M%';

-- 8. Ordenar clientes por nome
SELECT * FROM clientes
ORDER BY nome ASC;

-- 9. Atualizar telefone de um cliente
UPDATE clientes
SET telefone = '61988880001'
WHERE id_cliente = 1;

-- 10. Excluir um cliente
DELETE FROM clientes
WHERE id_cliente = 4;
