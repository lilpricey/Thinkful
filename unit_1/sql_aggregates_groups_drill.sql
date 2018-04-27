SELECT 
	Date,
	MAX(MaxTemperatureF),
	ZIP
FROM 
	weather 

SELECT 
	COUNT(trip_id) trips,
	start_station
FROM 
	trips 
GROUP by start_station

SELECT 
	MIN(duration)
FROM
	trips 
	
SELECT 
	AVG(duration),
	end_station
FROM 
	trips 
GROUP by end_station