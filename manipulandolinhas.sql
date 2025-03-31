use dados_alunos;

create table if not exists cursos(
	nome varchar(40) not null unique,
    descricao text,
    carga int unsigned,
    totalaulas int,
    ano year default '2016'
) default charset = utf8;

insert into cursos values 
("1", "HTML4", "Curso de HTML5", "40", "37", "2014"),
("2", "Algoritimos", "Lógica de Programação", "20", "15", "2014"),
("3", "Photoshop", "Dicas de Photoshop CC", "10", "8", "2014"),
("4", "PGP", "Curso de PHP para iniciantes", "40", "20", "2010"),
("5", "Jarva", "Introdução a linguagem Java", "10", "29", "2000"),
("6", "MySql", "Banco de Dados", "30", "15", "2016"),
("7", "Word", "Curso completo de Word", "40", "30", "2016"),
("8", "Sapateado", "Danças Rítimicas", "40", "30", "2018"),
("9", "Cozinha Árabe", "Aprenda a fazer Kibe", "40", "30", "2018"),
("10", "YouTuber", "Gerar polêmica e ganhar inscritos", "5", "2", "2018");

select * from cursos;
/*Manipulando linhas em mysql*/

Update cursos
Set nome = "HTML5"
Where idcursos = "1";

update cursos
set nome = "PHP", ano = "2015"
where idcursos = "4";

update cursos
set nome = "Java", carga = "40", ano = "2015"
where idcursos = "5"
limit 1;

update cursos
set ano = "2050", carga = "800"
where ano = "2018";

delete from cursos
where idcursos = "10";

truncate table cursos;