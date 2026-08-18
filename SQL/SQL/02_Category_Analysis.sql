-- 02_Category_Analysis.sql


-- 1. Ticket count by department and category
SELECT t.requester_department, c.name, COUNT(ticket_id) AS ticket_count
FROM tickets t
JOIN categories c ON c.id = t.category_id
GROUP BY t.requester_department, c.name;







-- 2. Overall ticket volume by category
SELECT c.name, COUNT(ticket_id) AS ticket_count
FROM categories c
JOIN tickets t ON t.category_id = c.id
GROUP BY c.name;
