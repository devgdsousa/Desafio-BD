--1
SELECT Nome, Ano
FROM Filmes;

--2
SELECT Nome, Ano
FROM Filmes
ORDER BY Ano ASC;

--3
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro';

--4
SELECT Nome, Ano
FROM Filmes
WHERE Ano = 1997;

--5
SELECT Nome, Ano
FROM Filmes
WHERE Ano > 2000;

--6
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC;

--7
SELECT Ano, COUNT(*) AS QuantidadeFilmes
FROM Filmes
GROUP BY Ano
ORDER BY QuantidadeFilmes DESC;

--8
SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'Masculino';

--9
SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'Feminino'
ORDER BY PrimeiroNome;

--10
SELECT NomeFilme, Genero
FROM Filmes;

--11
SELECT NomeFilme, Genero
FROM Filmes
WHERE Genero = 'Mistério';

--12
SELECT F.NomeFilme, A.PrimeiroNome, A.UltimoNome, P.Papel
FROM Filmes F
JOIN Participacoes P ON F.FilmeID = P.FilmeID
JOIN Atores A ON P.AtoreID = A.AtoreID;
