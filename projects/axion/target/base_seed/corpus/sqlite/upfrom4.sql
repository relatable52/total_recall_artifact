
  DROP TABLE IF EXISTS t5;
  DROP TABLE IF EXISTS m1;
  DROP TABLE IF EXISTS m2;
  CREATE TABLE t5(a INTEGER PRIMARY KEY, b TEXT, c TEXT);
  CREATE TABLE m1(x INTEGER PRIMARY KEY, y TEXT);
  CREATE TABLE m2(u INTEGER PRIMARY KEY, v TEXT);

  INSERT INTO t5 VALUES(1, 'one', 'ONE');
  INSERT INTO t5 VALUES(2, 'two', 'TWO');
  INSERT INTO t5 VALUES(3, 'three', 'THREE');
  INSERT INTO t5 VALUES(4, 'four', 'FOUR');

  INSERT INTO m1 VALUES(1, 'i');
  INSERT INTO m1 VALUES(2, 'ii');
  INSERT INTO m1 VALUES(3, 'iii');

  INSERT INTO m2 VALUES(1, 'I');
  INSERT INTO m2 VALUES(3, 'II');
  INSERT INTO m2 VALUES(4, 'III');
  SELECT * FROM t5;

  BEGIN;
  UPDATE t5 SET b=y, c=v FROM m1 LEFT JOIN m2 ON (x=u) WHERE x=a;
  SELECT * FROM t5 ORDER BY a;
  ROLLBACK;

  BEGIN;
  UPDATE t5 SET b=y, c=v FROM m2 RIGHT JOIN m1 ON (x=u) WHERE x=a;
  SELECT * FROM t5 ORDER BY a;
  ROLLBACK;

  CREATE TABLE t1(a INT PRIMARY KEY, b INT, c INT);
  INSERT INTO t1(a) VALUES(1),(2),(8),(19);
  CREATE TABLE c1(x INTEGER PRIMARY KEY, b INT);
  INSERT INTO c1(x,b) VALUES(1,1),(8,8),(17,17),(NULL,NULL);
  CREATE TABLE c2(x INT,c INT);
  INSERT INTO c2(x,c) VALUES(2,2),(8,8),(NULL,NULL);
  CREATE TABLE dual(dummy TEXT);
  INSERT INTO dual VALUES('X');

  BEGIN;
  SELECT * FROM t1 ORDER BY a;
  UPDATE t1 SET b=c1.b, c=c2.c
    FROM dual, c1 NATURAL RIGHT JOIN c2
   WHERE x=a;
  SELECT * FROM t1 ORDER BY a;
  ROLLBACK;

  CREATE TABLE t2(x);
  CREATE TRIGGER AFTER INSERT ON t2 BEGIN
    UPDATE t1 SET b=c1.b, c=c2.c
      FROM dual, c1 NATURAL RIGHT JOIN c2
     WHERE x=a;
  END;

  BEGIN;
  SELECT * FROM t1 ORDER BY a;
  INSERT INTO t2(x) VALUES(1);
  SELECT * FROM t1 ORDER BY a;
  ROLLBACK;

  CREATE TABLE t2(x,y,z PRIMARY KEY) WITHOUT ROWID;
  INSERT INTO t2 VALUES(89,-89,6);
  CREATE TABLE t1(a INT,b TEXT,c TEXT,d REAL) STRICT;
  INSERT INTO t1 VALUES(1,'xyz','def',4.5);
  CREATE TRIGGER t1tr BEFORE UPDATE ON t1 BEGIN
    INSERT INTO t1(a,b) VALUES(1000,'uvw');
    UPDATE t1 SET b=NULL FROM (SELECT CAST(a AS varchar) FROM t1 ORDER BY b) NATURAL LEFT FULL JOIN t1 AS text;
  END;
  UPDATE t1 SET b=b|100;
  SELECT * FROM t1 ORDER BY a;

    CREATE TABLE t1(abc INT, def INT);  
    INSERT INTO t1 VALUES(0,0);
    INSERT INTO t1 VALUES(0,0);
    INSERT INTO t1 VALUES(0,0);
    CREATE TABLE dual(dummy TEXT);  
    INSERT INTO dual(dummy) VALUES('X');
  
    UPDATE t1
      SET (abc, def)=(SELECT  x, 123)
      FROM dual LEFT JOIN (SELECT 789 AS 'x' FROM dual) AS d2
      LIMIT 2
  
    SELECT * FROM t1
  