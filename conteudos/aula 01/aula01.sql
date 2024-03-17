-- Aula 01: Conceitos Básicos e Operações no SQL Server

-- 1. Conectar ao SQL Server
-- Antes de executar os comandos SQL, você precisa se conectar ao SQL Server usando o SQL Server Management Studio (SSMS) ou outra ferramenta de sua preferência.

-- 2. Criar um novo banco de dados
CREATE DATABASE MeuBancoDeDados;
-- Este comando cria um novo banco de dados chamado 'MeuBancoDeDados'.

-- 3. Selecionar o banco de dados para uso
USE MeuBancoDeDados;
-- Este comando define 'MeuBancoDeDados' como o banco de dados atual para as operações subsequentes.

-- 4. Criar uma nova tabela com chave primária e autoincremento
CREATE TABLE Alunos (
    ID INT IDENTITY(1,1) PRIMARY KEY, -- ID é a chave primária e será autoincrementada
    Nome VARCHAR(50) NOT NULL,        -- Nome é obrigatório (não pode ser NULL)
    Idade INT,
    Email VARCHAR(50) UNIQUE           -- Email deve ser único na tabela
);
-- Este comando cria uma nova tabela chamada 'Alunos' com quatro colunas: ID, Nome, Idade e Email.
-- A coluna ID é a chave primária e possui autoincremento.
-- A coluna Nome não pode ser NULL (NOT NULL).
-- A coluna Email deve conter valores únicos (UNIQUE).

-- 5. Inserir dados na tabela
INSERT INTO Alunos (Nome, Idade, Email) VALUES ('Maria', 20, 'maria@email.com');
-- Neste comando, não é necessário especificar um valor para ID, pois ele será gerado automaticamente.

-- 6. Consultar dados da tabela
SELECT * FROM Alunos;
-- Este comando seleciona e exibe todos os dados da tabela 'Alunos'.

-- 7. Atualizar dados da tabela
UPDATE Alunos SET Idade = 21 WHERE ID = 1;
-- Este comando atualiza a idade do aluno com ID 1 para 21.

-- 8. Excluir dados da tabela
DELETE FROM Alunos WHERE ID = 1;
-- Este comando exclui a linha da tabela 'Alunos' onde o ID é 1.

-- 9. Excluir a tabela
DROP TABLE Alunos;
-- Este comando exclui a tabela 'Alunos'.

-- 10. Excluir o banco de dados
DROP DATABASE MeuBancoDeDados;
-- Este comando exclui o banco de dados 'MeuBancoDeDados'.

-- Notas Importantes:
-- - A chave primária (PRIMARY KEY) garante que cada valor na coluna seja único e não nulo.
-- - A propriedade IDENTITY é usada para criar uma coluna de autoincremento.
-- - A restrição UNIQUE garante que todos os valores na coluna sejam únicos.
-- - A restrição NOT NULL impede que a coluna aceite valores nulos.
