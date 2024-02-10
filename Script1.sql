SELECT DISTINCT p.Name
FROM Playlist p
JOIN PlaylistTrack pt ON p.PlaylistId = pt.PlaylistId
JOIN Track t ON pt.TrackId = t.TrackId
JOIN Genre g ON t.GenreId = g.GenreId
WHERE g.Name IN ('Rock', 'Rap')
GROUP BY p.Name
HAVING COUNT(pt.TrackId) > 2;
