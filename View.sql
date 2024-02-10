CREATE VIEW TrackDetails AS
SELECT t.TrackId, t.Name AS TrackName, a.Title AS AlbumTitle, ar.Name AS ArtistName, g.Name AS GenreName
FROM Track t
JOIN Album a ON t.AlbumId = a.AlbumId
JOIN Artist ar ON a.ArtistId = ar.ArtistId
JOIN Genre g ON t.GenreId = g.GenreId;