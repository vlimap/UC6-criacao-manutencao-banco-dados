-- Criar o banco 
create database senac_bd;
-- Usar o banco de dados
use senac_bd;

create table aluno(
 matricula char(11) primary key 
);

create table professor(
	matricula char(11) primary key
);

create table turma(
	matricula_a char(11),
	matricula_p char(11),
	foreign key (matricula_a) references aluno(matricula),
	foreign key (matricula_p) references professor(matricula)
);
