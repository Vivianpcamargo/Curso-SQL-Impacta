/*

	NomeFunção([Argumentos])

	GETDATE()

	DAY(Data Referência)

	MONTH(Data Referência)

	YEAR(Data Referência)

	EMONTH(Data Referência,Quantidade de meses a adicionar)

	DATEFROMPARTS(Ano,Mês,Dia)

	DATEDIFF(Parte Data,Data Inicial,Data Final)

	DATEADD(Parte Data,valor a ser adicionado,Data Referência)

	DATENAME(Data Referência,Parte Data)

	onde Parte Data poderá ser:

		> YEAR		YYYY
		> QUARTER	Q
		> MONTH		M
		> WEEK		WW
		> DAY		D

*/

SELECT GETDATE();

USE SisDep;

SELECT
    NomeFuncionario, Admissao,
    DAY(Admissao) AS [Dia],
    MONTH(Admissao) AS [Mês],
    YEAR(Admissao) AS [Ano]
FROM Funcionario;

/*
    Retorno admitidos na 1º quinzena de qualquer do
    2º semestre dos seguintes anos (2000, 2003, 2005, 2008, 2010)
*/

SELECT
    NomeFuncionario, Admissao,
    DAY(Admissao) AS [Dia],
    MONTH(Admissao) AS [Mês],
    YEAR(Admissao) AS [Ano]
FROM Funcionario
WHERE
    DAY(Admissao) <= 15 AND MONTH(Admissao) >= 7 AND
    YEAR(Admissao) IN(2000, 2003, 2005, 2008, 2010);

SELECT EOMONTH(GETDATE(), 0);

SELECT EOMONTH(GETDATE(), 1);

SELECT DATEFROMPARTS(2017, 1, 10);

SELECT DATEDIFF(DAY, '1997/6/6', GETDATE()) AS [DIAS];
SELECT DATEDIFF(MONTH, '1997/6/6', GETDATE()) AS [MES];
SELECT DATEDIFF(YEAR, '1997/6/6', GETDATE()) AS [ANOS];
SELECT DATEDIFF(QUARTER, '1997/6/6', GETDATE()) AS [TRIMESTRES];
SELECT DATEDIFF(WEEK, '1997/6/6', GETDATE()) AS [SEMANAS];

SELECT DATEADD(DAY, 65, GETDATE()) AS [DIAS];
SELECT DATEADD(MONTH, 18, GETDATE()) AS [MES];
SELECT DATEADD(YEAR, 5, GETDATE()) AS [ANOS];
SELECT DATEADD(QUARTER, 3, GETDATE()) AS [TRIMESTRES];
SELECT DATEADD(WEEK, 20, GETDATE()) AS [SEMANAS];

SET LANGUAGE 'BRAZILIAN';

SELECT
    NomeFuncionario,
    Admissao,
    DATENAME(WEEKDAY, Admissao) AS [Dia da Semana],
    DATENAME(MONTH, Admissao) AS [Mês],
FROM Funcionario;