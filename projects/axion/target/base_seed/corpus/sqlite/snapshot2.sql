
  PRAGMA journal_mode = wal;
  CREATE TABLE t1(a, b, c);
  INSERT INTO t1 VALUES(1, 2, 3);
  INSERT INTO t1 VALUES(4, 5, 6);
1 2 3 4 5 61 2 3 4 5 6 7 8 9
  CREATE TABLE t1(x);
  PRAGMA journal_mode = wal;
  INSERT INTO t1 VALUES(1);
  INSERT INTO t1 VALUES(2);

  PRAGMA journal_mode = wal;
  CREATE TABLE t1(x, y);
  INSERT INTO t1 VALUES('a', 'b');
  INSERT INTO t1 VALUES('c', 'd');

  SELECT * FROM t1;

  CREATE TABLE t2(x);
  PRAGMA journal_mode = wal;
  INSERT INTO t2 VALUES('abc');
  INSERT INTO t2 VALUES('def');
  INSERT INTO t2 VALUES('ghi');
