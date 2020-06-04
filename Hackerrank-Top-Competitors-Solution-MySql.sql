/*
Author : Arpit Shukla
Date : 5th June, 2020

Hackerrank Top Competitors Solution MySql
*/


select a.hacker_id, a.name
    from submissions d
        inner join challenges c
            on c.challenge_id = d.challenge_id
        inner join difficulty b
            on b.difficulty_level = c.difficulty_level
        inner join hackers a
            on a.hacker_id = d.hacker_id
    where 
        b.score = d.score and
        b.difficulty_level = c.difficulty_level
    group by
        a.hacker_id, a.name
        having
            count(d.hacker_id) > 1
    order by
        count(d.hacker_id) desc,
        d.hacker_id asc

