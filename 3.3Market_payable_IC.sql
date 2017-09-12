
SELECT 
    FMID,
    Credit,
    WIC,
    WICcash,
    SFMNP,
    SNAP
FROM
    (SELECT 
        Credit_clean + WIC_clean + WICcash_clean + SFMNP_clean + SNAP_clean AS IC,
            FMID,
            Credit,
            WIC,
            WICcash,
            SFMNP,
            SNAP
    FROM
        `598`.farmersmarkets
    WHERE
        Credit_clean IN (0 , 1)
            AND WIC_clean IN (0 , 1)
            AND WICcash_clean IN (0 , 1)
            AND SFMNP_clean IN (0 , 1)
            AND SNAP_clean IN (0 , 1)) AS Q
WHERE
    Q.IC = 0;