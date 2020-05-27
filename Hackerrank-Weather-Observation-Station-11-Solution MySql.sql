#Author : Arpit Shukla
#Date : 28th May, 2020

#Hackerrank Weather Observation Station 11 Solution MySql

select distinct city from station where city regexp "^([^aieouAIEOU]).*([^aieouAIEOU])$" or city regexp "^([^aieouAIEOU])" or city regexp "([^aieouAIEOU])$";


