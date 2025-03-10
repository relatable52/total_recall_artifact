
  CREATE TABLE t1(a,b,c,d);
  CREATE INDEX t1x ON t1(a,b);
  INSERT INTO t1(a,b,c,d) VALUES(1,2,0,0),(3,4,0,0),(5,6,0,0);
  CREATE TABLE t2(w,x,y,z);
  CREATE INDEX t2x ON t2(w,x);
  INSERT INTO t2(w,x,y,z) VALUES(1,2,11,22),(8,9,88,99),(3,5,33,55),(5,6,55,66);

  SELECT *,'|' FROM t1 ORDER BY a;

  UPDATE t1 SET (c,d) = (SELECT y,z FROM t2 WHERE (w,x)=(a,b));
  SELECT *,'|' FROM t1 ORDER BY a;

  UPDATE t1 SET (c,d) = (SELECT y,z FROM t2 WHERE w=a);
  SELECT *,'|' FROM t1 ORDER BY a;

  UPDATE t1 SET (c) = 99 WHERE a=3;
  SELECT *,'|' FROM t1 ORDER BY a;

  UPDATE t1 SET b = 8, (c,d) = (SELECT 123,456) WHERE a=3;
  SELECT *,'|' FROM t1 ORDER BY a;
