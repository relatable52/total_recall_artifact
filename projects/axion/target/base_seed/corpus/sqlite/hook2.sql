
  CREATE TABLE t1(a PRIMARY KEY, b) WITHOUT ROWID;

  CREATE TABLE t2(a DEFAULT 4, b, c, PRIMARY KEY(b, c)) WITHOUT ROWID;
  CREATE UNIQUE INDEX t2a ON t2(a);

  CREATE TABLE d1(a DEFAULT 4, b, c, PRIMARY KEY(b, c)) WITHOUT ROWID;
  CREATE UNIQUE INDEX d1a ON d1(a);
  INSERT INTO d1 VALUES(1, 2, 3);
  INSERT INTO d1 VALUES(11, 12, 13);

  SELECT * FROM t2 ORDER BY b, c;

  SELECT * FROM t2 ORDER BY b,c;

  CREATE TABLE t3(x, y PRIMARY KEY, z UNIQUE) WITHOUT ROWID;
  INSERT INTO t3 VALUES('a', 'b', 'c');
  INSERT INTO t3 VALUES('d', 'e', 'f');

  INSERT INTO t3 VALUES(1, 1, 1);
  INSERT INTO t3 VALUES(2, 2, 2);
  INSERT INTO t3 VALUES(3, 3, 3);
