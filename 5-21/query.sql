-- 이전 영상에서 이 3가지 테이블을 조인해서 의미있는 데이터를 추출해 봤는데요.

-- 이번에는 이 세 테이블을 조인해서 '남녀 공용 상품의 등록 연도별 평균 별점'을 보고 싶습니다. 다음 조건을 만족하는 알맞은 SQL문을 작성해 보세요.

-- (1) 일단 세 테이블을 이너 조인(INNER JOIN)하세요.

-- *조인 기준은 다음과 같습니다.

-- review 테이블의 item_id 컬럼 - item 테이블의 id 컬럼
-- review 테이블의 mem_id 컬럼 - member 테이블의 id 컬럼
-- (2) 그리고 item 테이블의 gender 컬럼의 값이 u인 row들만 선별하세요.
-- (3) item 테이블의 registration_date 컬럼에서 연도를 추출해서 이것(상품 등록 연도)을 기준으로 row들을 그루핑하세요.
-- (4) 각 그룹 내 row 개수가 10개 이상인 그룹들만 추리세요.
-- (5) 결과를 별점 평균값을 기준으로 내림차순 정렬하세요.
-- (6) 컬럼은 총 세 개를 조회하세요.

-- 상품 등록 연도 컬럼('등록 연도'라는 alias를 붙이세요.)
-- 각 그룹 내 row의 개수('리뷰 개수'라는 alias를 붙이세요.)
-- 각 그룹별 별점 평균값('별점 평균값'이라는 alias를 붙이세요.)

SELECT YEAR(I.registration_date) AS '등록 연도', 
    COUNT(*) AS '리뷰 개수',
    AVG(star) AS '별점 평균값'
FROM review R 
    INNER JOIN item I ON R.item_id = I.id
    INNER JOIN member M ON R.mem_id = M.id
WHERE I.gender = 'u'
GROUP BY YEAR(I.registration_date)
HAVING COUNT(*) >= 10
ORDER BY AVG(star) desc
