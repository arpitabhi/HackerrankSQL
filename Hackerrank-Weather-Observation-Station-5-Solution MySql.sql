#Author : Arpit Shukla
#Date : 27th May, 2020

#Hackerrank Weather Observation Station 5 Solution MySql


select CITY, length(CITY) from STATION order by length(CITY) asc , CITY asc limit 1;
select CITY, length(CITY) from STATION order by length(CITY) desc , CITY asc limit 1;