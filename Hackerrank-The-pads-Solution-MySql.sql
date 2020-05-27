#Author : Arpit Shukla
#Date : 28th May, 2020

#Hackerrank The pads Solution MySql


select concat(name,'(',mid(occupation,1,1),')') from OCCUPATIONS order by name;
select concat('There are a total of ',count(occupation),' ',lower(occupation),'s.') from occupations group by occupation order by count(occupation), occupation;