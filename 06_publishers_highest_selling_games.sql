-- "Which publishers consistently produce the highest-selling games?"

SELECT publisher, ROUND(SUM(total_sales),3) AS total_game_sales_millions
FROM vg_staging
GROUP BY publisher
ORDER BY total_game_sales_millions DESC;