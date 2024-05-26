/* 3.3. Βρείτε τους νέους μάγειρες (ηλικία < 30 ετών) που έχουν τις περισσότερες συνταγές. */

SELECT c.cook_id, c.cook_first_name, c.cook_last_name, COUNT(cr.Recipe_name) AS recipe_count
FROM Cook c
INNER JOIN Cook_has_Recipe cr ON c.cook_id = cr.Cook_cook_id
WHERE c.age < 30
GROUP BY c.cook_id, c.cook_first_name, c.cook_last_name
ORDER BY recipe_count DESC
LIMIT 10; -- the user defines the limit according to their needs