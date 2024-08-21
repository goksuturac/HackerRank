WITH challenge_count AS(
    SELECT h.hacker_id, h.name, COUNT(c.challenge_id) AS total_challenges FROM hackers h
    LEFT JOIN challenges c ON h.hacker_id = c.hacker_id
    GROUP BY h.hacker_id, h.name),
unique_count AS (SELECT total_challenges FROM challenge_count
GROUP BY total_challenges HAVING COUNT(*) = 1)
SELECT * FROM challenge_count WHERE total_challenges = (SELECT MAX(total_challenges) FROM challenge_count) 
OR total_challenges IN(SELECT total_challenges FROM unique_count)
ORDER BY total_challenges DESC, hacker_id ;