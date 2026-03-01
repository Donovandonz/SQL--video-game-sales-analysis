-- "How do regional sales (NA, EU, JP, Other) differ by genre, and what does this reveal about regional gaming preferences?"

SELECT genre, 
	ROUND(SUM(na_sales),3) AS na_sales, 
	ROUND(SUM(jp_sales),3) AS jp_sales, 
	ROUND(SUM(pal_sales),3) AS pal_sales, 
	ROUND(SUM(other_sales),3) AS other_sales
FROM vg_staging
GROUP BY genre
ORDER BY 2 DESC;