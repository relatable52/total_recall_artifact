
  SELECT * FROM t1 WHERE b=2 AND a IS NULL;

  SELECT * FROM t1 WHERE b=2 AND a IS NOT NULL;

  PRAGMA reverse_unordered_selects=on;
  DROP TABLE IF EXISTS t1;
  CREATE TABLE t1(a,b);
  INSERT INTO t1 VALUES(1,2);
  CREATE INDEX t1b ON t1(b);
  SELECT a FROM t1 WHERE b=-99 OR b>1;

  CREATE TABLE t1(a, b);
  CREATE INDEX t1aa ON t1(a,a);
  INSERT INTO t1 VALUES(1,2);
  ANALYZE;
  UPDATE sqlite_stat1 SET stat='27 3 3' WHERE idx='t1aa';
  ANALYZE sqlite_schema;
  PRAGMA reverse_unordered_selects (1) ;
  SELECT a FROM t1 WHERE  a=1 OR a=2;
