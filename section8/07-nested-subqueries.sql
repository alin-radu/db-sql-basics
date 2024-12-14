-- // 1
-- SELECT
--     booking_date
-- FROM
--     bookings
-- GROUP BY
--     booking_date;

-- // 2
SELECT
    booking_date
FROM
    (
        SELECT
            booking_date,
            SUM(amount_billed) AS daily_sum
        FROM
            bookings
        GROUP BY
            booking_date
    ) AS daily_sum_table
ORDER BY
    daily_sum
LIMIT
    1;
-- 
-- // 3
SELECT
    booking_date
FROM
    bookings
GROUP BY
    booking_date
HAVING
    SUM(amount_billed) = (
        SELECT
            MIN(daily_sum)
        FROM
            (
                SELECT
                    booking_date,
                    SUM(amount_billed) AS daily_sum
                FROM
                    bookings
                GROUP BY
                    booking_date
            ) AS daily_table
    );