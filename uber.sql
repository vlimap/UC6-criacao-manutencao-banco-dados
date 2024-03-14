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

-- DDL - Data Manipulation Language
-- Comando select: buscando informações
-- Busca todos
select * from aluno;

-- Busca por atributo
select nome_aluno from aluno; 

-- Buscar por algo em especifico
select * from aluno where cpf='12354564595';

-- Buscar dados especificos usano caractere curinga
select * from aluno where nome_aluno like 'd%';

-- Buscar por sobrenome do aluno
select * from aluno where nome_aluno like '%Silva';

-- Ordenação de valores
select * from aluno order by nome_aluno;

-- Consultar todos alunos em uma tabela especifica: com nome 
-- da tabela.
select aluno.nome_aluno 
from aluno
join turma_130 on aluno.cpf = turma_130.cpf;

-- Consultar todos alunos em uma tabela especifica: de forma 
-- simplificada
select a.nome_aluno
from aluno a -- A tabela aluno passou a ser a
join turma_130 t on a.cpf = t.cpf;

-- Contagem de todos os valores 
select * from aluno;
select count(*) as Total_Alunos from aluno;

-- Contagem de valores em uma coluna especifica
select count(nome_aluno) as Total_Alunos from turma_109;



