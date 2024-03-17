-- Aula 04: Operações de Edição e Exclusão no SQL Server

-- Editar uma Coluna
-- Alterar o tipo de dados de uma coluna
ALTER TABLE Funcionario ALTER COLUMN Nome VARCHAR(100);

-- Editar Nome da Tabela
-- Renomear uma tabela
EXEC sp_rename 'Funcionario', 'Empregado';

-- Editar Registro
-- Atualizar um registro existente
UPDATE Empregado SET Nome = 'Maria Silva' WHERE IdFuncionario = 1;

-- Excluir todos os registros
-- O comando TRUNCATE TABLE remove todos os registros da tabela de forma rápida e eficiente, mantendo a estrutura da tabela intacta.
TRUNCATE TABLE MinhaTabela;

-- Adicionar um Novo Atributo a Tabela Já Existente
-- Adicionar uma nova coluna à tabela
ALTER TABLE Empregado ADD Email VARCHAR(50);

-- Excluir Atributo com Registro
-- Excluir uma coluna da tabela (isso removerá todos os dados naquela coluna)
ALTER TABLE Empregado DROP COLUMN Email;

-- Excluir Atributo Chave Primária
-- Remover a chave primária da tabela
ALTER TABLE Empregado DROP CONSTRAINT PK__Empregad__3214EC0723B59EED;

-- Excluir Atributo Chave Estrangeira
-- Remover uma chave estrangeira da tabela
ALTER TABLE ParticipacaoProjeto DROP CONSTRAINT FK__Participa__IdFun__30C33EC3;

-- Excluir Tabela de Todas as Formas
-- Excluir uma tabela e todos os seus dados
DROP TABLE Empregado;

-- Excluir o Banco
-- Excluir o banco de dados inteiro
DROP DATABASE MeuBancoDeDados;

-- Principais Erros de Restrições de Chaves
-- Tentar inserir um valor duplicado em uma coluna com chave primária
-- Tentar inserir um valor em uma coluna com chave estrangeira que não existe na tabela referenciada
-- Tentar excluir ou atualizar um registro que está sendo referenciado por uma chave estrangeira em outra tabela

-- Considerações Adicionais
-- Sempre faça backup do seu banco de dados antes de realizar operações de exclusão ou alterações significativas.
-- Teste suas alterações em um ambiente de desenvolvimento antes de aplicá-las em produção.
-- Considere as implicações de integridade referencial ao modificar ou excluir colunas que são chaves primárias ou estrangeiras.
