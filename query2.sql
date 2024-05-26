/* 3.2. Για δεδομένη Εθνική κουζίνα και έτος, ποιοι μάγειρες ανήκουν σε αυτήν και ποιοι μάγειρες συμμετείχαν σε επεισόδια; */

WITH Cooks_In_National_Cuisine AS (
    SELECT c.cook_id, c.cook_first_name, c.cook_last_name
    FROM Cook c
    INNER JOIN Cook_has_National_Cuisine cc ON c.cook_id = cc.Cook_cook_id
    INNER JOIN National_Cuisine nc ON cc.National_Cuisine_cuisine LIKE '%Spanish%' AND nc.cuisine LIKE '%Spanish%' -- the user defines the limit according to their needs
),
Cooks_In_Season AS (
    SELECT c.cook_id, c.cook_first_name, c.cook_last_name
    FROM Cook c
    INNER JOIN Episode_has_cooks ep ON c.cook_id = ep.Cook_cook_id
    INNER JOIN Episodes e ON ep.Episodes_episode_id = e.episode_id
    WHERE e.season = '1953' -- the user defines the limit according to their needs
)
SELECT DISTINCT c.cook_id, c.cook_first_name, c.cook_last_name
FROM Cooks_In_National_Cuisine c
INNER JOIN Cooks_In_Season s ON c.cook_id = s.cook_id;