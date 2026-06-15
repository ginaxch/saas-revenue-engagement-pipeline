WITH daily_users AS (
    SELECT
        event_date,
        COUNT(DISTINCT user_id) AS dau
    FROM user_events
    GROUP BY event_date
)

SELECT
    event_date,
    dau,
    AVG(dau)
    OVER (
        ORDER BY event_date
        ROWS BETWEEN 29 PRECEDING
        AND CURRENT ROW
    ) AS rolling_30_day_avg
FROM daily_users;