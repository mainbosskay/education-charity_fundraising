ATTACH DATABASE 'donation_data.db' AS dbase1;
ATTACH DATABASE 'donor_data.db' AS dbase2;

-- Query used to join both the donation and donor database
SELECT *
FROM dbase1.Donation_Data
JOIN dbase2.Donor_data2
ON dbase1.Donation_Data.id = dbase2.Donor_Data2.id;
