/* Better Solution */
SELECT user_id, MAX(time_stamp) as last_stamp
FROM Logins
WHERE YEAR(time_stamp) = '2020'
GROUP BY user_id;
/* My solution*/
SELECT user_id, time_stamp as last_stamp
FROM Logins
WHERE time_stamp IN
(
    SELECT MAX(time_stamp)
    FROM Logins
    WHERE YEAR(time_stamp) = '2020'
    GROUP BY user_id
    ORDER BY time_stamp
)