CREATE DATABASE vg_sales;
USE vg_sales;

-- Create new Table --

CREATE TABLE vg_staging AS
SELECT *
FROM vg_sales;

SELECT *
FROM vg_staging;


-- Check Duplicate -- ( NO DUPLICATE )

SELECT *,
ROW_NUMBER() OVER(
PARTITION BY title, console, genre, publisher, developer, critic_score,
total_sales, na_sales, jp_sales, pal_sales, other_sales, release_date, last_update) AS row_num 
FROM vg_staging;

WITH duplicate_cte AS
(SELECT *,
ROW_NUMBER() OVER(
PARTITION BY title, console, genre, publisher, developer, critic_score,
total_sales, na_sales, jp_sales, pal_sales, other_sales, release_date, last_update) AS row_num 
FROM vg_staging)
SELECT *
FROM duplicate_cte
WHERE row_num > 1;


-- MARKET & SALES ANALYSIS --

-- "Which video game genres have shown the highest growth in sales over the past decade, and which are declining?"
-- ( Shooter , Action, & Sports are the top 3 highest genre growth while the Visual Novel & Board Game are declining) --

SELECT genre , ROUND(SUM(total_sales), 3) AS total_sales_millions
FROM vg_staging
GROUP BY genre
ORDER BY total_sales_millions DESC;


-- "How do regional sales (NA, EU, JP, Other) differ by genre, and what does this reveal about regional gaming preferences?"

SELECT genre, 
	ROUND(SUM(na_sales),3) AS na_sales, 
	ROUND(SUM(jp_sales),3) AS jp_sales, 
	ROUND(SUM(pal_sales),3) AS pal_sales, 
	ROUND(SUM(other_sales),3) AS other_sales
FROM vg_staging
GROUP BY genre
ORDER BY 2 DESC;


-- What type of console that has most played by genre? -- 

SELECT console , genre, 
	COUNT(*) AS total_game
FROM vg_staging
GROUP BY console, genre
ORDER BY total_game DESC;


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



-- "Which publishers consistently produce the highest-selling games?"

SELECT publisher, ROUND(SUM(total_sales),3) AS total_game_sales_millions
FROM vg_staging
GROUP BY publisher
ORDER BY total_game_sales_millions DESC;


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



-- Easiest to understand -- 

SELECT 
    publisher,
    genre,
    ROUND(SUM(total_sales), 1) as sales
FROM vg_staging
GROUP BY publisher, genre
ORDER BY sales DESC
LIMIT 20;



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


SELECT *
FROM vg_staging;