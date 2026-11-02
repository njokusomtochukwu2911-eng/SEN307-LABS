-- Test 1: NOT NULL (should fail: dept_name is required) 
-- INSERT INTO Department (dept_name) VALUES (NULL); 

-- Test 2: CHECK (should fail: credit_units must be 1 to 6) 
-- INSERT INTO Course (course_code, course_title, credit_units) VALUES ('TST101', 'Test', 9); 

-- Test 3: FOREIGN KEY (should fail: department 999 does not exist) 
-- INSERT INTO Student (matric_no, full_name, dept_id) VALUES ('TEST001', 'Test', 999); 

-- Test 4: ENUM (should fail: gender must be 'M' or 'F') 
INSERT INTO Student (matric_no, full_name, gender) VALUES ('TEST002', 'Test', 'X'); 

