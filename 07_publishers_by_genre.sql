-- "Top publishers by genre?" --

SELECT publisher, genre,
COUNT(*) AS num_games,
    ROUND(SUM(total_sales), 2) as total_sales_millions,
    ROUND(AVG(total_sales), 3) as avg_sales_per_game
FROM vg_staging
WHERE total_sales > 0.1
GROUP BY publisher, genre
HAVING num_games >= 3
ORDER BY genre, total_sales_millions DESC;