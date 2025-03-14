
  PRAGMA cache_size = -2000;
  CREATE TABLE t1(a, b, c);

  WITH r(i) AS (
    SELECT 1 UNION ALL SELECT i+1 FROM r WHERE i<100000
  )
  INSERT INTO t1 SELECT randomblob(100),randomblob(100),randomblob(100) FROM r;

  CREATE INDEX t1a ON t1(a);
  CREATE INDEX t1b ON t1(b);
  CREATE INDEX t1c ON t1(c);

  SELECT count(*) FROM t1 WHERE +a IS NOT NULL
