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
    DataMatricula year
)default charset = utf8;

/*Acrescentando ás colunas na tabela */
alter table alunos 
add column idMatricula int;

alter table alunos
add column idCurso int;

alter table matricula
add column idAluno int;

alter table matricula
add foreign key(idAluno) references alunos(idAluno);

-- Adicionando chave estrangeira
alter table alunos
add foreign key(idMatricula) references matricula(idMatricula);

alter table alunos 
add foreign key(idCurso) references cursos(idCurso);

-- Inserindo dados nas tabelas 
insert into alunos(idAluno, nomeAluno, Nascimento, email) values (1, "Ariel Marinho", "2009-01-11", "arieldreis@gmail.com");
insert into cursos(idCurso, NomeCurso, CargaHoraria, TotalAulas) values 
(1 , "Design", "30", "25"),
(2 , "Python", "40", "35"),
(3 , "Excel", "20", "18"),
(4 , "Inglês", "50", "40"),
(5 , "Redes", "30", "22"),
(6 , "CSharp", "40", "33"),
(7 , "Photoscape", "20", "15"),
(8 , "Linux", "30", "27"),
(9 , "After", "40", "30"),
(10 , "Ilustrator", "30", "24"),
(11 , "Premiere", "20", "19"),
(12 , "NoçõesWeb", "10", "9"),
(13 , "JavaScript", "40", "38");

insert into matricula(idMatricula, DataMatricula, idAluno) values (1, "2024", 1);

update alunos 
set idMatricula = "1"
where idAluno = "1";

update alunos 
set idCurso  = "6"
where idAluno = "1";

select * from alunos 
join cursos
on cursos.idCurso = alunos.idCurso;
