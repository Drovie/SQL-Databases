use lab2;

/*
ALTER TABLE orders
ADD COLUMN delivery_total DECIMAL(10, 2);

ALTER TABLE deliveries
ADD COLUMN total_price DECIMAL(10, 2);
*/

drop trigger if exists delivery_price_on_insert;

DELIMITER //

CREATE TRIGGER delivery_price_on_insert
AFTER INSERT ON products_in_order
FOR EACH ROW
BEGIN
    DECLARE delivery_rate DECIMAL(10, 2);
    DECLARE delivery_cost DECIMAL(10, 2);
    DECLARE vech_t INT;
    DECLARE trans_sup INT;

    -- Получить транспортную компанию и тип транспорта из таблицы "Доставки"
    SELECT transp_sup_id, vechicle_type_id INTO trans_sup, vech_t
    FROM deliveries
    WHERE id = NEW.deliveries_id
    LIMIT 1;
    IF trans_sup IS NULL OR vech_t IS NULL THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Invalid deliveries_id: No matching transport company or vehicle type found';
    END IF;

    -- Получить ставку доставки из таблицы "Виды доступного транспорта у транспортных компаний"
    SELECT price INTO delivery_rate
    FROM vech_tsup
    WHERE vechicle_type_id = vech_t
      AND transp_sup_id = trans_sup
    LIMIT 1;
    IF delivery_rate IS NULL THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Invalid vechicle_type_id or transp_sup_id: No matching delivery rate found';
    END IF;
    
    -- Рассчитать стоимость доставки для текущего товара
    SET delivery_cost = delivery_rate * NEW.amount;
    IF delivery_cost IS NULL THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Delivery cost calculation failed';
    END IF;

    -- Обновить общую стоимость доставки в таблице "Доставки"
    UPDATE deliveries
    SET total_price = delivery_cost
    WHERE id = NEW.deliveries_id;
    IF ROW_COUNT() = 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Update failed: No matching deliveries_id found';
    END IF;
    

/* 
    -- Обновить общую стоимость доставки в таблице "Заказы"
   UPDATE orders
    SET delivery_total = (select total_pr from (SELECT pio.orders_id as pid, SUM(del.total_price) as total_pr
        FROM deliveries del
        join products_in_order pio on pio.deliveries_id = del.id
        group by pid) as totals
        WHERE totals.pid = NEW.orders_id 
*/
		UPDATE orders
    SET delivery_total = (
        SELECT SUM(d.total_price)
        FROM deliveries d
        JOIN products_in_order t ON t.deliveries_id = d.id
        
  
        
    )
    WHERE id = NEW.orders_id;
END;
//

DELIMITER ;