SELECT 
	id,
	name,
	price
FROM 
	listings
ORDER BY price DESC 


SELECT 
	neighbourhood,
	SUM(number_of_reviews)
FROM 
	listings
GROUP BY 1 
ORDER BY 2 DESC 

SELECT 
	strftime('%m', date) month,
	AVG(REPLACE(price, '$', '')) price
FROM 
	calendar 
GROUP BY month

--march is the least expensive month at $36.6, August is the most expensive at $48.3

