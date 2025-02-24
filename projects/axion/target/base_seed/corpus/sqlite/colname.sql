
  DROP TABLE IF EXISTS t1;
  DROP TABLE IF EXISTS t2;
  CREATE TABLE t1(aaa INT);
  INSERT INTO t1(aaa) VALUES(123);

    CREATE TABLE t2 AS SELECT BBb FROM (SELECT aaa AS Bbb FROM t1);
    SELECT name FROM pragma_table_info('t2');
   -- added 2019-08-10 to invalidate
  DROP TABLE IF EXISTS t1;      -- a couple assert()s that were
  CREATE TABLE t1(a);           -- added by ticket 3b44500725
  INSERT INTO t1 VALUES(17),(2),(99),(-3),(7);
  SELECT (SELECT avg(a) UNION SELECT min(a) OVER()) FROM t1;

  DROP TABLE IF EXISTS t1;
  CREATE TABLE t1("with space" TEXT);
  DROP TABLE IF EXISTS t2;
  CREATE TABLE t2 AS SELECT "with space" FROM t1;
  PRAGMA table_info(t2);

  DROP TABLE IF EXISTS t3;
  CREATE TABLE t3 AS SELECT "with space" FROM t1 GROUP BY 1;
  PRAGMA table_info(t3);
