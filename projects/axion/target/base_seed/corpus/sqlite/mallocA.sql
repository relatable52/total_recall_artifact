
  CREATE TABLE t1(a, b);
  CREATE INDEX i1 ON t1(a, b);
  INSERT INTO t1 VALUES('abc', 'w'); -- rowid=1
  INSERT INTO t1 VALUES('abc', 'x'); -- rowid=2
  INSERT INTO t1 VALUES('abc', 'y'); -- rowid=3
  INSERT INTO t1 VALUES('abc', 'z'); -- rowid=4

  INSERT INTO t1 VALUES('def', 'w'); -- rowid=5
  INSERT INTO t1 VALUES('def', 'x'); -- rowid=6
  INSERT INTO t1 VALUES('def', 'y'); -- rowid=7
  INSERT INTO t1 VALUES('def', 'z'); -- rowid=8

  ANALYZE;

  PRAGMA cache_size = 5;
