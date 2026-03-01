-- Complete publisher dominance analysis -- 

SELECT 
    publisher,
    genre,
    COUNT(*) as games_released,
    ROUND(SUM(total_sales), 2) as total_sales,
    ROUND(SUM(na_sales), 2) as na_sales,
    ROUND(SUM(jp_sales), 2) as jp_sales,
    ROUND(SUM(pal_sales), 2) as pal_sales,
    ROUND(AVG(critic_score), 1) as avg_score
FROM vg_staging
WHERE total_sales > 0
GROUP BY publisher, genre
HAVING COUNT(*) >= 2 AND SUM(total_sales) > 1
ORDER BY total_sales DESC;