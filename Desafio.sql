--1
SELECT
	Nome, Ano
FROM
	Filmes

--2
SELECT
	Nome, Ano, Duracao
FROM
	Filmes
ORDER BY Ano

--3
SELECT
	Nome, Ano, Duracao
FROM
	Filmes
WHERE
	Filmes.Nome = 'De Volta para o Futuro'

--4
SELECT
	*
FROM
	Filmes
WHERE
	Filmes.Ano = 1997


--5
SELECT
	*
FROM
	Filmes
WHERE
	Filmes.Ano > 2000


--6 opt 1
SELECT
	*
FROM
	Filmes
WHERE
	Filmes.Duracao > 100 AND
	Filmes.Duracao < 150
ORDER BY Duracao

--6 opt 2
SELECT
	*
FROM
	Filmes
WHERE
	Filmes.Duracao BETWEEN 101 AND 149
ORDER BY Duracao

--7
SELECT
	Ano,
	COUNT(*) AS Quantidade
FROM
	Filmes
GROUP BY
	Ano
ORDER BY
	Quantidade DESC

--8
SELECT
	*
FROM
	Atores
WHERE
	Atores.Genero = 'M'

--9
SELECT
	*
FROM
	Atores
WHERE
	Atores.Genero = 'F'
ORDER BY
	Atores.PrimeiroNome

--10
SELECT
	f.Nome,
	g.Genero
FROM
	Filmes f
INNER JOIN
	FilmesGenero fg ON fg.IdFilme = f.Id
INNER JOIN
	Generos g ON fg.IdGenero = g.Id

--11
SELECT
	f.Nome,
	g.Genero
FROM
	Filmes f
INNER JOIN
	FilmesGenero fg ON fg.IdFilme = f.Id
INNER JOIN
	Generos g ON fg.IdGenero = g.Id
WHERE 
	g.Genero = 'Mistério'


--12
SELECT
	f.Nome,
	a.PrimeiroNome,
	a.UltimoNome,
	ef.Papel
FROM
	Filmes f
INNER JOIN
	ElencoFilme ef ON ef.IdFilme = f.Id
INNER JOIN 
	Atores a ON a.Id = ef.IdAtor
