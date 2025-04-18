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
where sexo = 'M' and nacionalidade = 'Brasil'; -- cocertar
/*DESAFIO 7: QUAL É A MÉDIA DE PESO DOS GAFANHOTOS CADASTRADOS*/
select avg(peso) from dados;
/*DESAFIO 8: QUAL É O MENOR PESO ENTRE OS GAFANHOTOS MULHERES QUE NASCERAM FORA DO BRASIL E ENTRE 01/JAN/1990 Á 31/DEZ/1990? */

/*DESAFIO 9: QUANTAS GAFANHOTAS MULHERES TÊM MAIS DE 1.90M DE ALTURA*/