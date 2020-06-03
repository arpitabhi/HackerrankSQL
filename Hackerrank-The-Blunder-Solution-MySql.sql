/*
Author : Arpit Shukla
Date : 3rd June, 2020

Hackerrank The Blunder Solution MySql
*/

select ceil(avg(salary) - avg(replace(salary,"0",""))) from employees;