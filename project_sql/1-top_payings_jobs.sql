select 
postings.job_title_short,
postings.salary_year_avg,
postings.job_schedule_type,
postings.job_location,
company.name    
FROM job_postings_fact as postings
LEFT JOIN company_dim as company on postings.company_id = company.company_id
where job_title_short = 'Data Analyst'
and job_location = 'Anywhere'
and salary_year_avg is not Null
order by salary_year_avg DESC
limit 10;
