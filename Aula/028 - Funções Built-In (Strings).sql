/*

	NomeFunção([Argumentos])

	LEN(Texto Pesquisado)

	LEFT(Texto Pesquisado,Nº de caracteres)

	RIGHT(Texto Pesquisado,Nº de caracteres)

	REPLACE(Texto Pesquisado,Texto Localizado,Texto Substituição)

	CHARINDEX(Texto Pesquisado,Texto Localizado,Posição Inicial)

	SUBSTRING(Texto Pesquisado,Posição Inicial,Nº de Caracteres)

	RTRIM(Texto Pesquisado)

	LTRIM(Texto Pesquisado)

	UPPER(Texto Pesquisado)

	LOWER(Texto Pesquisado)

	REPLICATE(Texto a Repetir,Quantidade de Vezes)

	REVERSE(Texto a ser Invertido)
	
	STRING_SPLIT(Texto a ser separado,Caractere delimitador)

*/

USE SisDep;

SELECT
    NomeFuncionario,
    LEN(NomeFuncionario) AS [N,º de Caracteres],
    idMatricula,
    LEFT(idMatricula, 2) AS [Esquerda],
    RIGHT(idMatricula, 1) AS [Direita],
    REPLACE(idMatricula, '10', '20') AS [Substituir],
    CHARINDEX('silva', NomeFuncionario, 1) AS [Localizar],
    SUBSTRING(NomeFuncionario, 1, CHARINDEX(' ', NomeFuncionario, 1)-1) AS [Primeiro Nome]
FROM Funcionario;

SELECT RTRIM('Impacta    ');

SELECT LTRIM('    Impacta');

SELECT RTRIM(LTRIM('    Impacta    '));

SELECT
    UPPER(NomeFuncionario) AS [Maiúsculas],
    UPPER(NomeFuncionario) AS [Minúsculas]
FROM Funcionario;

SELECT REPLICATE('*', 10);

SELECT REVERSE(SUBSTRING(REVERSE('Funções Built-In String.sql'), 5, 255));

SELECT
    idMatricula,
    NomeFuncionario,
    CONCAT(idMatricula, idDepartamento, idCargo) AS [Concatenar]
    idDepartamento,
    idCargo
FROM Funcionario;