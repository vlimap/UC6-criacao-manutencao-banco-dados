/*
Questão 1
Encontre o número total de livros disponíveis na 
biblioteca com CNPJ '12345678000123'
*/

select count(*) as total_livro from LIVRO_BIBLIOTECA 
where cnpj = '12345678000123';

/*
Questão 2
Liste todos os funcionários que são bibliotecários.
*/

select * from BIBLIOTECARIO order by nome;

/*
Questão 3
Encontre o título e o autor do livro com o 
número de registro 10.
*/

select titulo, autor from livro 
where numero_registro = 10;

/*
Questão 4
Liste todos os eventos do tipo 'Workshop' que custam 
mais de R$150,00.
*/
select * from evento 
where tipo = 'workshop' and custo > 150;

/*
Questão 5
Encontre todos os livros de tecnologia disponíveis 
na biblioteca com CNPJ '23456789000134'.
*/

select livro.titulo
from livro
join tecnologia on 
livro.numero_registro = TECNOLOGIA.numero_registro 

/*
Questão 6
Liste os nomes dos atendentes que trabalham na biblioteca.
*/
-- Lista todos os campos
select * from atendente;
-- Lista apenas por nome
select nome from atendente;

/*
Questão 7
Encontre todos os periódicos publicados no ano de 2023.
*/

select titulo, ano_publicacao
from PERIODICO 
where ano_publicacao = '2023';

/*
Questão 8
Liste todos os livros de sociologia que estão 
disponíveis em qualquer biblioteca.
*/
select livro.titulo
from livro 
join sociologia  on livro.numero_registro = SOCIOLOGIA.numero_registro;

/*
Questão 9
Encontre o nome e a matrícula de todos os educadores.
*/
select matricula, nome 
from EDUCADOR;
/*
Questão 10
Liste os títulos de todos os periódicos que começam com a letra 'C'.
*/
select PERIODICO.titulo 
from PERIODICO
where titulo like 'c%';
/*
Questão 11
Encontre todos os eventos do tipo 'Palestra' que ocorreram antes de 2022.
*/
select evento.data, evento.tipo
from evento
where tipo='palestra' and data < '2022';

/*
Questão 12
Liste todos os livros de ciência que foram publicados após 2015.
*/
select livro.titulo, livro.ano_publicacao
from livro
join CIENCIA on livro.numero_registro = ciencia.numero_registro
and ano_publicacao > '2015';

/*
Questão 13
Encontre os nomes dos técnicos de TI que têm 'Rodrigo' 
como parte do nome
*/
select TECNICO_TI.nome 
from TECNICO_TI 
where nome like '%rodrigo%';

/*
Questão 14
Liste todos os funcionários que são assistentes.
*/
select funcionario.nome
from funcionario
join assistente on funcionario.matricula = assistente.matricula;

/*
Questão 15
Encontre todos os livros que têm 'Programação' 
como parte do título.
*/
select livro.titulo
from livro
where titulo like '%programação%';

/*
Questão 16
Encontre todos os periódicos que têm 'Saúde' como parte do título.
*/
select periodico.titulo
from periodico
where titulo like '%saúde%';
/*
Questão 17
Liste os nomes dos funcionários que são gerentes e 
começam com a letra 'C'
*/
select funcionario.nome 
from funcionario
join gerente on FUNCIONARIO.matricula = gerente.matricula 
where gerente.nome like 'c%';

/*
Questão 18
Encontre todos os livros que foram publicados entre 2010 e 2020.
*/
select livro.titulo, livro.ano_publicacao
from livro
where ano_publicacao > '2010' and ano_publicacao < '2020';
/*
Questão 19
Liste todos os funcionários que são estagiários e têm 'Lima' 
como parte do nome.
*/
select funcionario.nome 
from funcionario
join estagiario on FUNCIONARIO.matricula = estagiario.matricula 
where estagiario.nome like '%lima%';





