
  PRAGMA page_size = 1024;
  PRAGMA journal_mode = WAL;
  CREATE TABLE t1(a, b);
  CREATE INDEX i1 ON t1(a, b);
  INSERT INTO t1 VALUES(randomblob(400), randomblob(400));
  INSERT INTO t1 SELECT randomblob(400), randomblob(400) FROM t1;
  INSERT INTO t1 SELECT randomblob(400), randomblob(400) FROM t1;
  INSERT INTO t1 SELECT randomblob(400), randomblob(400) FROM t1;
  INSERT INTO t1 SELECT randomblob(400), randomblob(400) FROM t1;
