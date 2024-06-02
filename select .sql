SELECT Title, Duration
FROM Tracks
ORDER BY Duration DESC
LIMIT 1;

SELECT Title
FROM Tracks
WHERE Duration >= 210;

SELECT Title
FROM Compilations
WHERE ReleaseYear BETWEEN 2018 AND 2020;

SELECT Name
FROM Artists
WHERE Name NOT LIKE '% %';

SELECT Title
FROM Tracks
WHERE Title ILIKE '%мой%' OR Title ILIKE '%my%';

SELECT g.Name AS Genre, COUNT(ag.ArtistID) AS ArtistCount
FROM Genres g
JOIN ArtistGenres ag ON g.GenreID = ag.GenreID
GROUP BY g.Name;

SELECT COUNT(t.TrackID) AS TrackCount
FROM Tracks t
JOIN Albums a ON t.AlbumID = a.AlbumID
WHERE a.ReleaseYear BETWEEN 2019 AND 2020;

SELECT a.Title AS Album, AVG(t.Duration) AS AvgDuration
FROM Albums a
JOIN Tracks t ON a.AlbumID = t.AlbumID
GROUP BY a.Title;

SELECT ar.Name AS Artist
FROM Artists ar
WHERE ar.ArtistID NOT IN (
    SELECT aa.ArtistID
    FROM AlbumArtists aa
    JOIN Albums al ON aa.AlbumID = al.AlbumID
    WHERE al.ReleaseYear = 2020
);

SELECT DISTINCT c.Title AS Compilation
FROM Compilations c
JOIN CompilationTracks ct ON c.CompilationID = ct.CompilationID
JOIN Tracks t ON ct.TrackID = t.TrackID
JOIN Albums a ON t.AlbumID = a.AlbumID
JOIN AlbumArtists aa ON a.AlbumID = aa.AlbumID
JOIN Artists ar ON aa.ArtistID = ar.ArtistID
WHERE ar.Name = 'ArtistA';