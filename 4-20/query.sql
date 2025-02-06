SELECT category, main_month, COUNT(*) as "영화 수", SUM(view_count) as "총 관객 수"
FROM 2020_movie_report
GROUP BY category, main_month
HAVING main_month = 5 AND SUM(view_count) > 3000000