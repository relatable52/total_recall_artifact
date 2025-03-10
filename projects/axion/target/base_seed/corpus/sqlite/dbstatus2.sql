
  PRAGMA page_size = 1024;
  PRAGMA auto_vacuum = 0;

  CREATE TABLE t1(a PRIMARY KEY, b);
  INSERT INTO t1 VALUES(1, randomblob(600));
  INSERT INTO t1 VALUES(2, randomblob(600));
  INSERT INTO t1 VALUES(3, randomblob(600));

  PRAGMA journal_mode=DELETE;
  PRAGMA cache_size=3;
  UPDATE t1 SET b=randomblob(1000);
