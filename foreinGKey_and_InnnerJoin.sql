/*CHAVE ESTRANGEIRA*/
# Como criar uma chave estrangeira
select id, nome, cursopreferido from dados;
select * from cursos;

/*Como alterar vários registros de uma vez só*/
update dados
set cursopreferido = case id
	when 21 then '13'
    when 22 then '41'
    when 23 then '34'
    when 24 then '15'
    when 25 then '11'
    when 26 then '1'
    when 27 then '2'
    when 28 then '29'
    when 29 then '42'
    when 30 then '14'
    when 31 then '13'
    when 32 then '7'
end
where id in (21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32);


/*Como adicionar uma chave estrangeira usando o alter table*/
alter table dados 
add foreing key cursopreferido
reference cursos(idcursos);