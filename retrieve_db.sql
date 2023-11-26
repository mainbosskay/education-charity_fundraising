ATTACH DATABASE 'donation_data.db' AS dbase1;
ATTACH DATABASE 'donor_data.db' AS dbase2;

-- These queries will be used to retrieve data from the databases
SELECT * FROM dbase1.Donation_Data;

SELECT * FROM dbase2.Donor_Data2;
