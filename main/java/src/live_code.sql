-- CREATE TABLE students (id INT, name VARCHAR(100));

-- ALTER TABLE students ADD COLUMN age INT;

-- DROP TABLE students;

-- TRUNCATE TABLE students;

-- ALTER TABLE students RENAME TO undergraduates;

-- INSERT INTO students (id, name, age)
-- VALUES
--   (1, 'Alice', 21),
--   (2, 'Alex', 25),
--   (3, 'Manuel', 42),
--     (4, 'Jenny', 18);
-- SELECT * FROM students WHERE age > 20;


-- CREATE TABLE courses (
--     id SERIAL PRIMARY KEY,
--    name VARCHAR(255),
--    numoftopics INTEGER
-- );

--CREATE VIEW short_courses AS SELECT * FROM courses WHERE numoftopics < 8;

-- SELECT * FROM students WHERE id IN (
--     SELECT student_id FROM scholarships
--     );

-- CREATE TYPE choices AS ENUM ('Germany', 'China', 'USA');

-- EXPLAIN SELECT * FROM students;

-- CREATE INDEX IF NOT EXISTS std_index
-- ON students (name, age);
