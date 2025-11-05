create database dbEmpresa;
use dbEmpresa;

CREATE TABLE cliente (
  idCliente INT PRIMARY KEY,
  nome VARCHAR(100),
  cidade VARCHAR(100)
);

CREATE TABLE pedido (
  idPedido INT PRIMARY KEY,
  dataPedido DATE,
  idCliente INT,
  FOREIGN KEY (idCliente) REFERENCES cliente(idCliente)
);

CREATE TABLE departamento (
  idDepto INT PRIMARY KEY,
  nomeDepto VARCHAR(100)
);

CREATE TABLE funcionario (
  idFunc INT PRIMARY KEY,
  nome VARCHAR(100),
  cargo VARCHAR(100),
  idDepto INT,
  FOREIGN KEY (idDepto) REFERENCES departamento(idDepto)
);

CREATE TABLE categoria (
  idCategoria INT PRIMARY KEY,
  nomeCategoria VARCHAR(100)
);

CREATE TABLE produto (
  idProd INT PRIMARY KEY,
  nomeProd VARCHAR(100),
  preco DECIMAL(10,2),
  idCategoria INT,
  FOREIGN KEY (idCategoria) REFERENCES categoria(idCategoria)
);


CREATE TABLE fornecedor (
  idForn INT PRIMARY KEY,
  nomeForn VARCHAR(100)
);

CREATE TABLE if not exists produto_forn (
  idProd INT PRIMARY KEY,
  nomeProd VARCHAR(100),
  idForn INT,
  FOREIGN KEY (idForn) REFERENCES fornecedor(idForn)
);

CREATE TABLE estoque (
  idProd INT PRIMARY KEY,
  quantidade INT,
  FOREIGN KEY (idProd) REFERENCES produto(idProd)
);

CREATE TABLE vendedor (
  idVend INT PRIMARY KEY,
  nome VARCHAR(100),
  comissao DECIMAL(5,2)
);

CREATE TABLE venda (
  idVenda INT PRIMARY KEY,
  valor DECIMAL(10,2),
  idVend INT,
  FOREIGN KEY (idVend) REFERENCES vendedor(idVend)
);

CREATE TABLE cidade (
  idCidade INT PRIMARY KEY,
  nomeCidade VARCHAR(100),
  estado VARCHAR(50)
);

CREATE TABLE cliente_cidade (
  idCliente INT PRIMARY KEY,
  nome VARCHAR(100),
  idCidade INT,
  FOREIGN KEY (idCidade) REFERENCES cidade(idCidade)
);

CREATE TABLE pagamento (
  idPagto INT PRIMARY KEY,
  valor DECIMAL(10,2),
  tipo VARCHAR(50),
  idCliente INT,
  FOREIGN KEY (idCliente) REFERENCES cliente(idCliente)
);

CREATE TABLE projeto (
  idProj INT PRIMARY KEY,
  nomeProj VARCHAR(100),
  idDepto INT,
  FOREIGN KEY (idDepto) REFERENCES departamento(idDepto)
);

CREATE TABLE func_proj (
  idFunc INT PRIMARY KEY,
  nome VARCHAR(100),
  idProj INT,
  FOREIGN KEY (idProj) REFERENCES projeto(idProj)
);

select * from cliente;
select * from pedido;
select * from departamento;
select * from funcionario;
select * from categoria;
select * from produto;
select * from fornecedor;
select * from produto_forn;
select * from estoque;
select * from vendedor;
select * from venda;
select * from cidade;
select * from cliente_cidade;
select * from pagamento;
select * from projeto;
select * from func_proj;

/*DESAFIOS*/
select cliente.nome, pedido.dataPedido from pedido
join cliente
on pedido.idCliente = cliente.idCliente
order by cliente.nome;

select cliente.nome, pedido.dataPedido from pedido
right join cliente
on pedido.idCliente = cliente.idCliente
order by cliente.nome;

select funcionario.nome , departamento.nomeDepto from funcionario
join departamento
on funcionario.idDepto = departamento.idDepto;

select produto.nomeProd , categoria.nomeCategoria , produto.preco 
from produto join categoria
on produto.idCategoria = categoria.idCategoria
order by produto.preco desc;

select fornecedor.nomeForn, produto_forn.nomeProd from produto_forn
join fornecedor
on produto_forn.idForn = fornecedor.idForn;

select produto.nomeProd, estoque.quantidade 
from estoque join produto
on estoque.idProd = produto.idProd
where  estoque.quantidade < 10;

select vendedor.nome , venda.valor, sum(venda.valor) from venda join vendedor
on venda.idVenda = vendedor.idVend; -- Arrumar 

select avg(valor) from venda;

select cliente.nome, cliente.cidade from cliente;

select cliente.nome, pagamento.valor, pagamento.tipo from pagamento join cliente
on pagamento.idCliente = cliente.idCliente
group by pagamento.tipo; -- Arruamr








