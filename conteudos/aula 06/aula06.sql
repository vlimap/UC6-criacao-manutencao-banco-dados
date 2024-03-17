-- Aula 6: Uso do SELECT no SQL Server

-- Criando duas tabelas de exemplo: Livros e Autores
CREATE TABLE Autores (
    AutorID INT PRIMARY KEY,
    Nome VARCHAR(50),
    AnoNascimento INT
);

CREATE TABLE Livros (
    LivroID INT PRIMARY KEY,
    Titulo VARCHAR(100),
    AnoPublicacao INT,
    AutorID INT,
    Preco DECIMAL(10,2),
    FOREIGN KEY (AutorID) REFERENCES Autores(AutorID)
);

-- Inserindo dados nas tabelas
INSERT INTO Autores (AutorID, Nome, AnoNascimento) VALUES
(1, 'J.K. Rowling', 1965),
(2, 'George Orwell', 1903),
(3, 'Agatha Christie', 1890);

INSERT INTO Livros (LivroID, Titulo, AnoPublicacao, AutorID, Preco) VALUES
(1, 'Harry Potter e a Pedra Filosofal', 1997, 1, 20.00),
(2, '1984', 1949, 2, 15.00),
(3, 'Assassinato no Expresso do Oriente', 1934, 3, 25.00);

-- Usando SELECT com operadores relacionais
-- 1. Encontrar livros publicados após 1950
SELECT * FROM Livros WHERE AnoPublicacao > 1950;

-- 2. Encontrar autores nascidos antes de 1900
SELECT * FROM Autores WHERE AnoNascimento < 1900;

-- Usando SELECT com operadores lógicos
-- 3. Encontrar livros publicados antes de 1950 ou com preço maior que R$20,00
SELECT * FROM Livros WHERE AnoPublicacao < 1950 OR Preco > 20.00;

-- 4. Encontrar autores que não nasceram em 1965
SELECT * FROM Autores WHERE NOT AnoNascimento = 1965;

-- Usando SELECT com operadores aritméticos
-- 5. Calcular o preço com desconto de 10% para todos os livros
SELECT Titulo, Preco, Preco * 0.9 AS PrecoComDesconto FROM Livros;

-- Usando SELECT com JOIN
-- 6. Listar todos os livros com o nome do autor
SELECT Livros.Titulo, Autores.Nome FROM Livros
JOIN Autores ON Livros.AutorID = Autores.AutorID;

-- 7. Encontrar todos os livros e seus autores onde o ano de publicação é maior que o ano de nascimento do autor
SELECT Livros.Titulo, Autores.Nome
FROM Livros
JOIN Autores ON Livros.AutorID = Autores.AutorID
WHERE Livros.AnoPublicacao > Autores.AnoNascimento;

-- 8. Listar os títulos dos livros juntamente com o ano de nascimento de seus autores, ordenados pelo ano de nascimento do autor
SELECT Livros.Titulo, Autores.AnoNascimento
FROM Livros
JOIN Autores ON Livros.AutorID = Autores.AutorID
ORDER BY Autores.AnoNascimento;

-- 9. Encontrar a média de preço dos livros agrupados por autor
SELECT Autores.Nome, AVG(Livros.Preco) AS PrecoMedio
FROM Livros
JOIN Autores ON Livros.AutorID = Autores.AutorID
GROUP BY Autores.Nome;

-- 10. Listar os autores que têm mais de um livro publicado
SELECT Autores.Nome, COUNT(Livros.LivroID) AS QuantidadeLivros
FROM Livros
JOIN Autores ON Livros.AutorID = Autores.AutorID
GROUP BY Autores.Nome
HAVING COUNT(Livros.LivroID) > 1;

-- 11. Encontrar todos os livros cujo título contém a letra 'e'
SELECT * FROM Livros WHERE Titulo LIKE '%e%';

-- 12. Listar os livros publicados no século 20 (entre 1901 e 2000)
SELECT * FROM Livros WHERE AnoPublicacao BETWEEN 1901 AND 2000;

-- 13. Calcular o total de vendas (preço * quantidade vendida) para cada livro, assumindo uma coluna hipotética 'QuantidadeVendida'
-- Adicione a coluna QuantidadeVendida à tabela Livros para este exemplo
ALTER TABLE Livros ADD QuantidadeVendida INT;
UPDATE Livros SET QuantidadeVendida = 100; -- Valor hipotético

SELECT Titulo, Preco * QuantidadeVendida AS TotalVendas FROM Livros;

-- Limpeza (remover a coluna hipotética)
ALTER TABLE Livros DROP COLUMN QuantidadeVendida;

-- Lembre-se de excluir as tabelas Livros e Autores no final de seus exemplos, se necessário.

