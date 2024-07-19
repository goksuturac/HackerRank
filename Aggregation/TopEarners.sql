SELECT MAX(Salary * Months) AS MaxTotalEarnings,
       COUNT(*) AS EmployeesWithMaxEarnings
FROM Employee
WHERE Salary * Months = (SELECT MAX(Salary * Months) FROM Employee);