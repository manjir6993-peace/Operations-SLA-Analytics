-- 05_Agent_Analysis.sql
-- Agent-level SLA breach analysis

WITH cte AS
(
    SELECT
        a.name,
        t.assigned_agent_id,
        COUNT(DISTINCT t.ticket_id) AS total_tickets,
        COUNT(DISTINCT s.ticket_id) AS total_breach_ticket
    FROM tickets t
    LEFT JOIN sla_breaches s
        ON t.ticket_id = s.ticket_id
    JOIN agents a
        ON t.assigned_agent_id = a.id
    GROUP BY assigned_agent_id, a.name
)

SELECT *,
       (total_breach_ticket / total_tickets) * 100 AS percent_breach
FROM cte
HAVING total_tickets >= 10
ORDER BY percent_breach DESC;
