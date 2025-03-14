
  CREATE TABLE t1(a INTEGER PRIMARY KEY, b, c, d, e);
  INSERT INTO t1 VALUES(1,20,30,40,50),(3,60,70,80,90);
  CREATE TABLE t2(x INTEGER PRIMARY KEY);
  INSERT INTO t2 VALUES(2);
  CREATE TABLE t3(z);
  INSERT INTO t3 VALUES(2),(2),(2),(2);
  
  SELECT a, b+c FROM t1
  UNION ALL
  SELECT x, 5 FROM t2 JOIN t3 ON z=x WHERE x=2
  ORDER BY a;

  SELECT a, b+c+d FROM t1
  UNION ALL
  SELECT x, 5 FROM t2 JOIN t3 ON z=x WHERE x=2
  ORDER BY a;

  SELECT a, b+c+d+e FROM t1
  UNION ALL
  SELECT x, 5 FROM t2 JOIN t3 ON z=x WHERE x=2
  ORDER BY a;
