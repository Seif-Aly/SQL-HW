SELECT ar.Name AS ArtistName, COUNT(t.TrackId) AS NumberOfTracks
FROM Artist ar
JOIN Album a ON ar.ArtistId = a.ArtistId
JOIN Track t ON a.AlbumId = t.AlbumId
GROUP BY ar.Name
ORDER BY NumberOfTracks DESC
LIMIT 3;
