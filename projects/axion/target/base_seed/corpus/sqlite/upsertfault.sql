
  CREATE TABLE t1(a PRIMARY KEY, b, c, d, UNIQUE(b, c));
  INSERT INTO t1 VALUES(1, 1, 1, 1);
  INSERT INTO t1 VALUES(2, 2, 2, 2);
