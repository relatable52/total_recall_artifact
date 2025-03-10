
  WITH c(x) AS (VALUES(0),(1))
  SELECT c1.x||c2.x||c3.x FROM c c1, c c2, c c3;

  WITH c(x) AS MATERIALIZED (VALUES(0),(1))
  SELECT c1.x||c2.x||c3.x FROM c c1, c c2, c c3;

  WITH c(x) AS NOT MATERIALIZED (VALUES(0),(1))
  SELECT c1.x||c2.x||c3.x FROM c c1, c c2, c c3;

  WITH c(x) AS NOT MATERIALIZED (VALUES(0),(1))
  SELECT c1.x||c2.x||c3.x
    FROM (SELECT x FROM c LIMIT 5) AS c1,
         (SELECT x FROM c LIMIT 5) AS c2,
         (SELECT x FROM c LIMIT 5) AS c3;

  WITH c(x) AS MATERIALIZED (VALUES(0),(1))
  SELECT c1.x||c2.x||c3.x
    FROM (SELECT x FROM c LIMIT 5) AS c1,
         (SELECT x FROM c LIMIT 6) AS c2,
         (SELECT x FROM c LIMIT 7) AS c3;

  WITH c(x) AS (VALUES(0),(1))
  SELECT c1.x||c2.x||c3.x
    FROM (SELECT x FROM c LIMIT 5) AS c1,
         (SELECT x FROM c LIMIT 6) AS c2,
         (SELECT x FROM c LIMIT 7) AS c3;

  WITH c(x) AS (VALUES(0),(1))
  SELECT c2.x + 100*(SELECT sum(x+1) FROM c WHERE c.x<=c2.x)
    FROM c AS c2 WHERE c2.x<10;

  WITH c(x) AS NOT MATERIALIZED (VALUES(0),(1))
  SELECT c2.x + 100*(SELECT sum(x+1) FROM c WHERE c.x<=c2.x)
    FROM c AS c2 WHERE c2.x<10;

  CREATE TABLE t1(x);
  INSERT INTO t1(x) VALUES(4);
  CREATE VIEW t2(y) AS
    WITH c(z) AS (VALUES(4),(5),(6))
    SELECT c1.z+c2.z*100+t1.x*10000
      FROM t1,
           (SELECT z FROM c LIMIT 5) AS c1,
           (SELECT z FROM c LIMIT 5) AS c2;
  SELECT y FROM t2 ORDER BY y;

  DROP VIEW t2;
  CREATE VIEW t2(y) AS
    WITH c(z) AS NOT MATERIALIZED (VALUES(4),(5),(6))
    SELECT c1.z+c2.z*100+t1.x*10000
      FROM t1,
           (SELECT z FROM c LIMIT 5) AS c1,
           (SELECT z FROM c LIMIT 5) AS c2;
  SELECT y FROM t2 ORDER BY y;

  DROP VIEW t2;
  CREATE VIEW t2(y) AS
    WITH c(z) AS MATERIALIZED (VALUES(4),(5),(6))
    SELECT c1.z+c2.z*100+t1.x*10000
      FROM t1,
           (SELECT z FROM c LIMIT 5) AS c1,
           (SELECT z FROM c LIMIT 5) AS c2;
  SELECT y FROM t2 ORDER BY y;

  CREATE TABLE t2(a INT,b INT,d INT); INSERT INTO t2 VALUES(4,5,6),(7,8,9);
  CREATE TABLE t3(a INT,b INT,e INT); INSERT INTO t3 VALUES(3,3,3),(8,8,8);

  WITH t23 AS MATERIALIZED (SELECT * FROM t2 FULL JOIN t3 USING(b))
  SELECT * FROM t23;

  WITH t23 AS NOT MATERIALIZED (SELECT * FROM t2 FULL JOIN t3 USING(b))
  SELECT * FROM t23;

  WITH t23 AS (SELECT * FROM t2 FULL JOIN t3 USING(b))
  SELECT * FROM t23;
