CREATE DATABASE job_market;
USE job_market;

CREATE TABLE fact_jobs (
    Job_ID INT PRIMARY KEY,
    Job_Title VARCHAR(100),
    Company_ID INT,
    Location_ID INT,
    Min_Salary INT,
    Max_Salary INT,
    Avg_Salary INT,
    Experience_Level VARCHAR(50),
    Job_Posting_Date DATE,
    Year INT,
    Month INT
);

CREATE TABLE dim_company (
    Company_ID INT PRIMARY KEY,
    Company_Name VARCHAR(100),
    Company_Size VARCHAR(50)
);

CREATE TABLE dim_location (
    Location_ID INT PRIMARY KEY,
    City VARCHAR(100),
    State VARCHAR(100),
    Country VARCHAR(100)
);

CREATE TABLE dim_skills (
    Skill_ID INT PRIMARY KEY,
    Skill_Name VARCHAR(100)
);

CREATE TABLE job_skills (
    Job_ID INT,
    Skill_ID INT
);
