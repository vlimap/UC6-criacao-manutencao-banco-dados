-- Aula 8: Views no SQL Server

-- Views são objetos de banco de dados que armazenam uma consulta SQL. Elas podem ser usadas para simplificar consultas complexas, fornecer uma camada de segurança sobre os dados e melhorar o desempenho.

-- 1. Criando uma view simples
CREATE VIEW vwProdutos
AS
SELECT * FROM Produtos;

-- 2. Consultando uma view
SELECT * FROM vwProdutos;

-- 3. Usando uma view para simplificar consultas
-- Consulta complexa sem uma view
SELECT
    p.Nome AS NomeProduto,
    c.Nome AS NomeCategoria
FROM
    Produtos p
    INNER JOIN Categorias c ON p.CategoriaId = c.Id
WHERE
    p.Preco > 100;

-- Consulta simplificada usando a view
CREATE VIEW vwProdutosCaros AS
SELECT
    p.Nome AS NomeProduto,
    c.Nome AS NomeCategoria
FROM
    Produtos p
    INNER JOIN Categorias c ON p.CategoriaId = c.Id
WHERE
    p.Preco > 100;

SELECT * FROM vwProdutosCaros;

-- 4. Usando uma view para restringir acesso aos dados
CREATE VIEW vwFuncionarios
AS
SELECT Nome, Cargo FROM Funcionarios;

-- Usuário com acesso apenas à view vwFuncionarios
GRANT SELECT ON vwFuncionarios TO UsuarioExterno;

-- 5. Alterando uma view
ALTER VIEW vwProdutos
AS
SELECT
    p.Nome AS NomeProduto,
    c.Nome AS NomeCategoria,
    p.Preco
FROM
    Produtos p
    INNER JOIN Categorias c ON p.CategoriaId = c.Id;

-- 6. Removendo uma view
DROP VIEW vwProdutos;

-- Nota: As views são uma ferramenta poderosa no SQL Server para simplificar consultas, restringir acesso aos dados e melhorar o desempenho. Elas podem ser úteis em uma variedade de cenários de aplicativos.
