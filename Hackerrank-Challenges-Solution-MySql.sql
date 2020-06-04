/*
Author : Arpit Shukla
Date : 5th June, 2020

Hackerrank Challenges Solution MySql
*/

/*
Enter your query here.
*/
select a.hacker_id,a.name,count(a.hacker_id) as c1
    from Hackers a
        inner join challenges b
            on a.hacker_id = b.hacker_id
        group by a.hacker_id,a.name
        having 
            c1=
                (SELECT MAX(counts.counted) FROM
                (SELECT COUNT(*) AS counted
                FROM challenges 
                GROUP BY hacker_id) AS counts)
            
            or c1 in 
             /*
                (select count(challenge_id) from challenges
                group by hacker_id
                having count(challenge_id)=1)
                */
             
                 /* the set of counts... */
                (select t.cnt
                 from (select count(*) as cnt 
                       from challenges
                       group by hacker_id) t
                 /* who's group of counts... */
                 group by t.cnt
                 /* has only one element */
                 having count(t.cnt) = 1)
                 
            
            
        
        order by c1 desc, a.hacker_id;
        
