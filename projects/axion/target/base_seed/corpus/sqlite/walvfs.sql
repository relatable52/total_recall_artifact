
  PRAGMA auto_vacuum = 0;
  PRAGMA journal_mode = wal;
  PRAGMA synchronous = normal;
  CREATE TABLE t1(a, b, c);
  INSERT INTO t1 VALUES(1, 2, 3);
  INSERT INTO t1 VALUES(4, 5, 6);
  INSERT INTO t1 VALUES(7, 8, 9);
  PRAGMA wal_checkpoint;

  PRAGMA synchronous = normal;
  INSERT INTO t1 VALUES(13, 14, 15);
  INSERT INTO t1 VALUES(16, 17, 18);
  PRAGMA wal_checkpoint;

  PRAGMA journal_size_limit = 10000;
  CREATE TABLE t1(x);
  PRAGMA journal_mode = wal;
  WITH s(i) AS (
    SELECT 1 UNION ALL SELECT i+1 FROM s LIMIT 20
  )
  INSERT INTO t1 SELECT randomblob(750) FROM s;

  CREATE TABLE t1(x);
  PRAGMA journal_mode = wal;
  WITH s(i) AS (
    SELECT 1 UNION ALL SELECT i+1 FROM s LIMIT 20
  )
  INSERT INTO t1 SELECT randomblob(750) FROM s;

  PRAGMA auto_vacuum = 0;
  PRAGMA page_size = 1024;
  CREATE TABLE t1(x);
  PRAGMA journal_mode = wal;
  WITH s(i) AS (
      SELECT 1 UNION ALL SELECT i+1 FROM s LIMIT 20
  )
  INSERT INTO t1 SELECT randomblob(750) FROM s;

  SELECT count(*) FROM t1

  SELECT count(*) FROM t1

  PRAGMA auto_vacuum = 0;
  PRAGMA page_size = 1024;
  CREATE TABLE t1(x);
  PRAGMA journal_mode = wal;
  WITH s(i) AS (
      SELECT 1 UNION ALL SELECT i+1 FROM s LIMIT 20
  )
  INSERT INTO t1 SELECT randomblob(750) FROM s;

  PRAGMA auto_vacuum = 0;
  PRAGMA page_size = 1024;
  CREATE TABLE t1(x);
  PRAGMA journal_mode = wal;
  WITH s(i) AS (
      SELECT 1 UNION ALL SELECT i+1 FROM s LIMIT 20
  )
  INSERT INTO t1 SELECT randomblob(750) FROM s;

  PRAGMA wal_checkpoint

  PRAGMA auto_vacuum = 0;
  PRAGMA page_size = 1024;
  CREATE TABLE t1(x);
  PRAGMA journal_mode = wal;
  WITH s(i) AS ( SELECT 1 UNION ALL SELECT i+1 FROM s LIMIT 20 )
  INSERT INTO t1 SELECT randomblob(75) FROM s;
20 
  PRAGMA wal_checkpoint;
  SELECT count(*) FROM t1 

  PRAGMA auto_vacuum = 0;
  PRAGMA page_size = 1024;
  CREATE TABLE t1(x);
  PRAGMA journal_mode = wal;
  WITH s(i) AS ( SELECT 1 UNION ALL SELECT i+1 FROM s LIMIT 20 )
  INSERT INTO t1 SELECT randomblob(75) FROM s;
