
  CREATE TABLE t1(b);
  PRAGMA journal_mode = wal;
  INSERT INTO t1 VALUES('hello');
  INSERT INTO t1 VALUES('world');
  INSERT INTO t1 VALUES('!');
  INSERT INTO t1 VALUES('world');
  INSERT INTO t1 VALUES('hello');
  PRAGMA cache_size = 10;
  BEGIN;
    WITH s(i) AS ( SELECT 1 UNION ALL SELECT i+1 FROM s WHERE i<30 ) 
    INSERT INTO t1(b) SELECT randomblob(800) FROM s;
