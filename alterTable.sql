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

insert into dados (id, nome, profissao, nascimento, sexo, peso, altura, nacionalidade)values
(1, 'Megan Collins', 'Desenvolvedor', '1992-11-30', 'F', 52.02, 1.98, 'Austrália'),
(2, 'Billy Morgan', 'Desenvolvedor', '1999-02-01', 'F', 98.39, 1.68, 'Alemanha'),
(3, 'Todd Bennett', 'Enfermeiro', '1984-12-07', 'M', 64.09, 1.88, 'Índia'),
(4, 'Tammy Rivera', 'Designer', '1988-08-29', 'M', 65.51, 1.86, 'Itália'),
(5, 'Brandy Fisher', 'Arquiteto', '1979-02-28', 'M', 69.90, 1.65, 'África do Sul'),
(7, 'Donald Hayes', 'Enfermeiro', '1970-10-01', 'M', 54.66, 1.92, 'Brasil'),
(8, 'Christine Gray', 'Cientista', '1981-05-05', 'F', 91.4, 1.67, 'Itália'),
(9, 'Vanessa Wright', 'Médico', '2000-07-14', 'M', 95.85, 1.61, 'Canadá'),
(10, 'Tonya Lawson', 'Enfermeiro', '2005-04-03', 'F', 54.56, 2.0, 'México'),
(11, 'Rachel Evans', 'Arquiteto', '1985-05-26', 'M', 65.07, 1.65, 'Estados Unidos'),
(12, 'Corey Hughes', 'Enfermeiro', '1969-04-24', 'F', 90.72, 1.77, 'Índia'),
(13, 'Rachel Simmons', 'Enfermeiro', '1986-10-07', 'F', 72.25, 1.8, 'Japão'),
(14, 'Thomas Webb', 'Analista', '1971-02-23', 'M', 64.52, 1.59, 'Canadá'),
(15, 'Michael Dawson', 'Engenheiro', '1985-10-24', 'F', 73.83, 1.54, 'Canadá'),
(16, 'Cheryl Stone', 'Professor', '1978-03-18', 'M', 92.12, 1.95, 'México'),
(17, 'Tammy Flores', 'Desenvolvedor', '1996-10-03', 'F', 76.09, 1.62, 'Alemanha'),
(18, 'Scott Perkins', 'Cientista', '1999-10-10', 'F', 78.98, 1.73, 'Itália'),
(19, 'Jorge Torres', 'Médico', '2001-08-19', 'F', 80.64, 1.74, 'Itália'),
(20, 'Sabrina Ross', 'Advogado', '1970-08-23', 'M', 50.81, 1.64, 'Alemanha'),
(21, 'Jennifer Carter', 'Analista', '1991-06-08', 'M', 66.63, 1.91, 'Estados Unidos'),
(22, 'Jennifer', 'Professor', '1964-05-16', 'M', 52.26, 1.79, 'México'),
(23, 'Cheryl', 'Cientista', '1986-12-19', 'M', 51.33, 1.82, 'Índia'),
(24, 'John', 'Cientista', '1986-06-04', 'M', 69.56, 1.69, 'Estados Unidos'),
(25, 'Jane', 'Engenheiro', '1968-07-31', 'M', 59.73, 1.99, 'Estados Unidos'),
(26, 'James', 'Arquiteto', '2002-11-30', 'M', 86.36, 1.53, 'Brasil'),
(27, 'Jeffrey', 'Enfermeiro', '1973-12-28', 'F', 81.03, 1.92, 'Estados Unidos'),
(28, 'Linda', 'Advogado', '1994-10-12', 'M', 82.35, 1.68, 'Canadá'),
(29, 'Christopher', 'Engenheiro', '1986-01-28', 'F', 51.97, 1.55, 'Japão'),
(30, 'Nancy', 'Advogado', '1997-08-04', 'F', 78.12, 1.78, 'Chile'),
(32, 'Kelly', 'Professor', '1972-10-15', 'F', 76.47, 1.56, 'Austrália'),
(33, 'Amy', 'Professor', '2001-01-22', 'M', 73.58, 1.7, 'Índia'),
(34, 'James', 'Enfermeiro', '2001-07-14', 'F', 82.45, 1.69, 'França'),
(35, 'Briana', 'Professor', '1994-07-30', 'M', 72.9, 1.54, 'Brasil'),
(36, 'Christopher', 'Enfermeiro', '1990-06-27', 'F', 56.74, 1.88, 'Austrália'),
(37, 'Logan', 'Analista', '1980-10-08', 'F', 83.67, 1.8, 'Índia'),
(38, 'Kelly', 'Professor', '1977-03-08', 'F', 69.4, 1.71, 'Estados Unidos'),
(39, 'Lori', 'Engenheiro', '1966-07-16', 'M', 84.93, 1.58, 'Alemanha'),
(40, 'Chloe', 'Arquiteto', '1981-12-28', 'F', 85.52, 1.84, 'Japão'),
(41, 'Thomas', 'Engenheiro', '1970-05-29', 'F', 93.58, 1.78, 'Brasil'),
(42, 'Erika', 'Professor', '1973-02-26', 'F', 53.19, 1.85, 'Austrália'),
(43, 'Nancy', 'Enfermeiro', '1966-12-04', 'F', 95.4, 1.8, 'Brasil'),
(44, 'Megan', 'Engenheiro', '2001-01-30', 'F', 66.3, 1.92, 'Brasil'),
(45, 'Frances', 'Desenvolvedor', '1999-12-29', 'M', 77.43, 1.98, 'Estados Unidos'),
(46, 'Joshua', 'Professor', '1980-04-27', 'M', 70.09, 1.84, 'Itália'),
(47, 'Melissa', 'Engenheiro', '2004-06-06', 'M', 50.71, 1.88, 'México'),
(48, 'Marcia', 'Cientista', '1992-11-01', 'M', 59.52, 1.8, 'Alemanha'),
(49, 'Bethany', 'Designer', '1994-12-15', 'F', 84.43, 1.59, 'Austrália'),
(50, 'Travis', 'Desenvolvedor', '1988-08-12', 'M', 51.09, 1.96, 'Estados Unidos'),
(51, 'Christopher', 'Designer', '1972-02-23', 'M', 82.68, 1.91, 'Itália'),
(52, 'Tom', 'Médico', '1987-02-10', 'M', 63.92, 1.51, 'Brasil'),
(53, 'Megan', 'Advogado', '1980-10-31', 'F', 77.92, 1.97, 'Índia'),
(54, 'Allen', 'Engenheiro', '1982-09-27', 'F', 85.62, 1.95, 'Japão'),
(55, 'Dave', 'Analista', '1979-04-19', 'M', 60.39, 1.79, 'Brasil'),
(56, 'Nathan', 'Professor', '1975-11-24', 'M', 63.57, 1.67, 'Itália'),
(57, 'Marvin', 'Médico', '1968-07-11', 'F', 88.97, 1.52, 'França'),
(58, 'Craig', 'Professor', '1974-04-03', 'M', 99.1, 1.64, 'Japão'),
(59, 'Melissa', 'Enfermeiro', '1979-03-08', 'M', 64.67, 1.74, 'Alemanha'),
(60, 'Brandon', 'Engenheiro', '2003-05-07', 'F', 58.98, 1.76, 'Estados Unidos'),
(61, 'Cynthia', 'Designer', '2000-08-24', 'F', 91.78, 1.65, 'Estados Unidos'),
(62, 'Carrie', 'Médico', '1969-05-01', 'F', 73.7, 1.92, 'Itália'),
(63, 'Anthony', 'Médico', '1977-02-14', 'F', 55.8, 1.75, 'Brasil'),
(64, 'Catherine', 'Designer', '2003-06-28', 'F', 86.74, 1.95, 'Canadá'),
(65, 'David', 'Cientista', '1970-07-11', 'F', 90.31, 2.0, 'Estados Unidos'),
(66, 'Mitchell', 'Médico', '1972-03-11', 'M', 59.9, 1.61, 'Japão'),
(67, 'Benjamin', 'Engenheiro', '1965-10-07', 'M', 69.69, 1.76, 'Austrália'),
(68, 'James', 'Arquiteto', '1976-11-18', 'M', 71.15, 1.68, 'França'),
(69, 'Jennifer', 'Cientista', '1996-11-27', 'M', 71.56, 1.68, 'Estados Unidos'),
(70, 'Jason', 'Engenheiro', '1968-06-14', 'F', 87.62, 1.6, 'Austrália'),
(71, 'Sharon', 'Desenvolvedor', '1965-11-05', 'F', 60.36, 1.52, 'Alemanha'),
(72, 'Amy', 'Cientista', '1971-03-15', 'M', 55.23, 1.73, 'Itália'),
(73, 'Mary', 'Enfermeiro', '1969-01-21', 'M', 55.24, 1.8, 'Austrália'),
(74, 'Jeffrey', 'Professor', '1984-10-12', 'F', 81.92, 1.71, 'México'),
(75, 'Michael', 'Arquiteto', '1976-07-25', 'F', 91.68, 2.0, 'Alemanha'),
(76, 'Bruce', 'Enfermeiro', '1996-01-31', 'M', 50.49, 1.85, 'Itália'),
(77, 'Benjamin', 'Analista', '1971-03-01', 'M', 76.26, 1.94, 'Índia'),
(78, 'Holly', 'Professor', '1990-12-03', 'F', 79.15, 1.86, 'Austrália'),
(79, 'James', 'Médico', '1988-09-10', 'M', 75.83, 1.96, 'Estados Unidos'),
(80, 'Rebecca', 'Advogado', '1996-04-17', 'M', 52.03, 1.51, 'Austrália'),
(81, 'Mary', 'Analista', '2003-01-25', 'M', 90.03, 1.93, 'Austrália'),
(82, 'Gary', 'Analista', '1978-02-19', 'F', 95.05, 1.75, 'Índia'),
(83, 'Tammy', 'Médico', '1968-03-30', 'M', 87.35, 1.95, 'Alemanha'),
(84, 'Kristina', 'Designer', '1975-01-23', 'F', 91.28, 1.74, 'Japão'),
(85, 'Megan', 'Cientista', '1987-08-04', 'M', 92.57, 1.9, 'Brasil'),
(86, 'Alyssa', 'Professor', '1972-04-09', 'F', 75.34, 1.63, 'Estados Unidos'),
(87, 'Candice', 'Arquiteto', '1994-05-24', 'F', 97.15, 1.65, 'Japão'),
(88, 'Elizabeth', 'Desenvolvedor', '1965-03-12', 'F', 53.11, 1.82, 'Canadá'),
(89, 'Thomas', 'Advogado', '1992-03-10', 'F', 86.47, 1.67, 'Brasil'),
(90, 'Rachel', 'Arquiteto', '1998-11-27', 'F', 57.05, 1.94, 'Índia'),
(91, 'Samantha', 'Médico', '1988-08-07', 'M', 90.51, 1.68, 'Brasil'),
(92, 'Paul', 'Cientista', '1981-05-15', 'F', 69.33, 1.52, 'Austrália'),
(93, 'Eric', 'Professor', '1965-02-21', 'M', 51.62, 1.81, 'Itália'),
(94, 'Stephen', 'Médico', '1969-09-04', 'F', 59.75, 1.89, 'Austrália'),
(95, 'Matthew', 'Médico', '1967-05-28', 'M', 80.51, 1.73, 'Itália'),
(96, 'Amy', 'Médico', '1973-06-21', 'F', 89.43, 1.56, 'Japão'),
(97, 'John', 'Designer', '1997-01-30', 'M', 75.95, 1.89, 'Alemanha'),
(98, 'Michael', 'Engenheiro', '1983-11-20', 'F', 72.23, 1.88, 'Austrália'),
(99, 'Emily', 'Analista', '2004-06-18', 'M', 97.82, 1.95, 'Brasil'),
(100, 'Stacey', 'Arquiteto', '1973-04-20', 'F', 95.05, 1.97, 'Índia');
select * from gafanhotos order by nome;

insert into dados values 
(101, 'Ariel Marinho', 'Desenvolvedor', '2009-01-11', 'M', 94.13, 1.70, 'Brasil'),
(102, 'Joana Silva', 'Médica', '1994-09-15', 'F', 67.8, 1.63, 'Brasil'),
(103, 'João Silva', 'Técnico de Designer', '1999-09-18', 'M', 78.9, 1.87, 'Portugal'),
(104, 'Carlos Pimentel', 'Administrador', '1996-11-12', 'M', 89.66, 1.89, 'Argentina'),
(105, 'Jade Marinho', 'Veterinária', '1998-07-24', 'F', 71.22, 1.67, 'Brasil');

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