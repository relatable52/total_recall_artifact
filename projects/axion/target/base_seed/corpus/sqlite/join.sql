
  SELECT t1.rowid, t2.rowid, '|' FROM t1, t2 ON t1.a=t2.b;

  CREATE TABLE t14(x);
  INSERT INTO t14 VALUES('abcdefghij');

  CREATE TABLE aa(a);
  CREATE TABLE bb(b);
  CREATE TABLE cc(c);

  INSERT INTO aa VALUES(45);
  INSERT INTO cc VALUES(45);
  INSERT INTO cc VALUES(45);

  SELECT * FROM aa LEFT JOIN bb, cc WHERE cc.c=aa.a;

  CREATE INDEX ccc ON cc(c);
  SELECT * FROM aa LEFT JOIN bb, cc WHERE cc.c=aa.a;

  SELECT *
    FROM (SELECT 1 a) AS x 
         LEFT JOIN (SELECT 1, * FROM (SELECT * FROM (SELECT 1)));

  SELECT *
  FROM (SELECT 1 a) AS x
    LEFT JOIN (SELECT 1, * FROM (SELECT * FROM (SELECT * FROM (SELECT 1)))) AS y
    JOIN (SELECT * FROM (SELECT 9)) AS z;

  SELECT *
  FROM (SELECT 111)
  LEFT JOIN (SELECT cc+222, * FROM (SELECT * FROM (SELECT 333 cc)));

  DROP TABLE IF EXISTS t1;
  CREATE TABLE t1(c PRIMARY KEY, a TEXT(10000), b TEXT(10000));
  SELECT * FROM (SELECT 111) LEFT JOIN (SELECT c+222 FROM t1) GROUP BY 1;

  SELECT * FROM (SELECT 111) LEFT JOIN (SELECT c+222 FROM t1);

  SELECT * FROM (SELECT 111 AS x UNION ALL SELECT 222)
                LEFT JOIN (SELECT c+333 AS y FROM t1) ON x=y GROUP BY 1;

  SELECT count(*)
    FROM (SELECT 111 AS x UNION ALL SELECT 222)
         LEFT JOIN (SELECT c+333 AS y FROM t1) ON x=y;

  SELECT count(*)
    FROM (SELECT c+333 AS y FROM t1)
         RIGHT JOIN (SELECT 111 AS x UNION ALL SELECT 222) ON x=y;

  SELECT * FROM (SELECT 111 AS x UNION ALL SELECT 111)
                LEFT JOIN (SELECT c+333 AS y FROM t1) ON x=y GROUP BY 1;

  SELECT * FROM (SELECT 111 AS x UNION ALL SELECT 111 UNION ALL SELECT 222)
                LEFT JOIN (SELECT c+333 AS y FROM t1) ON x=y GROUP BY 1;

  INSERT INTO t1(c) VALUES(-111);
  SELECT * FROM (SELECT 111 AS x UNION ALL SELECT 111 UNION ALL SELECT 222)
                LEFT JOIN (SELECT c+333 AS y FROM t1) ON x=y GROUP BY 1;

  DROP TABLE IF EXISTS t1;
  CREATE TABLE t1(c PRIMARY KEY) WITHOUT ROWID;
  SELECT * FROM (SELECT 111) LEFT JOIN (SELECT c+222 FROM t1) GROUP BY 1;

  CREATE TABLE t1(a);
  INSERT INTO t1 VALUES(1),(2),(3);
  CREATE VIEW v2 AS SELECT a, 1 AS b FROM t1;
  CREATE TABLE t3(x);
  INSERT INTO t3 VALUES(2),(4);
  SELECT *, '|' FROM t3 LEFT JOIN v2 ON a=x WHERE b=1;

  SELECT *, '|' FROM t3 LEFT JOIN v2 ON a=x WHERE b+1=x;

  SELECT *, '|' FROM t3 LEFT JOIN v2 ON a=x ORDER BY b;

  CREATE TABLE t1(id INTEGER PRIMARY KEY);
  CREATE TABLE t2(id INTEGER PRIMARY KEY, c2 INTEGER);
  CREATE TABLE t3(id INTEGER PRIMARY KEY, c3 INTEGER);
  INSERT INTO t1(id) VALUES(456);
  INSERT INTO t3(id) VALUES(1),(2);
  SELECT t1.id, x2.id, x3.id
  FROM t1
  LEFT JOIN (SELECT * FROM t2) AS x2 ON t1.id=x2.c2
  LEFT JOIN t3 AS x3 ON x2.id=x3.c3;

  CREATE TABLE t1(a INT, b INT);
  INSERT INTO t1 VALUES(1,2),(3,4);
  CREATE TABLE t2(x INT, y INT);
  SELECT *, 'x'
    FROM t1 LEFT JOIN t2
   WHERE CASE WHEN FALSE THEN a=x ELSE 1 END;

  SELECT *, 'x'
    FROM t1 LEFT JOIN t2
   WHERE a IN (1,3,x,y);

  SELECT *, 'x' 
    FROM t1 LEFT JOIN t2 
   WHERE NOT ( 'x'='y' AND t2.y=1 );

  SELECT *, 'x' 
    FROM t1 LEFT JOIN t2 
   WHERE ~ ( 'x'='y' AND t2.y=1 );

  SELECT *, 'x' 
    FROM t1 LEFT JOIN t2 
   WHERE t2.y IS NOT 'abc'

  DROP TABLE t1;
  DROP TABLE t2;
  CREATE TABLE t1(a INTEGER PRIMARY KEY, b INTEGER);
  INSERT INTO t1(a,b) VALUES(1,0),(11,1),(12,1),(13,1),(121,12);
  CREATE INDEX t1b ON t1(b);
  CREATE TABLE t2(x INTEGER PRIMARY KEY);
  INSERT INTO t2(x) VALUES(0),(1);
  SELECT  a1, a2, a3, a4, a5
   FROM (SELECT a AS a1 FROM t1 WHERE b=0)
        JOIN (SELECT x AS x1 FROM t2)
        LEFT JOIN (SELECT a AS a2, b AS b2 FROM t1)
          ON x1 IS TRUE AND b2=a1
        JOIN (SELECT x AS x2 FROM t2)
          ON x2<=CASE WHEN x1 THEN CASE WHEN a2 THEN 1 ELSE -1 END ELSE 0 END
        LEFT JOIN (SELECT a AS a3, b AS b3 FROM t1)
          ON x2 IS TRUE AND b3=a2
        JOIN (SELECT x AS x3 FROM t2)
          ON x3<=CASE WHEN x2 THEN CASE WHEN a3 THEN 1 ELSE -1 END ELSE 0 END
        LEFT JOIN (SELECT a AS a4, b AS b4 FROM t1)
          ON x3 IS TRUE AND b4=a3
        JOIN (SELECT x AS x4 FROM t2)
          ON x4<=CASE WHEN x3 THEN CASE WHEN a4 THEN 1 ELSE -1 END ELSE 0 END
        LEFT JOIN (SELECT a AS a5, b AS b5 FROM t1)
          ON x4 IS TRUE AND b5=a4
   ORDER BY a1, a2, a3, a4, a5;

  DROP TABLE IF EXISTS t1;
  DROP TABLE IF EXISTS t2;
  CREATE TABLE t1(a INT);
  INSERT INTO t1(a) VALUES(1);
  CREATE TABLE t2(b INT);
  SELECT a, b
    FROM t1 LEFT JOIN t2 ON 0
   WHERE (b IS NOT NULL)=0;

  DROP TABLE IF EXISTS t1;
  CREATE TABLE t1(x);
  INSERT INTO t1(x) VALUES(0),(1);
  SELECT * FROM t1 LEFT JOIN (SELECT abs(1) AS y FROM t1) ON x WHERE NOT(y='a');

  SELECT * FROM t1 LEFT JOIN (SELECT abs(1)+2 AS y FROM t1) ON x
   WHERE NOT(y='a');

  CREATE TABLE t0(a);
  CREATE TABLE t1(b);
  CREATE VIEW v0 AS SELECT a FROM t1 LEFT JOIN t0;
  INSERT INTO t1 VALUES (1);

  SELECT * FROM v0 WHERE NOT(v0.a IS FALSE);

  SELECT * FROM t1 LEFT JOIN t0 WHERE NOT(a IS FALSE);

  SELECT NOT(v0.a IS FALSE) FROM v0

  CREATE TABLE t1(a);
  CREATE TABLE t2(b);
  INSERT INTO t1(a) VALUES(0);
  CREATE VIEW v0(c) AS SELECT t2.b FROM t1 LEFT JOIN t2;

  SELECT * FROM v0 WHERE v0.c NOTNULL NOTNULL; 

  SELECT * FROM t1 LEFT JOIN t2

  SELECT * FROM t1 LEFT JOIN t2 WHERE (b IS NOT NULL) IS NOT NULL; 

  SELECT (b IS NOT NULL) IS NOT NULL FROM t1 LEFT JOIN t2

  SELECT * FROM t1 LEFT JOIN t2 WHERE 
    (b IS NOT NULL AND b IS NOT NULL) IS NOT NULL; 

  CREATE TABLE t1(c1);
  CREATE TABLE t0(c0);
  INSERT INTO t0(c0) VALUES (0);
  SELECT * FROM t0 LEFT JOIN t1 WHERE NULL IN (c1);

  CREATE INDEX t1x ON t1(0) WHERE NULL IN (c1);
  SELECT * FROM t0 LEFT JOIN t1 WHERE NULL IN (c1);

  DROP TABLE t0;
  DROP TABLE t1;
  CREATE TABLE t0(aa);
  CREATE TABLE t1(bb);
  INSERT INTO t0(aa) VALUES (1);
  INSERT INTO t1(bb) VALUES (1);
  SELECT 11, * FROM t1 LEFT JOIN t0 WHERE aa ISNULL;
  SELECT 12, * FROM t1 LEFT JOIN t0 WHERE +aa ISNULL;
  SELECT 13, * FROM t1 LEFT JOIN t0 ON aa ISNULL;
  SELECT 14, * FROM t1 LEFT JOIN t0 ON +aa ISNULL;
  CREATE INDEX i0 ON t0(aa) WHERE aa ISNULL;
  SELECT 21, * FROM t1 LEFT JOIN t0 WHERE aa ISNULL;
  SELECT 22, * FROM t1 LEFT JOIN t0 WHERE +aa ISNULL;
  SELECT 23, * FROM t1 LEFT JOIN t0 ON aa ISNULL;
  SELECT 24, * FROM t1 LEFT JOIN t0 ON +aa ISNULL;

  CREATE TABLE t0(a, b);
  CREATE INDEX t0a ON t0(a);
  INSERT INTO t0 VALUES(10,10),(10,11),(10,12);
  SELECT DISTINCT c FROM t0 LEFT JOIN (SELECT a+1 AS c FROM t0) ORDER BY c ;

    CREATE TABLE t0(c0);
    INSERT INTO t0(c0) VALUES(123);
    CREATE VIEW v0(c0) AS SELECT 0 GROUP BY 1;
    SELECT t0.c0, v0.c0, vt0.name
     FROM v0, t0 LEFT JOIN pragma_table_info('t0') AS vt0
       ON vt0.name LIKE 'c0'
     WHERE v0.c0 == 0;
  
    CREATE TABLE a(value TEXT);
    INSERT INTO a(value) SELECT value FROM json_each('["a", "b", null]');
    CREATE TABLE b(value TEXT);
    INSERT INTO b(value) SELECT value FROM json_each('["a", "c", null]');
    SELECT a.value, b.value FROM a RIGHT JOIN b ON a.value = b.value;
  
    SELECT a.value, b.value FROM b LEFT JOIN a ON a.value = b.value;
  
    SELECT a.value, b.value 
      FROM json_each('["a", "c", null]') AS b
           LEFT JOIN
           json_each('["a", "b", null]') AS a ON a.value = b.value;
  
    SELECT a.value, b.value 
      FROM json_each('["a", "b", null]') AS a
           RIGHT JOIN
           json_each('["a", "c", null]') AS b ON a.value = b.value;
  
    SELECT a.value, b.value 
      FROM json_each('["a", "b", null]') AS a
           RIGHT JOIN
           b ON a.value = b.value;
  
    SELECT a.value, b.value 
      FROM a
           RIGHT JOIN
           json_each('["a", "c", null]') AS b ON a.value = b.value;
  
  CREATE TABLE t1(a PRIMARY KEY, x);
  CREATE TABLE t2(b INT);
  CREATE INDEX t1aa ON t1(a, a);

  INSERT INTO t1 VALUES('abc', 'def');
  INSERT INTO t2 VALUES(1);

  SELECT * FROM t2 JOIN t1 WHERE a='abc' AND x='def';

  SELECT * FROM t2 JOIN t1 WHERE a='abc' AND x='abc';

  SELECT * FROM t2 LEFT JOIN t1 ON a=0 WHERE (x='x' OR x IS NULL);

  CREATE TABLE t0(c0 INT);
  CREATE VIEW v0 AS SELECT (NULL AND 5) as c0 FROM t0;
  INSERT INTO t0(c0) VALUES (NULL);
  SELECT count(*)  FROM v0 LEFT JOIN t0 ON v0.c0;

  CREATE TABLE t1(a INT,b INT,c INT);  INSERT INTO t1 VALUES(NULL,NULL,NULL);
  CREATE TABLE t2(d INT,e INT);        INSERT INTO t2 VALUES(NULL,NULL);
  CREATE INDEX x2 ON t1(c,b);
  CREATE TABLE t3(x INT);              INSERT INTO t3 VALUES(NULL);

  WITH t99(b) AS MATERIALIZED (
    SELECT b FROM t2 LEFT JOIN t1 ON c IN (SELECT x FROM t3)
  )
  SELECT 5 FROM t2 JOIN t99 ON b IN (1,2,3);

  WITH t99(b) AS NOT MATERIALIZED (
    SELECT b FROM t2 LEFT JOIN t1 ON c IN (SELECT x FROM t3)
  )
  SELECT 5 FROM t2 JOIN t99 ON b IN (1,2,3);

  WITH t99(b) AS (SELECT b FROM t2 LEFT JOIN t1 ON c IN (SELECT x FROM t3))
  SELECT 5 FROM t2 JOIN t99 ON b IN (1,2,3);

  SELECT 5
    FROM t2 JOIN (
       SELECT b FROM t2 LEFT JOIN t1 ON c IN (SELECT x FROM t3)
    ) AS t99 ON b IN (1,2,3);

  INSERT INTO t1 VALUES(3,4,NULL);
  INSERT INTO t2 VALUES(1,2);
  WITH t99(b) AS (
    SELECT coalesce(b,3) FROM t2 AS x LEFT JOIN t1 ON c IN (SELECT x FROM t3)
  )
  SELECT d, e, b FROM t2 JOIN t99 ON b IN (1,2,3) ORDER BY +d;

  SELECT d, e, b2
    FROM t2 
         JOIN (SELECT coalesce(b,3) AS b2 FROM t2 AS x LEFT JOIN t1
                ON c IN (SELECT x FROM t3)) AS t99
            ON b2 IN (1,2,3) ORDER BY +d;

  DELETE FROM t1;
  DELETE FROM t2 WHERE d IS NOT NULL;
  DELETE FROM t3;
  SELECT * FROM t2 JOIN (SELECT b FROM t2 LEFT JOIN t1
                       ON c IN (SELECT x FROM t3)) AS t99 ON b IN (1,2,3);

  DELETE FROM t1;
  DELETE FROM t2;
  DELETE FROM t3;
  INSERT INTO t1 VALUES(4,3,5);
  INSERT INTO t2 VALUES(1,2);
  INSERT INTO t3 VALUES(5);
  SELECT * FROM t2 JOIN (SELECT b FROM t2 LEFT JOIN t1
                       ON c IN (SELECT x FROM t3)) AS t99 ON b IS NULL;

  WITH t99(b) AS (
    SELECT b FROM t2 AS x LEFT JOIN t1 ON c IN (SELECT x FROM t3)
  )
  SELECT d, e, b FROM t2 JOIN t99 ON b IS NULL;

  CREATE TABLE t1(a INTEGER PRIMARY KEY, b INT, c INT);
  CREATE TABLE t2(d INTEGER PRIMARY KEY, e INT);
  CREATE VIEW t3(a,b,c,d,e) AS SELECT * FROM t1 LEFT JOIN t2 ON d=c;
  CREATE TABLE t4(x INT, y INT);
  INSERT INTO t1 VALUES(1,2,3);
  INSERT INTO t2 VALUES(1,5);
  INSERT INTO t4 VALUES(1,4);
  SELECT a, b, y FROM t4 JOIN t3 ON a=x;

  CREATE TABLE t0(a INT); INSERT INTO t0(a) VALUES (1);
  CREATE TABLE t1(b INT); INSERT INTO t1(b) VALUES (2);
  CREATE VIEW v2(c) AS SELECT 3 FROM t1;
  SELECT * FROM t1 JOIN v2 ON 0     FULL OUTER JOIN t0 ON true;

  SELECT * FROM t1 JOIN v2 ON 1=0   FULL OUTER JOIN t0 ON true;

  SELECT * FROM t1 JOIN v2 ON false FULL OUTER JOIN t0 ON true;

  CREATE TABLE t0(z INT);         INSERT INTO t0 VALUES(1),(2);
  CREATE TABLE t1(a INT);         INSERT INTO t1 VALUES(1);
  CREATE TABLE t2(b INT);         INSERT INTO t2 VALUES(2);
  CREATE TABLE t3(c INT, d INT);  INSERT INTO t3 VALUES(3,4);
  CREATE TABLE t4(e INT);         INSERT INTO t4 VALUES(5);
  CREATE VIEW v5(x,y) AS SELECT c, d FROM t3 LEFT JOIN t4 ON false;

  SELECT DISTINCT a, b
    FROM t1 RIGHT JOIN t2 ON a=b LEFT JOIN v5 ON false
   WHERE x <= y;

  SELECT DISTINCT a, b
    FROM t0 JOIN t1 ON z=a RIGHT JOIN t2 ON a=b LEFT JOIN v5 ON false
   WHERE x <= y;
