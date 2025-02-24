
  CREATE TABLE t1(a TEXT, b INT, c INT NOT NULL, PRIMARY KEY(a,b,c));
  WITH RECURSIVE c(x) AS (VALUES(0) UNION ALL SELECT x+1 FROM c WHERE x<1997)
    INSERT INTO t1(a,b,c) SELECT printf('xyz%d',x/10),x/6,x FROM c;
  INSERT INTO t1 VALUES('abc',234,6);
  INSERT INTO t1 VALUES('abc',345,7);
  ANALYZE;

  SELECT a,b,c FROM t1 
  WHERE b IN (234, 345) AND c BETWEEN 6 AND 6.5 AND a='abc' 
  ORDER BY a, b;

  SELECT a,b,c FROM t1 
  WHERE b IN (234, 345) AND c BETWEEN 6 AND 7 AND a='abc' 
  ORDER BY a, b;

  SELECT a,b,c FROM t1 
  WHERE b IN (234, 345) AND c >=6 AND a='abc' 
  ORDER BY a, b;

  SELECT a,b,c FROM t1 
  WHERE b IN (234, 345) AND c<=7 AND a='abc' 
  ORDER BY a, b;

  SELECT a,b,c FROM t1 WHERE b IN (235, 345) AND c<=3 AND a='abc' ORDER BY a, b;
