-- Which genres have highest success rates?

SELECT 
    genre,
    COUNT(*) as total_games,
    SUM(CASE WHEN total_sales >= 1 THEN 1 ELSE 0 END) AS successful_games,
    ROUND(100.0 * SUM(CASE WHEN total_sales >= 1 THEN 1 ELSE 0 END) / COUNT(*), 1) AS success_rate_percent,
    ROUND(AVG(total_sales), 3) as avg_sales_millions,
    ROUND(AVG(critic_score), 1) as avg_score
FROM vg_staging
WHERE total_sales > 0
GROUP BY genre
HAVING COUNT(*) >= 10
ORDER BY success_rate_percent DESC;