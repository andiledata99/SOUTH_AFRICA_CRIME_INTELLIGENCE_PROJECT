--South Africa Criminal Database - 30 SQL Questions (Questions Only)

---CHECKING  ALL THE DATA IN THE TABLE

SELECT* FROM SA_criminal_database;


--1. Display all records from the CriminalCases table.

SELECT* FROM SA_criminal_database;

--2. Count the total number of cases in the table.

SELECT COUNT(*) AS TOTAL_NUMBER_OF_CASES
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
WHERE CaseStatus = 'Convicted';



--11. Count how many suspects were arrested versus not arrested.

SELECT CaseStatus, COUNT(*) AS ARRESTED
FROM SA_criminal_database
WHERE CaseStatus = 'Convicted'
GROUP BY CaseStatus

SELECT CaseStatus,COUNT(*) AS NOT_ARRESTED
FROM SA_criminal_database
WHERE CaseStatus = 'Court Pending' OR  CaseStatus = 'Under Investigation' OR CaseStatus ='Open' OR CaseStatus ='Closed'
GROUP BY CaseStatus;


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
--17. Count how many cases resulted in a Convicted status.
--18. Retrieve all suspects with more than three previous offenses.
--19. Show the distribution of cases by Risk Level.
--20. Calculate the total Estimated Fraud Amount across all cases.
--21. Identify the province with the highest number of cases.
--22. Retrieve the youngest suspect in the dataset.
--23. Retrieve the oldest suspect in the dataset.
--24. Count the number of cases handled by each investigating officer.
--25. Calculate the average Estimated Fraud Amount per crime type.
--26. Display all cases occurring in Gauteng province.
--27. Retrieve all Fraud cases classified as High risk.
--28. Count the number of cases per year based on CrimeDate.
--29. Display all suspects with a Financial Score below 500.
--30. Identify the most common Crime Type in the dataset.
