
  CREATE TABLE t1(a, b, c);
  INSERT INTO t1 VALUES('a', 1, 1);
  INSERT INTO t1 VALUES('b', 6, 6);
  INSERT INTO t1 VALUES('c', 5, 5);
  INSERT INTO t1 VALUES('a', 4, 4);
  INSERT INTO t1 VALUES('a', 5, 5);
  INSERT INTO t1 VALUES('c', 6, 6);
  INSERT INTO t1 VALUES('b', 4, 4);
  INSERT INTO t1 VALUES('c', 7, 7);
  INSERT INTO t1 VALUES('b', 2, 2);
  INSERT INTO t1 VALUES('b', 3, 3);
  INSERT INTO t1 VALUES('a', 3, 3);
  INSERT INTO t1 VALUES('b', 5, 5);
  INSERT INTO t1 VALUES('c', 4, 4);
  INSERT INTO t1 VALUES('c', 3, 3);
  INSERT INTO t1 VALUES('a', 2, 2);
  SELECT * FROM t1 ORDER BY a, b, c;
 CREATE INDEX i1 ON t1(a, b, c) 
  CREATE TABLE t14(a INTEGER, b INTEGER);
  INSERT INTO t14(a,b) VALUES(100,2),(200,2),(300,2),(400,1),(500,2);
  SELECT min(a) FROM t14 WHERE b='2' AND a>'50';

  CREATE INDEX t14ba ON t14(b,a);
  SELECT min(a) FROM t14 WHERE b='2' AND a>'50';

  CREATE TABLE t1(a);
  CREATE TABLE t2(b);
  CREATE TABLE t3(c);
  INSERT INTO t1 VALUES(0);
  INSERT INTO t2 VALUES(5);
  SELECT MIN((SELECT b FROM t2 UNION SELECT x FROM (SELECT x FROM (SELECT 1 AS x WHERE t1.a=1) UNION ALL SELECT c FROM t3))) FROM t1;
