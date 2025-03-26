create database dados_alunos
default character set utf8
default collate utf8_general_ci;

use dados_alunos;

create table pessoas (
	id int not null auto_increment,
    nome varchar(100) not null,
    nascimento date,
    sexo enum('M' , 'F'),
    peso decimal(5, 2),
    altura decimal(3, 2),
    nacionalidade varchar(30), 
    primary key(id) /*Criação de uma chave primária com o dado id*/
)default charset = utf8;

insert into pessoas values(null, 1, "Godofredo", null, "1984-01-02", "M", 78.50, 1.83, "Brasil"),
(null, 2, "Maria", null, "1999-12-30", "F", 55.20, 1.65, "Portugal"),
(null, 3, "Creuza", null, "1920-12-30", "F", 50.20, 1.66, "Brasil"),
(null, 4, "Adalgida", null, "1930-11-02", "F", 63.20, 1.75, "Irlanda"),
(null, 5, "Claudio", null, "1974-04-22", "M", 99.00, 2.15, "Brasil"),
(null, 6, "Pedro", null, "1999-12-03", "M", 87.30, 2.00, "Brasil"),
(null, 7, "Michael", null, "2004-05-18", "M", 88.25, 1.70, "EUA");
select * from gafanhotos order by nome;

create table if not exists cursos(
	nome varchar(40) not null unique,
    descricao text,
    carga int unsigned,
    totalaulas int,
    ano year default '2016'
) default charset = utf8;
-- o comando unsigned não permite número negativos

/*CODIGOS PARA USAR NO ALTER TABLE*/
use dados_alunos;
describe gafanhotos;

alter table pessoas
add column profissao varchar(30); -- Irá adicionar uma nova coluna na sua tabela

alter table pessoas
drop column profissao; -- Esse comando irá excluir uma coluna 

alter table pessoas 
add column profissao varchar(10) after nome; -- Escolhendo a posição da coluna

alter table pessoas 
add column codigo int first; -- Adiciona a coluna código como a primeira coluna da tabela

alter table pessoas
modify column profissao varchar(50) not null; -- Aqui vc consegue alterar o tipo primitivo de uma tabela.

/*Renomeando o nome de uma coluna*/
alter table pessoas
change column profissao prof varchar(25);
/*Alterar o nome de uma tabela*/
alter table pessoas 
rename to gafanhotos;

/*COAMNDOS DA TABELA CURSOS*/
describe cursos;

alter table cursos
add column idcursos int first;

/*Nomeando uma chave primária*/
alter table cursos
add primary key(idcursos);