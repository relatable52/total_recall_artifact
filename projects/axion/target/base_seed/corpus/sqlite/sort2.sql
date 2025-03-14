
    PRAGMA cache_size = 5;
    WITH r(x,y) AS (
      SELECT 1, randomblob(100)
      UNION ALL
      SELECT x+1, randomblob(100) FROM r
      LIMIT 100000
    )
    SELECT count(x), length(y) FROM r GROUP BY (x%5)
  
    CREATE TABLE t1(a, b);
    WITH r(x,y) AS (
      SELECT 1, randomblob(100)
      UNION ALL
      SELECT x+1, randomblob(100) FROM r
      LIMIT 10000
    ) INSERT INTO t1 SELECT * FROM r;
  
    CREATE UNIQUE INDEX i1 ON t1(b, a);
  
    CREATE UNIQUE INDEX i2 ON t1(a);
  ok
      PRAGMA cache_size = 5;
      WITH r(x,y) AS (
          SELECT 1, randomblob(100)
          UNION ALL
          SELECT x+1, randomblob(100) FROM r
          LIMIT 1000000
          )
        SELECT count(x), length(y) FROM r GROUP BY (x%5)
    