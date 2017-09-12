SELECT 
    FMID, Season1startDate, Season1EndDate, Season1Date
FROM
    `598`.farmersmarkets
WHERE
    date(Season1startDate) > date(Season1EndDate);