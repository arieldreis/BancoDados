create database server_htdocs;
use server_htdocs;

create table clientes(
	ID_Cliente int primary key auto_increment,
	Nome varchar(50),
    Sobrenome varchar(50),
    Data_Nascimento date,
    Estado_Civil enum('Solteiro(a)', 'Casado(a)', 'Divorciado(a)', 'Viúvo(a)'),
    Sexo enum('Feminino', 'Masculino', 'Outro'),
    Email varchar(60),
    Telefone varchar(20),
    Renda_Atual float,
    Qtd_Filhos int,
    Escolaridade enum('Fundamental', 'Médio', 'Superior Incompleto', 'Superior Completo', 'Pós-graduação')
);

select Estado_Civil, count(Estado_Civil) as "Qtd_Clientes" from clientes
group by Estado_Civil;

select Escolaridade, avg(Renda_Atual) as "Media_Renda" from clientes
group by Escolaridade;

select Sexo, sum(Qtd_Filhos) as "Qtd_Filhos" from clientes
group by Sexo;

select Escolaridade, avg(Renda_Atual) as "Media_Renda" from clientes
group by Escolaridade
having round(avg(Renda_Atual), 2) > 6000;

select Estado_Civil, sum(Qtd_Filhos) as "Qtd_Filhos" from clientes
group by Estado_Civil
having sum(Qtd_Filhos) > 20;

SELECT Escolaridade, Sexo, COUNT(*) AS Total
FROM clientes
GROUP BY Sexo;

select Escolaridade, Sexo, count(Sexo) as "Total_Clientes" from clientes
group by Sexo
having count(Sexo) > 10;

select Escolaridade, avg(Qtd_Filhos) as "Media_Filhos" from clientes
group by Escolaridade;

select Escolaridade, max(Renda_Atual) as "Media_Renda" from clientes
group by Escolaridade
having Escolaridade = "Superior Completo";



select * from clientes;
