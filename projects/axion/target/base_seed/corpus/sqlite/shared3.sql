
  PRAGMA auto_vacuum = 2;
  CREATE TABLE t1(x, y);
  INSERT INTO t1 VALUES(randomblob(500), randomblob(500));
  INSERT INTO t1 SELECT randomblob(500), randomblob(500) FROM t1;
  INSERT INTO t1 SELECT randomblob(500), randomblob(500) FROM t1;
  INSERT INTO t1 SELECT randomblob(500), randomblob(500) FROM t1;
  INSERT INTO t1 SELECT randomblob(500), randomblob(500) FROM t1;
  INSERT INTO t1 SELECT randomblob(500), randomblob(500) FROM t1;
  INSERT INTO t1 SELECT randomblob(500), randomblob(500) FROM t1;
  INSERT INTO t1 SELECT randomblob(500), randomblob(500) FROM t1;

  BEGIN;
    DELETE FROM t1 WHERE 1;
    PRAGMA incremental_vacuum;
