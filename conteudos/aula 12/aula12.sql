/*
Aula sobre Funções no SQL Server

Objetivos:
- Entender o conceito e a utilidade das funções no SQL Server.
- Aprender a criar e utilizar funções escalares e de tabela.
- Conhecer as funções de agregação e como aplicá-las.

1. Introdução às Funções
- Funções são objetos de banco de dados que aceitam parâmetros, executam uma ação ou cálculo e retornam o resultado.
- As funções podem ser escalares, de tabela ou de agregação.

2. Funções Escalares
- Retornam um único valor baseado em um ou mais valores de entrada.
- Exemplo: Calcular a idade a partir da data de nascimento.

-- Exemplo de função escalar para calcular idade
CREATE FUNCTION CalcularIdade (@DataNascimento DATE)
RETURNS INT
AS
BEGIN
    RETURN DATEDIFF(YEAR, @DataNascimento, GETDATE())
END
GO

-- Uso da função CalcularIdade
SELECT dbo.CalcularIdade('2000-01-01') AS Idade;

3. Funções de Tabela
- Retornam um conjunto de registros, semelhante a uma tabela.
- Exemplo: Obter uma lista de livros de um determinado autor.

-- Exemplo de função de tabela para listar livros de um autor
CREATE FUNCTION ListarLivrosPorAutor (@Autor VARCHAR(255))
RETURNS TABLE
AS
RETURN (
    SELECT Titulo, AnoPublicacao FROM Livros WHERE Autor = @Autor
)
GO

-- Uso da função ListarLivrosPorAutor
SELECT * FROM dbo.ListarLivrosPorAutor('Luciano Ramalho');

4. Funções de Agregação
- Realizam cálculos em um conjunto de valores e retornam um único valor.
- Exemplos: COUNT(), SUM(), AVG(), MAX(), MIN().

-- Exemplo de uso de função de agregação
SELECT AVG(AnoPublicacao) AS AnoMedioPublicacao FROM Livros;

5. Considerações Finais
- Funções podem aumentar a reutilização de código e a clareza das consultas SQL.
- É importante entender as diferenças entre funções escalares, de tabela e de agregação para utilizá-las de forma eficaz.
*/

-- Limpeza das funções criadas
DROP FUNCTION IF EXISTS CalcularIdade;
DROP FUNCTION IF EXISTS ListarLivrosPorAutor;
