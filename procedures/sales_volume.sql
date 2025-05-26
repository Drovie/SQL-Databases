use lab2;
delimiter //
CREATE DEFINER=`root`@`localhost` PROCEDURE `sales_volume`(
	in product_data varchar(255))
BEGIN
	select prod.name, prod.vencode, sum(pio.amount) as sales_amount, sum(pr.price) as moneys_from_sales 
    from products_in_order pio 
    join products prod on (prod.id = pio.products_id) 
    join prices pr on (pr.vencode = prod.vencode) 
    where prod.vencode = product_data
    or prod.name = product_data
    or product_data = (select concat(prod.name, ' ', prod.vencode))
    group by prod.name, prod.vencode;
END//
delimiter //


/* Вызов функции
use lab2;
call sales_volume('10');
*/