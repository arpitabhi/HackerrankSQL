/*
Author : Arpit Shukla
Date : 4th June, 2020

Hackerrank Draw The Triangle 1 Solution MySql
*/

SELECT REPEAT('* ', @NUMBER := @NUMBER - 1) FROM information_schema.tables, (SELECT @NUMBER:=21) t LIMIT 20


