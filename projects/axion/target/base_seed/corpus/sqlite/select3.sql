
  SELECT log, count(*) FROM t1 HAVING log>=4

  SELECT count(*) FROM t1 HAVING log>=4

  SELECT count(*) FROM t1 HAVING log!=400

     DROP TABLE IF EXISTS t1;
     CREATE TABLE t1 (c0, c1 REAL PRIMARY KEY);
     INSERT INTO t1(c0, c1) VALUES (0, $x), (0, 0);
     UPDATE t1 SET c0 = NULL;
     UPDATE OR REPLACE t1 SET c1 = 1;
     SELECT DISTINCT * FROM t1 WHERE (t1.c0 IS NULL);
     PRAGMA integrity_check;
  
  CREATE TABLE t0(c0 REAL, c1 REAL GENERATED ALWAYS AS (c0));
  INSERT INTO t0(c0) VALUES (1);
  SELECT * FROM t0 GROUP BY c0;

  CREATE TABLE t1(a, b);
  CREATE TABLE t2(c, d);
  SELECT max(t1.a), 
         (SELECT 'xyz' FROM (SELECT * FROM t2 WHERE 0) WHERE t1.b=1) 
  FROM t1;

    SELECT max(a), val FROM t1 LEFT JOIN (
        SELECT 'constant' AS val FROM t2 WHERE x=1234
    )
  
    INSERT INTO t2 VALUES(123);
    SELECT max(a), val FROM t1 LEFT JOIN (
        SELECT 'constant' AS val FROM t2 WHERE x=1234
    )
  
    INSERT INTO t2 VALUES(1234);
    SELECT max(a), val FROM t1 LEFT JOIN (
        SELECT 'constant' AS val FROM t2 WHERE x=1234
    )
  
  CREATE TABLE t1(a);
  CREATE TABLE t2(x);

  SELECT count(x), m FROM t1 LEFT JOIN (SELECT x, 59 AS m FROM t2) GROUP BY a;

  INSERT INTO t1 VALUES(1), (1), (2), (3);
  SELECT count(x), m FROM t1 LEFT JOIN (SELECT x, 59 AS m FROM t2) GROUP BY a;

  INSERT INTO t2 VALUES(45);
  SELECT count(x), m FROM t1 LEFT JOIN (SELECT x, 59 AS m FROM t2) GROUP BY a;

  INSERT INTO t2 VALUES(210);
  SELECT count(x), m FROM t1 LEFT JOIN (SELECT x, 59 AS m FROM t2) GROUP BY a;

  INSERT INTO t2 VALUES(NULL);
  SELECT count(x), m FROM t1 LEFT JOIN (SELECT x, 59 AS m FROM t2) GROUP BY a;

  DELETE FROM t2;
  DELETE FROM t1;
  INSERT INTO t1 VALUES('value');
  INSERT INTO t2 VALUES('hello');

  SELECT group_concat(x), m FROM t1 
    LEFT JOIN (SELECT x, 59 AS m FROM t2) GROUP BY a;

  SELECT group_concat(x), m, n FROM t1 
    LEFT JOIN (SELECT x, 59 AS m, 60 AS n FROM t2) GROUP BY a;
