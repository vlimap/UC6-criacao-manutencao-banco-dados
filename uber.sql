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

