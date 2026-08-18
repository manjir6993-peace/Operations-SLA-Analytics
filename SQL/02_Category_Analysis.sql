02_Category_Analysis.sql

-- 1. Ticket count by department and category

select t.requester_department, c.name, count(ticket_id) as ticket_count
from tickets t
join categories c on c.id = t.category_id
group by t.requester_department, c.name;



-- 2. Overall ticket volume by category

select c.name, count(ticket_id) as ticket_count
from categories c
join tickets t on t.category_id = c.id
group by c.name;
