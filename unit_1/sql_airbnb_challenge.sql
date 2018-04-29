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

