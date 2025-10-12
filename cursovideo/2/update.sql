Update cursos
Set nome = "HTML5"
Where idcursos = "1";

update cursos
set nome = "PHP", ano = "2015"
where idcursos = "4";

update cursos
set nome = "Java", carga = "40", ano = "2015"
where idcursos = "5";

update cursos
set ano = "2050", carga = "800"
where ano = "2018";

delete from cursos
where idcursos = "10";
