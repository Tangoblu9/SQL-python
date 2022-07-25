/*This is to extract total amount of dvd rental payments from selected staff_id, and period. Date time converted to specific "Month year" format      */

SELECT DISTINCT(TO_CHAR(payment_date, 'MONTH YYYY')) AS TIME_PERIOD, staff_id, sum(amount)
FROM payment
WHERE payment_date BETWEEN '2007-02-01' AND '2007-05-30'
AND staff_id IN(1,2)
GROUP BY TIME_PERIOD, staff_id

HAVING SUM(amount) > 10
ORDER BY TIME_PERIOD, SUM(amount) DESC
