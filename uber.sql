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


