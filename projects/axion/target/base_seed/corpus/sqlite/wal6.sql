
  PRAGMA journal_mode = WAL;
  CREATE TABLE t1(a PRIMARY KEY, b TEXT);
  INSERT INTO t1 VALUES(1, 'one');
  INSERT INTO t1 VALUES(2, 'two');
  BEGIN;
    SELECT * FROM t1;

  SELECT * FROM t1;
  COMMIT;
  INSERT INTO t1 VALUES('x', 'x') 
 DELETE FROM t1  DELETE FROM t1  
  PRAGMA journal_mode = WAL;
  CREATE TABLE ab(a PRIMARY KEY, b);

  PRAGMA page_size = 1024;
  PRAGMA journal_mode = wal;
  CREATE TABLE t1(a, b);
  CREATE TABLE t2(a, b);
  PRAGMA wal_checkpoint = truncate;

  PRAGMA journal_mode = wal;
  CREATE TABLE t1(x, y);
  INSERT INTO t1 VALUES(1, 2);
  INSERT INTO t1 VALUES(3, 4);
