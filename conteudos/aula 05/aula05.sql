-- Aula 5: Operadores Aritméticos e Ordem de Precedência no SQL Server
-- Operadores aritméticos são usados para realizar cálculos matemáticos em valores numéricos. 
-- Os principais operadores aritméticos no SQL Server são: + (adição), - (subtração), * (multiplicação), / (divisão) e % (módulo).

-- Criando uma tabela de exemplo
CREATE TABLE Numeros (
    ID INT PRIMARY KEY,
    Valor1 INT,
    Valor2 INT
);

-- Inserindo dados na tabela
INSERT INTO Numeros (ID, Valor1, Valor2) VALUES
(1, 10, 5),
(2, 20, 4),
(3, 15, 3);

-- 1. Adição (+)
-- Soma dois números
SELECT ID, Valor1 + Valor2 AS Soma FROM Numeros;

-- 2. Subtração (-)
-- Subtrai um número de outro
SELECT ID, Valor1 - Valor2 AS Subtracao FROM Numeros;

-- 3. Multiplicação (*)
-- Multiplica dois números
SELECT ID, Valor1 * Valor2 AS Multiplicacao FROM Numeros;

-- 4. Divisão (/)
-- Divide um número por outro
SELECT ID, Valor1 / Valor2 AS Divisao FROM Numeros;

-- 5. Módulo (%)
-- Retorna o resto da divisão de um número por outro
SELECT ID, Valor1 % Valor2 AS Modulo FROM Numeros;

-- Ordem de Precedência dos Operadores
-- No SQL Server, a ordem de precedência dos operadores aritméticos é a seguinte:
-- 1. Parênteses ()
-- 2. Multiplicação (*), Divisão (/), Módulo (%)
-- 3. Adição (+), Subtração (-)

-- Exemplo de Ordem de Precedência
SELECT ID, Valor1 + Valor2 * Valor1 AS ResultadoSemParenteses, (Valor1 + Valor2) * Valor1 AS ResultadoComParenteses FROM Numeros;


-- Operadores Relacionais no SQL Server
-- Operadores relacionais são usados para comparar valores e filtrar resultados em consultas SQL.
-- Os principais operadores relacionais no SQL Server são: = (igual), <> (diferente), > (maior que), < (menor que), >= (maior ou igual), <= (menor ou igual).

-- Criando uma tabela de exemplo
CREATE TABLE Funcionarios (
    ID INT PRIMARY KEY,
    Nome VARCHAR(50),
    Idade INT,
    Salario DECIMAL(10,2)
);

-- Inserindo dados na tabela
INSERT INTO Funcionarios (ID, Nome, Idade, Salario) VALUES
(1, 'Maria', 30, 3000.00),
(2, 'João', 25, 2500.00),
(3, 'Ana', 28, 2800.00);

-- 1. Igual (=)
-- Consultando funcionários com idade igual a 25
SELECT * FROM Funcionarios 
WHERE Idade = 25;

-- 2. Diferente (<>)
-- Consultando funcionários com salário diferente de 3000.00
SELECT * FROM Funcionarios 
WHERE Salario <> 3000.00;

-- 3. Maior que (>)
-- Consultando funcionários com idade maior que 25
SELECT * FROM Funcionarios 
WHERE Idade > 25;

-- 4. Menor que (<)
-- Consultando funcionários com salário menor que 2800.00
SELECT * FROM Funcionarios 
WHERE Salario < 2800.00;

-- 5. Maior ou igual (>=)
-- Consultando funcionários com idade maior ou igual a 28
SELECT * FROM Funcionarios 
WHERE Idade >= 28;

-- 6. Menor ou igual (<=)
-- Consultando funcionários com salário menor ou igual a 2500.00
SELECT * FROM Funcionarios 
WHERE Salario <= 2500.00;

-- Operadores Lógicos no SQL Server
-- Operadores lógicos são usados para combinar ou modificar condições booleanas.
-- Os principais operadores lógicos no SQL Server são: AND, OR, NOT.
-- Exemplo prático com uma tabela
-- Criando uma tabela de funcionários com nome, idade e departamento
CREATE TABLE Funcionarios (
    ID INT PRIMARY KEY,
    Nome VARCHAR(50),
    Idade INT,
    Departamento VARCHAR(50)
);

-- Inserindo dados na tabela
INSERT INTO Funcionarios (ID, Nome, Idade, Departamento) VALUES
(1, 'Maria', 30, 'TI'),
(2, 'João', 25, 'Vendas'),
(3, 'Ana', 28, 'TI'),
(4, 'Pedro', 32, 'Vendas');

-- 1. AND (E lógico)
-- Seleciona funcionários do departamento de TI com idade maior que 25
SELECT * FROM Funcionarios 
WHERE Departamento = 'TI' AND Idade > 25;

-- 2. OR (OU lógico)
-- Seleciona funcionários do departamento de TI ou com idade menor que 30
SELECT * FROM Funcionarios 
WHERE Departamento = 'TI' OR Idade < 30;

-- 3. NOT (NÃO lógico)
-- Seleciona funcionários que não são do departamento de Vendas
SELECT * FROM Funcionarios 
WHERE NOT Departamento = 'Vendas';

-- Combinação de operadores lógicos
-- Seleciona funcionários do departamento de TI com idade maior que 25 ou funcionários do departamento de Vendas com idade menor que 30
SELECT * FROM Funcionarios 
WHERE (Departamento = 'TI' AND Idade > 25) OR (Departamento = 'Vendas' AND Idade < 30);

-- Nota: Os operadores lógicos são frequentemente usados em cláusulas WHERE para combinar ou modificar condições de filtragem.
