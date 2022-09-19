select * from users_laptop;
select * from orders_laptop;
select * from items_laptop;

select ul.user_id,ul.favorite_brand,il.item_id  from users_laptop ul inner join items_laptop il
 on ul.favorite_brand = il.item_brand;

with items_match as
(
select ul.user_id,ul.favorite_brand,il.item_id as fav_item_id from users_laptop ul inner join items_laptop il
 on ul.favorite_brand = il.item_brand
) select im.*,ol.order_date,ol.item_id,ol.seller_idtrips_copy from items_match im  inner join orders_laptop ol on im.user_id=ol.seller_id
 