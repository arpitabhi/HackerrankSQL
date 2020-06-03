/*
Author : Arpit Shukla
Date : 4th June, 2020

Hackerrank Weather Observation Station 15 Solution MySql
*/

select round(long_w,4) from station where lat_n<137.2345 order by lat_n desc limit 1;


