/*
Enter your query here.

Author : Arpit Shukla
Date : 25th June, 2020

Hackerrank Interviews MySQL Solution

*/

select 
    t1.contest_id, 
    t1.hacker_id, 
    t1.name, 
    sum(t5.total_submissions), 
    sum(t5.total_accepted_submissions), 
    sum(t4.total_views),
    sum(t4.total_unique_views)
from 
    Contests t1 
    join Colleges t2 
        on t1.contest_id=t2.contest_id
    join Challenges t3
        on t2.college_id=t3.college_id
    left join 
        (select challenge_id,sum(total_views) as total_views, sum(total_unique_views) as 
         total_unique_views from View_Stats group by challenge_id) t4
         on t3.challenge_id=t4.challenge_id
         
    left join
        (select challenge_id,sum(total_submissions) as total_submissions,
         sum(total_accepted_submissions) as total_accepted_submissions from Submission_Stats 
         group by challenge_id) t5
         on t3.challenge_id=t5.challenge_id
group by 
    t1.contest_id, 
    t1.hacker_id, 
    t1.name
having 
    (
    sum(t5.total_submissions)+ 
    sum(t5.total_accepted_submissions)+ 
    sum(t4.total_views)+
    sum(t4.total_unique_views)
    )>0
order by 
    t1.contest_id

