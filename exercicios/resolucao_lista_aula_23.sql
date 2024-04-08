/*
1.	Retornar todos os livros de sociologia.
*/
select titulo from livro
join sociologia on 
sociologia.numero_registro = livro.numero_registro;

/*
2.	Listar os nomes dos funcionários que são 
bibliotecários.
*/
select funcionario.nome from funcionario
join bibliotecario on 
funcionario.matricula = bibliotecario.matricula;

/*
3.	Exibir os títulos dos livros publicados 
antes de 2000.
*/
select titulo,ano_publicacao from LIVRO
where ano_publicacao < '2000';

/*
4.	Mostrar o número total de livros em 
cada biblioteca. 
*/
select cnpj,count(numero_registro) as total_livro 
from LIVRO_BIBLIOTECA
group by cnpj;

insert into LIVRO_BIBLIOTECA
values
('12345678000123',6),
('12345678000123',7),
('12345678000123',8),
('12345678000123',9),
('12345678000123',10)
select * from biblioteca;
select * from LIVRO_BIBLIOTECA;

/*
5.	Listar os eventos do tipo 'Workshop' que 
ocorreram após 2020.
*/
select *
from EVENTO
where tipo = 'workshop' and year(data) >'2020';

/*
6.	Exibir os nomes dos usuários que fizeram 
empréstimos de livros 
em janeiro de 2023.
*/
select usuario.nome, data_emprestimo from  usuario
join emprestimo on usuario.matricula = emprestimo.matricula
where MONTH(data_emprestimo) = 4 
and year(data_emprestimo) = '2024';



select * from emprestimo;

create table usuario(
	matricula nvarchar(5) primary key,
	nome nvarchar(50),
	cpf char(11),
	telefone char (11)
);
create table emprestimo(
 data_emprestimo date,
 data_devolucao date,
 matricula nvarchar(5),
 numero_registro int,
 prazo int,
 foreign key (numero_registro) references livro(numero_registro),
 foreign key (matricula) references usuario(matricula)
);

INSERT INTO usuario (matricula, nome, cpf, telefone) VALUES ('U0001', 'João Silva', '12345678901', '1198765432');
INSERT INTO usuario (matricula, nome, cpf, telefone) VALUES ('U0002', 'Maria Oliveira', '23456789012', '2198765431');
INSERT INTO usuario (matricula, nome, cpf, telefone) VALUES ('U0003', 'Carlos Souza', '34567890123', '3198765431');
INSERT INTO usuario (matricula, nome, cpf, telefone) VALUES ('U0004', 'Ana Costa', '45678901234', '4198765431');
INSERT INTO usuario (matricula, nome, cpf, telefone) VALUES ('U0005', 'Fernando Rocha', '56789012345', '5198765421');
INSERT INTO usuario (matricula, nome, cpf, telefone) VALUES ('U0006', 'Patrícia Lima', '67890123456', '6198765431');
INSERT INTO usuario (matricula, nome, cpf, telefone) VALUES ('U0007', 'Roberto Alves', '78901234567', '7198765431');
INSERT INTO usuario (matricula, nome, cpf, telefone) VALUES ('U0008', 'Camila Santos', '89012345678', '8198765431');
INSERT INTO usuario (matricula, nome, cpf, telefone) VALUES ('U0009', 'Lucas Pereira', '90123456789', '91987654321');
INSERT INTO usuario (matricula, nome, cpf, telefone) VALUES ('U0010', 'Juliana Martins', '01234567890', '10198765321');

INSERT INTO emprestimo (data_emprestimo, data_devolucao, matricula, numero_registro, prazo) VALUES ('2024-04-01', '2024-04-15', 'U0001', 1, 14);
INSERT INTO emprestimo (data_emprestimo, data_devolucao, matricula, numero_registro, prazo) VALUES ('2024-04-02', '2024-04-16', 'U0002', 1, 14);
INSERT INTO emprestimo (data_emprestimo, data_devolucao, matricula, numero_registro, prazo) VALUES ('2024-04-03', '2024-04-17', 'U0003', 1, 14);
INSERT INTO emprestimo (data_emprestimo, data_devolucao, matricula, numero_registro, prazo) VALUES ('2024-04-04', '2024-04-18', 'U0004', 1, 14);
INSERT INTO emprestimo (data_emprestimo, data_devolucao, matricula, numero_registro, prazo) VALUES ('2024-04-05', '2024-04-19', 'U0005', 1, 14);
INSERT INTO emprestimo (data_emprestimo, data_devolucao, matricula, numero_registro, prazo) VALUES ('2024-04-06', '2024-04-20', 'U0006', 1, 14);
INSERT INTO emprestimo (data_emprestimo, data_devolucao, matricula, numero_registro, prazo) VALUES ('2024-04-07', '2024-04-21', 'U0007', 1, 14);
INSERT INTO emprestimo (data_emprestimo, data_devolucao, matricula, numero_registro, prazo) VALUES ('2024-04-08', '2024-04-22', 'U0008', 8, 14);
INSERT INTO emprestimo (data_emprestimo, data_devolucao, matricula, numero_registro, prazo) VALUES ('2024-04-09', '2024-04-23', 'U0009', 9, 14);
INSERT INTO emprestimo (data_emprestimo, data_devolucao, matricula, numero_registro, prazo) VALUES ('2024-04-10', '2024-04-24', 'U0010', 10, 14);

/*
7.	Retornar os títulos dos livros de tecnologia que têm 'Python' no título.
*/

select livro.titulo
from LIVRO
join TECNOLOGIA
on LIVRO.numero_registro = TECNOLOGIA.numero_registro
where titulo like '%python%'; -- Titulo que tenha o nome python


/*
8.	Listar os títulos dos periódicos disponíveis na 
biblioteca com CNPJ '12345678000123'.
*/

select titulo from PERIODICO
join PERIODICO_BIBLIOTECA on 
PERIODICO.numero_registro = PERIODICO_BIBLIOTECA.numero_registro
where cnpj = '12345678000123';

/*
9.	Mostrar os nomes dos funcionários que não são técnicos de TI.
*/
select * from funcionario
where matricula not like 't%';

select * from funcionario
where matricula not in (
	select matricula from TECNICO_TI
);

/* 
9. 1(pratica) - Todos os livros que não são de tecnologia
*/
select * from livro
where numero_registro not in(
	select numero_registro from tecnologia
);

/*
10.	Exibir o título e o autor dos livros emprestados pelo usuário com ID 'U0001'.
*/
select titulo, autor from LIVRO
join emprestimo on LIVRO.numero_registro = emprestimo.numero_registro
where matricula = 'U0001';

/*
11.	Listar todas as palestras que custaram mais de R$ 100,00.
*/
select * from evento
join palestra on evento.id_evento = palestra.id_evento 
where custo > 100.00;

/*
12.	Retornar os títulos dos livros de ciência que foram publicados após 2010.
*/

select LIVRO.titulo,LIVRO.ano_publicacao from LIVRO
join CIENCIA on LIVRO.numero_registro = CIENCIA.numero_registro
where ano_publicacao > 2010;

/*
13.	Exibir os nomes dos atendentes que têm 'Maria' no nome.
*/

select FUNCIONARIO.nome
from FUNCIONARIO
join ATENDENTE on FUNCIONARIO.matricula = ATENDENTE.matricula
where funcionario.nome like '% maria %' -- Meio do nome
or funcionario.nome like 'maria %' -- Inicio do nome
or funcionario.nome like '% maria' -- Final do nome

/*
14.	Mostrar os títulos dos livros que foram emprestados mais de 5 vezes.
*/
select LIVRO.titulo, count(titulo) as total_emprestimo from livro
join emprestimo on livro.numero_registro= emprestimo.numero_registro
where 
(select count(*) from emprestimo where livro.numero_registro = emprestimo.numero_registro) > 5
group by titulo;


select * from emprestimo

/*
16.	Exibir os eventos do tipo palestra que ocorreram em 2022.
*/
select * from EVENTO
join PALESTRA on EVENTO.id_evento = PALESTRA.id_evento
where year (data) = '2022';

/*
15.	Listar os nomes dos usuários que emprestaram livros de tecnologia.
*/

select nome,titulo
from emprestimo
join LIVRO on LIVRO.numero_registro = emprestimo.numero_registro
join usuario on emprestimo.matricula = usuario.matricula
join TECNOLOGIA on LIVRO.numero_registro = TECNOLOGIA.numero_registro;

/*
17.Retornar os títulos dos periódicos que têm 'Saúde' no título.
*/
select PERIODICO.titulo 
from PERIODICO 
where PERIODICO.titulo like '%Saúde%';

/*
18.Listar os nomes dos estagiários que começam com a letra 'L'.
*/
select ESTAGIARIO.nome from ESTAGIARIO
where ESTAGIARIO.nome like 'L%';

/*
19.Mostrar os títulos dos livros de sociologia que foram publicados nos anos 90.
*/
select titulo, ano_publicacao
from LIVRO
join SOCIOLOGIA on SOCIOLOGIA.numero_registro = LIVRO.numero_registro
where ano_publicacao >= 1990 and ano_publicacao < 2000;

/*
20.Exibir os títulos dos livros e os nomes dos autores dos livros emprestados em fevereiro 
de 2023
*/
select LIVRO.titulo, LIVRO.autor
from LIVRO 
join EMPRESTIMO on EMPRESTIMO.numero_registro = LIVRO.numero_registro
where MONTH(data_emprestimo) = 4 
and YEAR(data_emprestimo) = 2024;

