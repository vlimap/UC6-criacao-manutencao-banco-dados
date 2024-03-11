-- Criar meu banco de dados
create database uber;
-- Usar o banco criado
use ifood;
-- Criando a tabela cliente
create table cliente(
	nome nvarchar(50), 
	cpf char(11) primary key
);

create table produto(
	id_produto int primary key,
	nome nchar(30)
);

create table pedido(
	id_produto int,
	cpf char(11),
	id_pedido int primary key
	foreign key (id_produto) references produto(id_produto),
	foreign key (cpf) references cliente(cpf),
);








