SELECT
    SUBSTRING(address, 1, 2) as region,
    COUNT(*)
FROM member
GROUP by
    SUBSTRING(address, 1, 2),
    gender;