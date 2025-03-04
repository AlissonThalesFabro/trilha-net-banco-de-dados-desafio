

--1
SELECT 
Nome, Ano 
FROM filmes

--2
SELECT Nome, 
Ano, 
Duracao
FROM Filmes
ORDER BY ANO

--3

SELECT Nome,
Ano,
Duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro'

--4
SELECT 
Nome,
Ano,
Duracao
FROM Filmes
WHERE Ano = 1997

--5
SELECT 
Nome,
Ano,
Duracao
FROM Filmes
WHERE Ano > 2000


--6
SELECT 
Nome,
Ano,
Duracao
FROM Filmes
WHERE duracao>100 AND duracao<150
ORDER BY duracao

--7

SELECT 
Ano,
COUNT(*) Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

--8
SELECT * 
FROM Atores
Where Genero = 'M'

--9

SELECT * 
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome 

--10

SELECT F.Nome, G.Genero
FROM ((Filmes F 
INNER JOIN FilmesGenero FL  
ON F.Id = FL.IdFilme)
INNER JOIN Generos G ON G.Id = FL.IdGenero)

--11
SELECT F.Nome, G.Genero
FROM ((Filmes F 
INNER JOIN FilmesGenero FL  
ON F.Id = FL.IdFilme)
INNER JOIN Generos G ON G.Id = FL.IdGenero)
Where G.Genero = 'Mist�rio'

--12

SELECT F.Nome, A.PrimeiroNome,A.UltimoNome, E.Papel
FROM ((Filmes F 
INNER JOIN ElencoFilme E ON E.IdFilme = F.Id
)
INNER JOIN Atores A ON A.Id = E.IdAtor)


