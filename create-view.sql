

    -- Create a view called rock that selects all the tracks where the genre is Rock.
CREATE VIEW rock AS
	SELECT * FROM track 
    WHERE genre_id IN (
        SELECT genre_id FROM genre
        WHERE genre.name = 'Rock'
	);
    -- Create a view called classical_count that gets a count of all the tracks from the playlist called Classical.

    CREATE VIEW classical_count AS
SELECT COUNT(*) FROM track
WHERE track_id IN (
  SELECT track_id FROM playlist_track
  WHERE playlist_id IN (
    SELECT playlist_id FROM playlist
    WHERE playlist.name = 'Classical'
   )
 );

SELECT * FROM classical_count

CREATE VIEW class_counter AS
SELECT COUNT(*) FROM track
JOIN playlist_track ON track.track_id = playlist_track_id
JOIN playlist ON playlist.playlist_id = playlist.playlist_id
WHERE playlist.name = 'Classical'

SELECT * FROM playlist_track;
SELECT * FROM playlist;
SELECT * FROM track;
SELECT * FROM classical_count;
*********
