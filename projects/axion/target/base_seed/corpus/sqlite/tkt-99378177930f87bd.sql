
  CREATE TABLE t1(a INT, b TEXT, c INT, d INT);
  INSERT INTO t1(a,b,c,d) VALUES
    (1, '{"x":1
  SELECT a,
         SUM(1)                              AS t1,
         SUM(CASE WHEN b->>'x'=1 THEN 1 END) AS t2,
         SUM(c)                              AS t3,
         SUM(CASE WHEN b->>'x'=1 THEN c END) AS t4
    FROM t1
   WHERE d BETWEEN 0 and 10
   GROUP BY a;

  EXPLAIN
  SELECT a,
         SUM(1)                              AS t1,
         SUM(CASE WHEN b->>'x'=1 THEN 1 END) AS t2,
         SUM(c)                              AS t3,
         SUM(CASE WHEN b->>'x'=1 THEN c END) AS t4
    FROM t1
   WHERE d BETWEEN 0 and 10
   GROUP BY a;

  SELECT a,
         SUM(1)                              AS t1,
         SUM(CASE WHEN b->>'x'=1 THEN 1 END) AS t2,
         SUM(c)                              AS t3,
         SUM(CASE WHEN b->>'x'=1 THEN c END) AS t4
    FROM t1
   WHERE d BETWEEN 0 and 10
   GROUP BY +a;

  EXPLAIN
  SELECT a,
         SUM(1)                              AS t1,
         SUM(CASE WHEN b->>'x'=1 THEN 1 END) AS t2,
         SUM(c)                              AS t3,
         SUM(CASE WHEN b->>'x'=1 THEN c END) AS t4
    FROM t1
   WHERE d BETWEEN 0 and 10
   GROUP BY +a;

  DROP INDEX t1x;
  CREATE INDEX t1x ON t1(a, d, b->>'x', c);

  SELECT a,
         SUM(1)                              AS t1,
         SUM(CASE WHEN b->>'x'=1 THEN 1 END) AS t2,
         SUM(c)                              AS t3,
         SUM(CASE WHEN b->>'x'=1 THEN c END) AS t4
    FROM t1
   WHERE d BETWEEN 0 and 10
   GROUP BY a;

  EXPLAIN
  SELECT a,
         SUM(1)                              AS t1,
         SUM(CASE WHEN b->>'x'=1 THEN 1 END) AS t2,
         SUM(c)                              AS t3,
         SUM(CASE WHEN b->>'x'=1 THEN c END) AS t4
    FROM t1
   WHERE d BETWEEN 0 and 10
   GROUP BY a;

  SELECT a,
         SUM(1)                              AS t1,
         SUM(CASE WHEN b->>'x'=1 THEN 1 END) AS t2,
         SUM(c)                              AS t3,
         SUM(CASE WHEN b->>'x'=1 THEN c END) AS t4
    FROM t1
   WHERE d BETWEEN 0 and 10
   GROUP BY a;

  EXPLAIN
  SELECT a,
         SUM(1)                              AS t1,
         SUM(CASE WHEN b->>'x'=1 THEN 1 END) AS t2,
         SUM(c)                              AS t3,
         SUM(CASE WHEN b->>'x'=1 THEN c END) AS t4
    FROM t1
   WHERE d BETWEEN 0 and 10
   GROUP BY a;

  DROP TABLE IF EXISTS t1;
  CREATE TABLE t1(a INT);
  CREATE INDEX i1 ON t1(a,a=a);
  INSERT INTO t1 VALUES(1),(2),(3),(4);
  SELECT * FROM t1 NATURAL JOIN t1 
   WHERE a==1
      OR (
           (SELECT avg(
                (SELECT sum((SELECT 1 FROM t1 NATURAL RIGHT JOIN t1 WHERE a=a)))) AS xyz
           )
           AND a==2
         );

  DROP INDEX i1;
  SELECT * FROM t1 NATURAL JOIN t1 
   WHERE a==1
      OR (
           (SELECT avg(
                (SELECT sum((SELECT 1 FROM t1 NATURAL RIGHT JOIN t1 WHERE a=a)))) AS xyz
           )
           AND a==2
         );

  DROP TABLE t1;
  CREATE TABLE t0(w);
  INSERT INTO t0(w) VALUES(1);
  CREATE TABLE t1(x);
  INSERT INTO t1(x) VALUES(1);
  CREATE INDEX t1x ON t1(x > 0);
  CREATE VIEW t2(y) AS SELECT avg(w) FROM t0 GROUP BY w>1;
  CREATE VIEW t3(z) AS SELECT count(*) FROM t2 WHERE y BETWEEN 0 and 0;
  SELECT count(*) FROM t1 NOT INDEXED WHERE (SELECT z FROM t3);
  SELECT count(*) FROM t1 INDEXED BY t1x WHERE (SELECT z FROM t3);
