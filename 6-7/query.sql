
-- 저는 코팡에서 2020년을 기준으로 생각했을 때, 꽤 오래 전에 등록되었지만 아직까지도 리뷰가 달리고 있는 스테디 셀러 상품들의 리뷰들을 살펴보려고 하는데요. review 테이블에서 아래 내용에 맞는 정보들만 출력해 보겠습니다.

-- '2018년 12월 31일' 이전 코팡 사이트에 등록된 상품들에 관한 리뷰
-- review 테이블의 모든 컬럼들 표시

SELECT *
FROM review
WHERE item_id IN (
    SELECT id
    FROM item
    WHERE registration_date < '2018-12-31'

)