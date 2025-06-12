create database librarySystem
default character set utf8
default collate utf8_general_ci;
use librarySystem;

create table if not exists book(
	livro_id int auto_increment,
    titulo varchar(70),
    autor varchar(60),
    ano_publicacao year,
    primary key (livro_id)
);
create table if not exists usuario(
	usuario_id int auto_increment,
    nome varchar(100),
    email varchar(100),
    primary key (usuario_id)
);
create table if not exists emprestimo(
	emprestimo_id int auto_increment,
    livro_id int,
    usuario_id int,
    data_emprestimo	date,
    data_devolucao date,
    primary key(emprestimo_id)
);

select * from emprestimo;

-- Insere 20 registros na tabela 'emprestimo'
-- Os valores para livro_id e usuario_id são exemplos, considerando que IDs de 1 a 20 existem
INSERT INTO emprestimo (livro_id, usuario_id, data_emprestimo, data_devolucao) VALUES
(1, 1, '2023-01-05', '2023-01-20'),
(2, 2, '2023-01-10', '2023-01-25'),
(3, 3, '2023-01-15', '2023-01-30'),
(4, 4, '2023-02-01', '2023-02-15'),
(5, 5, '2023-02-05', '2023-02-20'),
(6, 6, '2023-02-10', '2023-02-25'),
(7, 7, '2023-03-01', '2023-03-15'),
(8, 8, '2023-03-05', '2023-03-20'),
(9, 9, '2023-03-10', '2023-03-25'),
(10, 10, '2023-04-01', '2023-04-15'),
(11, 11, '2023-04-05', '2023-04-20'),
(12, 12, '2023-04-10', '2023-04-25'),
(13, 13, '2023-05-01', '2023-05-15'),
(14, 14, '2023-05-05', '2023-05-20'),
(15, 15, '2023-05-10', '2023-05-25'),
(16, 16, '2023-06-01', '2023-06-15'),
(17, 17, '2023-06-05', '2023-06-20'),
(18, 18, '2023-06-10', '2023-06-25'),
(19, 19, '2023-07-01', '2023-07-15'),
(20, 20, '2023-07-05', '2023-07-20');

-- Insere 20 registros na tabela 'book'
INSERT INTO book (titulo, autor, ano_publicacao) VALUES
('A Revolução dos Bichos', 'George Orwell', 1945),
('1984', 'George Orwell', 1949),
('O Pequeno Príncipe', 'Antoine de Saint-Exupéry', 1943),
('Dom Quixote', 'Miguel de Cervantes', 1605),
('Cem Anos de Solidão', 'Gabriel García Márquez', 1967),
('O Senhor dos Anéis', 'J.R.R. Tolkien', 1954),
('Crime e Castigo', 'Fiódor Dostoiévski', 1866),
('Orgulho e Preconceito', 'Jane Austen', 1813),
('O Grande Gatsby', 'F. Scott Fitzgerald', 1925),
('Moby Dick', 'Herman Melville', 1851),
('Ulisses', 'James Joyce', 1922),
('Guerra e Paz', 'Liev Tolstói', 1869),
('Em Busca do Tempo Perdido', 'Marcel Proust', 1913),
('Hamlet', 'William Shakespeare', 1603),
('Don Casmurro', 'Machado de Assis', 1899),
('Capitães da Areia', 'Jorge Amado', 1937),
('O Alquimista', 'Paulo Coelho', 1988),
('Ensaio sobre a Cegueira', 'José Saramago', 1995),
('Harry Potter e a Pedra Filosofal', 'J.K. Rowling', 1997),
('O Diário de Anne Frank', 'Anne Frank', 1947);

-- Insere 20 registros na tabela 'usuario'
-- Omitimos 'usuario_id' para que seja gerado automaticamente pelo AUTO_INCREMENT
INSERT INTO usuario (nome, email) VALUES
('João Silva', 'joao.silva@example.com'),
('Maria Oliveira', 'maria.olivera@example.com'),
('Pedro Souza', 'pedro.souza@example.com'),
('Ana Costa', 'ana.costa@example.com'),
('Carlos Pereira', 'carlos.pereira@example.com'),
('Mariana Almeida', 'mariana.almeida@example.com'),
('Fernando Rodrigues', 'fernando.rodrigues@example.com'),
('Beatriz Fernandes', 'beatriz.fernandes@example.com'),
('Rafael Gomes', 'rafael.gomes@example.com'),
('Larissa Santos', 'larissa.santos@example.com'),
('Bruno Lima', 'bruno.lima@example.com'),
('Juliana Carvalho', 'juliana.carvalho@example.com'),
('Gustavo Rocha', 'gustavo.rocha@example.com'),
('Camila Ribeiro', 'camila.ribeiro@example.com'),
('Daniel Dias', 'daniel.dias@example.com'),
('Isabela Martins', 'isabela.martins@example.com'),
('Thiago Mendes', 'thiago.mendes@example.com'),
('Patrícia Nunes', 'patricia.nunes@example.com'),
('Felipe Barros', 'felipe.barros@example.com'),
('Amanda Dutra', 'amanda.dutra@example.com');

-- Adicionando chave estrancheira
alter table emprestimo
add foreing key(livro_id)
references book(livro_id);

alter table emprestimo
add foreing key(usuario_id)
references usuario(usuario_id);