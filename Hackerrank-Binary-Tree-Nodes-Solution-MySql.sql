/*
Enter your query here.

Author : Arpit Shukla
Date : 13th June, 2020

Hackerrank Binary Tree Nodes Solution MySql


Inner Nodes
select distinct t2.n from bst t1
    inner join bst as t2
        on t1.p=t2.n
    where t2.p is not null
    order by t2.n

Root Node
select n from bst where p is Null

Leaf Nodes
select n from bst 
where n not in (select distinct p from bst where p is not null)
*/

select distinct n,
    
    case
        /* Finding the Root Node */
        when p is null then "Root"
        
        /* Finding the Leaf Node */
        when n not in (select distinct p from bst where p is not null) then "Leaf"
        
        /* Finding the Inner Node */
        when n in (select distinct t2.n from bst t1
                        inner join bst as t2
                            on t1.p=t2.n
                    where t2.p is not null) then "Inner" end
        from bst
        
        /* Ordering all the nodes */
        order by n;
    

        