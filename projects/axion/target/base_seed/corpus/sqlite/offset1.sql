
  CREATE TABLE t1(a,b);
  INSERT INTO t1 VALUES(1,'a'),(2,'b'),(3,'c'),(4,'d'),(5,'e');
  CREATE TABLE t2(x,y);
  INSERT INTO t2 VALUES(8,'y'),(9,'z'),(6,'w'),(7,'x');
  SELECT count(*) FROM t1, t2;

  SELECT a, b FROM t1
  UNION ALL
  SELECT * FROM (SELECT x, y FROM t2 ORDER BY y)
  LIMIT 3 OFFSET 0;

  SELECT a, b FROM t1
  UNION ALL
  SELECT * FROM (SELECT x, y FROM t2 ORDER BY y)
  LIMIT 3 OFFSET 1;

  SELECT a, b FROM t1
  UNION ALL
  SELECT * FROM (SELECT x, y FROM t2 ORDER BY y)
  LIMIT 3 OFFSET 2;

  SELECT a, b FROM t1
  UNION ALL
  SELECT * FROM (SELECT x, y FROM t2 ORDER BY y)
  LIMIT 3 OFFSET 3;

  SELECT a, b FROM t1
  UNION ALL
  SELECT * FROM (SELECT x, y FROM t2 ORDER BY y)
  LIMIT 3 OFFSET 4;

  SELECT a, b FROM t1
  UNION ALL
  SELECT * FROM (SELECT x, y FROM t2 ORDER BY y)
  LIMIT 3 OFFSET 5;

  SELECT a, b FROM t1
  UNION ALL
  SELECT * FROM (SELECT x, y FROM t2 ORDER BY y)
  LIMIT 3 OFFSET 6;

  SELECT a, b FROM t1
  UNION ALL
  SELECT * FROM (SELECT x, y FROM t2 ORDER BY y)
  LIMIT 3 OFFSET 7;

  SELECT a, b FROM t1
  UNION ALL
  SELECT * FROM (SELECT x, y FROM t2 ORDER BY y)
  LIMIT 3 OFFSET 8;

  SELECT a, b FROM t1
  UNION ALL
  SELECT * FROM (SELECT x, y FROM t2 ORDER BY y)
  LIMIT 3 OFFSET 9;

  SELECT * FROM t1 LIMIT 0;

  SELECT a, b FROM t1
  UNION ALL
  SELECT * FROM (SELECT x, y FROM t2 ORDER BY y)
  LIMIT 0 OFFSET 1;

  SELECT a, b FROM t1
  UNION ALL
  SELECT * FROM (SELECT x, y FROM t2 ORDER BY y)
  LIMIT 1 OFFSET 1;

  SELECT a, b FROM t1
  UNION ALL
  SELECT * FROM (SELECT x, y FROM t2 ORDER BY y)
  LIMIT 2 OFFSET 1;

  SELECT a, b FROM t1
  UNION ALL
  SELECT * FROM (SELECT x, y FROM t2 ORDER BY y)
  LIMIT 3 OFFSET 1;

  SELECT a, b FROM t1
  UNION ALL
  SELECT * FROM (SELECT x, y FROM t2 ORDER BY y)
  LIMIT 4 OFFSET 1;

  SELECT a, b FROM t1
  UNION ALL
  SELECT * FROM (SELECT x, y FROM t2 ORDER BY y)
  LIMIT 5 OFFSET 1;

  SELECT a, b FROM t1
  UNION ALL
  SELECT * FROM (SELECT x, y FROM t2 ORDER BY y)
  LIMIT 6 OFFSET 1;

  SELECT a, b FROM t1
  UNION ALL
  SELECT * FROM (SELECT x, y FROM t2 ORDER BY y)
  LIMIT 7 OFFSET 1;

  SELECT a, b FROM t1
  UNION ALL
  SELECT * FROM (SELECT x, y FROM t2 ORDER BY y)
  LIMIT 8 OFFSET 1;

  SELECT a, b FROM t1
  UNION ALL
  SELECT * FROM (SELECT x, y FROM t2 ORDER BY y)
  LIMIT 9 OFFSET 1;

  CREATE TABLE employees (
    id integer primary key,
    name text,
    city text,
    department text,
    salary integer
  );
  INSERT INTO employees VALUES
    (11,'Diane','London','hr',70),
    (12,'Bob','London','hr',78),
    (21,'Emma','London','it',84),
    (22,'Grace','Berlin','it',90),
    (23,'Henry','London','it',104),
    (24,'Irene','Berlin','it',104),
    (25,'Frank','Berlin','it',120),
    (31,'Cindy','Berlin','sales',96),
    (32,'Dave','London','sales',96),
    (33,'Alice','Berlin','sales',100);
  CREATE VIEW v AS
    SELECT * FROM (
      SELECT * FROM employees 
       WHERE salary < 100
       ORDER BY salary desc)
     UNION ALL 
     SELECT * FROM (
       SELECT * FROM employees
       WHERE salary >= 100
       ORDER BY salary asc);

  SELECT * FROM v LIMIT 5 OFFSET 2;
