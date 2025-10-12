use dados_alunos;
describe gafanhotos;

alter table gafanhotos
add column profissao varchar(30); -- Irá adicionar uma nova coluna na sua tabela

alter table gafanhotos
drop column profissao; -- Esse comando irá excluir uma coluna 

alter table gafanhotos 
add column profissao varchar(10) after nome; -- Escolhendo a posição da coluna

alter table gafanhotos
add column codigo int first; -- Adiciona a coluna código como a primeira coluna da tabela

alter table gafanhotos
modify column profissao varchar(50) not null; -- Aqui vc consegue alterar o tipo primitivo de uma tabela.

/*Renomeando o nome de uma coluna*/
alter table gafanhotos
change column profissao prof varchar(25);
/*Alterar o nome de uma tabela*/
alter table gafanhotos 
rename to dados;
/*COMANDOS DA TABELA CURSOS*/
describe cursos;

alter table cursos
add column idcursos int first;

/*Nomeando uma chave primária*/
alter table cursos
add primary key(idcursos);
