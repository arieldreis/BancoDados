CREATE TABLE produtos (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10, 2),
    criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

SELECT * FROM produtos;

INSERT INTO produtos(id, nome, preco) 
VALUES (1, 'Mechanic Keyboard', 250.00);

UPDATE produtos
set preco = 200.00
where id = 1;