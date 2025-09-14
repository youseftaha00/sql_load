--case expression

select 
    job_title_short,
    job_location ,
    CASE
     when job_location = 'Anywhere' then 'Remote'
     when job_location = 'New York, NY' then 'Local'
     else 'Onsite'
    end location_category
FROM job_postings_fact; 


select 
    count(job_id) as JOBS_count,
    CASE
     when job_location = 'Anywhere' then 'Remote'
     when job_location = 'New York, NY' then 'Local'
     else 'Onsite'
    end location_category
FROM job_postings_fact
group by location_category ; 
