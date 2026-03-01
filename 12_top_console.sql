-- Which consoles produce most hits?

SELECT 
    console,
    COUNT(*) AS total_games,
    ROUND(AVG(total_sales), 3) as avg_sales,
    ROUND(MIN(total_sales), 3) as min_sales,
    ROUND(MAX(total_sales), 3) as max_sales,
    ROUND(AVG(critic_score), 1) as avg_score
FROM vg_staging
WHERE total_sales > 0
GROUP BY console
HAVING COUNT(*) >= 10
ORDER BY avg_sales DESC;