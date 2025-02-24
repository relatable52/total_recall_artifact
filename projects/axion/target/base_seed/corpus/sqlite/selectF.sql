
  BEGIN TRANSACTION;
  CREATE TABLE t1(a, b, c);
  INSERT INTO "t1" VALUES(1,'one','I');
  CREATE TABLE t2(d, e, f);
  INSERT INTO "t2" VALUES(5,'ten','XX');
  INSERT INTO "t2" VALUES(6,NULL,NULL);

  CREATE INDEX i1 ON t1(b, a);
  COMMIT;

  SELECT * FROM t2
  UNION ALL 
  SELECT * FROM t1 WHERE a<5 
  ORDER BY 2, 1
