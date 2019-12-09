--Creates the Grocery Database schema

--create database Grocery;
--connect Grocery;

create table customer
	(cus_ID				varchar(5) ,
	 name				varchar(20),
	 balance			numeric(6,2) default 0 check (balance > 0),
	 username			varchar(20),
	 primary key (Cus_ID),
	 unique (username)
	);

create table product
	(pro_ID		varchar(5), 
	 name		varchar(15),
	 size		numeric(5) check (size > 0),
	 type		varchar(8) check (type in ('food', 'drink', 'other')),
	 description	varchar(20) default 'No Description',
	 primary key (pro_ID)
	);

create table warehouse
	(ware_ID		varchar(5),
	 state		varchar(10),
 	 address		varchar(20), 
	 capacity		numeric(20) check (size > 0),
	 primary key (Ware_ID)
	);

create table address
	(Cus_ID			varchar(5), 
	 state			varchar(20) not null, 
	 street			varchar(20), 
	 primary key (Cus_ID,state,street),
	 foreign key (Cus_ID) references customer(Cus_ID)
		on delete cascade
	);
	
create table credit_card
	(Cus_ID				varchar(5), 
	 card_number		varchar(20), 
	 address			varchar(20), 
	 primary key (Cus_ID,card_number),
	 foreign key (Cus_ID) references customer(Cus_ID)
		on delete cascade
	);

create table orders
	(order_ID		SERIAL, 
     status			varchar(8) check (status in ('issued', 'send', 'received')),
	 card_number		varchar(20),
	 time			varchar(35),
	 cus_ID			varchar(5),
	 total_cost		numeric(6,2) check (total_cost > 0),
	 primary key (order_ID),
	 foreign key (card_number,cus_ID) references credit_card(card_number,cus_ID),
	 foreign key (cus_ID) references customer(Cus_ID)
	);

create table products_in_order
	(order_ID			SERIAL, 
	 pro_ID				varchar(5),
	 quantity			numeric(3,0) check (quantity > 0), 
	 primary key (order_ID, pro_ID),
	 foreign key (order_ID) references orders(order_ID)
		on delete cascade,
	 foreign key (pro_ID) references product(pro_ID)
		on delete cascade
	);

create table pricing
	(pro_ID			varchar(5), 
	 state			varchar(20),
	 price			numeric(5,2) check (price > 0), 
	 primary key (pro_ID,state),
	 foreign key (pro_ID) references product(pro_ID)
	 	on delete cascade
	);

create table stock
	(ware_ID		varchar(5),
	 pro_ID			varchar(5), 
	 amount			numeric(5,0) check (amount > 0),
	 primary key (pro_ID, ware_ID),
	 foreign key (pro_ID) references product(pro_ID)
		on delete cascade,
	 foreign key (ware_ID) references warehouse(ware_ID)
		on delete cascade
	);

create table staff
	(staff_ID		varchar(5),
	 title			varchar(10),
	 name			varchar(15),
	 address		varchar(20),
	 salary			numeric(9,2) check (salary > 0),
	 username		varchar(20),
	 primary key (staff_ID),
	 unique (username)
	);

create table shopping_cart 
	(cus_id			varchar(5),
	 pro_id			varchar(5),
	 quantity		numeric(3,0) check (quantity > 0),
	 primary key (cus_id, pro_id),
	 foreign key (cus_id) references customer(cus_id)
		on delete cascade,
	 foreign key (pro_ID) references product(pro_ID)
		on delete cascade
	);

create table supplier 
	(sup_id			varchar(5),
	 name			varchar(15),
	 address		varchar(20),
	 primary key (sup_id)
	);
	
create table supplier_products
	(sup_id			varchar(5),
	 pro_id			varchar(5),
	 sup_price		numeric(5,2),
	 foreign key (pro_ID) references product(pro_ID)
		on delete cascade,
	 foreign key (sup_id) references supplier(sup_id)
		on delete cascade,
	 primary key (sup_id, pro_id)
	);