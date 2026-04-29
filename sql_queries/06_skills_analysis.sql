-- Top Skills Demand
SELECT s.Skill_Name, COUNT(js.Job_ID) AS Demand
FROM job_skills js
JOIN dim_skills s ON js.Skill_ID = s.Skill_ID
GROUP BY s.Skill_Name
ORDER BY Demand DESC;

-- Skills by Experience Level
SELECT 
    f.Experience_Level,
    s.Skill_Name,
    COUNT(*) AS Skill_Count
FROM fact_jobs f
JOIN job_skills js ON f.Job_ID = js.Job_ID
JOIN dim_skills s ON js.Skill_ID = s.Skill_ID
GROUP BY f.Experience_Level, s.Skill_Name;

-- Skill Demand by Location
SELECT 
    l.City,
    COUNT(js.Job_ID) AS Job_Count
FROM fact_jobs f
JOIN job_skills js ON f.Job_ID = js.Job_ID
JOIN dim_location l ON f.Location_ID = l.Location_ID
GROUP BY l.City;
