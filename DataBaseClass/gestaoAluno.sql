create database gestaoAlunos
default character set utf8
default collate utf8_general_ci;

use gestaoAlunos;

create table if not exists alunos (
	idAluno int primary key auto_increment,
    nomeAluno varchar(100),
    Nascimento date,
    email varchar(80)
)default charset = utf8;

create table if not exists cursos(
	idCurso int primary key auto_increment,
    NomeCurso varchar(100) unique,
    CargaHoraria int,
    TotalAulas int
)default charset = utf8;

create table if not exists matricula(
	idMatricula int primary key auto_increment,
    DataMatricula date
)default charset = utf8;

/*Acrescentando ás colunas na tabela */
alter table alunos 
add column idMatricula int;

alter table alunos
add column idCurso int;


-- Adicionando chave estrangeira
alter table alunos
add foreign key(idMatricula) references matricula(idMatricula);

alter table alunos 
add foreign key(idCurso) references cursos(idCurso);

select * from alunos;
describe alunos;