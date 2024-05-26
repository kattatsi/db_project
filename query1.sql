/* 3.1. Μέσος Όρος Αξιολογήσεων (σκορ) ανά μάγειρα και Εθνική κουζίνα. */

SELECT 
    c.cook_first_name, 
    c.cook_last_name,
    s.score,
    cnc.National_Cuisine_cuisine,
    AVG(s.score) AS avg_score
FROM 
    Cook c 
INNER JOIN 
    Episode_has_cooks ec ON c.cook_id = ec.Cook_cook_id 
INNER JOIN 
    Episodes e ON ec.Episodes_episode_id = e.episode_id 
INNER JOIN 
    Score s ON e.episode_id = s.episode_id AND ec.Cook_cook_id = s.cook_id
INNER JOIN 
    Cook_has_National_Cuisine cnc ON c.cook_id = cnc.Cook_cook_id    
INNER JOIN 
	Episodes_has_National_Cuisine1 enc ON e.episode_id = enc.Episodes_episode_id AND enc.National_Cuisine_cuisine = cnc.National_Cuisine_cuisine
GROUP BY 
    c.cook_first_name, 
    c.cook_last_name,
    cnc.National_Cuisine_cuisine;