ATTACH DATABASE 'donation_data.db' AS dbase1;
ATTACH DATABASE 'donor_data.db' AS dbase2;

-- Query that shows females that donated between $5 to $249
SELECT dbase1.Donation_Data.gender, dbase1.Donation_Data.donation, dbase2.Donor_Data2.university, dbase1.Donation_Data.job_field
FROM dbase1.Donation_Data
JOIN dbase2.Donor_Data2
ON dbase1.Donation_Data.id = dbase2.Donor_Data2.id
WHERE gender = 'Female'
AND university != 'NULL'
AND donation BETWEEN 5 AND 249
ORDER BY donation DESC;

-- Query that shows males that donated between $5 to $249
SELECT dbase1.Donation_Data.gender, dbase1.Donation_Data.donation, dbase2.Donor_Data2.university, dbase1.Donation_Data.job_field
FROM dbase1.Donation_Data
JOIN dbase2.Donor_Data2
ON dbase1.Donation_Data.id = dbase2.Donor_Data2.id
WHERE gender = 'Male'
AND university != 'NULL'
AND donation BETWEEN 5 AND 249
ORDER BY donation DESC;
