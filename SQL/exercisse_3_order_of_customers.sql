/*
Question 1: Total Orders Per Customer

Write a query to display the total number of orders placed by each customer, 
along with their name and the date they joined. Sort the results by the total number of orders in descending order.
*/
SELECT customers.customer_name, customers.join_date, count(orders.order_id) as Total_orders
    from Customers
        join orders ON orders.customer_id=customers.customer_id
        join orderitems on orders.order_id=orderitems.order_id 
    GROUP BY customers.customer_name, customers.join_date
    order by count(orders.order_id) DESC



/*Question 2: Rank Customers by Spending

For each customer, calculate their total spending (sum of the total amounts from the `Orders` table) 
and rank them by total spending within their respective country. 
Use a **window function** to rank the customers.
*/

SELECT customers.customer_name, SUM(orderitems.quantity*orderitems.price) as Total, 
customers.country, RANK() OVER(PARTITION BY customers.country ORDER BY SUM(orderitems.quantity*orderitems.price) DESC) as ranking
    from Customers
        join orders ON orders.customer_id=customers.customer_id
        join orderitems on orders.order_id=orderitems.order_id 
        GROUP BY customers.customer_name, customers.join_date, customers.country
        order by SUM(orderitems.quantity*orderitems.price) DESC

