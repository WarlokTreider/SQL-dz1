CREATE TABLE IF NOT EXISTS Genres (
    GenreID INT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS Artists (
    ArtistID INT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS ArtistGenres (
    ArtistID INT,
    GenreID INT,
    FOREIGN KEY (ArtistID) REFERENCES Artists(ArtistID),
    FOREIGN KEY (GenreID) REFERENCES Genres(GenreID),
    PRIMARY KEY (ArtistID, GenreID)
);

CREATE TABLE IF NOT EXISTS Albums (
    AlbumID INT PRIMARY KEY,
    Title VARCHAR(255) NOT NULL,
    ReleaseYear INT CHECK (ReleaseYear >= 1900) 
);

CREATE TABLE IF NOT EXISTS Tracks (
    TrackID INT PRIMARY KEY,
    Title VARCHAR(255) NOT NULL,
    Duration INT CHECK (Duration > 0), 
    AlbumID INT,
    FOREIGN KEY (AlbumID) REFERENCES Albums(AlbumID)
);

CREATE TABLE IF NOT EXISTS Compilations (
    CompilationID INT PRIMARY KEY,
    Title VARCHAR(255) NOT NULL,
    ReleaseYear INT CHECK (ReleaseYear >= 1900) 
);

CREATE TABLE IF NOT EXISTS AlbumArtists (
    AlbumID INT,
    ArtistID INT,
    FOREIGN KEY (AlbumID) REFERENCES Albums(AlbumID),
    FOREIGN KEY (ArtistID) REFERENCES Artists(ArtistID),
    PRIMARY KEY (AlbumID, ArtistID)
);

CREATE TABLE IF NOT EXISTS CompilationTracks (
    CompilationID INT,
    TrackID INT,
    FOREIGN KEY (CompilationID) REFERENCES Compilations(CompilationID),
    FOREIGN KEY (TrackID) REFERENCES Tracks(TrackID),
    PRIMARY KEY (CompilationID, TrackID)
);