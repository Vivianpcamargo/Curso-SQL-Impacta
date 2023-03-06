-- Tabela Temporária Local (CREATE TABLE)

CREATE TABLE #Clientes
(
    id int,
    nomeCliente varchar(50),
    cadastro date
);

SELECT * FROM #Clientes;

INSERT INTO #Clientes
VALUES
(1, 'Hélio', '2017/1/5');
(2, 'Nícolas', '2017/1/10');

-- Criando Tabela Temporária Local (modo insert into)

USE SisDep;

SELECT * INTO
#Pesquisa1
FROM Funcionario;

SELECT * FROM #Pesquisa1;

-- Filtros
SELECT * FROM #Pesquisa1
WHERE Mes = 'agosto';

-- Atualizações
UPDATE #Pesquisa1
SET Vendedor = 'Hélio'
WHERE Pedido = 21794;

-- Criando Tabela Temporária Global (modo insert into)
SELECT * INTO
##Pesquisa2
FROM Funcionario
WHERE salario >= 3000;
