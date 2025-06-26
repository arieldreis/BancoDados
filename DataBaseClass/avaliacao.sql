create database gym
default character set utf8
default collate utf8_general_ci;

use gym;

create table if not exists cadastro(
	id int auto_increment,
    nome varchar(100),
    nascimento date,
    endereco varchar(200),
    cpf varchar(20),
    telefone varchar(30),
    id_avaliacao_fisica int,
    primary key(id), --  Adiciona uma chave primária
    foreign key (id_avaliacao_fisica) references avaliacao_fisica(id_avaliacao) -- Adiciona uma chave estrangeira
)default charset = utf8;

create table if not exists avaliacao_fisica(
	id_avaliacao int auto_increment,
    peso decimal(5, 2),
    altura decimal(3, 2),
    imc float,
    id_cadastro int,
    primary key(id_avaliacao), --  Adiciona uma chave primária
    foreign key(id_cadastro) references cadastro(id) -- Adiciona uma chave estrangeira
)default charset = utf8;

select * from cadastro;
select * from avaliacao_fisica;

describe cadastro;
describe avaliacao_fisica;
