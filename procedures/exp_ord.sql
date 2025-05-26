use lab2;
delimiter //
CREATE DEFINER=`root`@`localhost` PROCEDURE `exp_ord`(
	in search_date date)
BEGIN
	select ord.id, ord.date_start, ord.date_finish, ord.contracts_id, ord.employees_id, o_stat.id, o_stat.status from orders ord
    join order_status o_stat on (o_stat.id = ord.order_status_id)
    where date(date_finish) < date(search_date) 
    and o_stat.status like '%expiered%';  
END//
delimiter //

/* Вызов функции
use lab2;
call exp_ord('2024-02-01');
*/