/*
Author : Arpit Shukla
Date : 5th June, 2020

Hackerrank Ollivander's Inventory Solution MySql
*/

select t1.id, t2.age, t1.coins_needed , t1.power
    from wands t1
        inner join wands_property t2
            on t1.code=t2.code
        where 
            t2.is_evil = 0
            and
            t1.coins_needed = (select min(a.coins_needed)
                                from wands a
                                    inner join wands_property b
                                        on a.code=b.code
                                where a.power=t1.power and b.age=t2.age
                              )
        
        order by t1.power desc, t2.age desc;
