SELECT
    DISTINCT(CITY)
FROM
    STATION
WHERE
    (SUBSTRING(CITY,1,1) != 'A' AND
    SUBSTRING(CITY,1,1) != 'E' AND
    SUBSTRING(CITY,1,1) != 'I' AND
    SUBSTRING(CITY,1,1) != 'O' AND
    SUBSTRING(CITY,1,1) != 'U') OR
    (SUBSTRING(CITY,LEN(CITY),1) != 'a' AND
    SUBSTRING(CITY,LEN(CITY),1) != 'e' AND
    SUBSTRING(CITY,LEN(CITY),1) != 'i' AND
    SUBSTRING(CITY,LEN(CITY),1) != 'o' AND
    SUBSTRING(CITY,LEN(CITY),1) != 'u');