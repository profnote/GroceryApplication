--inserts initial mock data for the Grocery database
insert into customer (Cus_ID, name, username) values ('12346', 'Bester', 'customer2');
insert into customer (Cus_ID, name, username) values ('12347', 'Chester', 'customer3');
insert into customer (Cus_ID, name, username) values ('12348', 'Dester', 'customer4');
insert into customer (Cus_ID, name, username) values ('12349', 'Easter', 'customer5');
insert into customer (Cus_ID, name, username) values ('12350', 'Faster', 'customer6');
insert into customer (Cus_ID, name, username) values ('12351', 'Jester', 'customer7');

insert into staff values ('S2468', 'Master', 'Gudaku', 'Gacha Hell', 5400, 'gudako');

insert into product values ('00001', 'Sushi', 10, 'food');
insert into product values ('00002', 'Dumpings', 9, 'food');
insert into product values ('00003', 'Ramen', 11, 'food');
insert into product values ('00004', 'Potato', 4, 'food');
insert into product values ('00005', 'Chips', 5, 'food');
insert into product values ('00006', 'Donut', 2, 'food');
insert into product values ('00011', 'Soda', 2, 'drink');
insert into product values ('00012', 'Sake', 3, 'drink');
insert into product values ('99999', 'Bag', 1, 'other', 'A bag to hold items');

insert into warehouse values ('W1235', 'New York', 'Whatever St.', 20000);
insert into warehouse values ('W1236', 'Old York', 'Whereever St.', 30000);
insert into warehouse values ('W1237', 'Left York', 'Whenever St.', 10000);
insert into warehouse values ('W1238', 'Right York', 'However St.', 50000);
insert into warehouse values ('W1239', 'Real York', 'Whyever St.', 40000);

insert into address values ('12345', 'New York', 'something1');
insert into address values ('12346', 'New York', 'something2');
insert into address values ('12347', 'Old York', 'something3');
insert into address values ('12348', 'Old York', 'something4');
insert into address values ('12349', 'Left York', 'something5');
insert into address values ('12350', 'Right York', 'something6');
insert into address values ('12351', 'Real York', 'something7');

insert into credit_card values ('12345', '1122334455667788', 'something1');
insert into credit_card values ('12346', '11223344556677', 'something2');
insert into credit_card values ('12347', '112233445566', 'something3');
insert into credit_card values ('12348', '1122334455', 'something4');
insert into credit_card values ('12349', '11223344', 'something5');
insert into credit_card values ('12350', '112233445566778899', 'something6');
insert into credit_card values ('12351', '11223344556677889900', 'something7');

insert into pricing values ('00001', 'New York', 10.00);
insert into pricing values ('00002', 'New York', 9.00);
insert into pricing values ('00003', 'New York', 11.00);
insert into pricing values ('00004', 'New York', 4.00);
insert into pricing values ('00005', 'New York', 5.00);
insert into pricing values ('00011', 'New York', 2.00);
insert into pricing values ('00012', 'New York', 3.00);
insert into pricing values ('00001', 'Old York', 10.99);
insert into pricing values ('00002', 'Old York', 9.99);
insert into pricing values ('00003', 'Old York', 11.99);
insert into pricing values ('00004', 'Old York', 4.99);
insert into pricing values ('00005', 'Old York', 5.99);
insert into pricing values ('00011', 'Old York', 2.99);
insert into pricing values ('00012', 'Old York', 3.99);
insert into pricing values ('00001', 'Real York', 10.01);
insert into pricing values ('00002', 'Real York', 9.01);
insert into pricing values ('00003', 'Real York', 11.01);
insert into pricing values ('00004', 'Real York', 4.01);
insert into pricing values ('00005', 'Real York', 5.01);
insert into pricing values ('00011', 'Real York', 2.01);
insert into pricing values ('00012', 'Real York', 3.01);

insert into stock values ('W1235', '00001', 20);
insert into stock values ('W1235', '00002', 12);
insert into stock values ('W1235', '00003', 10);
insert into stock values ('W1235', '00004', 20);
insert into stock values ('W1235', '00005', 10);
insert into stock values ('W1235', '00011', 10);
insert into stock values ('W1235', '00012', 10);
insert into stock values ('W1236', '00001', 10);
insert into stock values ('W1236', '00002', 10);
insert into stock values ('W1236', '00003', 10);
insert into stock values ('W1236', '00004', 10);
insert into stock values ('W1236', '00005', 10);
insert into stock values ('W1236', '00011', 10);
insert into stock values ('W1236', '00012', 10);
insert into stock values ('W1239', '00001', 2);
insert into stock values ('W1239', '00002', 2);
insert into stock values ('W1239', '00003', 2);
insert into stock values ('W1239', '00004', 2);
insert into stock values ('W1239', '00005', 2);
insert into stock values ('W1239', '00011', 2);
insert into stock values ('W1239', '00012', 2);

insert into shopping_cart values ('12345', '00003', 3);
insert into shopping_cart values ('12345', '00001', 5);