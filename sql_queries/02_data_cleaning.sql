-- Check NULL values
SELECT * FROM fact_jobs
WHERE Job_Title IS NULL;

-- Check duplicates
SELECT Job_ID, COUNT(*)
FROM fact_jobs
GROUP BY Job_ID
HAVING COUNT(*) > 1;

-- Filter relevant roles
SELECT *
FROM fact_jobs
WHERE Job_Title IN ('Data Analyst', 'Data Scientist', 'Data Engineer');

-- Total records
SELECT COUNT(*) FROM fact_jobs;
