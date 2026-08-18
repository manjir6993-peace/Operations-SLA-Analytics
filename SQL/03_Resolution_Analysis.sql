-- 03_Resolution_Analysis.sql

-- 1. Average resolution time by category:
select c.name, avg(TIMESTAMPDIFF (hour,created_at, resolved_at) ) as time_diff 
from categories c
join tickets t on t.category_id = c.id
group by c.name;


- 2. Overall average resolution time
SELECT
    AVG(TIMESTAMPDIFF(HOUR, created_at, resolved_at)) AS avg_resolution_hours
FROM tickets;
