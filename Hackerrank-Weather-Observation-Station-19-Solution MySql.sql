/*
Author : Arpit Shukla
Date : 4th June, 2020

Hackerrank Weather Observation Station 19 Solution MySql
*/

select round(sqrt(power(max(lat_n)-min(lat_n),2)+power(max(long_w)-min(long_w),2)),4) from station;