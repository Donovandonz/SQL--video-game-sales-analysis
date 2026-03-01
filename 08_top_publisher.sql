-- Top publishers in each region --

SELECT 
    publisher,
    ROUND(SUM(na_sales), 2) as na_total,
    ROUND(SUM(jp_sales), 2) as jp_total,
    ROUND(SUM(pal_sales), 2) as pal_total,
    ROUND(SUM(other_sales), 2) as other_total,
    ROUND(SUM(total_sales), 2) as global_total
FROM vg_staging
WHERE total_sales > 0.1
GROUP BY publisher
HAVING SUM(total_sales) > 5 
ORDER BY global_total DESC;