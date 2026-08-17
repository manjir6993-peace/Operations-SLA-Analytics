SELECT
    COUNT(ticket_id) AS ticket_count,
    requester_department
FROM tickets
GROUP BY requester_department
ORDER BY ticket_count DESC;
