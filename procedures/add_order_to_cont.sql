use lab2;
delimiter //
CREATE PROCEDURE `add_order_to_cont` (
	in date_start date,
    in date_finish date,
    in contracts_id int,
    in employees_id int,
    in order_status_id int
)
BEGIN
	case
		when contracts_id in (select id from contracts)
        and
        order_status_id in (select id from order_status)
        and
        employees_id in (select id from employees)
        then 
        insert into orders (date_start, date_finish, contracts_id, employees_id, order_status_id)
        values (date_start, date_finish, contracts_id, employees_id, order_status_id);
    end case;
END//
delimiter //

/* Вызов функции
use lab2;
call add_order_to_cont('2025-02-02', '2026-02-02','2','3','1');
select * from orders;
*/