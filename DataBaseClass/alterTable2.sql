create database bdEmpresaEtec
default character set utf8
default collate utf8_general_ci;

use bdEmpresaEtec;

create table funcionarios(
	IdFuncionario int auto_increment primary key,
	Nome varchar(50),
	Cargo varchar(50)
)default charset = utf8;

insert into funcionarios (IdFuncionario, Nome, Cargo) values 
(default, 'Marcos', 'Gerente'),
(default, 'Ana', 'Atendente'),
(default, 'Rafael', 'Supervisor'),
(default, 'Luciana', 'Vendedora'),
(default, 'Paulo', 'Estagiário');

select * from funcionarios;

alter table funcionarios
add column Salario float;

alter table funcionarios
modify column Cargo varchar(40);

alter table funcionarios
change column Nome NomeCompleto varchar(60);

alter table funcionarios
drop column Salario;

drop table funcionarios;