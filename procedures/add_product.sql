use lab2;
delimiter //
create definer='root'@'localhost' procedure `add_product`(
	in vencode int,
    in name varchar(255)
)
begin 
	insert into products (vencode, name)
    value (vencode, name);
end//

delimiter //


/* Вызов функции
use lab2;
call add_product('44', 'new product1');
select * from products;
*/