/*
Author : Arpit Shukla
Date : 4th June, 2020

Hackerrank Weather Observation Station 17 Solution MySql
*/


select round(long_w,4) from station where lat_n>38.7780 order by lat_n asc limit 1;