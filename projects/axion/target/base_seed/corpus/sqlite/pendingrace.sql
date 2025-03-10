
  PRAGMA cache_size = 5;
  CREATE TABLE t1(a, b);
  CREATE INDEX i1 ON t1(a, b);
  WITH s(i) AS (
    SELECT 1 UNION ALL SELECT i+1 FROM s WHERE i<10
  )
  INSERT INTO t1 SELECT hex(randomblob(100)), hex(randomblob(100)) FROM s;

  PRAGMA cache_size = 5;
  BEGIN;
    UPDATE t1 SET b=hex(randomblob(100));
