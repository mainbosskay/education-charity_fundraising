ATTACH DATABASE 'donation_data.db' AS dbase1;
ATTACH DATABASE 'donor_data.db' AS dbase2;

-- Query that shows the top ten donations in the legal job field
SELECT dbase1.Donation_Data.donation, dbase1.Donation_Data.gender, dbase1.Donation_Data.state, dbase2.Donor_Data2.donation_frequency, dbase2.Donor_Data2.car, dbase2.Donor_Data2.university, dbase1.Donation_Data.job_field
FROM dbase1.Donation_Data
LEFT JOIN dbase2.Donor_Data2
ON dbase1.Donation_Data.id = dbase2.Donor_Data2.id
WHERE job_field = 'Legal'
ORDER BY donation DESC
LIMIT 10;

-- Query that shows the bottom ten donations in the legal job field
SELECT dbase1.Donation_Data.donation, dbase1.Donation_Data.gender, dbase1.Donation_Data.state, dbase2.Donor_Data2.donation_frequency, dbase2.Donor_Data2.car, dbase2.Donor_Data2.university, dbase1.Donation_Data.job_field
FROM dbase1.Donation_Data
LEFT JOIN dbase2.Donor_Data2
ON dbase1.Donation_Data.id = dbase2.Donor_Data2.id
WHERE job_field = 'Legal'
ORDER BY donation ASC
LIMIT 10;
