use lab2;

create table if not exists averages(parametr varchar(45), value float);
drop trigger if exists average_product_price;
drop trigger if exists average_order_price;

DELIMITER //

CREATE TRIGGER average_order_price
AFTER INSERT ON products_in_order
FOR EACH ROW
BEGIN
    
	update averages
    set value = (select AVG(total_price) from orders)
    where parametr = 'orders';
    
END;
//

DELIMITER ;

DELIMITER //

CREATE TRIGGER average_product_price
AFTER INSERT ON products_in_order
FOR EACH ROW
BEGIN
    
	update averages
    set value = (select AVG(price) from prices)
    where parametr = 'products';
    
END;
//

DELIMITER ;