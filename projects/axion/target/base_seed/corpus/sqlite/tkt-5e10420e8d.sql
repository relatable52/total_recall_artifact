
  PRAGMA page_size = 1024;
  PRAGMA auto_vacuum = incremental;

  CREATE TABLE t1(x);
  CREATE TABLE t2(x);
  CREATE TABLE t3(x);

  INSERT INTO t3 VALUES(randomblob(500 + 1024*248));
  INSERT INTO t1 VALUES(randomblob(1500));
  INSERT INTO t2 VALUES(randomblob(500 + 1024*248));

  DELETE FROM t3;
  DELETE FROM t2;
  DELETE FROM t1;

  PRAGMA incremental_vacuum(248)

  PRAGMA incremental_vacuum(1)

  PRAGMA integrity_check;
