ATTACH DATABASE 'donation_data.db' AS dbase1;
ATTACH DATABASE 'donor_data.db' AS dbase2;

-- Query that shows the amount that were donated once
SELECT dbase1.Donation_Data.donation, dbase2.Donor_Data2.donation_frequency, SUM(donation)
FROM dbase1.Donation_Data
JOIN dbase2.Donor_data2
ON dbase1.Donation_Data.id = dbase2.Donor_Data2.id
WHERE donation_frequency = 'Once';

-- Query that shows the amount that were donated weekly
SELECT dbase1.Donation_Data.donation, dbase2.Donor_Data2.donation_frequency, SUM(donation)
FROM dbase1.Donation_Data
JOIN dbase2.Donor_data2
ON dbase1.Donation_Data.id = dbase2.Donor_Data2.id
WHERE donation_frequency = 'Weekly';

-- Query that shows the amount that were donated monthly
SELECT dbase1.Donation_Data.donation, dbase2.Donor_Data2.donation_frequency, SUM(donation)
FROM dbase1.Donation_Data
JOIN dbase2.Donor_data2
ON dbase1.Donation_Data.id = dbase2.Donor_Data2.id
WHERE donation_frequency = 'Monthly';

-- Query that shows the amount that were donated yearly
SELECT dbase1.Donation_Data.donation, dbase2.Donor_Data2.donation_frequency, SUM(donation)
FROM dbase1.Donation_Data
JOIN dbase2.Donor_data2
ON dbase1.Donation_Data.id = dbase2.Donor_Data2.id
WHERE donation_frequency = 'Yearly';
