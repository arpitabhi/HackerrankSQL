/*
Author : Arpit Shukla
Date : 4th June, 2020

Hackerrank Draw The Triangle 2 Solution MySql
*/

select repeat("* ",@i:=@i+1) from information_schema.tables, (select @i:=0) t limit 20;