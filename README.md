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

## Other

- Number of records is limited for the sake of simplicity
- You will get different result depending on seeded data (`rake db:seed`)

## TODO

- Change seeds to reflect more or less data from exercises
- Change orders datetime to date for simplicity
- Reword challenges (be more explicit); see http://www.w3resource.com/sql-exercises/sql-boolean-operator-exercise-9.php
- Format SQL => multiline (check how to make it work with `Rdbext`)
- Clean up

# Retrieve data from tables [link](http://www.w3resource.com/sql-exercises/sql-retrieve-from-table.php)

## 1. Write a sql statement to display all the information of all salesmen.

```
Select * from salesmen;
```

```
salesman_id  name                 city            commission
-----------  -------------------  --------------  ----------
511          Dr. Archibald Yundt  West Treyville  52        
512          Pasquale Wisoky      South Taylor    52        
513          Clifford Beier       South Herta     74        
514          Mrs. Sharon Howe     East Murlburgh  23        
515          Miss Richie Raynor   North Tressie   6         
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

```
name                 commission
-------------------  ----------
Dr. Archibald Yundt  52        
Pasquale Wisoky      52        
Clifford Beier       74        
Mrs. Sharon Howe     23        
Miss Richie Raynor   6         
```

[Original solution](http://www.w3resource.com/sql-exercises/sql-retrieve-exercise-6.php)

## 7. Write a query to display the columns in a specific order like order date, salesman id, order number and purchase amount from for all the orders.

```
Select ord_date, salesman_id, ord_no, purch_amt from orders;
```

```
ord_date             salesman_id  ord_no      purch_amt 
-------------------  -----------  ----------  ----------
2016-12-19 23:00:00  517          501         1246      
2012-04-19 22:00:00  517          502         1772      
2015-04-10 22:00:00  517          503         1577      
2012-09-10 22:00:00  517          504         1238      
2014-10-09 22:00:00  517          505         1218      
```

[Original solution](http://www.w3resource.com/sql-exercises/sql-retrieve-exercise-7.php)

## 8. Write a query which will retrieve the value of salesman id of all salesmen, getting orders from the customers in orders table without any repeats.

```
Select distinct salesman_id from orders;
```

```
salesman_id
-----------
517        
```

[Original solution](http://www.w3resource.com/sql-exercises/sql-retrieve-exercise-8.php)

## 9. Write a sql statement to display names and city of salesman, who belongs to the city of Paris. 

```
Select name, city from salesmen where city = 'Paris';
```

```
fake it
```

[Original solution](http://www.w3resource.com/sql-exercises/sql-retrieve-exercise-9.php)

## 10. Write a sql statement to display all the information for those customers with a grade of 200.

```
Select * from customers where grade = 200;
```

```
customer_id  cust_name       city        grade     
-----------  --------------  ----------  ----------
524          Demond Reichel  Coleberg    200       
```

[Original solution](http://www.w3resource.com/sql-exercises/sql-retrieve-exercise-10.php)

## 11. Write a sql query to display the order number followed by order date and the purchase amount for each order which will be delivered by the salesman who is holding the ID 5001.

```
Select ord_no, ord_date, purch_amt from orders where salesman_id = 501;
```

```
ord_no      ord_date             purch_amt 
----------  -------------------  ----------
501         2016-12-19 23:00:00  1246      
502         2012-04-19 22:00:00  1772      
503         2015-04-10 22:00:00  1577      
504         2012-09-10 22:00:00  1238      
505         2014-10-09 22:00:00  1218      
```

# Using Boolean and Relational operators [link](http://www.w3resource.com/sql-exercises/sql-boolean-operators.php)

## 1. Write a query to display all customers with a grade above 100.

```
Select * from customers where grade > 100;
```

```
customer_id  cust_name     city           grade     
-----------  ------------  -------------  ----------
503          Rodolfo Jast  North Lisette  259       
504          Joanny Harri  Sydniechester  154       
505          Amelia Abbot  Port Sandrine  145       
506          Miss Shane C  Shanaborough   240       
507          Alessandra B  New Percivalt  279       
```

[Original solution](http://www.w3resource.com/sql-exercises/sql-boolean-operator-exercise-1.php)

## 2. Write a query statement to display all customers in New York who have a grade value above 100.

```
Select * from customers where city = 'New York' and grade > 100;
```

```
customer_id  cust_name     city           grade     
-----------  ------------  -------------  ----------
513          Dino Gleichn  East Vivienfo  271       
514          Callie Jones  Lednermouth    215       
515          Khalil Jewes  West Madilynp  281       
516          Winston Kris  South Giovann  335       
517          Marilou Gusi  East Rowanlan  119       
```

[Original solution](http://www.w3resource.com/sql-exercises/sql-boolean-operator-exercise-2.php)

## 3. Write a SQL statement to display all customers, who are either belongs to the city New York or had a grade above 100.

```
Select * from customers where city = 'New York' or grade > 100;
```

```
customer_id  cust_name     city           grade     
-----------  ------------  -------------  ----------
503          Rodolfo Jast  North Lisette  259       
504          Joanny Harri  Sydniechester  154       
505          Amelia Abbot  Port Sandrine  145       
506          Miss Shane C  Shanaborough   240       
507          Alessandra B  New Percivalt  279       
```

[Original solution](http://www.w3resource.com/sql-exercises/sql-boolean-operator-exercise-3.php)

## 4. Write a SQL statement to display all the customers, who are either belongs to the city New York or not had a grade above 100.

```
Select * from customers where city = 'New York' or not grade > 100;
```

```
customer_id  cust_name     city           grade     
-----------  ------------  -------------  ----------
503          Rodolfo Jast  North Lisette  259       
504          Joanny Harri  Sydniechester  154       
505          Amelia Abbot  Port Sandrine  145       
506          Miss Shane C  Shanaborough   240       
507          Alessandra B  New Percivalt  279       
```

[Original solution](http://www.w3resource.com/sql-exercises/sql-boolean-operator-exercise-4.php)

## 5.Write a SQL query to display those customers who are neither belongs to the city New York nor grade value is more than 100.

```
Select * from customers where not (city = 'New York' or grade > 100);
```

```
customer_id  cust_name           city         grade     
-----------  ------------------  -----------  ----------
511          Keagan Heidenreich  Littelhaven  100       
```

[Original solution](http://www.w3resource.com/sql-exercises/sql-boolean-operator-exercise-5.php)

## 6. Write a SQL statement to display either those orders which is not issued on date 2012-09-10 and issued by the salesman whose ID is 505 and below or those orders which purchase amount is 1000.00 and below.

```
Select * from orders where not ((ord_date like '%2016-12-19%' and salesman_id <= 500) or purch_amt < 1000);
```

```
ord_no      purch_amt   customer_id  salesman_id  ord_date           
----------  ----------  -----------  -----------  -------------------
502         1772        536          517          2012-04-19 22:00:00
503         1577        536          517          2015-04-10 22:00:00
504         1238        536          517          2012-09-10 22:00:00
505         1218        536          517          2014-10-09 22:00:00
506         1663        536          517          2013-06-03 22:00:00
```

[Original solution](http://www.w3resource.com/sql-exercises/sql-boolean-operator-exercise-6.php)

## 7.Write a SQL statement to display salesman_id, name, city and commission who gets the commission within the range more than 0.10% and less than 0.12%.

```
Select salesman_id, name, city, commission from salesmen where commission between 10 and 12;
```

```
Select salesman_id, name, city, commission from salesmen where (commission > 10 and commission < 12);
```

```
salesman_id  name                 city            commission
-----------  -------------------  --------------  ----------
511          Dr. Archibald Yundt  West Treyville  52        
512          Pasquale Wisoky      South Taylor    52        
514          Mrs. Sharon Howe     East Murlburgh  23        
516          Dulce Maggio         Lake Jerrell    40        
520          Ewald Roberts        New Greyson     35        
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

```
ord_no      purch_amt   customer_id  salesman_id  ord_date           
----------  ----------  -----------  -----------  -------------------
501         1246        536          517          2016-12-19 23:00:00
502         1772        536          517          2012-04-19 22:00:00
503         1577        536          517          2015-04-10 22:00:00
504         1238        536          517          2012-09-10 22:00:00
505         1218        536          517          2014-10-09 22:00:00
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

```
ord_no      purch_amt   customer_id  salesman_id  ord_date           
----------  ----------  -----------  -----------  -------------------
501         1246        536          517          2016-12-19 23:00:00
502         1772        536          517          2012-04-19 22:00:00
503         1577        536          517          2015-04-10 22:00:00
504         1238        536          517          2012-09-10 22:00:00
505         1218        536          517          2014-10-09 22:00:00
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

```
ord_no      purch_amt   Achieved %  Unachieved %
----------  ----------  ----------  ------------
501         1246        20          79          
502         1772        29          70          
503         1577        26          73          
504         1238        20          79          
505         1218        20          79          
```

[Original solution](http://www.w3resource.com/sql-exercises/sql-boolean-operator-exercise-10.php)
