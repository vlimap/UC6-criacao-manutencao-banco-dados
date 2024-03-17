-- Aula 03: Chaves Primárias e Chaves Estrangeiras no SQL Server

-- Chave Primária (Primary Key)
-- Uma chave primária é um conjunto de uma ou mais colunas cujos valores identificam de forma única cada linha em uma tabela.
-- Uma tabela pode ter apenas uma chave primária.
-- Os valores na chave primária devem ser únicos e não podem ser nulos.

-- Exemplo de criação de tabela com chave primária:
CREATE TABLE Departamento (
    IdDepartamento INT PRIMARY KEY, -- Definindo a coluna IdDepartamento como chave primária
    Nome VARCHAR(50)
);

-- Chave Estrangeira (Foreign Key)
-- Uma chave estrangeira é um conjunto de uma ou mais colunas em uma tabela que faz referência à chave primária ou a uma chave única em outra tabela.
-- Uma chave estrangeira garante a integridade referencial, que é a consistência entre as relações de tabelas.

-- Exemplo de criação de tabela com chave estrangeira:
CREATE TABLE Funcionario (
    IdFuncionario INT PRIMARY KEY, -- Definindo a coluna IdFuncionario como chave primária
    Nome VARCHAR(50),
    IdDepartamento INT, -- Coluna que fará referência à chave primária da tabela Departamento
    FOREIGN KEY (IdDepartamento) REFERENCES Departamento(IdDepartamento) -- Definindo a coluna IdDepartamento como chave estrangeira
);

-- Inserindo dados de exemplo nas tabelas
INSERT INTO Departamento (IdDepartamento, Nome) VALUES (1, 'TI'), (2, 'Recursos Humanos');
INSERT INTO Funcionario (IdFuncionario, Nome, IdDepartamento) VALUES (1, 'Maria', 1), (2, 'João', 2);

-- Consultando os dados
SELECT * FROM Departamento;
SELECT * FROM Funcionario;

-- A chave estrangeira IdDepartamento em Funcionario faz referência à chave primária IdDepartamento em Departamento.
-- Isso significa que cada funcionário está associado a um departamento.
-- A integridade referencial é mantida, pois não podemos inserir um funcionário com um IdDepartamento que não exista na tabela Departamento.

-- Chaves primárias e chaves estrangeiras são fundamentais para o design de banco de dados relacional.
-- Elas ajudam a garantir a integridade dos dados e a definir relações entre tabelas.

-- Cardinalidades em sql server

-- As cardinalidades de relacionamento definem o número de instâncias que uma entidade pode ter em relação a outra entidade.
-- Vamos explorar as cardinalidades comuns e como implementá-las no SQL Server.

-- (0,1)......(0,1)
-- Um para Um Opcional (1:1 opcional)
-- Neste relacionamento, uma instância de uma entidade pode estar associada a no máximo uma instância da outra entidade e vice-versa, mas a associação não é obrigatória.
CREATE TABLE Pessoa (
    IdPessoa INT PRIMARY KEY,
    Nome VARCHAR(50)
);
CREATE TABLE DetalhesPessoa (
    IdDetalhes INT PRIMARY KEY,
    IdPessoa INT UNIQUE NULL, -- Chave estrangeira opcional (pode ser NULL)
    DataNascimento DATE,
    FOREIGN KEY (IdPessoa) REFERENCES Pessoa(IdPessoa)
);

-- (1,1)......(0,n)
-- Um para Muitos Obrigatório para Opcional (1:N obrigatório para opcional)
-- Neste relacionamento, uma instância de uma entidade deve estar associada a pelo menos uma instância da outra entidade, mas a associação inversa não é obrigatória.
CREATE TABLE Departamento (
    IdDepartamento INT PRIMARY KEY,
    Nome VARCHAR(50)
);
CREATE TABLE Funcionario (
    IdFuncionario INT PRIMARY KEY,
    Nome VARCHAR(50),
    IdDepartamento INT, -- Chave estrangeira opcional (pode ser NULL)
    FOREIGN KEY (IdDepartamento) REFERENCES Departamento(IdDepartamento)
);

-- (1,n)......(1,n)
-- Muitos para Muitos (N:N)
-- Neste relacionamento, uma instância de uma entidade pode estar associada a várias instâncias da outra entidade e vice-versa.
CREATE TABLE Projeto (
    IdProjeto INT PRIMARY KEY,
    NomeProjeto VARCHAR(50)
);
CREATE TABLE ParticipacaoProjeto (
    IdFuncionario INT,
    IdProjeto INT,
    PRIMARY KEY (IdFuncionario, IdProjeto),
    FOREIGN KEY (IdFuncionario) REFERENCES Funcionario(IdFuncionario),
    FOREIGN KEY (IdProjeto) REFERENCES Projeto(IdProjeto)
);

-- (0,n)......(0,n)
-- Muitos para Muitos Opcional (N:N opcional)
-- Neste relacionamento, uma instância de uma entidade pode estar associada a várias instâncias da outra entidade, mas a associação não é obrigatória.
-- A implementação é semelhante ao N:N, mas permitindo valores NULL nas chaves estrangeiras na tabela de associação.

-- (1,1)......(1,1)
-- Um para Um Obrigatório (1:1 obrigatório)
-- Neste relacionamento, uma instância de uma entidade deve estar associada a exatamente uma instância da outra entidade e vice-versa.
CREATE TABLE Usuario (
    IdUsuario INT PRIMARY KEY,
    NomeUsuario VARCHAR(50)
);
CREATE TABLE ContaUsuario (
    IdConta INT PRIMARY KEY,
    IdUsuario INT NOT NULL UNIQUE, -- Chave estrangeira obrigatória e única
    Saldo DECIMAL(10, 2),
    FOREIGN KEY (IdUsuario) REFERENCES Usuario(IdUsuario)
);

-- Cada cardinalidade de relacionamento tem suas próprias regras e restrições.
-- A escolha da cardinalidade correta é crucial para garantir a integridade e a precisão dos dados no design do banco de dados relacional.
