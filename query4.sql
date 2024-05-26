/* 3.4. Βρείτε τους μάγειρες που δεν έχουν συμμετάσχει ποτέ σε ως κριτές σε κάποιο επεισόδιο. */

SELECT 
    c.cook_id,
    c.cook_first_name,
    c.cook_last_name
FROM 
    Cook c
LEFT JOIN 
    Episode_has_judges ej ON c.cook_id = ej.judge_id
WHERE 
    ej.judge_id IS NULL;