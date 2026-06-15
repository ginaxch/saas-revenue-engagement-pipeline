WITH recent_usage AS (
    SELECT
        user_id,
        SUM(session_duration) AS total_usage
    FROM user_events
    GROUP BY user_id
)
SELECT
    u.company_name,
    s.plan_tier,
    r.total_usage,
    DENSE_RANK() OVER (
        ORDER BY r.total_usage ASC
    ) AS risk_rank
FROM recent_usage r
JOIN users u
    ON r.user_id = u.user_id
JOIN subscriptions s
    ON r.user_id = s.user_id
WHERE s.plan_tier IN ('Pro','Enterprise')
ORDER BY risk_rank
LIMIT 10;

