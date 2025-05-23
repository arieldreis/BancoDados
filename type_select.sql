/*Result set*/
select * from cursos;

insert into cursos values 
("8", "Design", "Curso de Design avançado", "30", "25", "2015"),
("9", "Python", "Curso de Python avançado", "40", "35", "2020"),
("10", "Excel", "Curso de Excel profissional", "20", "18", "2018"),
("11", "Inglês", "Curso de Inglês técnico", "50", "40", "2017"),
("12", "Redes", "Curso de Redes de computadores", "30", "22", "2016"),
("13", "CSharp", "Curso de C# para iniciantes", "40", "33", "2019"),
("14", "Photoscape", "Curso de edição com Photoscape", "20", "15", "2013"),
("15", "Linux", "Curso básico de Linux", "30", "27", "2021"),
("16", "After", "Curso de After Effects", "40", "30", "2012"),
("17", "Ilustrator", "Curso de Adobe Illustrator", "30", "24", "2014"),
("18", "Premiere", "Curso de Premiere Pro", "20", "19", "2011"),
("19", "NoçõesWeb", "Curso de noções básicas de web", "10", "9", "2023"),
("20", "JavaScript", "Curso de JavaScript moderno", "40", "38", "2022"),
("21", "CPlus", "Curso de C++ essencial", "30", "25", "2010"),
("22", "Figma", "Curso de prototipagem com Figma", "20", "17", "2021"),
("23", "React", "Curso de React completo", "40", "34", "2023"),
("24", "Node", "Curso de Node.js prático", "30", "28", "2022"),
("25", "SEO", "Curso de Otimização para Buscadores", "10", "9", "2019"),
("26", "UXDesign", "Curso de UX Design", "30", "24", "2020"),
("27", "Blender", "Curso de modelagem 3D com Blender", "40", "35", "2015"),
("28", "Unity", "Curso de desenvolvimento de jogos com Unity", "30", "27", "2018"),
("29", "Firebase", "Curso de Banco de Dados Firebase", "20", "18", "2020"),
("30", "Docker", "Curso de Containers com Docker", "40", "32", "2021"),
("31", "Kotlin", "Curso de Kotlin para Android", "30", "28", "2019"),
("32", "Swift", "Curso de Swift para iOS", "20", "16", "2017"),
("33", "VueJS", "Curso de Vue.js avançado", "30", "29", "2022"),
("34", "Laravel", "Curso de Laravel com PHP", "40", "37", "2023"),
("35", "TypeScript", "Curso completo de TypeScript", "20", "19", "2020"),
("36", "PhotoshopAv", "Curso avançado de Photoshop", "50", "45", "2021"),
("37", "Access", "Curso de Microsoft Access", "30", "22", "2014"),
("38", "PowerPoint", "Curso de apresentações com PowerPoint", "20", "18", "2016"),
("39", "WordPress", "Curso de criação de sites com WordPress", "30", "27", "2018"),
("40", "Canva", "Curso de design com Canva", "10", "9", "2023");

select * from cursos;
/*PARTE 1*/
select * from cursos order by nome; 
-- Ordena todos os registros da tabela 'cursos' em ordem crescente pelo nome

select * from cursos order by nome desc; 
-- Agora faz a mesma parada, mas em ordem decrescente pelo nome

-- Quando usamos '*' no SELECT, a gente tá pedindo pra ver TODAS as colunas da tabela

select nome from cursos order by nome; 
-- Aqui só vai mostrar a coluna 'nome', ordenando em ordem crescente

select idcursos, nome from cursos; 
-- Mostra só as colunas 'idcursos' e 'nome', deixando de fora as outras

-- Usando condições no SELECT pra filtrar os dados com base em critérios

select * from cursos 
where carga < 30 and totalaulas < 30; 
-- Mostra os cursos que têm carga menor que 30 E total de aulas menor que 30 (tem que ser os dois!)

select * from cursos
where ano > 2015 order by idcursos; 
-- Exibe cursos com o ano maior que 2015, organizando pelo ID em ordem crescente

-- RESULT SET: é o nome chique que a gente dá pro resultado que sai depois do SELECT

select nome, carga, ano from cursos 
where ano != 2018 order by idcursos; 
-- Mostra só os cursos que NÃO são de 2018, exibindo nome, carga e ano, tudo ordenadinho pelo ID

select nome, ano from cursos 
where ano between 2014 and 2016 order by idcursos desc; 
-- Traz os cursos com ano entre 2014 e 2016 (inclusive!), em ordem decrescente pelo ID

-- Fazendo contas com os dados da tabela

select count(*) from cursos; 
-- Conta quantos cursos existem na tabela

select avg(carga) from cursos; 
-- Calcula a média da carga horária de todos os cursos

select nome, descricao, ano from cursos
where ano in (2014, 2016) order by ano desc; 
-- Mostra os cursos dos anos 2014 e 2016, com nome, descrição e ano, em ordem decrescente de ano

select * from cursos
where carga > 35 or totalaulas < 30; 
-- Aqui ele mostra cursos com carga maior que 35 OU total de aulas menor que 30 (basta um dos dois!)
/*PARTE 2*/
-- WILDCARDS
-- operador like é de parecido
-- '%' é nenhum ou vários caracteres
select * from cursos
where nome like '%a';

select * from cursos
where nome like 'P%' order by idcursos;

select * from cursos
where nome like '%A%' order by idcursos; -- Essa linha irá selecionar todas ás linhas que tenham a letra A em qualquer lugar.

select * from cursos
where nome not like '%A%';

update cursos
set nome = "Photoshop" where idcursos = '3';

select * from cursos
where nome  like 'ph%_';

select distinct carga from cursos order by carga;
select count(*) from cursos where carga > 30; -- Essa linha irá contar quantos cursos tem o horario maior que 30 horas.
select count(nome) from cursos; -- Irá contar quantos cursos tem
select nome, max(carga) from cursos where ano = 2017; -- used to find the maximum value in a set of values
select nome, min(carga) from cursos where ano = 2014;
select distinct carga from cursos order by carga;
select distinct totalaulas from cursos order by totalaulas;
select sum(carga) from cursos; -- Irá fazer a soma de todas ás cargas horárias 
select sum(totalaulas) from cursos; -- Irá fazer a soma do total de aulas.
/*COMO FAZER MÉDIA ARITIMÉTICA EM MYSQL*/
select avg(carga) from cursos;
select avg(totalaulas) from cursos;
-- TABELA DADOS
select * from dados
where nome like "%s%";

select nacionalidade from dados; -- Aqui irá mostrar todos os países nas quais foram registrados
select distinct nacionalidade from dados order by nacionalidade; -- Irá mostrar todos os países dos usuários porém só uma vez.
/*PARTE 3*/

