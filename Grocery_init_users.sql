/* Creates the customer and staff roles for the Grocery databse
* also creates a customer (user: customer1, pass: customer1)
* and a staff (user: staff1, pass: staff1) for testing/grading purposes
*/

-- Role: customer
-- DROP ROLE customer;

CREATE ROLE customer WITH
  NOLOGIN
  NOSUPERUSER
  INHERIT
  NOCREATEDB
  NOCREATEROLE
  NOREPLICATION;

GRANT USAGE ON SCHEMA public to customer;
GRANT USAGE, SELECT ON ALL SEQUENCES IN SCHEMA public TO customer;
GRANT SELECT, INSERT, UPDATE ON TABLE customer, stock, products_in_order TO CUSTOMER;
GRANT SELECT ON TABLE pricing, product, warehouse TO CUSTOMER;
GRANT SELECT, INSERT, DELETE, UPDATE ON TABLE orders, address, credit_card, shopping_cart TO CUSTOMER;

-- Role: staff
DROP ROLE staff;

CREATE ROLE staff WITH
  NOLOGIN
  NOSUPERUSER
  INHERIT
  NOCREATEDB
  NOCREATEROLE
  NOREPLICATION;

GRANT USAGE ON SCHEMA public to staff;
GRANT USAGE, SELECT ON ALL SEQUENCES IN SCHEMA public TO staff;
GRANT SELECT, UPDATE ON TABLE staff TO staff;
GRANT SELECT ON TABLE products_in_order, orders TO staff;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE stock, product, pricing, warehouse TO staff;

--Create a customer and a staff user
-- User: customer1
-- DROP USER customer1;

CREATE USER customer1 WITH
  LOGIN
  NOSUPERUSER
  INHERIT
  NOCREATEDB
  NOCREATEROLE
  NOREPLICATION;
GRANT customer TO customer1;
insert into customer (Cus_ID, name, username) values ('12345', 'Alice', 'customer1');
-- User: staff1
-- DROP USER staff1;

CREATE USER staff1 WITH
  LOGIN
  NOSUPERUSER
  INHERIT
  NOCREATEDB
  NOCREATEROLE
  NOREPLICATION;

GRANT staff TO staff1;
insert into staff values ('S2467', 'Manager', 'Randon Guy', 'iit', 6000, 'staff1');