--1 задача
select coalesce(cl.name,'') ||' '|| coalesce(cl.surname,'') ||' '|| 
coalesce(cl.patronymic,'') ||''|| coalesce(cl.short_company_name,''), 
a.number, a.current_balance * c_r.rate as balance_in_RUB 
from account a
inner join currency c on a.currency_id = c.id
inner join currency_rate c_r on c.id = c_r.cur_one
inner join client cl on a.client_id = cl.id 
order by balance_in_RUB desc

-- 2 задача
-- снчала пыталась сделать одним join-ом, но не вышло. Было примерно так:
--select c.id, c.name, c_r.cur_one, c_r.cur_two,c_r.rate
--from currency c
--inner join currency_rate c_r on c.id=c_r.cur_one 
--where c_r.status is true and c.id=114535 and c.id = 114533

select *
from currency_rate
select *
from currency

select c.id, c.name, c_r.cur_one, c_r.cur_two,c_r.rate
from currency c
inner join currency_rate c_r on c.id=c_r.cur_one 
where c_r.status is true and c.id=114535
union
select c.id, c.name, c_r.cur_one, c_r.cur_two, c_r.rate as DOLLAR_in_RUB
from currency c
inner join currency_rate c_r on c.id = c_r.cur_one and c.id = 114533
where c_r.status is true 
-- не совсем поняла как их красиво поделить, сделала просто деление самих чисел
select 82.4/21.65

-- 3 Задача
-- включила договора, у которых отсутсвует дата окончания (вечный статус?)
select * from contract
select * from status
select c.id,  s.name, c_s.date_begin, c_s.date_end 
from contract c
inner join contract_status c_s on c.id = c_s.contract_id
inner join status s on c_s.status_id = s.id
where c_s.date_end >= current_timestamp or c_s.date_end is NULL
 
 -- 4 Задача
 select c.id,  s.name, c_s.date_begin, c_s.date_end 
from contract c
inner join contract_status c_s on c.id = c_s.contract_id
inner join status s on c_s.status_id = s.id
where c_s.status = 'true' and s.name = 'Подтвержден'
order by c_s.date_end desc

 
