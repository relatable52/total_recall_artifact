
  CREATE TABLE t1(a, b, UNIQUE(a, b));
  INSERT INTO t1 VALUES(randomblob(100), randomblob(100));
  INSERT INTO t1 SELECT randomblob(100), randomblob(100) FROM t1;
  INSERT INTO t1 SELECT randomblob(100), randomblob(100) FROM t1;
  INSERT INTO t1 SELECT randomblob(100), randomblob(100) FROM t1;
  INSERT INTO t1 SELECT randomblob(100), randomblob(100) FROM t1;
  INSERT INTO t1 SELECT randomblob(100), randomblob(100) FROM t1;
  INSERT INTO t1 SELECT randomblob(100), randomblob(100) FROM t1;
  INSERT INTO t1 SELECT randomblob(100), randomblob(100) FROM t1;
  INSERT INTO t1 SELECT randomblob(100), randomblob(100) FROM t1;
  INSERT INTO t1 SELECT randomblob(100), randomblob(100) FROM t1;
  INSERT INTO t1 SELECT randomblob(100), randomblob(100) FROM t1;
  INSERT INTO t1 SELECT randomblob(100), randomblob(100) FROM t1;
  INSERT INTO t1 SELECT randomblob(100), randomblob(100) FROM t1;
  INSERT INTO t1 SELECT randomblob(100), randomblob(100) FROM t1;
  INSERT INTO t1 SELECT randomblob(100), randomblob(100) FROM t1;
  DELETE FROM t1 WHERE rowid%2;
ok