
  PRAGMA auto_vacuum = 0;
  CREATE TABLE t1(a, b);
  PRAGMA journal_mode = wal;
  WITH s(i) AS (
    SELECT 1 UNION ALL SELECT i+1 FROM s LIMIT 30
  )
  INSERT INTO t1 SELECT randomblob(400), randomblob(400) FROM s;

  PRAGMA auto_vacuum = 0;
  CREATE TABLE t1(a, b);
  PRAGMA journal_mode = wal;
  WITH s(i) AS (
    SELECT 1 UNION ALL SELECT i+1 FROM s LIMIT 30
  )
  INSERT INTO t1 SELECT randomblob(400), randomblob(400) FROM s;
