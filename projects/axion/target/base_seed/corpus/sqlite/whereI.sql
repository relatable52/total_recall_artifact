
  CREATE TABLE t1(a, b, c, PRIMARY KEY(a)) WITHOUT ROWID;
  INSERT INTO t1 VALUES(1, 'a', 'z');
  INSERT INTO t1 VALUES(2, 'b', 'y');
  INSERT INTO t1 VALUES(3, 'c', 'x');
  INSERT INTO t1 VALUES(4, 'd', 'w');
  CREATE INDEX i1 ON t1(b);
  CREATE INDEX i2 ON t1(c);

  SELECT a FROM t1 WHERE b='b' OR c='x'

  SELECT a FROM t1 WHERE b='a' OR c='z'

  CREATE TABLE t2(a, b, c, PRIMARY KEY(a)) WITHOUT ROWID;
  INSERT INTO t2 VALUES('i', 'a', 'z');
  INSERT INTO t2 VALUES('ii', 'b', 'y');
  INSERT INTO t2 VALUES('iii', 'c', 'x');
  INSERT INTO t2 VALUES('iv', 'd', 'w');
  CREATE INDEX i3 ON t2(b);
  CREATE INDEX i4 ON t2(c);

  SELECT a FROM t2 WHERE b='b' OR c='x'

  SELECT a FROM t2 WHERE b='a' OR c='z'

  CREATE TABLE t3(a, b, c, d, PRIMARY KEY(c, b)) WITHOUT ROWID;

  INSERT INTO t3 VALUES('f', 1, 1, 'o');
  INSERT INTO t3 VALUES('o', 2, 1, 't');
  INSERT INTO t3 VALUES('t', 1, 2, 't');
  INSERT INTO t3 VALUES('t', 2, 2, 'f');

  CREATE INDEX t3i1 ON t3(d);
  CREATE INDEX t3i2 ON t3(a);

  SELECT c||'.'||b FROM t3 WHERE a='t' OR d='t'
