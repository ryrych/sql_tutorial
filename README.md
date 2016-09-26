# Database for [w3resource SQL tutorial](http://www.w3resource.com/sql-exercises/)

I was to lazy to add records manually and too lazy to search for a database.
License: *idontcareware*.

## Setup

```
git clone git@github.com:ryrych/sql_tutorial.git
bundle install
rake db:create
rake db:migrate
rake db:seed
rails server
```

## Differences

Table name are plural:

- `salesman` => `salesmen`
- `customer` => `customers`
- etc.

`commission` is kept as *integer*; `0.15` => `15`

## Querying database from inside Vim

[See my protip](http://ryrych.pl/protips/2016-05-09-querying-database-from-inside-the-vim-protip/)

## Querying database with DB Browser for SQLite

http://sqlitebrowser.org/

## Example data

### salesmen

```
Select * from salesmen;
```

```
salesman_id  name            city         commission
-----------  --------------  -----------  ----------
1            Prudence Boehm  Aryannafort  27        
2            Josiane Swift   Maziemouth   97        
3            Mrs. Gwen O'Ke  Fayport      78        
4            Mike Borer      West Cateri  79        
5            Fiona Keeling   Laurencevie  71        
```

### customers

```
Select * from customers
```

```
customer_id  cust_name      city               grade     
-----------  -------------  -----------------  ----------
1            Zoila Witting  Port Oletaborough  451       
2            Maritza Jenki  West Susieberg     140       
3            Larissa Rober  New Jakechester    219       
4            Blanche Champ  Dickensfort        238       
5            Evangeline Bi  Lake Jarod         274       
```

### orders

```
Select * from orders
```

```
ord_no      purch_amt   customer_id  salesman_id  ord_date           
----------  ----------  -----------  -----------  -------------------
1           980         60           9            2014-01-01 23:00:00
2           653         60           9            2014-10-02 22:00:00
3           1035        60           9            2012-01-08 23:00:00
4           903         60           9            2015-12-19 23:00:00
5           613         60           9            2014-01-07 23:00:00
```

## TODO

- Reword challenges (be more explicit); see http://www.w3resource.com/sql-exercises/sql-boolean-operator-exercise-9.php
- Format SQL => multiline (check how to make it work with `Rdbext`)
- Clean up
- Short screencast how to query from inside vim

# Retrieve data from tables [link](http://www.w3resource.com/sql-exercises/sql-retrieve-from-table.php)

## 1. Write a sql statement to display all the information of all salesmen.

```
Select * from salesmen;
```

[Original solution](http://www.w3resource.com/sql-exercises/sql-retrieve-exercise-1.php)

## 2. Write a sql statement to display a string “This is SQL Exercise, Practice and Solution”

```
Select "This is SQL Exercise, Practice and Solution";
```

```
"This is SQL Exercise, Practice and Solution"
---------------------------------------------
This is SQL Exercise, Practice and Solution  
```

[Original solution](http://www.w3resource.com/sql-exercises/sql-retrieve-exercise-2.php)

## 3. Write a query to display three numbers in three columns

```
Select 2, 3, 5, 7;
```

```
2           3           5           7         
----------  ----------  ----------  ----------
2           3           5           7         
```

[Original solution](http://www.w3resource.com/sql-exercises/sql-retrieve-exercise-3.php)

## 4. Write a query to display the sum of two numbers 10 and 15 from RDMS sever. 

```
Select 25 + 57;
```

```
25 + 57   
----------
82        
```

[Original solution](http://www.w3resource.com/sql-exercises/sql-retrieve-exercise-4.php)

## 5. Write a query to display the result of an arithmetic expression

```
Select (23 + 57) * 42;
```

```
(23 + 57) * 42
--------------
3360          
```

[Original solution](http://www.w3resource.com/sql-exercises/sql-retrieve-exercise-5.php)

## 6. Write a sql statement to display specific columns like name and commission for all the salesmen.

```
Select name, commission from salesmen;
```

[Original solution](http://www.w3resource.com/sql-exercises/sql-retrieve-exercise-6.php)

## 7. Write a query to display the columns in a specific order like order date, salesman id, order number and purchase amount from for all the orders.

```
Select ord_date, salesman_id, ord_no, purch_amt from orders;
```

[Original solution](http://www.w3resource.com/sql-exercises/sql-retrieve-exercise-7.php)

## 8. Write a query which will retrieve the value of salesman id of all salesmen, getting orders from the customers in orders table without any repeats.

```
Select distinct salesman_id from orders;
```

[Original solution](http://www.w3resource.com/sql-exercises/sql-retrieve-exercise-8.php)

## 9. Write a sql statement to display names and city of salesman, who belongs to the city of Paris. 

```
Select name, city from salesmen where city = 'Paris';
```

[Original solution](http://www.w3resource.com/sql-exercises/sql-retrieve-exercise-9.php)

## 10. Write a sql statement to display all the information for those customers with a grade of 200.

```
Select * from customers where grade = 200;
```

[Original solution](http://www.w3resource.com/sql-exercises/sql-retrieve-exercise-10.php)

## 11. Write a sql query to display the order number followed by order date and the purchase amount for each order which will be delivered by the salesman who is holding the ID 5001.

```
Select ord_no, ord_date, purch_amt from orders where salesman_id = 501;
```

# Using Boolean and Relational operators [link](http://www.w3resource.com/sql-exercises/sql-boolean-operators.php)

## 1. Write a query to display all customers with a grade above 100.

```
Select * from customers where grade > 100;
```

[Original solution](http://www.w3resource.com/sql-exercises/sql-boolean-operator-exercise-1.php)

## 2. Write a query statement to display all customers in New York who have a grade value above 100.

```
Select * from customers where city = 'New York' and grade > 100;
```

[Original solution](http://www.w3resource.com/sql-exercises/sql-boolean-operator-exercise-2.php)

## 3. Write a SQL statement to display all customers, who are either belongs to the city New York or had a grade above 100.

```
Select * from customers where city = 'New York' or grade > 100;
```

[Original solution](http://www.w3resource.com/sql-exercises/sql-boolean-operator-exercise-3.php)

## 4. Write a SQL statement to display all the customers, who are either belongs to the city New York or not had a grade above 100.

```
Select * from customers where city = 'New York' or not grade > 100;
```

[Original solution](http://www.w3resource.com/sql-exercises/sql-boolean-operator-exercise-4.php)

## 5.Write a SQL query to display those customers who are neither belongs to the city New York nor grade value is more than 100.

```
Select * from customers where not (city = 'New York' or grade > 100);
```

[Original solution](http://www.w3resource.com/sql-exercises/sql-boolean-operator-exercise-5.php)

## 6. Write a SQL statement to display either those orders which is not issued on date 2012-09-10 and issued by the salesman whose ID is 505 and below or those orders which purchase amount is 1000.00 and below.

```
Select * from orders where not ((ord_date like '%2016-12-19%' and salesman_id <= 500) or purch_amt < 1000);
```

[Original solution](http://www.w3resource.com/sql-exercises/sql-boolean-operator-exercise-6.php)

## 7.Write a SQL statement to display salesman_id, name, city and commission who gets the commission within the range more than 0.10% and less than 0.12%.

```
Select salesman_id, name, city, commission from salesmen where commission between 10 and 12;
```

```
Select salesman_id, name, city, commission from salesmen where (commission > 10 and commission < 12);
```

[Original solution](http://www.w3resource.com/sql-exercises/sql-boolean-operator-exercise-7.php)

## 8. Some fancy and better title

Where:

- Purchase amount is less than 200 OR
- Order date is less or equal to '2012-02-10' AND
- For all customers with `customer_id` less than 300

```
Select * from orders where (purch_amt < 200 or not (ord_date >= '2012-02-10' and customer_id < 300));
```

[Original solution](http://www.w3resource.com/sql-exercises/sql-boolean-operator-exercise-8.php)

## 9. Where not

Your mission is to display orders using `WHERE NOT`, where:

- Order dates equal to '2016-01-15', OR
- Customer id is greater than 150 AND
- Purchase amount is less than 360

```
Select * from orders where (ord_date like '%2016-01-15%' or (customer_id > 150 AND purch_amt < 360));
```

[Original solution](http://www.w3resource.com/sql-exercises/sql-boolean-operator-exercise-9.php)

### Note

The original exercise wording is very misleading. It is not about getting reversed collection, but using `WHERE NOT`. Compare:

```
Select * from orders where ((ord_date like '%2016-01-15%' AND customer_id > 150) OR purch_amt < 360);
```

With:

```
Select * from orders where not ((ord_date like '%2016-01-15%' OR customer_id > 150) AND purch_amt < 360);
```

## 10. Hit the target

Your task is to display

- Order number
- Purchase amount
- Percentage of achieved target, and
- Percentage of unachieved target

List only those orders which exceeds the 50% of target value of 6000.

```
Select ord_no, purch_amt, (100 * purch_amt / 6000) AS "Achieved %", (100 * (6000 - purch_amt) / 6000) AS "Unachieved %" from orders WHERE (100 * purch_amt) / 6000 > 50;
```

[Original solution](http://www.w3resource.com/sql-exercises/sql-boolean-operator-exercise-10.php)

# Wildcard and Special operators [link](http://www.w3resource.com/sql-exercises/sql-wildcard-special-operators.php)

## 1. Write a SQL statement to find those salesmen with all information who come from the city either Paris or Rome

```
Select * from salesmen where city = 'Paris' or city = 'Rome';
```

[Original solution](http://www.w3resource.com/sql-exercises/sql-wildcard-special-operator-exercise-1.php)

## Write a query to filter those salesmen with all information who comes from any of the cities Paris and Rome.

```
Select * from salesmen where city in('Paris', 'Rome');
```

[Original solution](http://www.w3resource.com/sql-exercises/sql-wildcard-special-operator-exercise-2.php)

## Write a query to filter those salesmen with all information who likes to leave other cities than Paris and Rome.

```
Select * from salesmen where not (city = 'Paris' or city = 'Rome');
```

```
Select * from salesmen where city not in('Paris', 'Rome');
```

[Original solution](http://www.w3resource.com/sql-exercises/sql-wildcard-special-operator-exercise-3.php)

## 4. Write a query to sort out those customers with all information whose ID value is within any of 3007, 3008 and 3009.

```
Select * from salesmen where salesman_id in(3007, 3008, 3009);
```

[Original solution](http://www.w3resource.com/sql-exercises/sql-wildcard-special-operator-exercise-4.php)

## 5. Write a SQL statement to find those salesmen with all information who gets the commission within a range of 0.12 and 0.14. 

```
Select * from salesmen where commission between 12 and 14;
```

[Original solution](http://www.w3resource.com/sql-exercises/sql-wildcard-special-operator-exercise-5.php)

## 6. Write a query to filter all those orders with all information which purchase amount value is within the range 500 and 4000 except those orders of purchase amount value 948.50 and 1983.43.

```
Select * from orders where (purch_amt between 500 and 400) and not purch_amt in(948, 1983);
```

```
Select * from orders where (purch_amt between 500 and 400) except select * from orders where purch_amt in(948, 1983);
```

[Original solution](http://www.w3resource.com/sql-exercises/sql-wildcard-special-operator-exercise-6.php)

## 7. Write a SQL statement to find those salesmen with all other information and name started with any latter 'A' and 'L'.

```
Select * from salesmen where name between 'A' and 'L';
```

[Original solution](http://www.w3resource.com/sql-exercises/sql-wildcard-special-operator-exercise-7.php)

[Question on stackoverflow](http://stackoverflow.com/questions/5980783/sql-between-clause-with-strings-columns)

## 8. Write a SQL statement to find those salesmen with all other information and name started with other than any latter within 'A' and 'L'.

```
Select * from salesmen where name not between 'A' and 'L';
```

[Original solution](http://www.w3resource.com/sql-exercises/sql-wildcard-special-operator-exercise-8.php)

## 9. Write a SQL statement to find those customer with all information whose name begin with the letter 'B'.

```
Select * from customers where cust_name like 'B%';
```

[Original solution](http://www.w3resource.com/sql-exercises/sql-wildcard-special-operator-exercise-9.php)

## 10. Write a SQL statement to find all those customer with all information whose names are ending with the letter 'n'

```
Select * from customers where cust_name like '%n';
```

[Original solution](http://www.w3resource.com/sql-exercises/sql-wildcard-special-operator-exercise-10.php)

## 11. Write a SQL statement to find those salesmen with all information whose name contain only four characters, in which 1st character must be 'N' and 4th character is l and rests may be any character.

```
Select * from salesmen where name like 'N__l%';
```

[Original solution](http://www.w3resource.com/sql-exercises/sql-wildcard-special-operator-exercise-11.php)

## 12. Write a SQL statement to find those rows from the table testtable which contain the escape character underscore ( _ ) in its column 'col1'.

```
Select * from salesmen where city = 'Paris' or city = 'Rome';
```

[Original solution](http://www.w3resource.com/sql-exercises/sql-wildcard-special-operator-exercise-11.php)
