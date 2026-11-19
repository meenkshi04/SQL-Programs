CREATE TABLE COURSE (
    course_id INT,
    course_code VARCHAR(15),
    course_title VARCHAR(150),
    category VARCHAR(60),
    duration_hours INT,
    fee INT,
    delivery_mode VARCHAR(20),
    course_status VARCHAR(20),
    created_at VARCHAR(10)
);

 INSERT INTO COURSE VALUES
(1, 'java101', 'Core Java Programming Language', 'Programs', 60, 10000, 'Online', 'Active', '2021-01-01'),
(2, 'java102', 'Advance Java Programming Language', 'Programs', 40, 20000, 'Offline', 'Active', '2022-02-02'),
(3, 'SQL103', 'Structure Query Language', 'Database', 30, 30000, 'Online', 'Active', '2023-03-03'),
(4, 'HTML104', 'Hyper Text Markup Language', 'Web', 20, 20000, 'Offline', 'Active', '2024-04-04');
 DESC COURSE;
 SELECT * FROM COURSE;
 SELECT  Course_id, course_title,fee
 FROM COURSE;
 SELECT *  FROM COURSE
 WHERE course_id = 1; 
 DELETE  FROM   COURSE 
 WHERE  course_id = 1;
 UPDATE   COURSE
 SET  fee =1200
 WHERE course_id = 1;
  ALTER  TABLE  COURSE 
  MODIFY   fee  BIGINT;
   RENAME TABLE  COURSE TO COURSES;


 
 
   
    
 


 

 
  
  
 