#Author : Arpit Shukla
#Date : 28th May, 2020

#Hackerrank Weather Observation Station 12 Solution MySql

select distinct city from station where city regexp "^([^aieouAIEOU]).*([^aieouAIEOU])$";