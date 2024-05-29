--1
SELECT 
	Nome,
	Ano
FROM Filmes

--2
SELECT 
	Nome,
	Ano
FROM Filmes
ORDER BY Ano ASC

--3
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Nome = 'De volta para o Futuro'

--4
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano = '1997'

--5
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano >= '2000'

--6
SELECT 
	Nome,
	Ano, 
	Duracao
FROM Filmes
WHERE Duracao >= 100 AND Duracao <= 150
ORDER BY Duracao ASC

--7
SELECT 
	Ano,
COUNT(*) AS Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY SUM(Duracao) DESC

--8
SELECT 
	PrimeiroNome,
	UltimoNome,
	Genero
FROM Atores
WHERE Genero = 'M' 

--9
SELECT
	PrimeiroNome,
	UltimoNome,
	Genero
FROM Atores
WHERE Genero = 'F'

--10
SELECT 
	f.Nome AS Filme,
	g.Genero AS Genero
FROM Filmes f
JOIN FilmesGenero fg ON f.Id = fg.IdFilme
JOIN Generos g ON fg.IdGenero = g.Id

--11
SELECT 
	f.Nome AS Filme, 
	g.Genero AS Genero
FROM Filmes f
JOIN FilmesGenero fg ON f.Id = fg.IdFilme
JOIN Generos g ON fg.IdGenero = g.Id
WHERE g.Genero = 'Mistério'

--12
SELECT 
	F.Nome, A.PrimeiroNome, A.UltimoNome, EF.Papel 
FROM Filmes F 
JOIN ElencoFilme EF ON EF.IdFilme = F.Id 
JOIN Atores A ON EF.IdAtor = A.Id    


