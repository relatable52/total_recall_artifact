
  CREATE TABLE t1(x, y);
  INSERT INTO t1 VALUES(1, 2);
  ATTACH 'test.db2' AS aux;
  CREATE TABLE aux.t2(x, y);
  INSERT INTO t2 VALUES(3, 4);
