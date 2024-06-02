INSERT INTO Genres (GenreID, Name) VALUES
(1, 'Rock'),
(2, 'Pop'),
(3, 'Jazz');

INSERT INTO Artists (ArtistID, Name) VALUES
(1, 'ArtistA'),
(2, 'ArtistB'),
(3, 'ArtistC'),
(4, 'ArtistD');

INSERT INTO ArtistGenres (ArtistID, GenreID) VALUES
(1, 1), 
(2, 2), 
(3, 3), 
(4, 1), 
(4, 3); 

INSERT INTO Albums (AlbumID, Title, ReleaseYear) VALUES
(1, 'Album 1', 2020),
(2, 'Album 2', 2021),
(3, 'Album 3', 2022);

INSERT INTO Tracks (TrackID, Title, Duration, AlbumID) VALUES
(1, 'Track 1', 180, 1),
(2, 'Track 2', 240, 1),
(3, 'Track 3', 200, 2),
(4, 'Track 4', 220, 2),
(5, 'Track 5', 210, 3),
(6, 'Track 6', 230, 3),
(7, 'My Favorite Track', 360, 1), 
(8, 'Мой трек', 240, 2); 

INSERT INTO Compilations (CompilationID, Title, ReleaseYear) VALUES
(1, 'Compilation 1', 2018),
(2, 'Compilation 2', 2019),
(3, 'Compilation 3', 2020),
(4, 'Compilation 4', 2021);

INSERT INTO AlbumArtists (AlbumID, ArtistID) VALUES
(1, 1), 
(2, 2), 
(3, 3), 
(3, 4);

INSERT INTO CompilationTracks (CompilationID, TrackID) VALUES
(1, 1), 
(1, 3), 
(2, 2), 
(2, 4), 
(3, 5), 
(3, 6), 
(4, 1), 
(4, 4);
