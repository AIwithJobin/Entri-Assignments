create database sales;
use sales;

create table orders(
	order_id varchar(20) primary key,
    customer_name varchar(20) not null,
    product_category varchar(20),
    ordered_item varchar(20),
    contact_no char(10) unique
);

alter table orders add column order_quantity int;

alter table orders rename to sales_orders;

insert into  sales_orders(order_id,customer_name,product_category,ordered_item,contact_no,order_quantity) 
values
	('o1','jobin','electronics','phone',9744469742,1),
    ('o2','jose','dress','t shirt',7894563214,2),
    ('o3','josmy','vechicle','car',7531239638,1),
    ('o4','jomon','electronics','earphone',7412589635,1),
    ('o5','melani','cosmetics','lipstick',9061195177,5),
    ('o6','sissi','dress','saree',8547544860,4),
    ('o7','ajai','dress','jeans',7896541475,3),
    ('o8','krishna','vechicle','scooter',3214785236,1),
    ('o9','rohan','cosmetics','blender',777888665,3),
    ('o10','joseph','dress','cap',4563217896,1);
    
    select * from sales_orders;
    
    select customer_name as 'customer name',ordered_item as 'ordered item' from sales_orders;
    
    update sales_orders set ordered_item ='smart phone ' where order_id='o1';
    
    drop table sales_orders;
    

    
