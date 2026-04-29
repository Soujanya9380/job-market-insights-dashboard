-- Jobs by Location
SELECT l.City, COUNT(f.Job_ID) AS Total_Jobs
FROM fact_jobs f
JOIN dim_location l ON f.Location_ID = l.Location_ID
GROUP BY l.City
ORDER BY Total_Jobs DESC;

-- Top Hiring Companies
SELECT c.Company_Name, COUNT(f.Job_ID) AS Total_Jobs
FROM fact_jobs f
JOIN dim_company c ON f.Company_ID = c.Company_ID
GROUP BY c.Company_Name
ORDER BY Total_Jobs DESC;

-- Job Trends Over Time
SELECT Year, Month, COUNT(Job_ID) AS Total_Jobs
FROM fact_jobs
GROUP BY Year, Month
ORDER BY Year, Month;

-- Experience Distribution
SELECT Experience_Level, COUNT(Job_ID) AS Total_Jobs
FROM fact_jobs
GROUP BY Experience_Level;
