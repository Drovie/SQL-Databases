use lab2;
delimiter //
CREATE DEFINER=`root`@`localhost` PROCEDURE `company_order_sum`(
	in name varchar(255)
)
BEGIN
	select cl.name, pio.orders_id, (sum(pr.price) + ifnull(sum(veh_sup.price),0) + sum(app_t.price)) as total_price 
    from products_in_order pio     
    join products prod on (prod.id = pio.products_id)     
    join prices pr on (prod.vencode = pr.vencode)     
    join orders ord on (ord.id = pio.orders_id)     
    join contracts con on (ord.contracts_id = con.id)     
    join clients cl on (cl.id = con.clients_id)  
    left join deliveries del on (pio.deliveries_id = del.id) 
    left join vech_tsup veh_sup 
		on (del.transp_sup_id = veh_sup.transp_sup_id and del.vechicle_type_id = veh_sup.vechicle_type_id)     
	join application_type app_t on (app_t.id = pio.application_type_id) 
    where cl.name = name
    or cl.id = name
    or name = (select concat(cl.name, ' ', cl.id))
    or name = (select concat(cl.id, ' ', cl.name))
	group by pio.orders_id;
END//
delimiter //

/* Вызов функции
use lab2;
call company_order_sum('Historical Museum');
call company_order_sum('1');
*/