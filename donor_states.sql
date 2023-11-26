ATTACH DATABASE 'donation_data.db' AS dbase1;

-- This query shows the states with less that 80 donors
SELECT state, COUNT(*)
FROM dbase1.Donation_Data
GROUP BY state
HAVING COUNT(*) < 80
ORDER BY COUNT(*) ASC;
