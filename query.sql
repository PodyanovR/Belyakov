--1
SELECT avg(age) 
  FROM students;
--2
SELECT groups.nameGr,
       avg(age) 
  FROM students,
       groups
 WHERE students.idGroup = groups.idGrup AND 
       groups.nameGr = "ПИнб-3";
--3
SELECT nameStud,
       age
  FROM students
 WHERE age >= 18;
--4
SELECT groups.nameGr,
       students.nameStud
  FROM students,
       groups
 WHERE students.idGroup = groups.idGrup AND 
       groups.nameGr = "ПИнб-2" AND
       students.age >= 18;
--5
SELECT curators.nameCur,
       students.nameStud
  FROM curators,
       students,
       groups
 WHERE curators.nameCur = "Дуров" AND 
       curators.id = groups.idCur AND 
       groups.idGrup = students.idGroup;
--6
SELECT students.nameStud,
       hobby.name
  FROM students,
       hobby,
       merge
 WHERE students.id = merge.idStudent AND 
       merge.idHobby = hobby.id
 ORDER BY students.nameStud ASC,
          hobby.name DESC;
--7
SELECT groups.nameGr,
       students.nameStud
  FROM students,
       groups
 WHERE students.idGroup = groups.idGrup
 ORDER BY groups.nameGr ASC,
          students.age DESC;
--8
SELECT students.nameStud,
       hobby.name
  FROM students,
       hobby,
       merge
 WHERE students.id = merge.idStudent AND 
       merge.idHobby = hobby.id AND 
       hobby.name = "youtube";
