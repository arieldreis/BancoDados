create database clients
default character set utf8
default collate utf8_general_ci;

use clients; -- Acessando o meu banco de dados

create table if not exists tableClients(
	id int not null auto_increment,
    nome varchar(100) not null,
    nascimento date,
    sexo enum('M' , 'F'),
    peso decimal(5, 2),
    altura decimal(3, 2),
    nacionalidade varchar(30), 
    primary key(id) /*Criação de uma chave primária com o dado id*/
)default charset = utf8;
/*Inserindo os dados na tabela*/
/*COMANDOS DML*/
INSERT INTO tableClients (id, nome, nascimento, sexo, peso, altura, nacionalidade, profissao) VALUES
(DEFAULT, 'Maria Silva', '1990-05-15', 'F', 65.20, 1.68, 'Brasileira', 'Professora'),
(DEFAULT, 'João Souza', '1988-11-22', 'M', 80.50, 1.80, 'Português', 'Engenheiro'),
(DEFAULT, 'Ana Costa', '1995-03-01', 'F', 58.00, 1.60, 'Espanhola', 'Designer'),
(DEFAULT, 'Pedro Santos', '1975-07-10', 'M', 92.10, 1.85, 'Brasileiro', 'Médico'),
(DEFAULT, 'Sofia Oliveira', '2000-01-20', 'F', 55.70, 1.70, 'Italiana', 'Estudante'),
(DEFAULT, 'Carlos Lima', '1982-09-03', 'M', 75.00, 1.75, 'Brasileiro', 'Desenvolvedor'),
(DEFAULT, 'Laura Pereira', '1993-12-25', 'F', 62.30, 1.65, 'Americana', 'Jornalista'),
(DEFAULT, 'Marcelo Rocha', '1970-04-08', 'M', 88.90, 1.90, 'Brasileiro', 'Arquiteto'),
(DEFAULT, 'Beatriz Alves', '1998-06-30', 'F', 59.50, 1.72, 'Francesa', 'Atriz'),
(DEFAULT, 'Fernando Gomes', '1985-02-14', 'M', 78.20, 1.78, 'Brasileiro', 'Analista Financeiro'),
(DEFAULT, 'Gabriela Martins', '1991-08-05', 'F', 60.10, 1.63, 'Canadense', 'Enfermeira'),
(DEFAULT, 'Ricardo Nogueira', '1979-10-18', 'M', 83.40, 1.83, 'Brasileiro', 'Gerente de Projetos'),
(DEFAULT, 'Patrícia Dias', '1996-04-22', 'F', 57.00, 1.59, 'Alemã', 'Nutricionista'),
(DEFAULT, 'Diego Ribeiro', '1987-01-07', 'M', 76.90, 1.76, 'Brasileiro', 'Eletricista'),
(DEFAULT, 'Bruna Fernandes', '2001-09-11', 'F', 54.80, 1.69, 'Argentina', 'Dançarina'),
(DEFAULT, 'Eduardo Correia', '1972-03-29', 'M', 95.00, 1.92, 'Brasileiro', 'Consultor'),
(DEFAULT, 'Júlia Mendes', '1994-07-03', 'F', 63.50, 1.67, 'Mexicana', 'Marketing'),
(DEFAULT, 'Gustavo Barros', '1983-05-28', 'M', 81.00, 1.81, 'Brasileiro', 'Contador'),
(DEFAULT, 'Camila Pinto', '1999-11-09', 'F', 56.50, 1.64, 'Japonesa', 'Fotógrafa'),
(DEFAULT, 'Vitor Castro', '1977-06-16', 'M', 89.20, 1.88, 'Brasileiro', 'Motorista');

-- Comados Update
-- Esse comando altera as linhas especificas do seu banco de dados
update tableClients
set profissao = "Engenheira Software"
where id = '1'; --  Esse comando altera a linha da coluna profissao com o id número 1.

delete from tableClients
where id = '20'; --  Apaga a linha todo o registro da pessoa com o id número 20

/*COMANDOS DDL*/
-- Data Defition Language
alter table tableClients
add column profissao varchar(30); -- Irá adicionar uma nova coluna na sua tabela

alter table tableClients
drop column profissao; -- Esse comando irá excluir uma coluna 

alter table tableClients
add column profissao varchar(10) after nome; -- Escolhendo a posição da coluna

alter table tableClients
add column codigo int first; -- Adiciona a coluna código como a primeira coluna da tabela

alter table tableClients
modify column profissao varchar(50) not null; -- Aqui vc consegue alterar o tipo primitivo de uma tabela.

/*Renomeando o nome de uma coluna*/
alter table tableClients
change column profissao prof varchar(25);
/*Alterar o nome de uma tabela*/
alter table tableClients 
rename to gafanhotos;

drop table tableClients; -- Apaga a minha tabela do meu banco de dados
drop database clients; -- Apaga o meu banco de dados da minha base de dados.

/*COMANDOS DA TABELA CURSOS*/
describe tableClients;

alter table tableClients
add column id int first;

/*Nomeando uma chave primária*/
alter table tableClients
add primary key(id);
/*COMANDOS DQL*/
select * from tableClients; -- Seleciona todos os dados da tabela
select * from  tableClients order by nome; -- Ordena todos os registros da tabela 'cursos' em ordem crescente pelo nome.
select * from tableClients order by nome desc; -- Agora faz a mesma parada, mas em ordem decrescente pelo nome.
select nome from tableClients order by nome; -- Aqui só vai mostrar a coluna 'nome', ordenando em ordem crescente.
select id, nome from tableClients; -- Mostra só as colunas 'idcursos' e 'nome', deixando de fora as outras.

/*COMANDOS DCL*/
-- Data Control Language
GRANT SELECT, INSERT ON tableClients TO 'João Souza'; -- Conceda permissão de inserção na tabela alunos para o usuário joao.
GRANT SELECT ON tableClients TO 'Fernando Gomes'; -- 

REVOKE SELECT ON tableClients FROM 'Fernando Gomes'; -- Tirar permissão de leitura
REVOKE ALL ON tableClient FROM 'João Souza'; -- Tirar todas as permissões (em alguns bancos, dá pra fazer assim)
/*
Ela é usada pra controlar transações no banco de dados, tipo: salvar ou cancelar um conjunto de 
comandos que você fez.
*/
INSERT INTO tableClients (nome) VALUES ('Beatriz Alves');
COMMIT; 
-- salva definitivamente tudo o que foi feito até aquele ponto.
-- Aqui, o nome “Lucas” só é realmente salvo no banco depois do COMMIT.
DELETE FROM tableClients WHERE nome = 'Júlia Mendess';
ROLLBACK;
-- ROLLBACK – cancela tudo o que foi feito desde o último COMMIT.
--  Aqui, o DELETE é anulado, como se nunca tivesse acontecido.

/*
COMMIT → salva as alterações feitas.
ROLLBACK → desfaz as alterações feitas.
SAVEPOINT → cria um ponto de controle para voltar se algo der errado depois.
*/
/*
SAVEPOINT – cria um ponto de salvamento dentro de uma transação. 
Serve pra voltar até esse ponto, se der erro depois.
*/

SAVEPOINT inicio;


