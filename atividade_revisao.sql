use sistema_biblioteca;

select * from funcionario;

select f.nome
from funcionario f
join gerente g on g.matricula = f.matricula;

-- Selecionar todos os livros com ano de publicação acima de 2018
select * from livro where ano_publicacao > 2018;
select * from livro;
-- Título do livro onde o nome do autor começa com Paulo
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

-- Operadores relacionais
-- = (igual a)
-- != ou <> (diferente de)
-- > (maior que)
-- < (menor que)
-- >= (maior ou igual a)
-- <= (menor ou igual a)

-- Operadores lógicos
-- AND: Retorna verdadeiro se ambas as condições forem verdadeiras.
-- OR: Retorna verdadeiro se pelo menos uma das condições for verdadeira.
-- NOT: Inverte o resultado de uma condição, ou seja, retorna verdadeiro se a condição for falsa e vice-versa.

-- Operadores aritméticos
-- + (adição): Soma dois valores.
-- - (subtração): Subtrai um valor de outro.
-- * (multiplicação): Multiplica dois valores.
-- / (divisão): Divide um valor pelo outro.
-- % (módulo): Retorna o resto da divisão de um valor pelo outro.

-- Funções de agregação:
-- SUM(): Calcula a soma dos valores em um conjunto de dados.
-- AVG(): Calcula a média dos valores em um conjunto de dados.
-- COUNT(): Conta o número de itens em um conjunto de dados.
-- MAX(): Encontra o valor máximo em um conjunto de dados.
-- MIN(): Encontra o valor mínimo em um conjunto de dados.

-- Funções escalares:
-- ABS(): Retorna o valor absoluto de um número.
-- CEILING(): Arredonda um número para cima para o inteiro mais próximo.
-- FLOOR(): Arredonda um número para baixo para o inteiro mais próximo.
-- ROUND(): Arredonda um número para um número especificado de casas decimais.
-- SQRT(): Calcula a raiz quadrada de um número.
-- POWER(): Eleva um número a uma potência especificada.

-- Funções de manipulação de strings:
-- LEN(): Retorna o comprimento de uma string.
-- UPPER(): Converte uma string para maiúsculas.
-- LOWER(): Converte uma string para minúsculas.
-- SUBSTRING(): Extrai uma substring de uma string.
-- REPLACE(): Substitui todas as ocorrências de uma substring por outra substring.

-- Funções de manipulação de datas:
-- GETDATE(): Retorna a data e hora atuais do sistema.
-- DATEADD(): Adiciona um intervalo de tempo especificado a uma data.
-- DATEDIFF(): Calcula a diferença entre duas datas.
-- YEAR(): Extrai o ano de uma data.
-- MONTH(): Extrai o mês de uma data.
