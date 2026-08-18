-- 04_SLA_Analysis.sql
-- SLA breach analysis

-- 1. Overall SLA breach rate

with cte as
(
select count(distinct t.ticket_id) as total_tickets, count(distinct s.ticket_id) as total_breach_ticket
from tickets t
left join sla_breaches s on t.ticket_id = s.ticket_id

)

select * , (total_breach_ticket/total_tickets) * 100 as percent_breach
from cte


  
-- 2. Department SLA breach rate

with cte as
(
select t.requester_department, count(distinct t.ticket_id) as ticket_count, count(s.breach_id) as dept_breach_count
from tickets t
join sla_breaches s on s.ticket_id = t.ticket_id
group by requester_department
)

select *, (dept_breach_count/ticket_count) * 100 as SLA_breach_rate
from cte;



-- 3. Finance breach count by priority

select t.requester_department, t.priority, count(breach_id) as breach_count
from tickets t
join sla_breaches s on t.ticket_id = s.ticket_id
where requester_department = 'Finance'
group by t.priority
order by breach_count desc;



-- 4. Finance priority breach rate

with cte as
(
select t.requester_department, t.priority, count(t.ticket_id) as ticket_count, count(s.breach_id) as breach_count
from tickets t
join sla_breaches s on t.ticket_id = s.ticket_id
where requester_department = 'Finance'
group by t.priority
order by breach_count desc
)

select *, (breach_count/ ticket_count) * 100 as breach_rate
from cte;



-- 5. Average breach duration by department

select t.requester_department, avg(breach_minutes) as avg_breach_minutes
from tickets t
left join sla_breaches s on s.ticket_id = t.ticket_id
group by t.requester_department
order by avg_breach_minutes desc;



-- 6. Overall average breach duration

select avg(breach_minutes) as avg_breach_minutes
from sla_breaches;
