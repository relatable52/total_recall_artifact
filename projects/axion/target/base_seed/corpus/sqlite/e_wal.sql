
  PRAGMA journal_mode = WAL;

  PRAGMA locking_mode = EXCLUSIVE;
  PRAGMA journal_mode = WAL;

  CREATE TABLE t1(x, y);
  INSERT INTO t1 VALUES(1, 2);

  PRAGMA locking_mode = EXCLUSIVE;
  SELECT * FROM t1;

  PRAGMA locking_mode = NORMAL;
  SELECT * FROM t1;

  PRAGMA journal_mode = DELETE;
  SELECT * FROM t1;

  PRAGMA locking_mode = NORMAL;
  SELECT * FROM t1;

  PRAGMA locking_mode = EXCLUSIVE;
  PRAGMA locking_mode = NORMAL;
  PRAGMA locking_mode = EXCLUSIVE;
  INSERT INTO t1 VALUES(5, 6);

  PRAGMA locking_mode = NORMAL;
  SELECT * FROM t1;
 CREATE TABLE t1(x, y) waldelete