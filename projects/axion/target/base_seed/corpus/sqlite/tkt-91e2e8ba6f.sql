
  CREATE TABLE t1(x INTEGER, y REAL);
  INSERT INTO t1 VALUES(11, 11);

  SELECT x/10, y/10 FROM t1;

  SELECT x/10, y/10 FROM (SELECT * FROM t1);

  SELECT x/10, y/10 FROM (SELECT * FROM t1 LIMIT 5 OFFSET 0);

  SELECT x/10, y/10 FROM (SELECT * FROM t1 LIMIT 5 OFFSET 0) LIMIT 5 OFFSET 0;

  SELECT a.x/10, a.y/10 FROM 
    (SELECT * FROM t1 LIMIT 5 OFFSET 0) AS a, t1 AS b WHERE a.x = b.x
  LIMIT 5 OFFSET 0;

  CREATE VIEW v1 AS SELECT * FROM t1 LIMIT 5;
  SELECT a.x/10, a.y/10 FROM v1 AS a, t1 AS b WHERE a.x = b.x LIMIT 5 OFFSET 0;
