create database OfficeData
use OfficeData;

----Monthly active users and Retention

select * from logins
select * from users

SELECT DATE_FORMAT(signup_date, '%Y-%m') AS year_month,
COUNT(DISTINCT user_id) AS active_users FROM users
WHERE signup_date >= DATE_SUB(CURDATE(), INTERVAL 12 MONTH)
GROUP BY year_month
ORDER BY year_month;


WITH 
signup_months AS (
    SELECT user_id,DATE_FORMAT(signup_date, '%Y-%m') AS signup_month
    FROM users
),
logins_next_month AS (
    SELECT user_id,
        DATE_FORMAT(login_date, '%Y-%m') AS login_month
    FROM logins
)
SELECT 
    s.signup_month,
    COUNT(DISTINCT s.user_id) AS signup_users,
    COUNT(DISTINCT l.user_id) AS retained_users,
    ROUND(
        COUNT(DISTINCT l.user_id) / COUNT(DISTINCT s.user_id) * 100,
        2
    ) AS retention_rate_percentage
FROM signup_months s
LEFT JOIN logins_next_month l
    ON s.user_id = l.user_id
   AND l.login_month = DATE_FORMAT(DATE_ADD(STR_TO_DATE(CONCAT(s.signup_month, '-01'), '%Y-%m-%d'), INTERVAL 1 MONTH), '%Y-%m')
GROUP BY s.signup_month
ORDER BY s.signup_month;

