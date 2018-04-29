WITH rain as 
	(SELECT 
		date
	FROM 
		weather 
	WHERE 
		events = 'Rain'
	GROUP BY 1
)	

SELECT 
	trip_id,
	duration,
	DATE(start_date) trip_date
FROM trips 
JOIN rain 
ON rain.date = trip_date 
ORDER BY duration DESC 
LIMIT 3


SELECT 
	status.station_id,
	stations.name,
	COUNT(CASE WHEN status.docks_available = 0 then 1 END) full_count 
FROM 
	status
JOIN stations
ON stations.station_id = status.station_id
GROUP BY 1
ORDER BY full_count DESC 
LIMIT 1


SELECT 
	trips.start_station,
	stations.dockcount,
	COUNT(*)
FROM 
	trips 
JOIN stations 
ON stations.name = trips.start_station
GROUP BY 1
ORDER BY 2 DESC 

with rainy as 
(SELECT 
	date
From weather
WHERE events = 'Rain'
GROUP BY 1
),

rain_trips as (
SELECT
	trip_id,
	duration,
	DATE(start_date) trip_date
FROM trips
JOIN rainy
on rainy.date = trip_date
ORDER BY duration DESC
)

SELECT 
	trip_date,
	max(duration)
from rain_trips
GROUP BY 1