create database sodicmac
default character set utf8
default collate utf8_general_ci;

use sodicmac;

create table if not exists material(
	ID_Material int primary key auto_increment,
    Nome_Material varchar(200),
    Categoria varchar(70),
    Marca varchar(40),
    Preco decimal(6, 2),
    Estoque int
)default charset = utf8;

create table if not exists usuario(
	ID_Usuario int primary key auto_increment,
    nome varchar(80),
    Email varchar(100),
    telefone varchar(20)
)default charset = utf8;

create table if not exists emprestimo(
	ID_Emprestimo int primary key auto_increment,
    Data_Emprestimo date,
	Data_Devolucao date,
    status enum("Pendente", "Devolvido")
)default charset = utf8;

-- Acrescentado ás chaves estrangeiras na tabela MATERIAL
ALTER TABLE material
ADD COLUMN ID_Usuario INT;

ALTER TABLE material
ADD FOREIGN KEY(ID_Usuario) REFERENCES usuario(ID_Usuario);

ALTER TABLE material 
ADD COLUMN ID_Emprestimo INT;

ALTER TABLE material
ADD FOREIGN KEY(ID_Emprestimo) REFERENCES emprestimo(ID_Emprestimo);

-- Acrescentado ás chaves estrangeiras na tabela Usuário
ALTER TABLE usuario
ADD COLUMN ID_Material INT;

ALTER TABLE usuario
ADD FOREIGN KEY(ID_Material) REFERENCES material(ID_Material);

ALTER TABLE usuario 
ADD COLUMN ID_Emprestimo INT;

ALTER TABLE usuario
ADD FOREIGN KEY(ID_Emprestimo) REFERENCES emprestimo(ID_Emprestimo);

-- Acrescentado ás chaves estrangeiras na tabela emprestimo
ALTER TABLE emprestimo
ADD COLUMN ID_Material INT;

ALTER TABLE emprestimo
ADD FOREIGN KEY(ID_Material) REFERENCES material(ID_Material);

ALTER TABLE emprestimo
ADD COLUMN ID_Usuario INT AFTER status;

ALTER TABLE emprestimo
ADD FOREIGN KEY(ID_Usuario) REFERENCES usuario(ID_Usuario);

-- INSERINDO DADOS NA TABELA

INSERT INTO material(ID_Material, Nome_Material, Categoria, Marca, Preco, Estoque) VALUES(DEFAULT, "Martelete", "Construção", "BOSCH", 768.90, 45);
SELECT * FROM material;

INSERT INTO usuario(ID_Usuario, nome, Email, telefone) VALUES(DEFAULT, "Ariel Marinho", "arieldreis@gmail.com", "+551135014994");
SELECT * FROM usuario;

INSERT INTO emprestimo(ID_Emprestimo, Data_Emprestimo, Data_Devolucao, Status) VALUES(DEFAULT, "2025-08-14", "2025-08-21", "Devolvido");
SELECT * FROM emprestimo;