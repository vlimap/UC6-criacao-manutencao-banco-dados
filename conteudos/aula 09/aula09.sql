-- Aula 9: Procedimentos Armazenados no SQL Server

-- Procedimentos armazenados são blocos de código SQL que são armazenados no banco de dados e podem ser chamados e executados posteriormente.

-- 1. Criando um procedimento armazenado simples
CREATE PROCEDURE spListarClientes
AS
BEGIN
    SELECT * FROM Clientes;
END;

-- 2. Executando um procedimento armazenado
EXEC spListarClientes;

-- 3. Criando um procedimento armazenado com parâmetros
CREATE PROCEDURE spBuscarClientePorId
    @ClienteId INT
AS
BEGIN
    SELECT * FROM Clientes WHERE Id = @ClienteId;
END;

-- Executando o procedimento com parâmetros
EXEC spBuscarClientePorId @ClienteId = 1;

-- 4. Alterando um procedimento armazenado
ALTER PROCEDURE spListarClientes
AS
BEGIN
    SELECT Nome, Email FROM Clientes;
END;

-- Executando o procedimento alterado
EXEC spListarClientes;

-- 5. Removendo um procedimento armazenado
DROP PROCEDURE spListarClientes;

-- Nota: Os procedimentos armazenados são úteis para encapsular lógica de negócios no banco de dados, melhorar a segurança e reutilizar consultas comuns.
