/*DESAFIOS DE BANCO DE DADOS */
/*DESAFIO 1: UMA LISTA COM O NOME DE TODAS AS GAFANHOTAS*/
select nome, sexo from dados where sexo = 'F' order by nome;
/*DESAFIO 2: UMA LISTA COM OS DADOS DE TODOS AQUELES QUE NASCERAM 01/JANEIRO/2000 E 31/DEZEMBRO/2015 */
select nome, nascimento from dados where nascimento between '2000-01-01' and '2015-12-31' order by nome;
/*DESAFIO 3: UMA LISTA COMO O NOME DE TODOS HOMENS QUE TRABALHAM COMO PROGRAMADORES.*/
select nome, profissao, sexo from dados where sexo = 'M' and profissao = 'Desenvolvedor';
/*DESAFIO 4: UMA LISTA COM OS DADOS DE TODAS AS MULHERES QUE NASCERAM NO BRASIL E QUE TÊM O NOME INICIADO COM A LETRA 'J'*/
select * from dados
where nome like 'j%' and  sexo = 'F' and nacionalidade = 'Brasil';
/*DESAFIO 5: UMA LISTA COM O NOME E NACIONALIDADE DE TODOS OS HOMENS QUE TÊM SILVA NO NOME, NÃO NASCERAM NO BRASIL E PESAM MENOS DE 100KG*/
select * from dados
where nome like '%Silva' and nacionalidade != 'Brasil' and peso < 100;
/*DESAFIO 6: QUAL É A MAIOR ALTURA ENTRE OS GAFANHOTOS HOMENS QUE MORAM NO BRASIL?*/
select nome, sexo, max(altura), nacionalidade from dados
where sexo = 'M' and nacionalidade = 'Brasil'; -- concertar
/*DESAFIO 7: QUAL É A MÉDIA DE PESO DOS GAFANHOTOS CADASTRADOS*/
select avg(peso) from dados;
/*DESAFIO 8: QUAL É O MENOR PESO ENTRE OS GAFANHOTOS MULHERES QUE NASCERAM FORA DO BRASIL E ENTRE 01/JAN/1990 Á 31/DEZ/1990? */
select id, nome, profissao, nascimento, sexo, min(peso), altura, nacionalidade from dados
where sexo = 'F' and nacionalidade != 'Brasil' and nascimento between '1990-01-01' and '2000-12-31';
/*DESAFIO 9: QUANTAS GAFANHOTAS MULHERES TÊM MAIS DE 1.90M DE ALTURA*/
select count(*) from dados
where sexo = 'F' and altura > 1.90;
/*DESAFIO 10: Uma lista com as profissões dos gafanhotos e seus respectivos quantitativos*/
select profissao, count(*) from dados
group by profissao
order by profissao;
/*DESAFIO 11: Quantos gafanhotos homens e mulheres nasceram após 01/JAN/2005? */
select sexo, count(*) from dados
where nascimento > '2005-01-01'
group by sexo;
/*DESAFIO 12: Uma lista com os gafanhotos que nasceram fora do Brasil mostrando o país de origem
e o total de pessoas nascidas lá. Só nos interessam os países que tiverem mais de 3 gafanhotos com essa nacionalidade*/
select nacionalidade, count(*) from dados
where nacionalidade != "Brasil"
group by nacionalidade
having count(nacionalidade) > 3;
/*DESAFIO 13: Uma lista agrupada pela altura dos gafanhotos, mostrando quantas pessoas pesam acima de 100kg
e que estão acima da média de altura de todos cadastrados*/
select altura, count(*) from dados
where peso > 100
group by altura
having altura > (select avg(altura) from dados);
-- A média de altura é de 1.76