-- Questão 1 ---

SELECT COUNT("endDate") as "currentExperiences" FROM experiences;

-- Questão 2 ---

SELECT "userId" as id,COUNT("userId") as educations FROM educations GROUP BY "userId";

-- Questão 3 ---

SELECT users.name as writer,COUNT("writerId") as "testimonialCount" FROM testimonials JOIN users ON users.id=testimonials."writerId" WHERE "writerId"=435 GROUP BY users.name;

-- Questão 4 ---

SELECT MAX(salary) as "maximumSalary", roles.name as roles FROM jobs JOIN roles ON jobs."roleId"=roles.id WHERE jobs.active=true GROUP BY roles.name ORDER BY "maximumSalary" ASC;

-- Bonus ---

SELECT schools.name as school, courses.name as course, COUNT("schoolId") as "studentsCount", educations.status as role FROM educations JOIN schools ON schools.id=educations."schoolId" JOIN courses ON courses.id=educations."courseId" WHERE educations.status='ongoing' OR educations.status='finished' GROUP BY schools.name,courses.name,role ORDER BY "studentsCount" DESC LIMIT 3;

