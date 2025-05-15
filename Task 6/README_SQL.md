# Sales Trend Analysis - SQL Task

This project analyzes monthly sales trends using SQL aggregations.

##  Objective
- Analyze revenue and order volume trends by month using the `online_sales` dataset.

## Tools
- PostgreSQL / MySQL / SQLite

##  Queries Performed
- Monthly revenue and volume using `SUM()` and `COUNT(DISTINCT order_id)`
- Top 3 months by revenue
- Grouping by `month_year`

##  Key Concepts
- GROUP BY and ORDER BY
- Aggregate functions (SUM, COUNT)
- Handling NULLs using COALESCE
- Date formatting with EXTRACT/TO_CHAR/STRFTIME

## Output
| month\_year | total\_revenue | total\_orders |
| ----------- | -------------- | ------------- |
| 2023-01     | ₹120,000       | 85            |
| 2023-02     | ₹135,000       | 90            |
| 2023-03     | ₹150,000       | 95            |
| 2023-04     | ₹140,000       | 88            |
| 2023-05     | ₹160,000       | 100           |
| 2023-06     | ₹170,000       | 110           |

