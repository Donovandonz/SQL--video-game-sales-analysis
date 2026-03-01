-- How games sell over time --

SELECT title,
    EXTRACT(YEAR FROM last_update) - EXTRACT(YEAR FROM release_date) AS years_since_release,
    COUNT(*) AS num_games,
    ROUND(AVG(total_sales), 3) AS avg_total_sales_millions
FROM vg_staging
WHERE EXTRACT(YEAR FROM last_update) - EXTRACT(YEAR FROM release_date) BETWEEN 0 AND 20
  AND total_sales > 0.1
GROUP BY title, years_since_release
ORDER BY avg_total_sales_millions DESC;