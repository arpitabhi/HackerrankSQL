# Author : Arpit Shukla
# Date : 10th June, 2020

# Hackerrank Contest Leaderboard Solution MySql

/*
Enter your query here.

select h.hacker_id, h.name , sum(s.score)
    from  submissions s
        inner join hackers h
            on h.hacker_id=s.hacker_id
    group by h.hacker_id, h.name
        having sum(s.score) >0
    order by sum(s.score) desc, h.hacker_id asc
*/
 select t1.hid, t2.name , sum(t1.mxsc) 
    from 
        (select h.hacker_id as hid, max(s.score) as mxsc
            from submissions s
                inner join hackers h
                    on s.hacker_id = h.hacker_id
            group by h.hacker_id , s.challenge_id) as t1
        inner join hackers as t2
            on t1.hid = t2.hacker_id
    group by t1.hid,t2.name
        having sum(t1.mxsc) >0
    order by sum(t1.mxsc) desc, t1.hid asc;
    
    