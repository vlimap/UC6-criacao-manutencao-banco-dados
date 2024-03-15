use sistema_biblioteca;

select * from funcionario;

select f.nome
from funcionario f
join gerente g on g.matricula = f.matricula;

-- Selecionar todos os livros com ano de publicação acima de 2018
select * from livro where ano_publicacao > 2018;
select * from livro
-- Titulo do livro onde o nome do autor começa com Paulo
select titulo from livro where autor like 'paulo%';
-- Mostre todos os livros que são de tecnologia
select livro.titulo
from livro
join tecnologia on tecnologia.numero_registro = livro.numero_registro;


select column_name, data_type
from information_schema.COLUMNS
where TABLE_NAME = 'livro';


select * from evento;

select * from evento 
where tipo = 'palestra' 
and custo > 100.00
and year(data) > 2022; 
