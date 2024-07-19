WITH Actual AS(SELECT AVG(Salary) AS ActualAVG FROM EMPLOYEES),
Miscalculated AS (SELECT AVG(CAST(REPLACE(CAST(Salary AS CHAR), '0', '')AS UNSIGNED)) AS MiscalculatedAVG FROM EMPLOYEES)
SELECT CEIL(ABS(Actual.ActualAVG-Miscalculated.MiscalculatedAVG)) AS ErrorAmount FROM Actual, Miscalculated;