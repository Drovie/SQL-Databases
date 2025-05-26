use lab2;

/*alter table contracts
add column duration int;
alter table contracts
add column date_finish date;
*/

drop trigger set_finish_date_on_ins;
drop trigger set_finish_date_on_upd;

delimiter //
create trigger set_finish_date_on_ins
before insert on contracts
for each row
begin
	if new.duration is not null then
		set new.date_finish = date_add(new.date, interval new.duration DAY);
	end if;
end;
//

delimiter //
create trigger set_finish_date_on_upd
before update on contracts
for each row
begin
	if new.duration is not null then
		set new.date_finish = date_add(new.date, interval new.duration DAY);
	end if;
end;
//