CREATE TABLE Artist (
    ArtistId INT PRIMARY KEY,
    Name NVARCHAR(120)
);

CREATE TABLE Genre (
    GenreId INT PRIMARY KEY,
    Name NVARCHAR(120)
);

CREATE TABLE MediaType (
    MediaTypeId INT PRIMARY KEY,
    Name NVARCHAR(120)
);

CREATE TABLE Album (
    AlbumId INT PRIMARY KEY,
    Title NVARCHAR(160),
    ArtistId INT,
    FOREIGN KEY (ArtistId) REFERENCES Artist(ArtistId)
);

CREATE TABLE Track (
    TrackId INT PRIMARY KEY,
    Name NVARCHAR(200),
    AlbumId INT,
    MediaTypeId INT,
    GenreId INT,
    Composer NVARCHAR(220),
    Milliseconds INT,
    Bytes INT,
    UnitPrice NUMERIC(10,2),
    FOREIGN KEY (AlbumId) REFERENCES Album(AlbumId),
    FOREIGN KEY (MediaTypeId) REFERENCES MediaType(MediaTypeId),
    FOREIGN KEY (GenreId) REFERENCES Genre(GenreId)
);

CREATE TABLE Playlist (
    PlaylistId INT PRIMARY KEY,
    Name NVARCHAR(120)
);

CREATE TABLE PlaylistTrack (
    PlaylistId INT,
    TrackId INT,
    CONSTRAINT PK_PlaylistTrack PRIMARY KEY (PlaylistId, TrackId),
    FOREIGN KEY (PlaylistId) REFERENCES Playlist(PlaylistId),
    FOREIGN KEY (TrackId) REFERENCES Track(TrackId)
);