-- Average Salary by Role
SELECT Job_Title, AVG(Avg_Salary) AS Avg_Salary
FROM fact_jobs
GROUP BY Job_Title
ORDER BY Avg_Salary DESC;

-- Experience vs Salary
SELECT Experience_Level, AVG(Avg_Salary) AS Avg_Salary
FROM fact_jobs
GROUP BY Experience_Level;

-- High Paying Locations
SELECT l.City, AVG(f.Avg_Salary) AS Avg_Salary
FROM fact_jobs f
JOIN dim_location l ON f.Location_ID = l.Location_ID
GROUP BY l.City
ORDER BY Avg_Salary DESC;
