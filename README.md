# Operations SLA Analytics

A SQL and Power BI project to analyze support tickets, SLA breaches, and resolution performance.

## Project Overview

I used support ticket data to understand:

- Which departments receive the most tickets
- Which departments have more SLA breaches
- Which priorities have higher breach rates
- How actual resolution time compares with the SLA target
- Where further investigation is needed

## Key Results

- 1,000 support tickets analyzed
- 101 tickets breached the SLA
- Overall SLA breach rate: 10.10%
- Finance had the highest SLA breach rate at 14.01%
- P2 had the highest SLA breach rate at 11.19%
- P1 had the biggest gap between actual resolution time and its SLA target

## Tools Used

- MySQL
- Power BI
- Excel / CSV

## SQL Analysis

I used SQL to analyze:

- Ticket volume
- Ticket categories
- Resolution time
- SLA breaches
- Agent performance

The SQL queries are available in the [SQL] folder.

## Power BI Dashboard

The dashboard has three pages:

### 1. Executive Overview

Shows the overall ticket volume, SLA breach rate, department performance, and key findings.

[Executive Overview](Screenshots/Executive_Overview.png)

### 2. SLA Analysis

Looks at SLA breaches by department and priority, breach duration, and actual resolution time compared with SLA targets.

[SLA Analysis](Screenshots/SLA_Analysis.png)

### 3. Action Plan

Shows the main areas that need investigation, the data that would help find the root cause, and the next analysis I would perform.

[Action Plan](Screenshots/Action_plan.png)

## Main Findings

- Finance needs attention because it has the highest SLA breach rate and breach volume.
- P2 tickets have the highest breach rate among the priorities.
- P1 tickets take longer to resolve compared with their SLA target.

## Recommended Next Analysis

If more data was available, I would look at:

- Ticket category and complexity
- Agent workload
- Queue and assignment history
- Escalation and handoff times
- First response and resolution times
- Reopened tickets
- Business-hours impact

## Project Outcome

This project helped me practice taking a real-world operations problem from ***SQL analysis to Power BI reporting and business recommendations***.
