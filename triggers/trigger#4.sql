use lab2;

/*
alter table orders
add column discount int;

alter table orders
add column discount_price decimal(10,2);
*/

drop trigger discount_pr;

DELIMITER //
CREATE TRIGGER discount_pr
BEFORE UPDATE ON orders
FOR EACH ROW
BEGIN
	if new.total_price < 2000 then
		set new.discount = 0;
        
		
	elseif new.total_price between 2000 and 10000 then
		set new.discount = 10;
		
	elseif new.total_price > 10000 then
		set new.discount = 20;
		
        
	end if;
    set new.discount_price = new.total_price - (new.total_price * new.discount)/100;
END;
//
DELIMITER ;



