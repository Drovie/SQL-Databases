use lab2;

/*
ALTER TABLE orders
ADD COLUMN emp_salary DECIMAL(10, 2);

ALTER TABLE employees
ADD COLUMN total_salary DECIMAL(10, 2);
*/

drop trigger if exists employee_payment_on_insert;
drop trigger if exists employee_payment_on_update;

DELIMITER //

CREATE TRIGGER employee_payment_on_insert
AFTER UPDATE ON orders
FOR EACH ROW
BEGIN
    DECLARE order_amount DECIMAL(10, 2);
    DECLARE employee_payment DECIMAL(10, 2);

    -- Обновить сумму оплаты работы сотрудника в таблице "Заказы"
    UPDATE employees
    SET total_salary = (select s.sal from (select sum(emp_salary) as sal, employees_id from orders group by employees_id) as s where s.employees_id = new.employees_id)
    where employees.id = new.employees_id limit 1;
    
    
    

END;
//

CREATE TRIGGER employee_payment_on_update
AFTER INSERT ON products_in_order 
FOR EACH ROW
BEGIN
	
    UPDATE orders
    SET emp_salary = total_price * 0.1
    WHERE id = NEW.id;
    

END;
DELIMITER ;