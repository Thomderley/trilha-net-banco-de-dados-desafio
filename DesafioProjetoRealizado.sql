SELECT *
FROM [Filmes].[dbo].[Filmes]
/* 1 - Buscar o nome e ano dos filmes */
SELECT 
	[Nome],
	[Ano]
FROM [Filmes].[dbo].[Filmes]
/* 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano */
SELECT 
	[Nome],
	[Ano]
FROM [Filmes].[dbo].[Filmes]
ORDER BY [Ano] ASC
/* 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração */
SELECT *
FROM [Filmes].[dbo].[Filmes]
WHERE Nome = 'de volta para o futuro'
/*4 - Buscar os filmes lançados em 1997*/
SELECT 
	[Nome],
	[Ano]
FROM [Filmes].[dbo].[Filmes]
WHERE  [Ano] = 1997
/*5 - Buscar os filmes lançados APÓS o ano 2000*/
SELECT 
	[Nome],
	[Ano]
FROM [Filmes].[dbo].[Filmes]
WHERE  [Ano] > 2000
/*6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente*/
SELECT 
	[Nome],
	[Ano],
	[Duracao]
FROM [Filmes].[dbo].[Filmes]
WHERE [Duracao] > 100 AND [Duracao] < 150
ORDER BY [Duracao] ASC
/* 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente*/
SELECT 
	[Ano],
	COUNT ([Nome]) AS [Quantidade]
FROM [Filmes].[dbo].[Filmes]
GROUP BY [Ano]
ORDER BY [Quantidade] DESC
/*8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome */
SELECT *
FROM [Filmes].[dbo].[Atores]
WHERE [Genero] = 'M'
/*9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome*/
SELECT *
FROM [Filmes].[dbo].[Atores]
WHERE [Genero] = 'F'
ORDER BY [PrimeiroNome]
/* 10 - Buscar o nome do filme e o gênero*/
SELECT
	[FS].[Nome],
	[GS].[Genero]
	
FROM [Filmes].[dbo].[FilmesGenero] AS FG
INNER JOIN  [Filmes].[dbo].[Filmes] AS FS ON [FG].[IdFilme] = [FS].[Id]
INNER JOIN  [Filmes].[dbo].[Generos] AS GS ON  [FG].[IdGenero] = [GS].[Id]
/* 11 - Buscar o nome do filme e o gênero do tipo "Mistério"*/
SELECT
	[FS].[Nome],
	[GS].[Genero]
	
FROM [Filmes].[dbo].[FilmesGenero] AS FG
INNER JOIN  [Filmes].[dbo].[Filmes] AS FS ON [FG].[IdFilme] = [FS].[Id]
INNER JOIN  [Filmes].[dbo].[Generos] AS GS ON  [FG].[IdGenero] = [GS].[Id]
WHERE [GS].[Genero] = 'Mistério'
/* 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel */
SELECT 
	[FS].[Nome],
	[AF].[PrimeiroNome],
	[AF].[UltimoNome],
	[EF].[Papel]
	
FROM [Filmes].[dbo].[ElencoFilme] AS EF
INNER JOIN  [Filmes].[dbo].[Filmes] AS FS ON [EF].[IdFilme] = [FS].[Id]
INNER JOIN  [Filmes].[dbo].[Atores] AS AF ON  [EF].[IdAtor] = [AF].[Id]

