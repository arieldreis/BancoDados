create database bdEmpresaEtec2
default character set utf8
default collate utf8_general_ci;

use bdEmpresaEtec2;

create table departamento (
	IdDepartamento int auto_increment primary key,
	NomeDepto varchar(50)
)default charset = utf8;
create table funcionario (
	IdFuncionario int auto_increment primary key,
	NomeCompleto varchar(50),
	Cargo varchar(50)
)default charset = utf8;


select * from funcionario;
describe funcionario;

alter table funcionario
add column IdDepartamento int;

alter table funcionario
add foreign key(IdDepartamento) 
references departamento(IdDepartamento);

insert into departamento (IdDepartamento, NomeDepto) 
values(default, "Recursos Humanos"),
(default, "Vendas"),
(default, "TI");

insert into funcionario (IdFuncionario, NomeCompleto, Cargo, IdDepartamento) values
(default, "Marcos Silva", "Gerente", "1"),
(default, "Ana Souza", "Atendente", "2"),
(default, "Rafael Lima", "Supervisor", "2"),
(default, "Luciana Santos", "Analista de Sistemas", "3"),
(default, "Paulo Oliveira", "Estagiário", "3");

/*Alteração nas tabelas*/
alter table funcionario
add column salario float after Cargo;

alter table departamento
modify column NomeDepto varchar(60);

alter table funcionario
change column Cargo Funcao varchar(60);

alter table funcionario
drop column salario;

drop table departamento;
drop table funcionario;