-- Top 3 Skills per City (Advanced SQL)
SELECT City, Skill_Name, Demand
FROM (
    SELECT 
        l.City,
        s.Skill_Name,
        COUNT(*) AS Demand,
        RANK() OVER (PARTITION BY l.City ORDER BY COUNT(*) DESC) AS rnk
    FROM fact_jobs f
    JOIN job_skills js ON f.Job_ID = js.Job_ID
    JOIN dim_skills s ON js.Skill_ID = s.Skill_ID
    JOIN dim_location l ON f.Location_ID = l.Location_ID
    GROUP BY l.City, s.Skill_Name
) t
WHERE rnk <= 3;
