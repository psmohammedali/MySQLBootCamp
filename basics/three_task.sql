-- FIXME: CONCAT 
-- TODO: Get full name of the students;
-- SELECT CONCAT(stu_fname," ",stu_lname) AS "STUDENT NAME" FROM students;

-- SELECT CONCAT("LCO", "USER");

-- TODO: Get full name and login count of the students;
-- SELECT CONCAT(stu_fname," ",stu_lname) AS "STUDENT NAME", login_count AS "LOGINS"FROM students;

-- TODO: Get full name and login count and course_count of the students;
-- SELECT CONCAT(stu_fname," ", stu_lname,". The login count is ",login_count,
--             " and course count is ",course_count) AS "STUDENT INFO" FROM students;


-- FIXME: REPLACE 
-- TODO: GET THE FULL NAME AND CHANGE a TO @
-- SELECT REPLACE(CONCAT(stu_fname," ", stu_lname), "a", "@") AS "STUDENT NAME"  FROM students;
-- SELECT CONCAT(REPLACE(stu_fname, "a","@") ," ",REPLACE(stu_lname, "a","@")) FROM students;



-- FIXME: SUBSTRING 
-- TODO: Select all the mails if more than 7 trucate it with ...
-- SELECT SUBSTRING(email,1,7),"...") AS "EMAIL ID" FROM students;


-- TODO: REVERSE
-- SELECT REVERSE(stu_fname) FROM students;


-- FIXME:: CHAR_LENGTH
-- SELECT email, CHAR_LENGTH(email) AS LENGTH FROM students ;

-- FIXME: UPPER && LOWER


-- TODO: Get all the first name with upper case and last name with lower
-- SELECT UPPER(stu_fname) AS FIRST, LOWER(stu_lname) AS LAST FROM students;