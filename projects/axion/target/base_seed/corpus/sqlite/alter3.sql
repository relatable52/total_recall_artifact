
  CREATE TABLE t1(a,b);
  INSERT INTO t1 VALUES(1, 2), ('null!',NULL), (3,4);

  CREATE TEMP TABLE t0(m,n);
  INSERT INTO t0 VALUES(1, 2), ('null!',NULL), (3,4);
  ATTACH ':memory:' AS aux1;
  CREATE TABLE aux1.t2(x,y);
  INSERT INTO t2 VALUES(1, 2), ('null!',NULL), (3,4);
