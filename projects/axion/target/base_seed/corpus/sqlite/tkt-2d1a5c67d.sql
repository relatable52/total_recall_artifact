
  PRAGMA cache_size = 10;
  CREATE TABLE t3(a INTEGER PRIMARY KEY, b);
  CREATE TABLE t4(a);

  INSERT INTO t3 VALUES(NULL, randomblob(500));
  INSERT INTO t3 SELECT NULL, b||b FROM t3;     -- 2
  INSERT INTO t3 SELECT NULL, b||b FROM t3;     -- 4
  INSERT INTO t3 SELECT NULL, b||b FROM t3;     -- 8
  INSERT INTO t3 SELECT NULL, b||b FROM t3;     -- 16
  INSERT INTO t3 SELECT NULL, b||b FROM t3;     -- 32
  INSERT INTO t3 SELECT NULL, b||b FROM t3;     -- 64
  INSERT INTO t3 SELECT NULL, b||b FROM t3;     -- 128

  BEGIN;
    INSERT INTO t4 VALUES('xyz');
