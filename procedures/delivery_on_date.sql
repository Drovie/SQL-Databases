use lab2;
delimiter //
CREATE DEFINER=`root`@`localhost` PROCEDURE `del_on_date`(
	in dev_date date)
BEGIN
	select id, date from deliveries where dev_date = date;
END//
delimiter //

/* Вызов функции
use lab2;
call del_on_date('2024-05-01');
*/