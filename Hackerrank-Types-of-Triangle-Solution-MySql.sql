#Author : Arpit Shukla
#Date : 28th May, 2020

#Hackerrank Types of Triangle Solution MySql

select if(a+b>c and b+c>a and c+a>b,if(A=b or b=c or c=a,if(a=b and b=c,"Equilateral","Isosceles"),"Scalene"),"Not A Triangle") from triangles;



