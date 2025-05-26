use lab2;

-- ALTER TABLE orders
-- ADD COLUMN total_price DECIMAL(10, 2);

/*UPDATE orders
SET total_price = (
    SELECT (SUM(pr.price * pio.amount) + ifnull(sum(vech_sup.price),0) + sum(app_t.price)) 
    FROM products_in_order pio    
    join products prod on (prod.id = pio.products_id)         
    join prices pr on (prod.vencode = pr.vencode)         
    left join deliveries del on (pio.deliveries_id = del.id)     
    left join vech_tsup vech_sup on (del.transp_sup_id = vech_sup.transp_sup_id and del.vechicle_type_id = vech_sup.vechicle_type_id)     
    join application_type app_t on (app_t.id = pio.application_type_id) 
    where pio.orders_id = orders.id
    group by pio.orders_id
);
*/
 drop trigger if exists update_total_price;
 drop trigger if exists update_total_price_on_update;
DELIMITER //
CREATE TRIGGER update_total_price
AFTER INSERT ON products_in_order
FOR EACH ROW
BEGIN
    UPDATE orders ord
    SET total_price = ifnull(total_price,0) + (
        SELECT (SUM(pr.price * new.amount)  + sum(app_t.price)) as total 
		FROM products_in_order pio    
		join products prod on (prod.id = pio.products_id)         
		join prices pr on (prod.vencode = pr.vencode)         
		left join deliveries del on (pio.deliveries_id = del.id)     
		left join vech_tsup vech_sup on (del.transp_sup_id = vech_sup.transp_sup_id and del.vechicle_type_id = vech_sup.vechicle_type_id)     
		join application_type app_t on (app_t.id = pio.application_type_id) 
        where ord.id = pio.orders_id
		group by pio.orders_id
    )
    WHERE ord.id = NEW.orders_id;
    
    update orders
    set emp_salary = total_price * 0.1
    WHERE orders.id = NEW.orders_id;   

    
END;
//
CREATE TRIGGER update_total_price_on_update
AFTER UPDATE ON products_in_order
FOR EACH ROW
BEGIN
    UPDATE orders ord
    SET total_price = (
        SELECT (SUM(pr.price * pio.amount) + ifnull(sum(vech_sup.price),0) + sum(app_t.price)) as total 
		FROM products_in_order pio    
		join products prod on (prod.id = pio.products_id)         
		join prices pr on (prod.vencode = pr.vencode)              
		left join deliveries del on (pio.deliveries_id = del.id)     
		left join vech_tsup vech_sup on (del.transp_sup_id = vech_sup.transp_sup_id and del.vechicle_type_id = vech_sup.vechicle_type_id)     
		join application_type app_t on (app_t.id = pio.application_type_id) 
        where pio.orders_id = ord.id
		group by pio.orders_id
    )
    WHERE ord.id = NEW.orders_id;
END;
//
DELIMITER ;