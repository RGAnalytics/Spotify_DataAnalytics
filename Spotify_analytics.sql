create database spotify_db;

use spotify_db;
CREATE TABLE IF NOT EXISTS spotify_tracks (
    id INT AUTO_INCREMENT PRIMARY KEY,
    track_name VARCHAR(255),
    artist VARCHAR(255),
    album VARCHAR(255),
    popularity INT,
    duration_minutes FLOAT
)


 
 select * from spotify_tracks;
 
 ## 1) Leading popularity track
 
 Select track_name, artist, album, popularity
 from spotify_tracks
 order by popularity desc
 limit 1;

##  2) Average of popularity

select AVG(popularity) as average_popularity
from spotify_tracks;

## 3) Duration greater than 4 minutes

select * from spotify_tracks
where duration_minutes > 4.0;

## 4) segregate as per popularity

select
	case
		when popularity >=80 then 'Very Popular'
        when popularity >=50 then 'Popular'
        else 'Less popular'
	end as popular_range,
    count(*) as track_count
from spotify_tracks
group by popular_range;