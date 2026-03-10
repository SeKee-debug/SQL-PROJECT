WITH skills_demanded AS (
    SELECT
        skills_dim.skill_id,
        skills,
        COUNT(skills_job_dim.job_id) as demand_count
    FROM job_postings_fact
    INNER JOIN skills_job_dim on job_postings_fact.job_id = skills_job_dim.job_id
    INNER JOIN skills_dim on skills_job_dim.skill_id = skills_dim.skill_id
    WHERE
        job_title_short = 'Data Analyst'
        AND salary_year_avg IS NOT NULL
        AND job_work_from_home = True
    GROUP BY
        skills_dim.skill_id,
        skills
    ORDER BY demand_count DESC
), salary_average AS (
    SELECT
        skills,
        skills_job_dim.skill_id,
        ROUND(AVG(salary_year_avg)::numeric, 0) as avg_salary
    FROM job_postings_fact
    INNER JOIN skills_job_dim on job_postings_fact.job_id = skills_job_dim.job_id
    INNER JOIN skills_dim on skills_job_dim.skill_id = skills_dim.skill_id
    WHERE
        job_title_short = 'Data Analyst'
        AND salary_year_avg IS NOT NULL
        AND job_work_from_home = True
    GROUP BY
        skills_job_dim.skill_id,
        skills
    ORDER BY
        avg_salary DESC
)

SELECT
    skills_demanded.skill_id,
    skills_demanded.skills,
    demand_count,
    avg_salary
FROM skills_demanded
INNER JOIN salary_average ON skills_demanded.skill_id = salary_average.skill_id
ORDER BY
    demand_count DESC
LIMIT 25

