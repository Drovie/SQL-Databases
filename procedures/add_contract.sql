use lab2;
delimiter //
CREATE DEFINER=`root`@`localhost` PROCEDURE `contract_and_order`(
	in date date,
    in clients_id int,
    in date_start date,
    in date_finish date,
    in employees_id int,
    in order_status_id int
)
BEGIN
	case 
		when clients_id in (select id from clients) and
        employees_id in (select id from employees) and
        order_status_id in (select id from order_status)
        then insert into 
        contracts (date, clients_id, employees_id) values (date, clients_id, employees_id); 
        insert into orders (date_start, date_finish, contracts_id, employees_id, order_status_id)
        values (date_start, date_finish, (select max(id) from contracts), employees_id, order_status_id); 
    end case;
END//
delimiter //

/* Вызов функции
use lab2;
call contract_and_order('2024-09-08', '1','2025-01-02', '2025-09-02','3','2');
select * from products;
*/