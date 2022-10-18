/*
 STUDENTS table (id, firstName, lastName, birthDate, school, gpa)
 */
CREATE TABLE STUDENTS (
  id SERIAL PRIMARY KEY,
  firstName VARCHAR(256) NOT NULL,
  lastName VARCHAR(256) NOT NULL,
  birthDate DATE NOT NULL,
  school VARCHAR(256) NOT NULL,
  gpa NUMERIC(3, 2) NOT NULL
);

/*
 COURSES table (id, name)
 */
CREATE TABLE COURSES (
  id SERIAL PRIMARY KEY,
  name VARCHAR(256) NOT NULL
);

/*
 ENROLLMENTS table (studentId, courseId)
 */
CREATE TABLE ENROLLMENTS (
  id INT,
  courseId INT,
  PRIMARY KEY (id, courseId),
  FOREIGN KEY (id) REFERENCES STUDENTS,
  FOREIGN KEY (courseId) REFERENCES COURSES(id)
);

INSERT INTO
  STUDENTS (firstName, lastName, birthDate, school, gpa)
VALUES
  ('Danyka', 'Ward', '2003-04-09', 'SPIA', 2.14);

INSERT INTO
  STUDENTS (firstName, lastName, birthDate, school, gpa)
VALUES
  (
    'Francisca',
    'Nicolas',
    '2003-04-17',
    'SITE',
    3.06
  );

INSERT INTO
  STUDENTS (firstName, lastName, birthDate, school, gpa)
VALUES
  ('Kobe', 'McCullough', '2000-12-11', 'SITE', 2.11);

INSERT INTO
  STUDENTS (firstName, lastName, birthDate, school, gpa)
VALUES
  ('Paolo', 'Daugherty', '2003-08-20', 'SB', 3.12);

INSERT INTO
  STUDENTS (firstName, lastName, birthDate, school, gpa)
VALUES
  (
    'Heloise',
    'Baumbach',
    '2004-04-27',
    'SPIA',
    3.25
  );

INSERT INTO
  STUDENTS (firstName, lastName, birthDate, school, gpa)
VALUES
  ('Riley', 'Mann', '2003-12-11', 'SPIA', 3.84);

INSERT INTO
  STUDENTS (firstName, lastName, birthDate, school, gpa)
VALUES
  ('Grayson', 'Kilback', '2000-09-16', 'SITE', 3.23);

INSERT INTO
  STUDENTS (firstName, lastName, birthDate, school, gpa)
VALUES
  ('Dillan', 'Kilback', '2000-12-25', 'SB', 2.31);

INSERT INTO
  STUDENTS (firstName, lastName, birthDate, school, gpa)
VALUES
  ('Gordon', 'Robel', '2002-07-08', 'SB', 3.33);

INSERT INTO
  STUDENTS (firstName, lastName, birthDate, school, gpa)
VALUES
  ('Angel', 'Bogisich', '2003-03-28', 'SPIA', 2.35);

INSERT INTO
  STUDENTS (firstName, lastName, birthDate, school, gpa)
VALUES
  ('Gerson', 'Dicki', '2003-05-13', 'SB', 3.98);

INSERT INTO
  STUDENTS (firstName, lastName, birthDate, school, gpa)
VALUES
  ('Dana', 'Thompson', '2004-07-25', 'SB', 3.97);

INSERT INTO
  COURSES (name)
VALUES
  ('Course 1');

INSERT INTO
  COURSES (name)
VALUES
  ('Course 2');

INSERT INTO
  COURSES (name)
VALUES
  ('Course 3');

INSERT INTO
  COURSES (name)
VALUES
  ('Course 4');

INSERT INTO
  COURSES (name)
VALUES
  ('Course 5');

INSERT INTO
  COURSES (name)
VALUES
  ('Course 6');

INSERT INTO
  COURSES (name)
VALUES
  ('Course 7');

INSERT INTO
  COURSES (name)
VALUES
  ('Course 8');

INSERT INTO
  COURSES (name)
VALUES
  ('Course 9');

INSERT INTO
  COURSES (name)
VALUES
  ('Course 10');

INSERT INTO
  ENROLLMENTS (id, courseId)
VALUES
  (1, 2);

INSERT INTO
  ENROLLMENTS (id, courseId)
VALUES
  (1, 3);

INSERT INTO
  ENROLLMENTS (id, courseId)
VALUES
  (1, 10);

INSERT INTO
  ENROLLMENTS (id, courseId)
VALUES
  (2, 10);

INSERT INTO
  ENROLLMENTS (id, courseId)
VALUES
  (2, 5);

INSERT INTO
  ENROLLMENTS (id, courseId)
VALUES
  (2, 6);

INSERT INTO
  ENROLLMENTS (id, courseId)
VALUES
  (3, 3);

INSERT INTO
  ENROLLMENTS (id, courseId)
VALUES
  (3, 2);

INSERT INTO
  ENROLLMENTS (id, courseId)
VALUES
  (3, 7);

INSERT INTO
  ENROLLMENTS (id, courseId)
VALUES
  (4, 5);

INSERT INTO
  ENROLLMENTS (id, courseId)
VALUES
  (4, 9);

INSERT INTO
  ENROLLMENTS (id, courseId)
VALUES
  (4, 2);

INSERT INTO
  ENROLLMENTS (id, courseId)
VALUES
  (5, 6);

INSERT INTO
  ENROLLMENTS (id, courseId)
VALUES
  (5, 10);

INSERT INTO
  ENROLLMENTS (id, courseId)
VALUES
  (5, 5);

INSERT INTO
  ENROLLMENTS (id, courseId)
VALUES
  (6, 5);

INSERT INTO
  ENROLLMENTS (id, courseId)
VALUES
  (6, 4);

INSERT INTO
  ENROLLMENTS (id, courseId)
VALUES
  (6, 3);

INSERT INTO
  ENROLLMENTS (id, courseId)
VALUES
  (7, 9);

INSERT INTO
  ENROLLMENTS (id, courseId)
VALUES
  (7, 4);

INSERT INTO
  ENROLLMENTS (id, courseId)
VALUES
  (7, 1);

INSERT INTO
  ENROLLMENTS (id, courseId)
VALUES
  (8, 10);

INSERT INTO
  ENROLLMENTS (id, courseId)
VALUES
  (8, 8);

INSERT INTO
  ENROLLMENTS (id, courseId)
VALUES
  (8, 2);

INSERT INTO
  ENROLLMENTS (id, courseId)
VALUES
  (9, 5);

INSERT INTO
  ENROLLMENTS (id, courseId)
VALUES
  (9, 10);

INSERT INTO
  ENROLLMENTS (id, courseId)
VALUES
  (9, 9);

INSERT INTO
  ENROLLMENTS (id, courseId)
VALUES
  (10, 10);

INSERT INTO
  ENROLLMENTS (id, courseId)
VALUES
  (10, 2);

INSERT INTO
  ENROLLMENTS (id, courseId)
VALUES
  (10, 5);

INSERT INTO
  ENROLLMENTS (id, courseId)
VALUES
  (11, 10);

INSERT INTO
  ENROLLMENTS (id, courseId)
VALUES
  (11, 4);

INSERT INTO
  ENROLLMENTS (id, courseId)
VALUES
  (11, 7);

INSERT INTO
  ENROLLMENTS (id, courseId)
VALUES
  (12, 3);

INSERT INTO
  ENROLLMENTS (id, courseId)
VALUES
  (12, 6);

INSERT INTO
  ENROLLMENTS (id, courseId)
VALUES
  (12, 4);