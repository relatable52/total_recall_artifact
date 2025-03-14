
  CREATE TABLE t1(a INTEGER PRIMARY KEY);
  CREATE TABLE t2(b INTEGER PRIMARY KEY, x1 INT COLLATE NOCASE);
  CREATE TABLE t3(x2 INT);
  SELECT * FROM t3, t2, t1 WHERE x2=b AND x1=a AND a=1;

  INSERT INTO t1(a) VALUES(1),(2),(3);
  INSERT INTO t2(b,x1) VALUES(11,1),(22,2),(33,3);
  INSERT INTO t3(x2) VALUES(11),(22),(33);
  SELECT *,'|' FROM t3, t2, t1 WHERE x2=b AND x1=a AND a=1;

  SELECT *,'|' FROM t3, t1, t2 WHERE x2=b AND x1=a AND a=1;

  SELECT *,'|' FROM t2, t3, t1 WHERE x2=b AND x1=a AND a=1;

  SELECT *,'|' FROM t2, t1, t3 WHERE x2=b AND x1=a AND a=1;

  SELECT *,'|' FROM t1, t2, t3 WHERE x2=b AND x1=a AND a=1;

  SELECT *,'|' FROM t1, t2, t3 WHERE x2=b AND x1=a AND a=1;

  SELECT *,'|' FROM t3, t2, t1 WHERE b=x2 AND a=x1 AND 1=a;

  SELECT *,'|' FROM t3, t1, t2 WHERE b=x2 AND a=x1 AND 1=a;

  SELECT *,'|' FROM t2, t3, t1 WHERE b=x2 AND a=x1 AND 1=a;

  SELECT *,'|' FROM t2, t1, t3 WHERE b=x2 AND a=x1 AND 1=a;

  SELECT *,'|' FROM t1, t2, t3 WHERE b=x2 AND a=x1 AND 1=a;

  SELECT *,'|' FROM t1, t2, t3 WHERE b=x2 AND a=x1 AND 1=a;

  CREATE TABLE t4(a COLLATE binary);
  CREATE INDEX i4 ON t4(a);
  INSERT INTO t4 VALUES('one'), ('two'), ('three');
  VACUUM;
