/* Date: 08/04/26
   Day 1: SQL Practice - Queries 1 to 5
   
*/

-- 1. display all columns from the salespeople table
select * from salespeople;


-- 2. list all customers with a rating of 100
select * from customers where rating = 100;


-- 3. find records in the customer table with null values in city
select * from customers where city is null;


-- 4. largest order taken by each salesperson on each date
select snum, odate, max(amt) 
from orders 
group by snum, odate;


-- 5. arrange orders table by descending customer number
select * from orders order by cnum desc;
