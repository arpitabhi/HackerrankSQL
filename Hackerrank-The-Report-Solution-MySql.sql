/*
Author : Arpit Shukla
Date : 4th June, 2020

Hackerrank The Report Solution MySql
*/

/*
Enter your query here.
*/
select t1.name na, t2.grade gra, t1.marks mar from students t1 inner join grades t2 on (t1.marks >=t2.min_mark and t1.marks<=t2.max_mark) where t2.grade>7 order by gra desc, na;
select "NULL", t2.grade gra, t1.marks mar from students t1 inner join grades t2 on (t1.marks >=t2.min_mark and t1.marks<=t2.max_mark) where t2.grade<8 order by gra desc, mar asc;

/*
select case when t2.grade >7 then t1.name else null end, t2.grade, t1.marks from students t1 inner join grades t2 on (t1.marks >=t2.min_mark and t1.marks<=t2.max_mark) order by t2.grade desc, t1.name;
*/

