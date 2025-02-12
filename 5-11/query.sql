SELECT P.name, COALESCE(S.sales_volume, '판매량 정보 없음') AS '판매량'
FROM pizza_price_cost AS P
LEFT OUTER JOIN sales AS S
ON P.id = S.menu_id
