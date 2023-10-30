select cr.cur_one, c.name, avg_curs
from currency_rate cr,(select cur_one, round(avg(rate),4) as avg_curs
						from currency_rate
						where date <='2023-04-15' and date >='2023-04-11'and source = 'ЦБ РФ'
						group by currency_rate.cur_one) rate_avg_curs
inner join currency c on cur_one=c.id and cur_one=rate_avg_curs.cur_one
where c.status='true' and cr.cur_one = rate_avg_curs.cur_one
--задача 2
select * from client

select *
from client cl, (select min(id) as min_id, max(id) as max_id, cl.inn
				from client cl 
				where cl.inn = cl.inn
				group by cl.inn) client_id
where cl.id=client_id.max_id
-- задача 3(пыталась сделать так. но пишет, что c_r.rate должен использоваться в агрегатной функции или в groupe by)
select cl.client_name, count(*) as n
from client cl, (select a.current_balance * c_r.rate as balance_in_RUB 
				from account a
				inner join currency c on a.currency_id = c.id
                inner join currency_rate c_r on c.id = c_r.cur_one
                inner join client cl on a.client_id = cl.id 
                group by a.current_balance) current_balance_in_RUB
where cl.status ='true' and cl.id=current_balance_in_RUB.id
group by cl.id
having count(*)>1

select * from account
-- задача 4(аналогичная проблема задачи 3 только с current_min_balance.min_balance )
select  cl.client_type_id, min_balance
from client cl, (select client_id, min(current_balance) as min_balance
			  from account a
			  group by a.id) current_min_balance
where status = 'true' and cl.id=current_min_balance.client_id
group by client_type_id
-- задача 5 (аналогичная проблема задачи 3 только с cl.client_name  )
select  cl.client_type_id, cl.client_name, min_balance
from client cl, (select a.client_id,a.id,
a.number, a.current_balance, min(current_balance) as min_balance
			  from account a
			  group by a.id) current_min_balance
where status = 'true' and cl.id=current_min_balance.client_id
group by client_type_id