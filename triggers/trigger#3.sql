use lab2;

/*
alter table products
add column amount int;
*/

update products
set amount = (select floor(rand()*(200-1)+1));

drop trigger if exists decrease_amount_on_insert;
drop trigger if exists change_amount_on_update;

DELIMITER //
CREATE TRIGGER decrease_amount_on_insert
AFTER INSERT ON products_in_order
FOR EACH ROW
BEGIN
	declare amoun int;
    select amount into amoun from products
    where id = new.products_id;
    
    set amoun = amoun - new.amount;
    
    IF amoun < 0 then
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Invalid products amount';
	ELSE
    UPDATE products
    SET amount = amoun
    WHERE id = NEW.products_id;
   
    END IF;
END;
//
DELIMITER ;


DELIMITER //
CREATE TRIGGER change_amount_on_update
AFTER UPDATE ON products_in_order
FOR EACH ROW
BEGIN
    DECLARE old_amount INT;
    DECLARE new_amount INT;

    -- Получаем старое количество товара в заказе
    SET old_amount = OLD.amount;
    -- Получаем новое количество товара в заказе
    SET new_amount = NEW.amount;

    -- Обновляем численность товара на складе
    UPDATE products
    SET amount = amount + old_amount - new_amount
    WHERE id = NEW.products_id;
END;
//
DELIMITER ;