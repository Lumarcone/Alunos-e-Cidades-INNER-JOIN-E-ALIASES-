
--Criação da tabela Cidades
CREATE TABLE Cidades (
id INT PRIMARY KEY AUTO_INCREMENT, -- Identificador único da cidade
nome VARCHAR(60) NOT NULL, 
populacao INT 
);

-- Criação da tabela Alunos
CREATE TABLE Alunos (
id INT PRIMARY KEY AUTO_INCREMENT, 
nome VARCHAR(60) NOT NULL, 
data_nasc DATE, 
cidade_id INT, -- Chave estrangeira que referencia o id na tabela Cidades
FOREIGN KEY (cidade_id) REFERENCES Cidades(id) -- Restrição de chave estrangeira
);
-- Inserindo os dados na tabela Cidades
INSERT INTO Cidades VALUES (1, 'Arraial dos Tucanos', 42632);
INSERT INTO Cidades VALUES (2, 'Springfield', 13820);
INSERT INTO Cidades VALUES (3, 'Hill Valley', 27383);
INSERT INTO Cidades VALUES (4, 'Coruscant', 19138);
INSERT INTO Cidades VALUES (5, 'Minas Tirith', 31394);



-- inserido os dados na tabela Alunos
INSERT INTO Alunos VALUES (1, 'Immanuel Kant', '1724-04-22', 1);
INSERT INTO Alunos VALUES (2, 'Alan Turing', '1912-06-23', 3);
INSERT INTO Alunos VALUES (3, 'George Boole', '2002-01-01', 1);
INSERT INTO Alunos VALUES (4, 'Lynn Margulis', '1991-08-12', 3);
INSERT INTO Alunos VALUES (5, 'Nicola Tesla', '2090-01-08', NULL);
INSERT INTO Alunos VALUES (6, 'Ada Lovelace', '1978-05-12', 2);
INSERT INTO Alunos VALUES (7, 'Claude Shannon', '1982-10-15', 3);
INSERT INTO Alunos VALUES (8, 'Charles Darwin', '2010-02-06', NULL);
INSERT INTO Alunos VALUES (9, 'Marie Curie', '2007-07-12', 3);
INSERT INTO Alunos VALUES (10, 'Carl Sagan', '2000-11-20', 1);
INSERT INTO Alunos VALUES (11, 'Tim Berners-Lee', '1973-12-25', 2);

-- Consulta usando INNER JOIN para combinação dos dados da tabela Cidades e Alunos
SELECT *
FROM alunos inner
join cidades
on cidade_id = alunos.cidade_id;


