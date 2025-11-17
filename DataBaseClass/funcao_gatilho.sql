-- =========================================================
-- 1️ CRIAÇÃO DO BANCO DE DADOS
-- =========================================================
CREATE DATABASE IF NOT EXISTS empresa;     -- Cria o banco de dados "empresa" se ainda não existir
USE empresa;                               -- Define que usaremos o banco "empresa" para os próximos comandos

-- =========================================================
-- 2️ TABELA DEPARTAMENTOS (relacionamento 1:N com FUNCIONARIOS)
-- =========================================================
CREATE TABLE departamentos (
    id INT AUTO_INCREMENT PRIMARY KEY,     -- Chave primária (gera número único automaticamente)
    nome VARCHAR(100) NOT NULL             -- Nome do departamento (campo obrigatório)
);

-- =========================================================
-- 3️ TABELA FUNCIONARIOS (cada funcionário pertence a 1 departamento)
-- =========================================================
CREATE TABLE funcionarios (
    id INT AUTO_INCREMENT PRIMARY KEY,     -- Chave primária do funcionário
    nome VARCHAR(100) NOT NULL,            -- Nome completo do funcionário
    salario DECIMAL(10,2) NOT NULL,        -- Salário mensal com 2 casas decimais
    departamento_id INT,                   -- ID do departamento (chave estrangeira)
    FOREIGN KEY (departamento_id)          -- Define a relação com a tabela departamentos
        REFERENCES departamentos(id)       -- Relaciona o campo departamento_id à PK da tabela departamentos
);

-- =========================================================
-- 4️ TABELA DETALHES_FUNCIONARIO (relação 1:1 com FUNCIONARIOS)
-- =========================================================
CREATE TABLE detalhes_funcionario (
    funcionario_id INT PRIMARY KEY,        -- Mesmo ID do funcionário (1:1)
    endereco VARCHAR(150),                 -- Endereço do funcionário
    telefone VARCHAR(20),                  -- Telefone do funcionário
    FOREIGN KEY (funcionario_id)           -- Define chave estrangeira
        REFERENCES funcionarios(id)        -- Relaciona com a PK de funcionarios
);

-- =========================================================
-- 5 INSERÇÃO DE DADOS EXEMPLO
-- =========================================================

-- Insere três departamentos diferentes
INSERT INTO departamentos (nome) VALUES
('Recursos Humanos'),
('TI'),
('Financeiro');

-- Insere quatro funcionários, cada um vinculado a um departamento
INSERT INTO funcionarios (nome, salario, departamento_id) VALUES
('Ana Souza', 4500.00, 1),                 -- Ana pertence ao RH
('Carlos Lima', 6000.00, 2),               -- Carlos pertence à TI
('Beatriz Alves', 5200.00, 2),             -- Beatriz também pertence à TI
('Diego Rocha', 7000.00, 3);               -- Diego pertence ao Financeiro

-- Insere detalhes de cada funcionário (relação 1:1)
INSERT INTO detalhes_funcionario (funcionario_id, endereco, telefone) VALUES
(1, 'Rua das Flores, 100', '11999999999'),
(2, 'Av. Paulista, 500', '11888888888'),
(3, 'Rua Verde, 300', '11777777777'),
(4, 'Rua Azul, 200', '11666666666');

-- =========================================================
-- 6 TABELA DE LOG PARA O GATILHO
-- =========================================================
CREATE TABLE log_funcionarios (
    id INT AUTO_INCREMENT PRIMARY KEY,     -- Chave primária do log
    funcionario_id INT,                    -- ID do funcionário afetado
    acao VARCHAR(20),                      -- Tipo da ação (por exemplo, "INSERÇÃO" ou "ATUALIZAÇÃO")
    data_registro DATETIME DEFAULT CURRENT_TIMESTAMP  -- Data e hora da ação (automático)
);

select * from departamentos;
select * from funcionarios;
select * from detalhes_funcionario;
select * from log_funcionarios;

CREATE FUNCTION aumento10(p_id INT)
RETURNS DECIMAL(10,2)
DETERMINISTIC
RETURN (SELECT salario * 1.10 FROM funcionarios WHERE id = p_id); 