with top_paying_jobs as (select 
job_id,
postings.job_title_short,
postings.salary_year_avg,
company.name    
FROM job_postings_fact as postings
LEFT JOIN company_dim as company on postings.company_id = company.company_id
where job_title_short = 'Data Analyst'
and job_location = 'Anywhere'
and salary_year_avg is not Null
order by salary_year_avg DESC
limit 10)

select 
top_paying_jobs.*,
skills
from top_paying_jobs  
inner join skills_job_dim as dim on  top_paying_jobs.job_id = dim.job_id
inner join skills_dim as skills on dim.skill_id = skills.skill_id
order by salary_year_avg DESC;