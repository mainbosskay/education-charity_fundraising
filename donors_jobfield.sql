ATTACH DATABASE 'donation_data.db' AS dbase1;

-- Query that shows the donors based on job field
SELECT job_field, COUNT(*)
FROM dbase1.Donation_Data
GROUP BY job_field
HAVING COUNT(*) < 80
ORDER BY COUNT(*) DESC;
