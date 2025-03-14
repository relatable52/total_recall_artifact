
  CREATE TABLE t1(x, y);
  INSERT INTO t1 VALUES(1, 2);
 
  PRAGMA journal_mode = WAL;
  SELECT * FROM t1;
 
  PRAGMA locking_mode = exclusive;
  PRAGMA journal_mode = WAL;
  SELECT * FROM t1;
 INSERT INTO t1 VALUES(3, 4) 
  PRAGMA locking_mode = normal;

  PRAGMA journal_mode = delete;
  PRAGMA main.locking_mode;

  PRAGMA locking_mode = normal;

  SELECT * FROM t1;

  CREATE TABLE t2(x, y);
  INSERT INTO t2 VALUES('a', 'b');
  INSERT INTO t2 VALUES('c', 'd');

  PRAGMA locking_mode = exclusive;
  PRAGMA journal_mode = WAL;
  INSERT INTO t2 VALUES('e', 'f');
  INSERT INTO t2 VALUES('g', 'h');
