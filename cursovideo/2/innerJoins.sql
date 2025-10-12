/*CHAVE ESTRANGEIRA*/
# Como criar uma chave estrangeira
select id, nome, cursopreferido from dados;
select * from cursos;

/*Como alterar vários registros de uma vez só*/
update dados
SET cursopreferido = CASE id
    WHEN 111 THEN '23'
    WHEN 112 THEN '42'
    WHEN 113 THEN '10'
    WHEN 114 THEN '5'
    WHEN 115 THEN '16'
END
WHERE id IN (111, 112, 113, 114, 115);


/*Como juntar duas tabelas e afiltragem de dados*/
select dados.id, dados.nome, cursos.nomecurso, cursos.ano
from dados join cursos
on cursos.idcursos = dados.cursopreferido
order by dados.id;

/*Apelidos de Colunas*/
select db.id, db.nome, c.nomecurso, c.ano
from dados as db join cursos as c
on c.idcursos = db.cursopreferido
order by db.id;

/*Usando os joins e suas funções*/
select db.id, db.nome, c.nomecurso, c.ano
from dados as db left outer join cursos as c
on c.idcursos = db.cursopreferido
order by db.id;

/*Criando a tabela de curso assistido pelo gafanhoto*/
create table gafanhoto_assiste_curso(
	id int not null auto_increment,
    data_curso_assistido date,
    id_dados int,
    id_curso int,
    primary key (id),
    foreign key(id_dados) references dados(id),
	foreign key(id_curso) references cursos(idcursos)
)default charset = utf8;

select * from gafanhoto_assiste_curso;

select db.nome, id_curso from dados as db
join gafanhoto_assiste_curso as gac
on db.id = gac.id_dados
order by db.nome;

/*Usando os dados de uma terceira tabela*/
select db.nome, c.nomecurso from dados as db
join gafanhoto_assiste_curso as gac
on db.id = gac.id_dados
join cursos as c
on c.idcursos = gac.id
order by db.nome;

describe dados;