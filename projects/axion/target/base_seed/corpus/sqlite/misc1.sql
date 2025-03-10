
  CREATE TABLE t19 AS SELECT 1, 2 AS '', 3;
  SELECT * FROM t19;

  CREATE TABLE t19b AS SELECT 4 AS '', 5 AS '',  6 AS '';
  SELECT * FROM t19b;

  CREATE TABLE t19c(x TEXT);
  CREATE TABLE t19d AS SELECT * FROM t19c UNION ALL SELECT 1234;
  SELECT x, typeof(x) FROM t19d;

  CREATE TABLE t0(x INTEGER DEFAULT(0==0) NOT NULL);
  REPLACE INTO t0(x) VALUES('');
  SELECT rowid, quote(x) FROM t0;

  SELECT ''+3 FROM (SELECT ''+5);

  CREATE TABLE t1(x);
  PRAGMA writable_schema=ON;
  UPDATE sqlite_master SET sql='CREATE table t(d CHECK(T(#0)';
  BEGIN;
  CREATE TABLE t2(y);
  ROLLBACK;
  DROP TABLE IF EXISTS t3;

  DROP TABLE IF EXISTS abc;
  CREATE TABLE abc(a, b, c);
  SELECT randomblob(min(max(coalesce(EXISTS (SELECT 1 FROM ( SELECT (SELECT 2147483647) NOT IN (SELECT 2147483649 UNION ALL SELECT DISTINCT -1) IN (SELECT 2147483649), 'fault', (SELECT ALL -1 INTERSECT SELECT 'experiments') IN (SELECT ALL 56.1 ORDER BY 'experiments' DESC) FROM (SELECT DISTINCT 2147483648, 'hardware' UNION ALL SELECT -2147483648, 'experiments' ORDER BY 2147483648 LIMIT 1 OFFSET 123456789.1234567899) GROUP BY (SELECT ALL 0 INTERSECT SELECT 'in') IN (SELECT DISTINCT 'experiments' ORDER BY zeroblob(1000) LIMIT 56.1 OFFSET -456) HAVING EXISTS (SELECT 'fault' EXCEPT    SELECT DISTINCT 56.1) UNION SELECT 'The', 'The', 2147483649 UNION ALL SELECT DISTINCT 'hardware', 'first', 'experiments' ORDER BY 'hardware' LIMIT 123456789.1234567899 OFFSET -2147483647)) NOT IN (SELECT (SELECT DISTINCT (SELECT 'The') FROM abc ORDER BY EXISTS (SELECT -1 INTERSECT SELECT ALL NULL) ASC) IN (SELECT DISTINCT EXISTS (SELECT ALL 123456789.1234567899 ORDER BY 1 ASC, NULL DESC) FROM sqlite_master INTERSECT SELECT 456)), (SELECT ALL 'injection' UNION ALL SELECT ALL (SELECT DISTINCT 'first' UNION     SELECT DISTINCT 'The') FROM (SELECT 456, 'in', 2147483649))),1), 500)), 'first', EXISTS (SELECT DISTINCT 456 FROM abc ORDER BY 'experiments' DESC) FROM abc;

  CREATE TABLE dup1(a,b,c);
  INSERT INTO dup1(a,b,c,a,b,c) VALUES(1,2,3,4,5,6);
  SELECT a,b,c FROM dup1;

  UPDATE dup1 SET a=7, b=8, c=9, a=10, b=11, c=12;
  SELECT a,b,c FROM dup1;

  CREATE TABLE t1(x);
  CREATE UNIQUE INDEX t1x ON t1(x) WHERE x=1;
  INSERT OR ABORT INTO t1 DEFAULT VALUES;
  UPDATE OR REPLACE t1 SET x = 1;
  PRAGMA integrity_check;
  SELECT * FROM t1;
