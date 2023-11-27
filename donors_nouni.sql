ATTACH DATABASE 'donation_data.db' AS dbase1;
ATTACH DATABASE 'donor_data.db' AS dbase2;

-- This query shows the donation of Females with no university degree
SELECT dbase1.Donation_Data.gender, dbase1.Donation_Data.donation, dbase2.Donor_Data2.university, dbase1.Donation_Data.job_field
FROM dbase1.Donation_Data
JOIN dbase2.Donor_Data2
ON dbase1.Donation_Data.id = dbase2.Donor_Data2.id
WHERE gender = 'Female'
AND university IS NULL
AND donation BETWEEN 5 AND 249
ORDER BY donation DESC;

-- This query shows the donation of males with no university degree
SELECT dbase1.Donation_Data.gender, dbase1.Donation_Data.donation, dbase2.Donor_Data2.university, dbase1.Donation_Data.job_field
FROM dbase1.Donation_Data
JOIN dbase2.Donor_Data2
ON dbase1.Donation_Data.id = dbase2.Donor_Data2.id
WHERE gender = 'Male'
AND university IS NULL
AND donation BETWEEN 5 AND 249
ORDER BY donation DESC;
