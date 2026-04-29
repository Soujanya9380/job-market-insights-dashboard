-- Total Jobs
SELECT COUNT(*) AS Total_Jobs
FROM fact_jobs;

-- Average Experience
SELECT 
AVG(CASE 
    WHEN Experience_Level = 'Entry' THEN 1
    WHEN Experience_Level = 'Associate' THEN 2
    WHEN Experience_Level = 'Mid-Senior' THEN 3
    WHEN Experience_Level = 'Director' THEN 4
    WHEN Experience_Level = 'Executive' THEN 5
END) AS Avg_Experience
FROM fact_jobs;
