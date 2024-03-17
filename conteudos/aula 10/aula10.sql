-- Aula 10: Triggers no SQL Server

-- Triggers são blocos de código SQL que são executados automaticamente em resposta a certos eventos em uma tabela.

-- 1. Criando uma trigger simples
CREATE TRIGGER trgExemplo
ON MinhaTabela
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    -- Código a ser executado quando a trigger é acionada
    PRINT 'Trigger acionada';
END;

-- 2. Modificando uma trigger existente
ALTER TRIGGER trgExemplo
ON MinhaTabela
AFTER INSERT, UPDATE
AS
BEGIN
    PRINT 'Trigger modificada';
END;

-- 3. Exemplo de trigger para auditoria
CREATE TABLE LogAuditoria
(
    Id INT IDENTITY(1,1) PRIMARY KEY,
    Tabela NVARCHAR(100),
    Operacao NVARCHAR(100),
    DataHora DATETIME
);

CREATE TRIGGER trgAuditoria
ON MinhaTabela
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    DECLARE @Operacao NVARCHAR(100);

    IF EXISTS(SELECT * FROM inserted)
    BEGIN
        IF EXISTS(SELECT * FROM deleted)
        BEGIN
            SET @Operacao = 'UPDATE';
        END
        ELSE
        BEGIN
            SET @Operacao = 'INSERT';
        END
    END
    ELSE
    BEGIN
        SET @Operacao = 'DELETE';
    END

    INSERT INTO LogAuditoria (Tabela, Operacao, DataHora)
    VALUES ('MinhaTabela', @Operacao, GETDATE());
END;

-- Nota: Triggers podem ser usadas para uma variedade de finalidades, como auditoria, validações de dados e manutenção de integridade referencial.
