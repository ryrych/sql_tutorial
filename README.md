# Database for [w3resource SQL tutorial](http://www.w3resource.com/sql-exercises/)

I was to lazy to add records manually and too lazy to search for a database.
License: *idontcareware*.

## Differences

Table name are plural:

- `salesman` => `salesmen`
- `customer` => `customers`
- etc.

`commission` is kept as *integer*; `0.15` => `15`

## Other

- Number of records is limited for the sake of simplicity
- You will get different result depending on seeded data (`rake db:seed`)

## TODO

- Clean up
- Add info how to set it up
- How to query database from *vim*
- How to query from [DB Browser for SQLite](http://sqlitebrowser.org/)

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

[Solution](http://www.w3resource.com/sql-exercises/sql-retrieve-exercise-1.php)

## 2. Write a sql statement to display a string “This is SQL Exercise, Practice and Solution”

```
Select "This is SQL Exercise, Practice and Solution";
```

```
"This is SQL Exercise, Practice and Solution"
---------------------------------------------
This is SQL Exercise, Practice and Solution  
```

[Solution](http://www.w3resource.com/sql-exercises/sql-retrieve-exercise-2.php)

## 3. Write a query to display three numbers in three columns

```
Select 2, 3, 5, 7;
```

```
2           3           5           7         
----------  ----------  ----------  ----------
2           3           5           7         
```

[Solution](http://www.w3resource.com/sql-exercises/sql-retrieve-exercise-3.php)

## 4. Write a query to display the sum of two numbers 10 and 15 from RDMS sever. 

```
Select 25 + 57;
```

```
25 + 57   
----------
82        
```

[Solution](http://www.w3resource.com/sql-exercises/sql-retrieve-exercise-4.php)

## 5. Write a query to display the result of an arithmetic expression

```
Select (23 + 57) * 42;
```

```
(23 + 57) * 42
--------------
3360          
```

[Solution](http://www.w3resource.com/sql-exercises/sql-retrieve-exercise-5.php)

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

[Solution](http://www.w3resource.com/sql-exercises/sql-retrieve-exercise-6.php)

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

[Solution](http://www.w3resource.com/sql-exercises/sql-retrieve-exercise-7.php)

## 8. Write a query which will retrieve the value of salesman id of all salesmen, getting orders from the customers in orders table without any repeats.

```
Select distinct salesman_id from orders;
```

```
salesman_id
-----------
517        
```

[Solution](http://www.w3resource.com/sql-exercises/sql-retrieve-exercise-8.php)

## 9. Write a sql statement to display names and city of salesman, who belongs to the city of Paris. 

```
Select name, city from salesmen where city = 'Paris';
```

```
fake it
```

[Solution](http://www.w3resource.com/sql-exercises/sql-retrieve-exercise-9.php)

## 10. Write a sql statement to display all the information for those customers with a grade of 200.

```
Select * from customers where grade = 200;
```

```
customer_id  cust_name       city        grade     
-----------  --------------  ----------  ----------
524          Demond Reichel  Coleberg    200       
```

[Solution](http://www.w3resource.com/sql-exercises/sql-retrieve-exercise-10.php)

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
