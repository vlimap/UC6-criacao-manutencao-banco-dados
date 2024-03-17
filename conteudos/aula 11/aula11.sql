-- Aula 11: Comandos DCL no SQL Server

-- Os comandos DCL (Data Control Language) são usados para controlar as permissões de acesso aos objetos do banco de dados.

-- Criar um login no SQL Server
CREATE LOGIN fulano WITH PASSWORD = '123456789';

-- Usar o banco de dados sistema_biblioteca
USE sistema_biblioteca;

-- Criar um usuário no banco de dados associado ao login
CREATE USER fulano FOR LOGIN fulano;

-- 1. Criando tabelas de exemplo

CREATE TABLE Livros (
    LivroID INT PRIMARY KEY,
    Titulo VARCHAR(255),
    Autor VARCHAR(255),
    AnoPublicacao INT
);

CREATE TABLE Emprestimos (
    EmprestimoID INT PRIMARY KEY,
    LivroID INT,
    UsuarioID INT,
    DataEmprestimo DATE,
    DataDevolucao DATE,
    FOREIGN KEY (LivroID) REFERENCES Livros(LivroID)
);

-- 2. Concedendo permissões

-- Concedendo permissão SELECT na tabela Livros para fulano
GRANT SELECT ON Livros TO fulano;

-- Concedendo permissão INSERT e UPDATE na tabela Emprestimos para fulano
GRANT INSERT, UPDATE ON Emprestimos TO fulano;

-- Concedendo permissão DELETE na tabela Livros para fulano
GRANT DELETE ON Livros TO fulano;

-- 3. Revogando permissões

-- Revogando permissão UPDATE na tabela Emprestimos de fulano
REVOKE UPDATE ON Emprestimos FROM fulano;

-- 4. Concedendo permissões com GRANT OPTION

-- Concedendo permissão SELECT na tabela Livros para fulano com GRANT OPTION
GRANT SELECT ON Livros TO fulano WITH GRANT OPTION;

-- 5. Exemplos de permissões especiais

-- Concedendo permissão CONTROL na tabela Livros para fulano
GRANT CONTROL ON Livros TO fulano;

-- Concedendo permissão REFERENCES na tabela Emprestimos para fulano
GRANT REFERENCES ON Emprestimos TO fulano;

-- 6. Revogando permissões do banco de dados

-- 7. Revogando todas as permissões de fulano no banco de dados
DENY ALL TO fulano;

-- 8. Concedendo permissões
GRANT SELECT, INSERT, UPDATE ON Livros TO fulano;

-- 9. Revogando permissões
REVOKE UPDATE ON Livros FROM fulano;

-- 10. Excluindo o usuário fulano do banco de dados
DROP USER fulano;

-- 11. Excluindo o login fulano do SQL Server
DROP LOGIN fulano;
