/*

	NomeFunção([Argumentos])

	CAST(Valor Referência AS Tipo de Dado)

	CONVERT(Tipo de Dado,Valor Referência,Estilo)

	Onde Estilo será aplicado para datas e possui códigos de 1 a 14 (Ano Sem Século)

	e 101 1 114 (Ano Com Século)

	FORMAT(Valor Referência,Formato,Cultura/País)

	EX:

	Format(Campo Monetário,'C','en-us')
	Format(Campo Monetário,'C','pt-br')

	Format(Campo Data,'d','pt-br')
	Format(Campo Data,'D','pt-br')
	Format(Campo Data,'dd - mm - yyyy','pt-br')

*/

USE SisDep;

SELECT
    NomeFuncionario,
    CAST(Admissao AS date) AS [Admissão]
FROM Funcionario;

EXEC sp_help Funcionario;

SELECT "Média Final: " + CAST(6,5 AS VARCHAR);

SELECT
    NomeFuncionario,
    CONVERT(VARCHAR, Admissao, 1) [CÓDIGO 1],
    CONVERT(VARCHAR, Admissao, 2) [CÓDIGO 2],
    CONVERT(VARCHAR, Admissao, 3) [CÓDIGO 3],
    CONVERT(VARCHAR, Admissao, 101) [CÓDIGO 101],
    CONVERT(VARCHAR, Admissao, 102) [CÓDIGO 102],
    CONVERT(VARCHAR, Admissao, 103) [CÓDIGO 103]
FROM Funcionario;

SELECT
    NomeFuncionario,
    FORMAT(Salario, 'C', 'EN-US') AS [Formato Dolar],
    FORMAT(Salario, 'C', 'PT-BR') AS [Formato Real],
    FORMAT(Admissao, 'd', 'PT-BR') AS [Formato Data 1],
    FORMAT(Admissao, 'D', 'PT-BR') AS [Formato Data 2],
    FORMAT(Admissao, 'dd - mm - yyyy', 'PT-BR') AS [Formato Data 3]
FROM Funcionario;