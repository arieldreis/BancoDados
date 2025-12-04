CREATE DATABASE IF NOT EXISTS STORE_PROCEDURES;
USE STORE_PROCEDURES;

CREATE TABLE IF NOT EXISTS funcionarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    salario DECIMAL(11,2) NOT NULL,
    departamento_id INT
);

CREATE PROCEDURE inserir_funcionario_simples (
	IN p_nome VARCHAR(100),
	IN p_salario DECIMAL(11,2),
	IN p_departamento_id INT
)
BEGIN
	INSERT INTO funcionarios (nome, salario, departamento_id),
	VALUES (p_nome, p_salario, p_departamento_id);
END //
DELIMITER //
CREATE PROCEDURE aumentar10_simples (
	IN p_id INT
)
BEGIN
	UPDATE funcionarios
	SET salario = salario * 1.10
	WHERE id = p_id;
END //

DELIMITER ; 

CALL inserir_funcionario_simples('Marcos Silva', 4800.00, 2);
CALL aumentar10_simples(1);
SELECT * FROM funcionarios;