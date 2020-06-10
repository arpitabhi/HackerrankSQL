/*
Author : Arpit Shukla
Date : 11th June, 2020

Hackerrank Occupations Solution MySql


*/


set @i1=0,@i2=0,@i3=0,@i4=0;

select min(Doctor),min(Professor),min(Singer),min(Actor) from
        (select 
            case 
                when occupation = 'Doctor' then (@i1:=@i1+1)
                when occupation = 'Professor' then (@i2:=@i2+1)
                when occupation = 'Singer' then (@i3:=@i3+1)
                when occupation = 'Actor' then (@i4:=@i4+1)
            end as Ronum,

            case when occupation = 'Doctor' then name end as Doctor,
            case when occupation = 'Professor' then name end as Professor,
            case when occupation = 'Singer' then name end as Singer,
            case when occupation = 'Actor' then name end as Actor

        from occupations
        order by name) as temp
group by Ronum;