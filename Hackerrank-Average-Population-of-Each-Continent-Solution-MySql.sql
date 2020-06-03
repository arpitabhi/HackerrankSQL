/*
Author : Arpit Shukla
Date : 4th June, 2020

Hackerrank Average Population of Each Continent Solution MySql
*/

select c2.continent, floor(avg(c1.population)) from city c1 inner join country c2 on c1.countrycode=c2.code group by c2.continent;


