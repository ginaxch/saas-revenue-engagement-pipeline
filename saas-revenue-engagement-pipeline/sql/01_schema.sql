CREATE TABLE users (
    user_id INT PRIMARY KEY,
    company_name VARCHAR(100),
    signup_date DATE,
    industry VARCHAR(50)
);

CREATE TABLE subscriptions (
    sub_id INT PRIMARY KEY,
    user_id INT REFERENCES users(user_id),
    plan_tier VARCHAR(20),
    monthly_revenue NUMERIC,
    status VARCHAR(20)
);

CREATE TABLE user_events (
    event_id INT PRIMARY KEY,
    user_id INT REFERENCES users(user_id),
    event_date DATE,
    session_duration INT,
    feature_used VARCHAR(50)
);

SELECT current_database();

SELECT COUNT(*) FROM users;

SELECT COUNT(*) FROM subscriptions;

SELECT COUNT(*) FROM user_events;