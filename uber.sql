-- Criando  um banco
create database escola;
-- Usando o banco de dados
use escola;

create table aluno(
	nome nvarchar(30),
	cpf char(11) primary key
);
-- Inserindo registros na tabela aluno
insert into aluno(nome, cpf)
values
--nome       cpf
('Diego','12354567891'),
('Matheus','98765432132'),
('Rodolfo', '32145698714'),
('Lucas', '14725836912')

-- Consultar registros da tabela aluno
select * from aluno;

-- Criando a tabela turma_130
create table turma_130(
	nome nvarchar(30),-- Diego, Matheus
	cpf char(11),
	foreign key (cpf) references aluno(cpf)
);                                          
insert into aluno(nome_aluno, cpf)
values
--nome            cpf
('Maria Silva','45854564595'),
('Jose Silva','48768932127');
-- Criando a tabela turma_109
create table turma_109(
	nome nvarchar(30),-- Rodolfo, Lucas
	cpf char(11),
	foreign key (cpf) references aluno(cpf)
);

-- Alterar os nomes das tabelas
exec sp_rename 'turma', 'turma_109'; 

-- Alterar  nome dos campos ou atributos
exec sp_rename 'aluno.nome', 'nome_aluno';

-- Alterando registros
update aluno
set nome_aluno = 'Diego'
where cpf = '12354567891';

-- DML - Data Manipulation Language
-- Comando select: buscando informa��es
-- Busca todos
select * from aluno;

-- Buscar por atributo
select nome_aluno from aluno;

-- Consultar o nome de um determinado aluno
select nome_aluno from aluno where nome_aluno = 'Diego';

-- Consultar parte de um nome com caractere curinga
select * from aluno where nome_aluno like 'd%';

-- Consultar o último nome
select * from aluno where nome_aluno like '%silva'

-- Consultar o nome do meio
select * from aluno where nome_aluno like '%silva%'

-- Consultar o primeiro nome
select * from aluno where nome_aluno like 'silva%'

-- Ordenar dados em ordem crescente
select * from aluno order by nome_aluno;

-- Ordenar dados em ordem decrescente
select * from aluno order by nome_aluno desc;

-- Buscar dados cruzados(em outras tabelas)
select aluno.nome_aluno, aluno.cpf
from aluno
-- Junte quem tá na turma_109 verificando se lá em aluno.cpf = turma_109.cpf
join turma_130 on aluno.cpf = turma_130.cpf;

-- Buscar dados cruzados(em outras tabelas): forma simplificada
select a.nome_aluno
from aluno a
join turma_130 t on a.cpf = t.cpf;

-- Contagem de valores
select count(*) as Total_alunos from aluno;
select * from aluno;
-- Adicionando um atributo na tabela existente
alter table passageiro 
add idade int, peso numeric(5,2);

-- Selecionar todos os funcionarios que são gerentes
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

-- ver todos os atributos e seu tipo de uma tabela especifica
select column_name, data_type
from information_schema.COLUMNS
where TABLE_NAME = 'livro';


select * from evento;
-- Selecionar todos os eventos do tipo palestra com custo acima de 100 reais e que aconteceram
-- a partir de 2022
select * from evento 
where tipo = 'palestra' 
and custo > 100.00
and year(data) > 2022; 

 