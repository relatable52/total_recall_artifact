
  -- random() is not optimized out
  EXPLAIN SELECT * FROM x1, x2 WHERE x=1 ORDER BY random();

  -- random() is not optimized out
  EXPLAIN SELECT * FROM x1, x2 WHERE x=1 ORDER BY random();

  -- other constant functions are optimized out
  EXPLAIN SELECT * FROM x1, x2 WHERE x=1 ORDER BY abs(5);

  -- other constant functions are optimized out
  EXPLAIN SELECT * FROM x1, x2 WHERE x=1 ORDER BY abs(5);

  CREATE TABLE t12(x INTEGER PRIMARY KEY, y INT, z CHAR(100));
  CREATE INDEX t12y ON t12(y);
  EXPLAIN QUERY PLAN
    SELECT a.x, b.x
      FROM t12 AS a JOIN t12 AS b ON a.y=b.x
     WHERE (b.x=$abc OR b.y=$abc);

  CREATE TABLE t13(a,b);
  CREATE INDEX t13a ON t13(a);
  INSERT INTO t13 VALUES(4,5);
  SELECT * FROM t13 WHERE (1=2 AND a=3) OR a=4;

  CREATE TABLE t14a(x INTEGER PRIMARY KEY);
  INSERT INTO t14a(x) VALUES(1),(2),(3),(4);
  CREATE TABLE t14b(y INTEGER PRIMARY KEY);
  INSERT INTO t14b(y) VALUES(1);
  SELECT x FROM t14a WHERE x NOT IN (SELECT x FROM t14b);
