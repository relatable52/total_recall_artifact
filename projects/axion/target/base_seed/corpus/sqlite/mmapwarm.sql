
  PRAGMA auto_vacuum = 0;
  CREATE TABLE t1(x, y);
  WITH s(i) AS (
    SELECT 1 UNION ALL SELECT i+1 FROM s WHERE i<500
  )
  INSERT INTO t1 SELECT randomblob(400), randomblob(500) FROM s;
  PRAGMA page_count;
