/* 3.7. Βρείτε όλους τους μάγειρες που συμμετείχαν τουλάχιστον 5 λιγότερες φορές από τον μάγειρα με τις περισσότερες συμμετοχές σε επεισόδια. */

SELECT 
    c.cook_id,
    c.cook_first_name,
    c.cook_last_name
FROM 
    Cook c
INNER JOIN (
    SELECT 
        ec.Cook_cook_id,
        COUNT(*) AS episode_count
    FROM 
        Episode_has_cooks ec
    GROUP BY 
        ec.Cook_cook_id
) AS cook_episodes ON c.cook_id = cook_episodes.Cook_cook_id
INNER JOIN (
    SELECT 
        ec.Cook_cook_id,
        COUNT(*) AS episode_count
    FROM 
        Episode_has_cooks ec
    GROUP BY 
        ec.Cook_cook_id
    ORDER BY 
        COUNT(*) DESC
    LIMIT 1
) AS max_episodes ON cook_episodes.episode_count <= max_episodes.episode_count - 5;