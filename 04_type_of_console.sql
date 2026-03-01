-- What type of console that has most played by genre? -- 

SELECT console , genre, 
	COUNT(*) AS total_game
FROM vg_staging
GROUP BY console, genre
ORDER BY total_game DESC;