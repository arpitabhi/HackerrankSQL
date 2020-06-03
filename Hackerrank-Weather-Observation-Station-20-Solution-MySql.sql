/*
Author : Arpit Shukla
Date : 4th June, 2020

Hackerrank Weather Observation Station 20 Solution MySql
*/

select round(max(lat_n),4) from (select * from station order by lat_n asc limit 250 ) as a;


