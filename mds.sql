select * from courses

select * from teachers

insert into teachers (id, name, hours_work, quantity_courses, salary, direction)
values (1, 'Александра Кочергина', 60, 3, 115000, 'контемп')

insert into teachers (id, name, hours_work, quantity_courses, salary, direction)
values (2, 'Елизавета Хворостова', 57, 2, 127000, 'high-heels')

insert into teachers (id, name, hours_work, quantity_courses, salary, direction)
values (3, 'Лада Хорошая', 73, 1, 109000, 'high-heels')

select * from teachers where hours_work > 60 or salary >= 120000

select * from teachers where direction in ('high-heels')


insert into courses (id, name, teacher, buyers, price)
values (1, 'контемп для начинающих','Александра Кочергина', 25, 5000)

insert into courses (id, name, teacher, buyers, price)
values (2, 'контемп pro','Александра Кочергина', 19, 5700)

insert into courses (id, name, teacher, buyers, price)
values (3, 'творча','Александра Кочергина', 13, 3500)

insert into courses (id, name, teacher, buyers, price)
values (4, 'high-heels base','Елизавета Хворостова', 27, 5000)

insert into courses (id, name, teacher, buyers, price)
values (5, 'high-heels pro','Елизавета Хворостова', 21, 5500)

insert into courses (id, name, teacher, buyers, price)
values (6, 'high-heels начинающие','Лада Хорошая', 20, 5000)

update courses set price = 4500 where price = 5000