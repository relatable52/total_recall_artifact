
  CREATE TABLE t11(a,b,c);
  INSERT INTO t11(a,b,c) VALUES(1,10,5),(2,8,11),(3,1,4),(4,20,1),(5,16,4);
  CREATE INDEX t11bc ON t11(b+c);
  SELECT max(b+c) FROM t11;

  SELECT a, max(b+c) FROM t11;

  SELECT a, min(b+c) FROM t11;

  INSERT INTO t11(a,b,c) VALUES(6,NULL,0),(7,0,NULL);
  SELECT a, min(b+c) FROM t11;
