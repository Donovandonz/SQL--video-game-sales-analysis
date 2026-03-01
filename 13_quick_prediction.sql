-- Quick prediction formula --

SELECT 
    genre,
    publisher,
    console,
    CASE 
        WHEN critic_score >= 80 THEN 'High Score'
        WHEN critic_score >= 70 THEN 'Good Score'
        WHEN critic_score >= 60 THEN 'Average Score'
        ELSE 'Low Score'
    END as critic_category,
    COUNT(*) AS games,
    ROUND(AVG(total_sales), 3) AS avg_sales
FROM vg_staging
WHERE total_sales > 1
GROUP BY genre, publisher, console, critic_category
HAVING COUNT(*) >= 2
ORDER BY avg_sales DESC;