#Author : Arpit Shukla
#Date : 28th May, 2020

#Hackerrank Higher Than 75 Marks Solution MySql

select name from students where marks>75 order by mid(name,-3) asc, id asc;


