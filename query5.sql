/* 3.5. Ποιοι κριτές έχουν συμμετάσχει στον ίδιο αριθμό επεισοδίων σε διάστημα ενός έτους με περισσότερες από 3 εμφανίσεις; */

WITH JudgeEpisodes AS (
    SELECT 
        judge_id,
        COUNT(Episodes_episode_id) AS episode_count
    FROM 
        Episode_has_judges
    JOIN 
        Episodes ON Episodes_episode_id = episode_id
    WHERE 
        season = '1953'  -- the user defines the limit according to their needs
    GROUP BY 
        judge_id
    HAVING 
        COUNT(Episodes_episode_id) > 3
)
SELECT 
    je1.judge_id AS judge1_id,
    je2.judge_id AS judge2_id,
    je1.episode_count
FROM 
    JudgeEpisodes je1
JOIN 
    JudgeEpisodes je2 ON je1.episode_count = je2.episode_count 
                     AND je1.judge_id < je2.judge_id
ORDER BY 
    je1.episode_count DESC, je1.judge_id, je2.judge_id;
