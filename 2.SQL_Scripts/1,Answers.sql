--South Africa Criminal Database - 30 SQL Questions (Questions Only)

---CHECKING  ALL THE DATA IN THE TABLE

SELECT* FROM SA_criminal_database;


--1. Display all records from the CriminalCases table.

SELECT * FROM SA_criminal_database;

--2. Count the total number of cases in the table.

SELECT COUNT(CaseNumber) AS TOTAL_NUMBER_OF_CASES
FROM SA_criminal_database;

--3. Count the number of cases in each province.

SELECT PROVINCE, COUNT(CaseNumber) AS TOTAL_CASE_NUMBERS
FROM SA_criminal_database
GROUP BY PROVINCE;

--4. Retrieve all cases where the crime type is Fraud.

SELECT * 
FROM SA_criminal_database
WHERE CrimeType ='Fraud';

--5. Count the number of cases for each crime type.

SELECT CrimeType,COUNT(RecordID) AS NUMBER_OF_CASES
FROM SA_criminal_database
GROUP BY CrimeType;

--6. Display all cases classified as High or Critical risk.

SELECT *
FROM SA_criminal_database
WHERE RiskLevel = 'High'OR RiskLevel = 'Critical';


--7. Calculate the average Financial Score of all suspects.

SELECT AVG(Financialscore) AS AVERAGE_FINANCIAL_SCORE
FROM SA_criminal_database;


--8. Find the highest Estimated Fraud Amount recorded.

SELECT MAX(EstimatedFraudAmount_ZAR) AS HIGHEST_ESTIMATED_FRAUD_AMOUNT
FROM SA_criminal_database;


--9. Retrieve the top 10 cases with the highest Estimated Fraud Amount.

SELECT TOP 10 *
FROM SA_criminal_database
ORDER BY EstimatedFraudAmount_ZAR DESC;


--10. Display all cases where the suspect was arrested.

SELECT *
FROM SA_criminal_database
WHERE Arrested=1;
 


--11. Count how many suspects were arrested versus not arrested.

SELECT Arrested, COUNT(*) AS SUSPECTS_ARRESTED
FROM SA_criminal_database
GROUP BY Arrested;


--12. Count the number of cases associated with each bank.

SELECT BankInvolved ,COUNT(*) AS NUMBER_OF_CASES
FROM SA_criminal_database
GROUP BY BankInvolved;

--13. Calculate the total Estimated Fraud Amount per province.

SELECT Province, Sum( EstimatedFraudAmount_ZAR) AS TOTAL_ESTIMATED_FRAUD_AMOUNT 
FROM SA_criminal_database
GROUP BY Province;

--14. Retrieve all suspects older than 50 years.

SELECT *
FROM SA_criminal_database
WHERE Age>50;

--15. Calculate the average age of suspects per province.

SELECT Province,AVG(Age) AS AVERAGE_AGE 
FROM SA_criminal_database
GROUP BY Province;

--16. Display all cases recorded from 2020 onwards.

SELECT *
FROM SA_criminal_database
WHERE CrimeDate>= '2020-01-01';

--17. Count how many cases resulted in a Convicted status.

SELECT COUNT(*) AS NUMBER_OF_CASES_WITH_CONVICTED_STATUS
FROM SA_criminal_database
WHERE CaseStatus = 'Convicted';

--18. Retrieve all suspects with more than three previous offenses.

SELECT *
FROM SA_criminal_database
WHERE PreviousOffenses>3;

--19. Show the distribution of cases by Risk Level.

SELECT RiskLevel,COUNT(*) AS CASE_COUNT
FROM SA_criminal_database 
GROUP BY RiskLevel;


--20. Calculate the total Estimated Fraud Amount across all cases.


SELECT AVG(CAST(EstimatedFraudAmount_ZAR AS bigint)) AS  AVERAGE_ESTIMATED_FRAUD_AMOUNT
FROM SA_criminal_database;


--21. Identify the province with the highest number of cases.

SELECT TOP 1 Province,COUNT(*)  AS HIGHEST_NUMBER_OF_CASES
FROM SA_criminal_database
GROUP BY Province
ORDER BY HIGHEST_NUMBER_OF_CASES DESC;

--22. Retrieve the youngest suspect in the dataset.

SELECT MIN(Age)AS YOUNGEST_SUSPECT
FROM SA_criminal_database;

--23. Retrieve the oldest suspect in the dataset.

SELECT MAX(Age) AS OLDEST_SUSPECT
FROM SA_criminal_database;

--24. Count the number of cases handled by each investigating officer.

SELECT InvestigatingOfficer, COUNT(*) AS CASES_HANDLED
FROM SA_criminal_database
GROUP BY InvestigatingOfficer;

--25. Calculate the average Estimated Fraud Amount per crime type.

SELECT CrimeType, AVG(EstimatedFraudAmount_ZAR) AS AVERAGE_ESTIMATED_FRAUD_AMOUNT
FROM SA_criminal_database
GROUP BY CrimeType;

--26. Display all cases occurring in Gauteng province.

SELECT *
FROM SA_criminal_database
WHERE Province = 'Gauteng';

--27. Retrieve all Fraud cases classified as High risk.

SELECT *
FROM SA_criminal_database
WHERE RiskLevel = 'high';

--28. Count the number of cases per year based on CrimeDate.

SELECT CrimeDate, COUNT(*) AS NUMBER_OF_CASES
FROM SA_criminal_database
GROUP BY CrimeDate;

--29. Display all suspects with a Financial Score below 500.

SELECT *
FROM SA_criminal_database
WHERE FinancialScore < 500;


--30. Identify the most common Crime Type in the dataset.

SELECT TOP 1 CrimeType
FROM SA_criminal_database;


SELECT CrimeType,count(*) AS COMMON_CRIME_TYPE
FROM SA_criminal_database
GROUP BY CrimeType 
ORDER BY  COMMON_CRIME_TYPE DESC;
