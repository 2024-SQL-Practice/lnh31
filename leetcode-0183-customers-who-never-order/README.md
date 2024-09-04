<h2><a href="https://leetcode.com/problems/customers-who-never-order/description/">183. Customers Who Never Order</a></h2><h3>Easy</h3><hr><div class="sql-schema-wrapper__3VBi"></div>

<div><p>Table: 
<code>Customers</code></p>
<pre>
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| name        | varchar |
+-------------+---------+
id is the primary key (column with unique values) for this table.
Each row of this table indicates the ID and name of a customer.
</pre>

<div><p>Table: 
<code>Orders</code></p>
<pre>
+-------------+------+
| Column Name | Type |
+-------------+------+
| id          | int  |
| customerId  | int  |
+-------------+------+
id is the primary key (column with unique values) for this table.
customerId is a foreign key (reference columns) of the ID from the Customers table.
Each row of this table indicates the ID of an order and the ID of the customer who ordered it.
</pre>

<p>&nbsp;</p>

<strong>Write a solution to find all customers who never order anything.</strong>

Return the result table in any order.

The result format is in the following example.

<p>&nbsp;</p>

<p><strong class="example">Example 1:</strong></p>
<pre>Input: 
Customers table:
+----+-------+
| id | name  |
+----+-------+
| 1  | Joe   |
| 2  | Henry |
| 3  | Sam   |
| 4  | Max   |
+----+-------+
Orders table:
+----+------------+
| id | customerId |
+----+------------+
| 1  | 3          |
| 2  | 1          |
+----+------------+
Output: 
+-----------+
| Customers |
+-----------+
| Henry     |
| Max       |
+-----------+
</pre>
</div>