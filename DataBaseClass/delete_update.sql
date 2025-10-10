create database dadosClient
default character set utf8 
default collate utf8_general_ci;

use dadosClient;

create table clientes(
	id int primary key auto_increment,
    cpf varchar(25),
    nome varchar(100),
    email varchar(100),
    cidade varchar(100)
)default charset = utf8;

insert into clientes (id, cpf, nome, email, cidade) values 
(default, "111.111.111-11", "Maria", "maria@gmail.com", "São Paulo"),
(default, "222.222.222-22", "Antonio", "antonio@gmail.com", "Ilhota"),
(default, "333.333.333-33", "Magda", "magda@gmail.com", "São Paulo"),
(default, "444.444.444-44", "Vagner", "vagner@gmail.com", "São Roque"),
(default, "555.555.555-55", "Adriana", "adriana@gmail.co", "Cotia");

select * from clientes;

/*Alterando os dados*/

update clientes
set email = "mariaDaGloria@gmail.com"
where id = "1";

update clientes
set nome = "Antônio Carlos"
where id = "2";

update clientes 
set cidade = "Paiva"
where id = "1";

delete from clientes
where cpf = "222.222.222-22";