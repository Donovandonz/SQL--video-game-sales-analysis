-- MARKET & SALES ANALYSIS --

-- "Which video game genres have shown the highest growth in sales over the past decade, and which are declining?"
-- ( Shooter , Action, & Sports are the top 3 highest genre growth while the Visual Novel & Board Game are declining) --

SELECT genre , ROUND(SUM(total_sales), 3) AS total_sales_millions
FROM vg_staging
GROUP BY genre
ORDER BY total_sales_millions DESC;
