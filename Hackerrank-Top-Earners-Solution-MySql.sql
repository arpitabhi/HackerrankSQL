/*
Author : Arpit Shukla
Date : 3rd June, 2020

Hackerrank Top Earners Solution MySql
*/

select months*salary as Earnings, count(*) from employee group by 1 order by 1 desc limit 1;


