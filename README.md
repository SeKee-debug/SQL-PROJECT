# SQL Data Analyst Job Market Analysis

## Introduction
This project explores the data analyst job market using SQL by analyzing job postings, salaries, and required skills. The main goal is to identify which Data Analyst roles pay the most, which skills are most in demand, and which skills are associated with higher salaries.

By answering these questions, this project helps job seekers better understand the current market and make more informed decisions about which technical skills to develop.

---

## Background
As the demand for data professionals continues to grow, many aspiring analysts want to know:

- Which Data Analyst jobs pay the highest?
- What skills do top-paying jobs require?
- Which skills appear most often in job postings?
- Which skills are linked to higher average salaries?
- What are the best skills to learn based on both demand and pay?

This project was created to answer those questions using SQL queries on job posting data.

---

## Tools I Used
- **SQL** – for querying, filtering, aggregating, and analyzing the data
- **PostgreSQL** – for writing and running SQL queries
- **Git & GitHub** – for version control and project sharing

---

## Project Structure
This project includes the following SQL files:

- `1_top_paying_jobs.sql` – identifies the top 10 highest-paying remote Data Analyst jobs
- `2_top_paying_job_skills.sql` – finds the skills required for those top-paying jobs
- `3_top_demanded_skills.sql` – shows the most in-demand skills for Data Analyst roles
- `4_top_paying_skills.sql` – calculates the average salary associated with each skill
- `5_optimal_skills.sql` – combines demand and salary to find the most optimal skills to learn
- `test.sql` – used for testing queries during development

---

## Analysis

### 1. Top-Paying Data Analyst Jobs
The first query identifies the top 10 highest-paying **remote** Data Analyst roles with non-null salary data.

**What this query does:**
- Filters for `Data Analyst` positions
- Keeps only remote jobs (`job_location = 'Anywhere'`)
- Excludes records with missing salaries
- Sorts jobs from highest to lowest salary

**Why it matters:**
This helps reveal the best-paying opportunities available for Data Analysts and gives a clear picture of the upper end of the market.

---

### 2. Skills Required for Top-Paying Jobs
The second query builds on the first by looking at the skills attached to those top-paying jobs.

**What this query does:**
- Uses a CTE to isolate the top 10 highest-paying Data Analyst jobs
- Joins job postings to skill tables
- Returns the specific skills associated with those roles

**Why it matters:**
This shows that high salaries are often tied to certain technical skills, helping learners focus on the tools employers value most in premium roles.

---

### 3. Most In-Demand Skills
The third query identifies the top 5 most frequently requested skills across all Data Analyst job postings.

**What this query does:**
- Joins job postings with skills tables
- Filters for Data Analyst roles
- Counts how often each skill appears
- Orders by demand count

**Why it matters:**
This reveals which skills appear most often in the market and are therefore the most important for employability.

---

### 4. Top-Paying Skills
The fourth query calculates the average salary for jobs associated with each skill.

**What this query does:**
- Focuses on Data Analyst roles with known salaries
- Groups by skill
- Computes the average annual salary for each skill
- Sorts skills by average salary

**Key insight:**
The highest-paying skills are often more advanced technical skills, including AI, machine learning, data engineering, and infrastructure-related tools.

**Why it matters:**
This helps distinguish between common skills and high-value skills. Some tools may not appear in every posting, but they can significantly increase earning potential.

---

### 5. Optimal Skills: High Demand + High Salary
The fifth query combines demand and salary to identify the most valuable skills for remote Data Analyst roles.

**What this query does:**
- Filters for remote Data Analyst jobs with salary data
- Counts how often each skill appears
- Calculates average salary by skill
- Keeps only skills with meaningful demand (`HAVING COUNT(...) > 10`)
- Orders by both demand and average salary

**Why it matters:**
This is one of the most useful parts of the project because it balances two important factors:
1. how often a skill is requested  
2. how much that skill tends to pay

This gives a more realistic picture of which skills are worth learning first.

---

## Key Insights
Some important takeaways from this project include:

- Remote Data Analyst jobs can offer very high salaries
- Top-paying roles often require a broader technical skill set
- Some of the most common skills are essential for getting hired
- Some less common but more advanced skills are linked to higher pay
- The best skills to learn are those that are both in demand and well paid

---

## Conclusion
This project strengthened my SQL skills and provided valuable insight into the data analyst job market. By analyzing job postings, salaries, and required skills, I was able to identify top-paying opportunities and the technical skills most closely associated with strong career prospects. These findings can help guide skill development and job search strategies for aspiring data analysts. Overall, this project highlights the importance of continuous learning and focusing on high-demand, high-value skills in the evolving field of data analytics.

---

## Repository Link
GitHub Repository: [SQL-PROJECT](https://github.com/SeKee-debug/SQL-PROJECT)

---
