-- Which publishers have best track record?

SELECT 
    publisher,
    COUNT(*) as games_released,
    ROUND(AVG(total_sales), 3) as avg_sales,
    ROUND(AVG(critic_score), 1) as avg_critic_score,
    CASE 
        WHEN AVG(total_sales) >= 2 THEN 'Blockbuster'
        WHEN AVG(total_sales) >= 1 THEN 'Successful'
        WHEN AVG(total_sales) >= 0.5 THEN 'Moderate'
        ELSE 'Low Sales'
    END as success_level
FROM vg_staging
GROUP BY publisher
HAVING COUNT(*) >= 5
ORDER BY avg_sales DESC;