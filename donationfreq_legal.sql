ATTACH DATABASE 'donation_data.db' AS dbase1;
ATTACH DATABASE 'donor_data.db' AS dbase2;

-- Query that shows the donation frequency for donors LEGAL jobfield that donated ONCE
SELECT dbase1.Donation_Data.job_field, dbase2.Donor_Data2.donation_frequency, COUNT(donation_frequency)
FROM dbase1.Donation_Data
LEFT JOIN dbase2.Donor_Data2
ON dbase1.Donation_Data.id = dbase2.Donor_Data2.id
WHERE job_field = 'Legal'
AND donation_frequency = 'Once';

-- Query that shows the donation frequency for donors LEGAL jobfield that donated WEEKLY
SELECT dbase1.Donation_Data.job_field, dbase2.Donor_Data2.donation_frequency, COUNT(donation_frequency)
FROM dbase1.Donation_Data
LEFT JOIN dbase2.Donor_Data2
ON dbase1.Donation_Data.id = dbase2.Donor_Data2.id
WHERE job_field = 'Legal'
AND donation_frequency = 'Weekly';

-- Query that shows the donation frequency for donors LEGAL jobfield that donated MONTHLY
SELECT dbase1.Donation_Data.job_field, dbase2.Donor_Data2.donation_frequency, COUNT(donation_frequency)
FROM dbase1.Donation_Data
LEFT JOIN dbase2.Donor_Data2
ON dbase1.Donation_Data.id = dbase2.Donor_Data2.id
WHERE job_field = 'Legal'
AND donation_frequency = 'Monthly';

-- Query that shows the donation frequency for donors LEGAL jobfield that donated YERALY
SELECT dbase1.Donation_Data.job_field, dbase2.Donor_Data2.donation_frequency, COUNT(donation_frequency)
FROM dbase1.Donation_Data
LEFT JOIN dbase2.Donor_Data2
ON dbase1.Donation_Data.id = dbase2.Donor_Data2.id
WHERE job_field = 'Legal'
AND donation_frequency = 'Yearly';
