
  ATTACH ':memory:' AS aux;
  CREATE TABLE main.t1(a,b);
  CREATE TABLE aux.t2(x,y);
  INSERT INTO t1 VALUES(1,2);
  INSERT INTO t2 VALUES(3,4);
