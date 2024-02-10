-- Artists
INSERT INTO Artist (ArtistId, Name) VALUES (1, 'Artist 1'), (2, 'Artist 2');

-- Genres
INSERT INTO Genre (GenreId, Name) VALUES (1, 'Rock'), (2, 'Rap');

-- MediaTypes
INSERT INTO MediaType (MediaTypeId, Name) VALUES (1, 'MP3'), (2, 'FLAC');

-- Albums
INSERT INTO Album (AlbumId, Title, ArtistId) VALUES (1, 'Album 1', 1), (2, 'Album 2', 2);

-- Tracks
INSERT INTO Track (TrackId, Name, AlbumId, MediaTypeId, GenreId, Composer, Milliseconds, Bytes, UnitPrice) VALUES
(1, 'Track 1', 1, 1, 1, 'Composer 1', 250000, 1024000, 0.99),
(2, 'Track 2', 2, 1, 2, 'Composer 2', 300000, 2048000, 1.99);

-- Playlists
INSERT INTO Playlist (PlaylistId, Name) VALUES (1, 'Playlist 1'), (2, 'Playlist 2');

-- PlaylistTracks
INSERT INTO PlaylistTrack (PlaylistId, TrackId) VALUES (1, 1), (1, 2), (2, 1);