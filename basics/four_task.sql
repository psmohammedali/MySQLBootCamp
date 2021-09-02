-- TODO: DISTINCT
-- SELECT COUNT(DISTINCT stu_fname)  AS STUDENT_COUNT FROM students;


-- FIXME: ORDER BY 
-- TODO: Order by login count
--  SELECT DISTINCT CONCAT(stu_fname, " ", stu_lname) AS STUDENT, login_count FROM students ORDER BY login_count DESC; 

-- TODO: Order by alphabetical Order
-- SELECT DISTINCT CONCAT(stu_fname," ",stu_lname) FROM students ORDER BY stu_fname;

-- FIXME: LIMIT BY
-- TODO: get descending order of student name by 5

-- SELECT DISTINCT CONCAT(stu_fname, " ",stu_lname ) AS STUDENT,
--  login_count FROM students ORDER BY login_count DESC LIMIT 5 ;

-- FIXME: Pattern Match
-- TODO: having man in stu_fname
-- % - many Number
-- "_" - specific number
-- SELECT stu_fname FROM students WHERE stu_fname LIKE "_e%";

-- FIXME: GROUP BY
-- TODO:SELECT stu_fname , COUNT(*) FROM students GROUP BY signup_month;

-- FIXME: MAX 
-- TODO: select max login in signup_month wise
-- (SELECT MAX(login_count)  FROM students 
-- GROUP BY signup_month) ORDER BY signup_month;

-- SELECT signup_month, AVG(login_count) , COUNT(*) FROM students GROUP BY signup_month;

-- SELECT CONCAT(stu_fname," ",stu_lname) AS STUDENTS, 
-- login_count, signup_month FROM students 
-- WHERE login_count IN (SELECT MAX(login_count), COUNT(*) FROM students 
-- GROUP BY signup_month);


-- FIXME: AND & OR

-- SELECT DISTINCT stu_fname, login_count ,signup_month FROM students 
-- WHERE login_count IN (SELECT MIN(login_count) FROM students GROUP BY signup_month) AND
-- signup_month IN (7,10);


-- SELECT CONCAT(stu_fname," ",stu_lname) AS students, login_count, course_count 
-- FROM students WHERE login_count>=20 OR course_count >=5;

-- FIXME: RANGE - BETWEEN AND
-- SELECT email, login_count,signup_month,COUNT(*) FROM students WHERE signup_month BETWEEN 9 AND 10 GROUP BY signup_month ORDER BY signup_month;



-- FIXME: CASE
-- SELECT CONCAT(stu_fname," ", stu_lname) AS STUDENT, email, login_count, signup_month,
-- CASE
--     WHEN signup_month BETWEEN 4 AND 7 THEN "FIRST 47"
--     WHEN signup_month BETWEEN  AND 12 THEN "FIRST 812"
--     WHEN signup_month BETWEEN 1 AND 3 THEN "FIRST 13"
--     END AS CATEGORY
-- FROM students;