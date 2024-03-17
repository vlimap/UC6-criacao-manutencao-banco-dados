-- Aula 7: Manipulação de Datas no SQL Server

-- No SQL Server, você pode usar várias funções para manipular e trabalhar com datas.

-- 1. Obtendo a data e hora atual
SELECT GETDATE() AS DataHoraAtual;

-- 2. Extraindo componentes de uma data
-- Extraindo o ano, mês e dia da data atual
SELECT 
    YEAR(GETDATE()) AS Ano,
    MONTH(GETDATE()) AS Mes,
    DAY(GETDATE()) AS Dia;

-- 3. Adicionando e subtraindo intervalos de tempo
-- Adicionando 10 dias à data atual
SELECT DATEADD(day, 10, GETDATE()) AS DataMais10Dias;

-- Subtraindo 1 mês da data atual
SELECT DATEADD(month, -1, GETDATE()) AS DataMenos1Mes;

-- 4. Calculando a diferença entre duas datas
-- Diferença em dias entre duas datas
SELECT DATEDIFF(day, '2023-01-01', '2023-01-10') AS DiferencaEmDias;

-- 5. Formatando datas
-- Formatar a data atual no formato 'dd/mm/yyyy'
SELECT FORMAT(GETDATE(), 'dd/MM/yyyy') AS DataFormatada;

-- 6. Trabalhando com partes específicas de uma data
-- Primeiro dia do mês atual
SELECT DATEFROMPARTS(YEAR(GETDATE()), MONTH(GETDATE()), 1) AS PrimeiroDiaDoMes;

-- Último dia do mês atual
SELECT EOMONTH(GETDATE()) AS UltimoDiaDoMes;

-- 7. Comparando datas
-- Verificando se uma data é maior que outra
SELECT 
    CASE 
        WHEN '2023-01-01' > '2022-12-31' THEN 'Verdadeiro'
        ELSE 'Falso'
    END AS ComparacaoDeDatas;

-- Nota: As funções de manipulação de datas no SQL Server são bastante abrangentes e permitem realizar uma variedade de operações em datas e horários.
