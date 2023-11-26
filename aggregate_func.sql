ATTACH DATABASE 'donation_data.db' AS dbase1;

-- Queries to perform aggregate function

-- Query to get the total number of donors
SELECT COUNT(donation)
FROM dbase1.Donation_Data;

-- Query to get the sum of all donations in the database
SELECT SUM(donation)
FROM dbase1.Donation_Data;

-- Query to get the average donation rounded up to 2 decimal places
SELECT ROUND(AVG(donation), 2)
FROM dbase1.Donation_Data;

-- Query to get the maximum amount donated
SELECT MAX(donation)
FROM dbase1.Donation_Data;

-- Query to get the minimum amount donated
SELECT MIN(donation)
FROM dbase1.Donation_Data;
