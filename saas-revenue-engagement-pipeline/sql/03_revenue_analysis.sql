SELECT
    u.industry,
    SUM(s.monthly_revenue) AS total_revenue,
    AVG(e.session_duration) AS avg_session_duration
FROM users u
JOIN subscriptions s
    ON u.user_id = s.user_id
JOIN user_events e
    ON u.user_id = e.user_id
GROUP BY u.industry
ORDER BY total_revenue DESC;