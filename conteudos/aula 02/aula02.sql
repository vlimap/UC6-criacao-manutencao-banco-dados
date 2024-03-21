-- Aula 02: Tipos de Dados Numéricos Exatos no SQL Server

CREATE TABLE ExemploTipos (
    GrandeNumero BIGINT, -- BIGINT: Armazena números inteiros grandes, de -2^63 a 2^63-1.
    ValorDecimal NUMERIC(5,2), -- NUMERIC(5,2): Armazena números decimais com precisão de 5 dígitos e 2 casas decimais.
    Flag BIT, -- BIT: Armazena valores booleanos (0 ou 1).
    NumeroPequeno SMALLINT, -- SMALLINT: Armazena números inteiros pequenos, de -32,768 a 32,767.
    Preco DECIMAL(10,2), -- DECIMAL(10,2): Armazena números decimais com precisão de 10 dígitos e 2 casas decimais.
    PrecoPequeno SMALLMONEY, -- SMALLMONEY: Armazena valores monetários de -214,748.3648 a 214,748.3647.
    Idade INT, -- INT: Armazena números inteiros, de -2^31 a 2^31-1.
    Quantidade TINYINT, -- TINYINT: Armazena números inteiros pequenos, de 0 a 255.
    PrecoGrande MONEY, -- MONEY: Armazena valores monetários grandes, de -2^63 a 2^63-1.
    NumeroFloat FLOAT, -- FLOAT: Armazena números de ponto flutuante com precisão dupla.
    NumeroReal REAL, -- REAL: Armazena números de ponto flutuante com precisão simples.
    Data DATE, -- DATE: Armazena apenas datas no formato AAAA-MM-DD.
    MomentoComFuso DATETIMEOFFSET, -- DATETIMEOFFSET: Armazena data e hora com informações de fuso horário.
    MomentoPreciso DATETIME2, -- DATETIME2: Armazena data e hora com precisão fracional e maior intervalo de datas.
    MomentoSimples SMALLDATETIME, -- SMALLDATETIME: Armazena data e hora com precisão de minutos.
    Momento DATETIME, -- DATETIME: Armazena data e hora com precisão de 3,33 milissegundos.
    Hora TIME, -- TIME: Armazena apenas hora com precisão fracional.
    TextoFixo CHAR(10), -- CHAR(10): Armazena cadeias de caracteres de tamanho fixo com 10 caracteres.
    TextoVariavel VARCHAR(50), -- VARCHAR(50): Armazena cadeias de caracteres de tamanho variável até 50 caracteres.
    TextoLongo TEXT, -- TEXT: Armazena cadeias de caracteres de tamanho variável até 2^31-1 caracteres.
    TextoUnicodeFixo NCHAR(10), -- NCHAR(10): Armazena cadeias de caracteres Unicode de tamanho fixo com 10 caracteres.
    TextoUnicodeVariavel NVARCHAR(50), -- NVARCHAR(50): Armazena cadeias de caracteres Unicode de tamanho variável até 50 caracteres.
    TextoUnicodeLongo NTEXT, -- NTEXT: Armazena cadeias de caracteres Unicode de tamanho variável até 2^30-1 caracteres.
    DadosFixos BINARY(10), -- BINARY(10): Armazena cadeias de bytes de tamanho fixo com 10 bytes.
    DadosVariaveis VARBINARY(50), -- VARBINARY(50): Armazena cadeias de bytes de tamanho variável até 50 bytes.
    DadosImagem IMAGE, -- IMAGE: Armazena cadeias de bytes de tamanho variável até 2^31-1 bytes.
    Id ROWVERSION, -- ROWVERSION: Armazena um número sequencial exclusivo para controle de concorrência.
    NomeGeografia GEOGRAPHY, -- GEOGRAPHY: Armazena dados espaciais geográficos, como pontos, linhas e polígonos.
    FormaGeometria GEOMETRY -- GEOMETRY: Armazena dados espaciais 2D, como pontos, linhas e polígonos.
);

-- 1. BIGINT: Armazena números inteiros grandes, de -2^63 a 2^63-1.
CREATE TABLE ExemploBigint (
    GrandeNumero BIGINT
);
-- Inserindo os dados na tabela, veja o tamanho dos dados
INSERT INTO ExemploBigint 
VALUES 
(9223372036854775807), 
(-9223372036854775808);
-- Exibindo os dados
SELECT * FROM ExemploBigint;

-- 2. NUMERIC: Armazena números decimais com precisão e escala especificadas. Exemplo: NUMERIC(5,2) pode armazenar até 999.99.
CREATE TABLE ExemploNumeric (
    ValorDecimal NUMERIC(5,2)
);
-- Inserindo os dados na tabela
INSERT INTO ExemploNumeric 
VALUES 
(123.45), 
(99.99), 
(-0.01);
-- Exibindo os dados
SELECT * FROM ExemploNumeric;

-- 3. BIT: Armazena valores booleanos (0 ou 1). Exemplo: 1 (verdadeiro), 0 (falso).
CREATE TABLE ExemploBit (
    Flag BIT
);
-- Inserindo os dados na tabela
INSERT INTO ExemploBit 
VALUES 
(1), 
(0), 
(1);
-- Exibindo os dados
SELECT * FROM ExemploBit;

-- 4. SMALLINT: Armazena números inteiros pequenos, de -32,768 a 32,767.
CREATE TABLE ExemploSmallint (
    NumeroPequeno SMALLINT
);
-- Inserindo os dados na tabela
INSERT INTO ExemploSmallint 
VALUES 
(32767), 
(-32768), 
(1234);
-- Exibindo os dados
SELECT * FROM ExemploSmallint;

-- 5. DECIMAL: Sinônimo de NUMERIC. Armazena números decimais com precisão e escala especificadas.
CREATE TABLE ExemploDecimal (
    Preco DECIMAL(10,2)
);
-- Inserindo os dados na tabela
INSERT INTO ExemploDecimal 
VALUES 
(99999.99), 
(0.01), 
(-12345.67);
-- Exibindo os dados
SELECT * FROM ExemploDecimal;

-- 6. SMALLMONEY: Armazena valores monetários de -214,748.3648 a 214,748.3647.
CREATE TABLE ExemploSmallmoney (
    PrecoPequeno SMALLMONEY
);
-- Inserindo os dados na tabela
INSERT INTO ExemploSmallmoney 
VALUES 
(214748.3647), 
(-214748.3648), 
(99.99);
-- Exibindo os dados
SELECT * FROM ExemploSmallmoney;

-- 7. INT: Armazena números inteiros, de -2^31 a 2^31-1.
CREATE TABLE ExemploInt (
    Idade INT
);
-- Inserindo os dados na tabela
INSERT INTO ExemploInt 
VALUES 
(2147483647), 
(-2147483648), 
(25);
-- Exibindo os dados
SELECT * FROM ExemploInt;

-- 8. TINYINT: Armazena números inteiros pequenos, de 0 a 255.
CREATE TABLE ExemploTinyint (
    Quantidade TINYINT
);
-- Inserindo os dados na tabela
INSERT INTO ExemploTinyint 
VALUES 
(255), 
(0), 
(123);
-- Exibindo os dados
SELECT * FROM ExemploTinyint;

-- 9. MONEY: Armazena valores monetários de -2^63 a 2^63-1.
CREATE TABLE ExemploMoney (
    Preco MONEY
);
-- Inserindo os dados na tabela
INSERT INTO ExemploMoney 
VALUES 
(922337203685477.5807), 
(-922337203685477.5808), 
(99.99);
-- Exibindo os dados
SELECT * FROM ExemploMoney;

-- Numéricos Aproximados
-- 1. FLOAT: Armazena números de ponto flutuante com precisão dupla. Pode armazenar valores de aproximadamente -1.79E+308 a 1.79E+308.
CREATE TABLE ExemploFloat (
    NumeroFloat FLOAT
);
-- Inserindo os dados na tabela
INSERT INTO ExemploFloat 
VALUES 
(123.456789), 
(-98765.4321);
-- Exibindo os dados
SELECT * FROM ExemploFloat;

-- 2. REAL: Armazena números de ponto flutuante com precisão simples. Pode armazenar valores de aproximadamente -3.40E+38 a 3.40E+38.
CREATE TABLE ExemploReal (
    NumeroReal REAL
);
-- Inserindo os dados na tabela
INSERT INTO ExemploReal 
VALUES 
(12345.6789), 
(-9876.54321);
-- Exibindo os dados
SELECT * FROM ExemploReal;

-- Data e Hora
-- 1. DATE: Armazena apenas datas no formato AAAA-MM-DD.
CREATE TABLE ExemploDate (
    Data DATE
);
-- Inserindo os dados na tabela
INSERT INTO ExemploDate 
VALUES 
('2023-01-01'), 
('1999-12-31');
-- Exibindo os dados
SELECT * FROM ExemploDate;

-- 2. DATETIMEOFFSET: Armazena data e hora com informações de fuso horário.
CREATE TABLE ExemploDatetimeoffset (
    MomentoComFuso DATETIMEOFFSET
);
-- Inserindo os dados na tabela
INSERT INTO ExemploDatetimeoffset 
VALUES 
('2023-01-01 12:00:00 -05:00'), 
('1999-12-31 23:59:59 +02:00');
-- Exibindo os dados
SELECT * FROM ExemploDatetimeoffset;

-- 3. DATETIME2: Armazena data e hora com precisão fracional e maior intervalo de datas do que DATETIME.
CREATE TABLE ExemploDatetime2 (
    MomentoPreciso DATETIME2
);
-- Inserindo os dados na tabela
INSERT INTO ExemploDatetime2 
VALUES 
('2023-01-01 12:00:00.1234567'), 
('1999-12-31 23:59:59.9999999');
-- Exibindo os dados
SELECT * FROM ExemploDatetime2;

-- 4. SMALLDATETIME: Armazena data e hora com precisão de minutos. Intervalo de 1900-01-01 a 2079-06-06.
CREATE TABLE ExemploSmalldatetime (
    MomentoSimples SMALLDATETIME
);
-- Inserindo os dados na tabela
INSERT INTO ExemploSmalldatetime 
VALUES 
('2023-01-01 12:00'), 
('1999-12-31 23:59');
-- Exibindo os dados
SELECT * FROM ExemploSmalldatetime;

-- 5. DATETIME: Armazena data e hora com precisão de 3,33 milissegundos. Intervalo de 1753-01-01 a 9999-12-31.
CREATE TABLE ExemploDatetime (
    Momento DATETIME
);
-- Inserindo os dados na tabela
INSERT INTO ExemploDatetime 
VALUES 
('2023-01-01 12:00:00.123'), 
('1999-12-31 23:59:59.999');
-- Exibindo os dados
SELECT * FROM ExemploDatetime;

-- 6. TIME: Armazena apenas hora com precisão fracional.
CREATE TABLE ExemploTime (
    Hora TIME
);
-- Inserindo os dados na tabela
INSERT INTO ExemploTime 
VALUES 
('12:00:00.1234567'), 
('23:59:59.9999999');
-- Exibindo os dados
SELECT * FROM ExemploTime;

-- Cadeias de Caracteres
-- 1. CHAR: Armazena cadeias de caracteres de tamanho fixo. Se a cadeia for menor que o tamanho definido, será preenchida com espaços em branco.
CREATE TABLE ExemploChar (
    TextoFixo CHAR(10)
);
-- Inserindo os dados na tabela
INSERT INTO ExemploChar 
VALUES 
('SQL'), 
('Server');
-- Exibindo os dados
SELECT '*' + TextoFixo + '*' AS TextoComEspacos FROM ExemploChar; -- Adicionamos asteriscos para visualizar os espaços em branco.

-- 2. VARCHAR: Armazena cadeias de caracteres de tamanho variável. Não preenche com espaços em branco.
CREATE TABLE ExemploVarchar (
    TextoVariavel VARCHAR(50)
);
-- Inserindo os dados na tabela
INSERT INTO ExemploVarchar 
VALUES 
('SQL Server'), 
('Banco de Dados');
-- Exibindo os dados
SELECT * FROM ExemploVarchar;

-- 3. TEXT: Armazena cadeias de caracteres de tamanho variável de até 2^31-1 caracteres. Não é recomendado para novos projetos; use VARCHAR(MAX) em vez disso.
CREATE TABLE ExemploText (
    TextoLongo TEXT
);
-- Inserindo os dados na tabela
INSERT INTO ExemploText 
VALUES 
('Este é um texto muito longo...'), 
('Outro texto longo...');
-- Exibindo os dados
SELECT * FROM ExemploText;

-- Cadeias de Caracteres Unicode
-- 1. NCHAR: Armazena cadeias de caracteres Unicode de tamanho fixo. Semelhante ao CHAR, mas para caracteres Unicode.
CREATE TABLE ExemploNchar (
    TextoUnicodeFixo NCHAR(10)
);
-- Inserindo os dados na tabela
INSERT INTO ExemploNchar 
VALUES 
(N'日本語'), 
(N'한글');
-- Exibindo os dados
SELECT '*' + TextoUnicodeFixo + '*' AS TextoComEspacos FROM ExemploNchar;

-- 2. NVARCHAR: Armazena cadeias de caracteres Unicode de tamanho variável. Semelhante ao VARCHAR, mas para caracteres Unicode.
CREATE TABLE ExemploNvarchar (
    TextoUnicodeVariavel NVARCHAR(50)
);
-- Inserindo os dados na tabela
INSERT INTO ExemploNvarchar 
VALUES 
(N'日本語'), 
(N'한글');
-- Exibindo os dados
SELECT * FROM ExemploNvarchar;

-- 3. NTEXT: Armazena cadeias de caracteres Unicode de tamanho variável de até 2^30-1 caracteres. Não é recomendado para novos projetos; use NVARCHAR(MAX) em vez disso.
CREATE TABLE ExemploNtext (
    TextoUnicodeLongo NTEXT
);
-- Inserindo os dados na tabela
INSERT INTO ExemploNtext 
VALUES 
(N'Este é um texto Unicode muito longo...'), 
(N'Outro texto Unicode longo...');
-- Exibindo os dados
SELECT * FROM ExemploNtext;

-- Cadeia de Caracteres Binária
-- 1. BINARY: Armazena cadeias de bytes de tamanho fixo. Se a cadeia for menor que o tamanho definido, será preenchida com zeros.
CREATE TABLE ExemploBinary (
    DadosFixos BINARY(10)
);
-- Inserindo os dados na tabela
INSERT INTO ExemploBinary 
VALUES 
(0x01AF), 
(0x02BC);
-- Exibindo os dados
SELECT * FROM ExemploBinary;

-- 2. VARBINARY: Armazena cadeias de bytes de tamanho variável. Não preenche com zeros.
CREATE TABLE ExemploVarbinary (
    DadosVariaveis VARBINARY(50)
);
-- Inserindo os dados na tabela
INSERT INTO ExemploVarbinary 
VALUES 
(0x01AF), 
(0x02BC);
-- Exibindo os dados
SELECT * FROM ExemploVarbinary;

-- 3. IMAGE: Armazena cadeias de bytes de tamanho variável de até 2^31-1 bytes. Não é recomendado para novos projetos; use VARBINARY(MAX) em vez disso.
CREATE TABLE ExemploImage (
    DadosImagem IMAGE
);
-- Inserindo os dados na tabela
INSERT INTO ExemploImage 
VALUES 
(0x0123456789ABCDEF), 
(0xFEDCBA9876543210);
-- Exibindo os dados
SELECT * FROM ExemploImage;

-- Outros Tipos de Dados
-- 1. CURSOR: Um tipo de dado especial usado para armazenar um ponteiro para um conjunto de resultados de uma consulta SQL.
-- Não é comum criar uma tabela com uma coluna do tipo CURSOR, pois é mais usado em programação procedural.

-- 2. ROWVERSION: Um tipo de dado usado para geração automática de números exclusivos dentro de uma tabela, geralmente usado para controle de concorrência.
CREATE TABLE ExemploRowversion (
    Id INT IDENTITY,
    Nome VARCHAR(50),
    Versionamento ROWVERSION
);
-- Inserindo os dados na tabela
INSERT INTO ExemploRowversion (Nome) VALUES ('Produto A'), ('Produto B');
-- Exibindo os dados
SELECT * FROM ExemploRowversion;

-- 3. HIERARCHYID: Um tipo de dado usado para representar hierarquias em uma tabela.
CREATE TABLE ExemploHierarchyid (
    Id HIERARCHYID PRIMARY KEY,
    Nome VARCHAR(50)
);
-- Inserindo os dados na tabela
INSERT INTO ExemploHierarchyid (Id, Nome) VALUES (HIERARCHYID::GetRoot(), 'Raiz');
-- Exibindo os dados
SELECT * FROM ExemploHierarchyid;

-- 4. UNIQUEIDENTIFIER: Um tipo de dado usado para armazenar identificadores únicos (GUIDs).
CREATE TABLE ExemploUniqueidentifier (
    Id UNIQUEIDENTIFIER DEFAULT NEWID(),
    Nome VARCHAR(50)
);
-- Inserindo os dados na tabela
INSERT INTO ExemploUniqueidentifier (Nome) VALUES ('Item A'), ('Item B');
-- Exibindo os dados
SELECT * FROM ExemploUniqueidentifier;

-- 5. SQL_VARIANT: Um tipo de dado que pode armazenar valores de vários tipos de dados, exceto text, ntext, image, timestamp e sql_variant.
CREATE TABLE ExemploSqlVariant (
    DadoVariado SQL_VARIANT
);
-- Inserindo os dados na tabela
INSERT INTO ExemploSqlVariant VALUES (123), ('Texto'), (CONVERT(DATE, '2023-01-01'));
-- Exibindo os dados
SELECT * FROM ExemploSqlVariant;

-- 6. XML: Um tipo de dado usado para armazenar dados XML.
CREATE TABLE ExemploXml (
    DadosXml XML
);
-- Inserindo os dados na tabela
INSERT INTO ExemploXml VALUES ('<raiz><elemento>Conteúdo</elemento></raiz>');
-- Exibindo os dados
SELECT * FROM ExemploXml;

-- Tipos de Geometria Espacial
-- 1. GEOMETRY: Um tipo de dado usado para armazenar dados espaciais 2D, como pontos, linhas e polígonos.
CREATE TABLE ExemploGeometry (
    Forma GEOMETRY
);
-- Inserindo os dados na tabela
INSERT INTO ExemploGeometry VALUES (geometry::STGeomFromText('POINT(0 0)', 0));
-- Exibindo os dados
SELECT * FROM ExemploGeometry;

-- Tipos de Geografia Espacial
-- 1. GEOGRAPHY: Um tipo de dado usado para armazenar dados espaciais geográficos, como pontos, linhas e polígonos em um sistema de coordenadas geográficas.
CREATE TABLE ExemploGeography (
    Localizacao GEOGRAPHY
);
-- Inserindo os dados na tabela
INSERT INTO ExemploGeography VALUES (geography::STGeomFromText('POINT(-122.34900 47.65100)', 4326));
-- Exibindo os dados
SELECT * FROM ExemploGeography;

-- TABLE: Um tipo de dado especial usado para armazenar resultados temporários, semelhante a uma tabela, mas dentro do escopo de uma função ou procedimento armazenado.
-- Não é comum criar uma tabela com uma coluna do tipo TABLE, pois é mais usado em programação procedural.

-- Cada um desses tipos de dados tem suas próprias características e casos de uso específicos.
-- É importante escolher o tipo de dado correto para cada situação para garantir a eficiência e a integridade dos dados.
