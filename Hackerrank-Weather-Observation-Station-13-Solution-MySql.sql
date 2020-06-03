/*
Author : Arpit Shukla
Date : 3rd June, 2020

Hackerrank Weather Observation Station 13 Solution MySql
*/

select round(sum(lat_n),4) from station where lat_n >38.7880 and lat_n <137.2345;

