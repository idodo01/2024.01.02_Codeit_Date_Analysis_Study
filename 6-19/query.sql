-- 컬럼 구조 살펴보기
DESCRIBE employee;

-- 뷰 생성하기
CREATE VIEW v_emp AS
SELECT id, name, age, department, phone_num, hire_date
FROM employee;

-- 만들어진 뷰 조회하기
SELECT * FROM v_emp; 