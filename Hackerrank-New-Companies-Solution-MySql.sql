#Author : Arpit Shukla
# Date : 10th June, 2020

# Hackerrank New Companies Solution MySql

select distinct t1.company_code , t1.founder, t5.lmc, t4.smc, t3.mc, t2.ec
from company as t1
    inner join 
        (select company_code ,count(distinct employee_code) as ec from employee group by
         company_code) as t2
         on t1.company_code = t2.company_code
    inner join 
        (select company_code ,count(distinct manager_code) as mc from manager group by
         company_code) as t3
         on t1.company_code = t3.company_code
    inner join 
        (select company_code ,count(distinct Senior_Manager_code) as smc from Senior_Manager group 
         by company_code) as t4
         on t1.company_code = t4.company_code
    inner join
        (select company_code ,count(distinct Lead_Manager_code) as lmc from Lead_Manager group by
         company_code) as t5
         on t1.company_code = t5.company_code
    order by t1.company_code