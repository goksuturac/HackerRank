SET @index = (SELECT CAST(FLOOR(COUNT(*) / 2) AS SIGNED) FROM STATION );
PREPARE STMT FROM 'SELECT ROUND(LAT_N , 4) FROM STATION ORDER BY LAT_N LIMIT 1 OFFSET ?' ;
EXECUTE STMT USING @index ;