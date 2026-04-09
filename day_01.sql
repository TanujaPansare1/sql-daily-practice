/* Date: 08/04/26
   Day 1: SQL Practice - Queries 1 to 5
   
*/

-- 1. Display all information from the salespeople table
select * from salespeople;

-- 2. List all customers that have a rating of exactly 100
select * from customers 
where rating = 100;

-- 3. Identify records in the customer table where the city is not entered (NULL)
select * from customers 
where city is null;

-- 4. Find the maximum order amount for every salesperson on each specific date
select snum, odate, max(amt) 
from orders 
group by snum, odate;

-- 5. Show the orders table sorted by customer number in descending order
select * from orders 
order by cnum desc;