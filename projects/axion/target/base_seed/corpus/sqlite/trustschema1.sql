
  PRAGMA trusted_schema=OFF;

  PRAGMA trusted_schema=OFF;
  CREATE TEMP TABLE temp1(a,b AS (f3(a+1)));
  INSERT INTO temp1(a) VALUES(100),(900);
  SELECT * FROM temp1;

  SELECT * FROM t2;

  PRAGMA trusted_schema=OFF;
  CREATE TEMP TABLE temp2(a, b, CHECK(f3(b)==b));
  INSERT INTO temp2(a,b) VALUES(1,2),('x','y');
  SELECT * FROM temp2;

  CREATE TEMP TABLE temp3(a, b DEFAULT(f3(31)));
  INSERT INTO temp3(a) VALUES(22);
  SELECT * FROM temp3;

  CREATE TABLE t4(a,b,c);
  INSERT INTO t4 VALUES(1,2,3),('a','b','c'),(4,'d',0);
  SELECT * FROM t4;
  CREATE TEMP TABLE temp4(a,b,c);
  INSERT INTO temp4 SELECT * FROM t4;

  CREATE INDEX t4a ON t4(a) WHERE f1(c);
  SELECT a FROM t4 WHERE f1(c) ORDER BY a;

  PRAGMA trusted_schema=ON;
  CREATE INDEX t4b ON t4(b) WHERE f2(c);
  SELECT b FROM t4 WHERE f2(c) ORDER BY b;

  PRAGMA trusted_schema=OFF;
  CREATE INDEX temp4a ON temp4(a) WHERE f3(c);
  SELECT a FROM temp4 WHERE f2(c) ORDER BY a;

  CREATE TABLE t5(a,b,c);
  INSERT INTO t5 VALUES(1,2,3),(4,5,6),(7,0,-3);
  SELECT * FROM t5;
  CREATE TEMP TABLE temp5(a,b,c);
  INSERT INTO temp5 SELECT * FROM t5;

  CREATE INDEX t5x1 ON t5(a+f1(b));
  SELECT * FROM t5 INDEXED BY t5x1 WHERE a+f1(b)=3;

  PRAGMA trusted_schema=ON;
  CREATE INDEX t5x2 ON t5(b+f2(c));
  SELECT * FROM t5 INDEXED BY t5x2 WHERE b+f2(c)=11;

  PRAGMA trusted_schema=OFF;
  CREATE INDEX temp5x1 ON temp5(a+f3(b));
  SELECT * FROM temp5 INDEXED BY temp5x1 WHERE a+f3(b)=7;

  CREATE TABLE t1(a,b,c);
  INSERT INTO t1 VALUES(1,2,3),(100,50,75),(-11,22,-33);
  CREATE VIEW v1a AS SELECT f3(a+b) FROM t1;
  SELECT f3(a+b) FROM t1;

  DROP VIEW v1a;
  CREATE TEMP VIEW v1a AS SELECT f3(a+b) FROM t1;
  SELECT * FROM v1a;

  CREATE VIEW v1b AS SELECT f2(b+c) FROM t1;
  SELECT f2(b+c) FROM t1;

  DROP VIEW v1b;
  CREATE TEMP VIEW v1b AS SELECT f2(b+c) FROM t1;
  SELECT * FROM v1b;

  DELETE FROM t1;
  CREATE TABLE t2(x);
  CREATE TRIGGER r1 AFTER INSERT ON t1 BEGIN
    INSERT INTO t2(x) SELECT f3(new.a);
  END;

  SELECT * FROM t1;
  SELECT * FROM t2;

  DROP TRIGGER r1;
  CREATE TRIGGER r1 AFTER INSERT ON t1 BEGIN
    INSERT INTO t2(x) SELECT f2(new.a)+100;
  END;
  PRAGMA trusted_schema=ON;
  INSERT INTO t1 VALUES(7,6,5);
  SELECT * FROM t1, t2;

  SELECT * FROM t1;
  SELECT * FROM t2;

  PRAGMA trusted_schema=OFF;
  CREATE VIEW test41(x) AS SELECT json_extract('{"a":123
  PRAGMA trusted_schema=ON;
  SELECT * FROM test41;
