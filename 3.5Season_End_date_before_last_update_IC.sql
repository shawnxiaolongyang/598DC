SELECT 
    FMID, Season1EndDate, updateyear
FROM
    `598`.farmersmarkets
WHERE
    YEAR(Season1EndDate) < updateyear;