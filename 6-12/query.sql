SELECT MAX(copang_report.price) AS max_price,
AVG(copang_report.star) AS avg_star,
COUNT(DISTINCT(copang_report.email)) AS distinct_email_count

FROM (
    SELECT  item.price AS price,
    member.email AS email,
    review.star AS star
    
    FROM review
    INNER JOIN member
    ON review.mem_id = member.id
    INNER JOIN item
    ON review.item_id = item.id
) AS copang_report 