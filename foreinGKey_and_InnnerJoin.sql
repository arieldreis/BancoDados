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