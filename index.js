import { faker } from "@faker-js/faker";
import dayjs from "dayjs";
import { appendFile } from "node:fs/promises";

const MIGRATION_FILE = "migration.sql";
let INSERT_STATEMENTS = "\n\n";

// Students
const STUDENTS_COUNT = 12;
const MIN_AGE = 18;
const MAX_AGE = 23;
const MIN_GPA = 2;
const MAX_GPA = 4;
const SCHOOLS = ["SITE", "SB", "SPIA"];

const createStudent = () => ({
  firstName: faker.name.firstName().replace(/[^A-Za-z]/g, ""),
  lastName: faker.name.lastName().replace(/[^A-Za-z]/g, ""),
  birthDate: dayjs(
    faker.date.birthdate({
      min: MIN_AGE,
      max: MAX_AGE,
      mode: "age",
    })
  ).format("YYYY-MM-DD"),
  school: faker.helpers.arrayElement(SCHOOLS),
  gpa: faker.datatype.number({
    min: MIN_GPA,
    max: MAX_GPA,
    precision: 0.01,
  }),
});

const STUDENTS = Array.from({ length: STUDENTS_COUNT }, () => createStudent());

STUDENTS.forEach(({ firstName, lastName, birthDate, school, gpa }) => {
  INSERT_STATEMENTS += `INSERT INTO STUDENTS (firstName, lastName, birthDate, school, gpa) VALUES ('${firstName}', '${lastName}', '${birthDate}', '${school}', ${gpa});\n`;
});

// Courses
const COURSES = [
  "Course 1",
  "Course 2",
  "Course 3",
  "Course 4",
  "Course 5",
  "Course 6",
  "Course 7",
  "Course 8",
  "Course 9",
  "Course 10",
];

COURSES.forEach((course) => {
  INSERT_STATEMENTS += `INSERT INTO COURSES (name) VALUES ('${course}');\n`;
});

// Enrollments
const MAX_ENROLLMENTS = 3;

STUDENTS.forEach((_, index) => {
  const courseIds = new Set();

  while (courseIds.size !== MAX_ENROLLMENTS) {
    courseIds.add(Math.floor(Math.random() * COURSES.length));
  }

  courseIds.forEach((courseId) => {
    INSERT_STATEMENTS += `INSERT INTO ENROLLMENTS (id, courseId) VALUES (${
      index + 1
    }, ${courseId + 1});\n`;
  });
});

(async () => {
  await appendFile(MIGRATION_FILE, INSERT_STATEMENTS);
})();
