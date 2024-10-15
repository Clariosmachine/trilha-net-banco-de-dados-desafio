--1
SELECT
	Nome,
	Ano
FROM FILMES

--2
SELECT
	Nome,
	Ano,
	Duracao
FROM FILMES
ORDER BY Ano

--3
SELECT
	Nome,
	Ano,
	Duracao
FROM FILMES
WHERE NOME LIKE 'de volta para o futuro'

--4
SELECT
	Nome,
	Ano,
	Duracao
FROM FILMES
WHERE ANO = 1997

--5
SELECT
	Nome,
	Ano,
	Duracao
FROM FILMES
WHERE ANO > 2000

--6
SELECT
	Nome,
	Ano,
	Duracao
FROM FILMES
WHERE Duracao BETWEEN 101 AND 149
ORDER BY Duracao

--7
SELECT
	Ano,
	Count(*) Quantidade
FROM FILMES
Group By Ano
order by Quantidade desc

--8
SELECT 
	ID,
	PrimeiroNome,
	UltimoNome,
	Genero
FROM ATORES
WHERE Genero = 'M'

--9
SELECT 
	ID,
	PrimeiroNome,
	UltimoNome,
	Genero
FROM ATORES
WHERE Genero = 'F'
Order By PrimeiroNome

--10
SELECT
	Filmes.Nome,
	GEN.Genero
FROM FILMES
INNER JOIN FilmesGenero FGEN ON FGEN.IdFilme = FILMES.Id
INNER JOIN Generos GEN ON GEN.Id = FGEN.IdGenero

--11
SELECT
	Filmes.Nome,
	GEN.Genero
FROM FILMES
INNER JOIN FilmesGenero FGEN ON FGEN.IdFilme = FILMES.Id
INNER JOIN Generos GEN ON GEN.Id = FGEN.IdGenero
WHERE GEN.Genero = 'Mistério'

--12
SELECT
	FILMES.Nome,
	Atores.PrimeiroNome,
	Atores.UltimoNome,
	EL.Papel
FROM FILMES
INNER JOIN ElencoFilme EL on EL.IdFilme = Filmes.Id
INNER JOIN Atores ON Atores.Id = EL.IdAtor