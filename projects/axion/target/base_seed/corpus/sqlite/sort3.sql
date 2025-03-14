
  PRAGMA cache_size = 5;
  CREATE TABLE t11(a, b);
  INSERT INTO t11 VALUES(randomblob(5000), NULL);
  INSERT INTO t11 SELECT randomblob(5000), NULL FROM t11; --2
  INSERT INTO t11 SELECT randomblob(5000), NULL FROM t11; --3
  INSERT INTO t11 SELECT randomblob(5000), NULL FROM t11; --4
  INSERT INTO t11 SELECT randomblob(5000), NULL FROM t11; --5
  INSERT INTO t11 SELECT randomblob(5000), NULL FROM t11; --6
  INSERT INTO t11 SELECT randomblob(5000), NULL FROM t11; --7
  INSERT INTO t11 SELECT randomblob(5000), NULL FROM t11; --8
  INSERT INTO t11 SELECT randomblob(5000), NULL FROM t11; --9
  UPDATE t11 SET b = cksum(a);

    WITH r(x,y) AS (
        SELECT 1, randomblob(1000)
        UNION ALL
        SELECT x+1, randomblob(1000) FROM r
        LIMIT 20000
    )
    SELECT count(*), sum(length(y)) FROM r GROUP BY (x%5);
  
  PRAGMA cache_size = 20000;
  WITH r(x,y) AS (
    SELECT 1, randomblob(1000)
    UNION ALL
    SELECT x+1, randomblob(1000) FROM r
    LIMIT 2200000
  )
  SELECT count(*), sum(length(y)) FROM r GROUP BY (x%5);
