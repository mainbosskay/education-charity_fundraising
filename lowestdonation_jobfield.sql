ATTACH DATABASE 'donation_data.db' AS dbase1;

-- This query shows the job field with the lowest amount of donation
SELECT dbase1.Donation_Data.job_field, SUM(donation)
FROM dbase1.Donation_Data
GROUP BY job_field
ORDER BY SUM(donation) ASC;
