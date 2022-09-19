create table users_laptop (
user_id         int     ,
 join_date       date    ,
 favorite_brand  varchar(50));

 create table orders_laptop (
 order_id       int     ,
 order_date     date    ,
 item_id        int     ,
 buyer_id       int     ,
 seller_id      int 
 );

 create table items_laptop
 (
 item_id        int     ,
 item_brand     varchar(50)
 );
 


 insert into users_laptop values (1,'2019-01-01','Lenovo'),(2,'2019-02-09','Samsung'),(3,'2019-01-19','LG'),(4,'2019-05-21','HP');

 insert into items_laptop values (1,'Samsung'),(2,'Lenovo'),(3,'LG'),(4,'HP');

 insert into orders_laptop values (1,'2019-08-01',4,1,2),(2,'2019-08-02',2,1,3),(3,'2019-08-03',3,2,3),(4,'2019-08-04',1,4,2)
 ,(5,'2019-08-04',1,3,4),(6,'2019-08-05',2,2,4);