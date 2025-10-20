create database bdEscolaEtec
default character set utf8
default collate utf8_general_ci;

use bdEscolaEtec;

create table alunos(
	matricula int primary key auto_increment,
    nome varchar(100),
    turma varchar(100)
)default charset = utf8;


insert into alunos(matricula, nome, turma) values
(default, 'Carlos', '8A'),
(default, 'Beatriz', '8B'),
(default, 'João', '8A'),
(default, 'Larissa', '8C'),
(default, 'Thiago', '8B');
select * from alunos;

alter table alunos
add column idade int;

alter table alunos
modify column turma varchar(15);

alter table alunos
change column nome nomeCompleto varchar(100);

alter table alunos
drop column idade;

drop table alunos;