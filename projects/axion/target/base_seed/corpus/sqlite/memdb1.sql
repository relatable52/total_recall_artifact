
  SELECT * FROM t1;

  PRAGMA auto_vacuum = off;
  VACUUM;

  CREATE TABLE t2(x, y);
  WITH RECURSIVE c(x) AS (VALUES(1) UNION ALL SELECT x+1 FROM c WHERE x<100)
   INSERT INTO t2(x, y) SELECT x, randomblob(1000) FROM c;
  DROP TABLE t2;
  PRAGMA page_count;

  VACUUM;
  PRAGMA page_count;

  CREATE TABLE t3(x, y);
  WITH RECURSIVE c(x) AS (VALUES(1) UNION ALL SELECT x+1 FROM c WHERE x<400)
   INSERT INTO t3(x, y) SELECT x, randomblob(1000) FROM c;
  PRAGMA quick_check;

  CREATE TABLE t3(x, y);
  WITH RECURSIVE c(x) AS (VALUES(1) UNION ALL SELECT x+1 FROM c WHERE x<400)
   INSERT INTO t3(x, y) SELECT x, randomblob(1000) FROM c;
  PRAGMA quick_check;

  PRAGMA integrity_check;

  CREATE TABLE t4(a,b);
  INSERT INTO t4 VALUES('hello','world!');
  PRAGMA integrity_check;
  SELECT * FROM t4;

  PRAGMA journal_mode=TRUNCATE;
  PRAGMA journal_mode=OFF;
  PRAGMA journal_mode=DELETE;
  PRAGMA journal_mode=WAL;
  PRAGMA journal_mode=PERSIST;
  PRAGMA journal_mode=MEMORY;
  PRAGMA journal_mode=OFF;
  PRAGMA journal_mode=DELETE;

    CREATE TABLE t1(a, b);
    PRAGMA schema_version = 0;
  
    PRAGMA auto_vacuum = 0;
    PRAGMA page_size = 8192;
    PRAGMA journal_mode = wal;
    CREATE TABLE t1(x, y);
    INSERT INTO t1 VALUES(1, 2);
    CREATE TABLE t2(x, y);
  
    PRAGMA locking_mode = exclusive;
    SELECT * FROM t1
  
    INSERT INTO t1 VALUES(3, 4);
    SELECT * FROM t1;
  