
# Guia de Tipos de Dados no SQL Server

Este guia tem como objetivo fornecer uma visão detalhada dos tipos de dados disponíveis no SQL Server, explicando suas diferenças, usos, vantagens, desvantagens e o espaço que ocupam no banco de dados.

## BigInt

- **Descrição:** Usado para armazenar números inteiros muito grandes.
- **Tamanho:** 8 bytes.
- **Faixa de valores:** -9,223,372,036,854,775,808 a 9,223,372,036,854,775,807.
- **Exemplo de uso:** Armazenar a população mundial ou contagens muito altas de objetos.
- **Vantagens:** Capaz de armazenar valores inteiros muito grandes.
- **Desvantagens:** Ocupa mais espaço do que os tipos `INT` e `SMALLINT` quando os valores grandes não são necessários.

## Numeric

- **Descrição:** Usado para armazenar números com precisão fixa e escala.
- **Tamanho:** 5 a 17 bytes, dependendo da precisão.
- **Faixa de valores:** Dependente da precisão e escala definidas pelo usuário.
- **Exemplo de uso:** Cálculos financeiros que requerem precisão, como taxas de juros ou saldos de contas.
- **Vantagens:** Precisão e escala definíveis pelo usuário.
- **Desvantagens:** Ocupa mais espaço em comparação com tipos inteiros para armazenar números inteiros.

## Bit

- **Descrição:** Usado para armazenar valores booleanos (0 ou 1).
- **Tamanho:** 1 bit.
- **Faixa de valores:** 0 ou 1.
- **Exemplo de uso:** Armazenar valores de verdadeiro/falso, como se um usuário está ativo ou inativo.
- **Vantagens:** Ocupa muito pouco espaço.
- **Desvantagens:** Limitado a dois valores.

## SmallInt

- **Descrição:** Usado para armazenar números inteiros menores.
- **Tamanho:** 2 bytes.
- **Faixa de valores:** -32,768 a 32,767.
- **Exemplo de uso:** Contar itens quando o número total é conhecido por ser pequeno.
- **Vantagens:** Menor uso de espaço do que `INT` e `BIGINT` para pequenas faixas de valores.
- **Desvantagens:** Limitação na faixa de valores que pode representar.

## Decimal

- **Descrição:** Semelhante ao `NUMERIC`, usado para precisão fixa e escala.
- **Tamanho:** 5 a 17 bytes, dependendo da precisão.
- **Faixa de valores:** Dependente da precisão e escala definidas pelo usuário.
- **Exemplo de uso:** Cálculos financeiros precisos.
- **Vantagens:** Permite precisão e escala definíveis pelo usuário.
- **Desvantagens:** Pode ocupar mais espaço do que necessário para números inteiros.

## SmallMoney

- **Descrição:** Usado para valores monetários menores.
- **Tamanho:** 4 bytes.
- **Faixa de valores:** -214,748.3648 a 214,748.3647.
- **Exemplo de uso:** Armazenar valores monetários que não excedam o limite máximo.
- **Vantagens:** Menos espaço do que `MONEY` e precisão adequada para valores monetários.
- **Desvantagens:** Limitação na faixa de valores que pode representar.

## Int

- **Descrição:** Usado para armazenar números inteiros.
- **Tamanho:** 4 bytes.
- **Faixa de valores:** -2,147,483,648 a 2,147,483,647.
- **Exemplo de uso:** Contar itens, como o número de usuários em um sistema.
- **Vantagens:** Bom equilíbrio entre faixa de valores e uso de espaço.
- **Desvantagens:** Pode ser limitado para contagens extremamente altas.

## TinyInt

- **Descrição:** Usado para armazenar números inteiros muito pequenos.
- **Tamanho:** 1 byte.
- **Faixa de valores:** 0 a 255.
- **Exemplo de uso:** Armazenar valores pequenos, como a quantidade de dias da semana.
- **Vantagens:** Muito eficiente em termos de espaço.
- **Desvantagens:** Muito limitado em termos de faixa de valores.

## Money

- **Descrição:** Usado para valores monetários.
- **Tamanho:** 8 bytes.
- **Faixa de valores:** -922,337,203,685,477.5808 a 922,337,203,685,477.5807.
- **Exemplo de uso:** Armazenar preços, custos e outros valores monetários.
- **Vantagens:** Alta faixa de valores para representar quantias monetárias.
- **Desvantagens:** Mais espaço do que `SMALLMONEY` para valores menores.

---

Quando escolher um tipo numérico exato, considere a faixa de valores que você precisa representar e o espaço que cada valor ocupa no banco de dados. Para valores monetários, `MONEY` e `SMALLMONEY` são opções convenientes, enquanto para contagens e valores inteiros, a escolha entre `INT`, `SMALLINT`, `TINYINT`, e `BIGINT` dependerá do tamanho esperado dos dados. `NUMERIC` e `DECIMAL` são ideais para casos que requerem precisão decimal específica.

---

## FLOAT

- **Descrição:** Usado para armazenar números de ponto flutuante de precisão dupla.
- **Tamanho:** Pode variar de 4 a 8 bytes, dependendo da precisão (de 1 a 53 bits de precisão).
- **Faixa de valores:** A faixa de valores varia significativamente com a precisão; em sua máxima precisão, pode variar de aproximadamente -1.79E+308 a 1.79E+308.
- **Exemplo de uso:** Cálculos científicos que requerem uma alta precisão e uma grande faixa de valores.
- **Vantagens:** Capacidade de representar uma ampla faixa de valores com precisão.
- **Desvantagens:** Pode introduzir erros de arredondamento em cálculos devido à sua natureza de precisão aproximada.

## REAL

- **Descrição:** Usado para armazenar números de ponto flutuante de precisão simples.
- **Tamanho:** 4 bytes.
- **Faixa de valores:** Aproximadamente de -3.4E+38 a 3.4E+38.
- **Exemplo de uso:** Cálculos que necessitam de uma faixa de valores larga, mas que podem tolerar alguma imprecisão.
- **Vantagens:** Menos espaço de armazenamento do que o `FLOAT` e ainda capaz de representar uma faixa de valores relativamente grande.
- **Desvantagens:** Menos precisão do que o tipo `FLOAT`, podendo resultar em maior imprecisão em cálculos.

---

Ao escolher entre `FLOAT` e `REAL`, considere a precisão necessária para seus cálculos e o espaço de armazenamento disponível. `FLOAT` é mais adequado para casos em que a precisão é crítica e uma ampla faixa de valores é necessária. `REAL`, por outro lado, oferece uma boa compromisso entre precisão e economia de espaço para muitas aplicações.

---


## DATE

- **Descrição:** Armazena apenas a data, sem informações de hora.
- **Formato:** YYYY-MM-DD
- **Faixa de valores:** De 0001-01-01 a 9999-12-31
- **Exemplo de uso:** `CAST('2023-03-15' AS DATE)`
- **Vantagens:** Útil para armazenar datas onde os detalhes da hora não são necessários.
- **Desvantagens:** Limitado a informações de data.

## DATETIMEOFFSET

- **Descrição:** Armazena data e hora com informações de fuso horário.
- **Formato:** YYYY-MM-DD hh:mm:ss[.nnnnnnn] [+|-]hh:mm
- **Faixa de valores:** De 0001-01-01 através de 9999-12-31
- **Exemplo de uso:** `CAST('2023-03-15 12:45:30 -07:00' AS DATETIMEOFFSET)`
- **Vantagens:** Permite armazenar a data e a hora com precisão de fuso horário, útil para aplicações globais.
- **Desvantagens:** Mais complexo e utiliza mais espaço de armazenamento do que outros tipos de data/hora.

## DATETIME2

- **Descrição:** Uma extensão do tipo DATETIME que permite uma maior faixa de datas e uma precisão fracional de tempo opcional.
- **Formato:** YYYY-MM-DD hh:mm:ss[.nnnnnnn]
- **Faixa de valores:** De 0001-01-01 a 9999-12-31
- **Exemplo de uso:** `CAST('2023-03-15 12:45:30.1234567' AS DATETIME2)`
- **Vantagens:** Maior precisão e faixa de datas do que DATETIME.
- **Desvantagens:** Pode ocupar mais espaço de armazenamento, dependendo da precisão especificada.

## SMALLDATETIME

- **Descrição:** Armazena data e hora com precisão de minutos.
- **Formato:** YYYY-MM-DD hh:mm:ss
- **Faixa de valores:** De 1900-01-01 a 2079-06-06
- **Exemplo de uso:** `CAST('2023-03-15 12:45:00' AS SMALLDATETIME)`
- **Vantagens:** Menor espaço de armazenamento necessário em comparação com DATETIME.
- **Desvantagens:** Menos precisão e uma faixa de datas mais limitada.

## DATETIME

- **Descrição:** Armazena data e hora com precisão de segundos.
- **Formato:** YYYY-MM-DD hh:mm:ss[.nnn]
- **Faixa de valores:** De 1753-01-01 a 9999-12-31
- **Exemplo de uso:** `CAST('2023-03-15 12:45:30.123' AS DATETIME)`
- **Vantagens:** Um equilíbrio entre precisão e armazenamento.
- **Desvantagens:** Menos precisão do que DATETIME2 e não armazena informações de fuso horário.

## TIME

- **Descrição:** Armazena apenas a hora, sem data.
- **Formato:** hh:mm:ss[.nnnnnnn]
- **Faixa de valores:** 00:00:00.0000000 a 23:59:59.9999999
- **Exemplo de uso:** `CAST('12:45:30.1234567' AS TIME)`
- **Vantagens:** Útil para armazenar apenas a hora quando a data não é necessária.
- **Desvantagens:** Não inclui informações de data.

---

Escolher o tipo de data e hora correto é crucial para a eficiência do armazenamento de dados e precisão de cálculos de tempo. Considere as necessidades específicas de sua aplicação, como a necessidade de precisão de fuso horário ou faixa de datas, ao decidir qual tipo usar.

---


## Cadeias de Caracteres

### CHAR

- **Descrição:** Armazena cadeias de caracteres de tamanho fixo.
- **Tamanho:** De 1 a 8.000 caracteres.
- **Exemplo de uso:** `CHAR(10)` poderia armazenar 'SQLServer'.
- **Vantagens:** Performance rápida para dados de tamanho fixo.
- **Desvantagens:** Espaço desperdiçado se a cadeia de caracteres for menor que o tamanho definido.

### VARCHAR

- **Descrição:** Armazena cadeias de caracteres de tamanho variável.
- **Tamanho:** De 1 a 8.000 caracteres.
- **Exemplo de uso:** `VARCHAR(255)` poderia armazenar endereços de email.
- **Vantagens:** Utiliza espaço de armazenamento de forma eficiente, armazenando apenas os caracteres usados.
- **Desvantagens:** Pode ter performance ligeiramente menor que CHAR para cadeias de tamanho fixo.

### TEXT

- **Descrição:** Usado para armazenar grandes volumes de texto.
- **Tamanho:** Até 2^31-1 (2,147,483,647) caracteres.
- **Exemplo de uso:** Armazenar artigos ou documentos longos.
- **Vantagens:** Capacidade de armazenar grandes quantidades de texto.
- **Desvantagens:** Descontinuado em versões recentes do SQL Server. Recomenda-se usar VARCHAR(MAX).

## Cadeias de Caracteres Unicode

### NCHAR

- **Descrição:** Armazena cadeias de caracteres Unicode de tamanho fixo.
- **Tamanho:** De 1 a 4.000 caracteres.
- **Exemplo de uso:** `NCHAR(10)` pode armazenar caracteres de diferentes idiomas.
- **Vantagens:** Suporta uma ampla gama de caracteres internacionais.
- **Desvantagens:** Ocupa mais espaço do que CHAR, pois cada caractere usa 2 bytes.

### NVARCHAR

- **Descrição:** Armazena cadeias de caracteres Unicode de tamanho variável.
- **Tamanho:** De 1 a 4.000 caracteres. NVARCHAR(MAX) pode armazenar até aproximadamente 2^31-1 caracteres.
- **Exemplo de uso:** `NVARCHAR(255)` para armazenar nomes em diferentes idiomas.
- **Vantagens:** Flexibilidade para armazenar texto em qualquer idioma com eficiência de espaço.
- **Desvantagens:** Usa mais espaço do que VARCHAR, pois armazena caracteres em Unicode.

### NTEXT

- **Descrição:** Armazena grandes volumes de texto Unicode.
- **Tamanho:** Até 2^31-1 (2,147,483,647) caracteres.
- **Exemplo de uso:** Armazenar textos longos em diferentes idiomas.
- **Vantagens:** Capacidade de armazenar grandes quantidades de texto Unicode.
- **Desvantagens:** Descontinuado em versões recentes do SQL Server. Recomenda-se usar NVARCHAR(MAX).

---

Ao escolher entre estes tipos de dados, considere o tamanho esperado dos seus dados de texto e se você precisa de suporte para caracteres Unicode. Para textos em inglês simples, `CHAR` e `VARCHAR` podem ser mais eficientes. Para idiomas que requerem caracteres especiais ou se você estiver trabalhando com um sistema global, `NCHAR` e `NVARCHAR` serão mais adequados.

---


## BINARY

- **Descrição:** Armazena dados binários de tamanho fixo.
- **Tamanho:** De 1 a 8.000 bytes.
- **Exemplo de uso:** `BINARY(256)` pode ser usado para armazenar uma hash SHA-256.
- **Vantagens:** Útil para armazenar dados binários que têm um tamanho exato conhecido.
- **Desvantagens:** Espaço desperdiçado se os dados binários forem menores que o tamanho definido.

## VARBINARY

- **Descrição:** Armazena dados binários de tamanho variável.
- **Tamanho:** De 1 a 8.000 bytes. `VARBINARY(MAX)` pode armazenar até 2^31-1 bytes.
- **Exemplo de uso:** `VARBINARY(MAX)` pode ser usado para armazenar arquivos de tamanho variável, como imagens ou documentos PDF.
- **Vantagens:** Flexível, pois ajusta o espaço utilizado ao tamanho real dos dados armazenados.
- **Desvantagens:** Pode ter uma sobrecarga ligeiramente maior em comparação com `BINARY` para gerenciar o tamanho variável.

## IMAGE

- **Descrição:** Destinado ao armazenamento de grandes objetos binários, como imagens ou arquivos não textuais.
- **Tamanho:** Até 2^31-1 (2,147,483,647) bytes.
- **Exemplo de uso:** Anteriormente usado para armazenar arquivos grandes, como fotos ou PDFs.
- **Vantagens:** Capacidade de armazenar grandes quantidades de dados binários.
- **Desvantagens:** Descontinuado em versões mais recentes do SQL Server. Recomenda-se usar `VARBINARY(MAX)`.

---

Quando trabalhar com dados binários no SQL Server, escolher entre `BINARY` e `VARBINARY` dependerá principalmente do tamanho e da variabilidade dos seus dados. `BINARY` é mais adequado para dados de tamanho fixo, enquanto `VARBINARY` oferece maior flexibilidade para dados de tamanho variável. O tipo `IMAGE` foi descontinuado e deve ser evitado em novos desenvolvimentos, preferindo-se `VARBINARY(MAX)` para armazenamento de grandes objetos binários.

---


## UNIQUEIDENTIFIER

- **Descrição:** Usado para armazenar identificadores globais únicos (GUIDs).
- **Tamanho:** 16 bytes.
- **Exemplo de uso:** `NEWID()` gera um valor único que pode ser usado como chave primária.
- **Vantagens:** Útil para garantir a unicidade em diferentes bancos de dados ou tabelas.
- **Desvantagens:** Maior do que os tipos de dados inteiros, o que pode afetar o desempenho.

## XML

- **Descrição:** Armazena dados no formato XML.
- **Tamanho:** Até 2GB por instância.
- **Exemplo de uso:** Armazenar documentos XML ou configurar dados de aplicativos.
- **Vantagens:** Permite armazenar e consultar dados estruturados como XML diretamente no banco de dados.
- **Desvantagens:** Pode ser mais complexo de consultar e manipular do que outros tipos de dados.

## SQL_VARIANT

- **Descrição:** Pode armazenar valores de vários tipos de dados, exceto text, ntext, image, timestamp, e sql_variant.
- **Tamanho:** Varia de acordo com o tipo de dado armazenado.
- **Exemplo de uso:** Armazenar valores de tipos de dados diferentes em uma única coluna.
- **Vantagens:** Flexível, pois pode armazenar diferentes tipos de dados.
- **Desvantagens:** Restrições em funções de agregação e indexação, e pode aumentar a complexidade da consulta.

## GEOMETRY, GEOGRAPHY

- **Descrição:** Usado para armazenar dados espaciais, como pontos, linhas, polígonos.
- **Exemplo de uso:** Armazenar coordenadas de localização ou formas de objetos geográficos.
- **Vantagens:** Permite o armazenamento e a consulta de dados espaciais para análise geográfica.
- **Desvantagens:** Requer conhecimento específico para manipulação e consulta de dados espaciais.

## HIERARCHYID

- **Descrição:** Representa a posição de um elemento dentro de uma hierarquia.
- **Exemplo de uso:** Armazenar estruturas hierárquicas, como árvores de categorias ou organogramas.
- **Vantagens:** Facilita o trabalho com dados hierárquicos e a realização de consultas relacionadas à hierarquia.
- **Desvantagens:** Pode ser complexo de entender e usar corretamente sem conhecimento adequado.

---

Esses tipos de dados oferecem funcionalidades especializadas para lidar com casos de uso específicos, desde o armazenamento de identificadores únicos até o trabalho com dados espaciais e hierárquicos. Escolha o tipo de dado apropriado com base nas necessidades específicas do seu projeto e no tipo de dados que você precisa armazenar e consultar.

---

# Tutorial SQL Server: Comandos 

- **DDL (Data Definition Language)**

- **DML (Data Manipulation Language)**

- **DCL (Data Control Language)**

## Introdução

- **DDL (Data Definition Language)**
Este tutorial aborda os comandos DDL (Data Definition Language) no SQL Server, que são utilizados para definir e modificar a estrutura de dados no banco de dados. DDL inclui comandos como `CREATE`, `ALTER`, `DROP`, entre outros, que permitem criar e alterar tabelas, índices, procedimentos armazenados e outros objetos do banco de dados. Vamos explorar cada um desses comandos com exemplos práticos.

## CREATE TABLE

Utilizado para criar uma nova tabela no banco de dados.

### Exemplo:

```sql
CREATE TABLE Funcionarios (
    FuncionarioID INT PRIMARY KEY,
    Nome NVARCHAR(100),
    Cargo NVARCHAR(50),
    DataContratacao DATETIME
);
```

Este comando cria uma tabela chamada `Funcionarios` com quatro colunas: `FuncionarioID`, `Nome`, `Cargo`, e `DataContratacao`.

## ALTER TABLE

Modifica a estrutura de uma tabela existente, como adicionar ou remover colunas, mudar o tipo de uma coluna, etc.

### Exemplo:

```sql
ALTER TABLE Funcionarios
ADD Email NVARCHAR(255);
```

Este comando adiciona uma nova coluna chamada `Email` à tabela `Funcionarios`.

## DROP TABLE

Remove uma tabela e todos os seus dados do banco de dados.

### Exemplo:

```sql
DROP TABLE Funcionarios;
```

Este comando remove a tabela `Funcionarios` do banco de dados.

## CREATE INDEX

Cria um índice para uma ou mais colunas de uma tabela, melhorando a velocidade de consultas baseadas nessas colunas.

### Exemplo:

```sql
CREATE INDEX idx_nome
ON Funcionarios (Nome);
```

Este comando cria um índice chamado `idx_nome` para a coluna `Nome` na tabela `Funcionarios`.

## DROP INDEX

Remove um índice de uma tabela.

### Exemplo:

```sql
DROP INDEX Funcionarios.idx_nome;
```

Este comando remove o índice `idx_nome` da tabela `Funcionarios`.

## CREATE VIEW

Cria uma visão, que é um objeto de banco de dados que contém o resultado de uma consulta. As visões podem simplificar o acesso aos dados ou proteger dados sensíveis.

### Exemplo:

```sql
CREATE VIEW VistaFuncionarios
AS
SELECT Nome, Cargo
FROM Funcionarios
WHERE Cargo = 'Gerente';
```

Este comando cria uma visão chamada `VistaFuncionarios` que contém os nomes e cargos dos funcionários que são gerentes.

## ALTER VIEW

Modifica a definição de uma visão existente.

### Exemplo:

```sql
ALTER VIEW VistaFuncionarios
AS
SELECT Nome, Cargo, Email
FROM Funcionarios
WHERE Cargo = 'Gerente';
```

Este comando atualiza a visão `VistaFuncionarios` para incluir também o email dos gerentes.

## DROP VIEW

Remove uma visão do banco de dados.

### Exemplo:

```sql
DROP VIEW VistaFuncionarios;
```

Este comando remove a visão `VistaFuncionarios` do banco de dados.

