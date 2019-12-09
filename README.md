# GroceryApplication
 Manage a grocer as a staff or customer, uses jdbc and SQL, has GUI
 CS425 Database Organization

##Members
 Niti Wattanasirichaigoon
 Wenqian Wu

##Software spqcifications
Java Compiler 1.8
PosgreSQL 11.3
postgeSQL jdbc 4.2 driver
connection url: 'jdbc:postgresql://localhost:5433/Grocery'

##Grocery Database setup
1. run 'Grocery_DDL.sql' to setup database schema
2. run 'Grocery_init_users.sql' to create roles and users
3. run 'Grocery_init_data.sql' to insert sample data for testing
4. run 'Application.java' to start program

##users
username: customer1
password: customer1
user role: customer

username: staff1
password: staff1
user role: staff