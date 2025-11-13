create database dados_cliente;
use dados_cliente;

create table clientes(
	id int auto_increment primary key,
    cpf varchar(21),
    nome varchar(100),
    email varchar(100)
);

create table if not exists descontos(
	idDesconto int auto_increment primary key,
    idClienter int,
    percentual float,
    validade date
);

insert into clientes(id, cpf, nome, email) values
(default, "123.456.789-00", "Ana Souza", "ana.souza@email.com"),
(default, "987.654.321-00", "Carlos Lima", "carlos.lima@email.com"),
(default, "111.222.333-44", "Fernanda Alves", "fernanda.alves@email.com"),
(default, "555.666.777-88", "João Pereira", "joao.pereira@email.com"),
(default, "999.888.777-66", "Mariana Costa", "mariana.costa@email.com");

insert into descontos(idDesconto, idClienter, percentual, validade) values
(default, "1", 10.00, "2025-12-21"),
(default, "2", 15.00, "2025-11-30"),
(default, "3", 5.00, "2025-10-15"),
(default, "4", 20.00, "2026-01-20"),
(default, "5", 12.50, "2025-09-10");


alter table descontos
add foreign key(idClienter) references clientes(id);

select * from descontos;

select c.nome, c.cpf, c.email, d.percentual, d.validade from clientes as c
join descontos as d
on d.idClienter = c.id
order by c.nome;