SELECT COUNTRY.Continent, FLOOR(AVG(CITY.Population)) FROM CITY JOIN COUNTRY ON CITY.CountryCode = COUNTRY.Code GROUP BY COUNTRY.Continent;