
  CREATE TABLE t1(a INTEGER PRIMARY KEY, b, c);
  INSERT INTO t1 VALUES(1, 4, X'1234567800');
  INSERT INTO t1 VALUES(2, 'test', 8.1);
  INSERT INTO t1 VALUES(3, $doc, 8.4);

  PRAGMA auto_vacuum = 0;
  CREATE TABLE t1(a, b, c, PRIMARY KEY(b, c)) WITHOUT ROWID;
  INSERT INTO t1 VALUES(1, 2, 3);
  INSERT INTO t1 VALUES(4, 5, 6);
  INSERT INTO t1 VALUES(7, 8, 9);

  PRAGMA writable_schema = 1;
  DELETE FROM sqlite_master WHERE name='t1';

  CREATE TABLE lost_and_found(a, b, c);

  CREATE TABLE lost_and_found_0(a, b, c);

  CREATE TABLE t1(a, b, c);
  CREATE TABLE t2(d, e, f);
  CREATE TABLE t3(g, h, i);

  INSERT INTO t2 VALUES(1, 2, 3);
  INSERT INTO t2 VALUES('a', 'b', 'c');

  INSERT INTO t3 VALUES('one', 'two', 'three');
  DROP TABLE t1;
  DROP TABLE t2;

  SELECT name FROM sqlite_schema

  SELECT id, c0, c1, c2 FROM lost_and_found

  SELECT name FROM sqlite_schema

  SELECT * FROM t3
