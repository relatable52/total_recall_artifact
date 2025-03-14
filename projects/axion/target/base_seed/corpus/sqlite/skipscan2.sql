
  CREATE TABLE people(
    name TEXT PRIMARY KEY,
    role TEXT NOT NULL,
    height INT NOT NULL, -- in cm
    CHECK( role IN ('student','teacher') )
  );
  CREATE INDEX people_idx1 ON people(role, height);

  INSERT INTO people VALUES('Alice','student',156);
  INSERT INTO people VALUES('Bob','student',161);
  INSERT INTO people VALUES('Cindy','student',155);
  INSERT INTO people VALUES('David','student',181);
  INSERT INTO people VALUES('Emily','teacher',158);
  INSERT INTO people VALUES('Fred','student',163);
  INSERT INTO people VALUES('Ginny','student',169);
  INSERT INTO people VALUES('Harold','student',172);
  INSERT INTO people VALUES('Imma','student',179);
  INSERT INTO people VALUES('Jack','student',181);
  INSERT INTO people VALUES('Karen','student',163);
  INSERT INTO people VALUES('Logan','student',177);
  INSERT INTO people VALUES('Megan','teacher',159);
  INSERT INTO people VALUES('Nathan','student',163);
  INSERT INTO people VALUES('Olivia','student',161);
  INSERT INTO people VALUES('Patrick','teacher',180);
  INSERT INTO people VALUES('Quiana','student',182);
  INSERT INTO people VALUES('Robert','student',159);
  INSERT INTO people VALUES('Sally','student',166);
  INSERT INTO people VALUES('Tom','student',171);
  INSERT INTO people VALUES('Ursula','student',170);
  INSERT INTO people VALUES('Vance','student',179);
  INSERT INTO people VALUES('Willma','student',175);
  INSERT INTO people VALUES('Xavier','teacher',185);
  INSERT INTO people VALUES('Yvonne','student',149);
  INSERT INTO people VALUES('Zach','student',170);

  SELECT name FROM people WHERE height>=180 ORDER BY +name;

  EXPLAIN QUERY PLAN
  SELECT name FROM people WHERE height>=180 ORDER BY +name;

  ANALYZE;
  -- We do not have enough people above to actually force the use
  -- of a skip-scan.  So make a manual adjustment to the stat1 table
  -- to make it seem like there are many more.
  UPDATE sqlite_stat1 SET stat='10000 5000 20' WHERE idx='people_idx1';
  UPDATE sqlite_stat1 SET stat='10000 1' WHERE idx='sqlite_autoindex_people_1';
  ANALYZE sqlite_master;

  SELECT name FROM people WHERE height>=180 ORDER BY +name;

  EXPLAIN QUERY PLAN
  SELECT name FROM people WHERE height>=180 ORDER BY +name;

  SELECT name FROM people
   WHERE role IN (SELECT DISTINCT role FROM people)
     AND height>=180 ORDER BY +name;

  SELECT name FROM people WHERE role='teacher' AND height>=180
  UNION ALL
  SELECT name FROM people WHERE role='student' AND height>=180
  ORDER BY 1;

  INSERT INTO people VALUES('Angie','student',166);
  INSERT INTO people VALUES('Brad','student',176);
  INSERT INTO people VALUES('Claire','student',168);
  INSERT INTO people VALUES('Donald','student',162);
  INSERT INTO people VALUES('Elaine','student',177);
  INSERT INTO people VALUES('Frazier','student',159);
  INSERT INTO people VALUES('Grace','student',179);
  INSERT INTO people VALUES('Horace','student',166);
  ANALYZE;
  SELECT stat FROM sqlite_stat1 WHERE idx='people_idx1';

  SELECT name FROM people WHERE height>=180 ORDER BY +name;

  EXPLAIN QUERY PLAN
  SELECT name FROM people WHERE height>=180 ORDER BY +name;

  INSERT INTO people VALUES('Ingrad','student',155);
  INSERT INTO people VALUES('Jacob','student',179);
  ANALYZE;
  SELECT stat FROM sqlite_stat1 WHERE idx='people_idx1';

  SELECT name FROM people WHERE height>=180 ORDER BY +name;

  EXPLAIN QUERY PLAN
  SELECT name FROM people WHERE height>=180 ORDER BY +name;

  CREATE TABLE peoplew(
    name TEXT PRIMARY KEY,
    role TEXT NOT NULL,
    height INT NOT NULL, -- in cm
    CHECK( role IN ('student','teacher') )
  ) WITHOUT ROWID;
  CREATE INDEX peoplew_idx1 ON peoplew(role, height);
  INSERT INTO peoplew(name,role,height)
     SELECT name, role, height FROM  people;
  SELECT name FROM peoplew WHERE height>=180 ORDER BY +name;

  SELECT name FROM peoplew
   WHERE role IN (SELECT DISTINCT role FROM peoplew)
     AND height>=180 ORDER BY +name;

  SELECT name FROM peoplew WHERE role='teacher' AND height>=180
  UNION ALL
  SELECT name FROM peoplew WHERE role='student' AND height>=180
  ORDER BY 1;

  ANALYZE;

  SELECT name FROM peoplew WHERE height>=180 ORDER BY +name;

  EXPLAIN QUERY PLAN
  SELECT name FROM peoplew WHERE height>=180 ORDER BY +name;

  CREATE TABLE t3(a, b, c, PRIMARY KEY(a, b)) WITHOUT ROWID;
