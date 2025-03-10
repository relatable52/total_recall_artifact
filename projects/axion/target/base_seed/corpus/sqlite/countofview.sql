
  CREATE TABLE t2(c);
  CREATE TABLE t3(f);

  INSERT INTO t2 VALUES(1), (2);
  INSERT INTO t3 VALUES(3);

  select c from t2 union all select f from t3 limit 1 offset 1

  select count(*) from (
    select c from t2 union all select f from t3 limit 1 offset 1
  )

  select count(*) from (
    select c from t2 union all select f from t3
  )

  CREATE TABLE t1(x);
  INSERT INTO t1 VALUES(1),(99),('abc');
  CREATE VIEW v1(x,y) AS SELECT x,1 FROM t1 UNION ALL SELECT x,2 FROM t1;
  SELECT count(*) FROM v1 WHERE x<>1;

  SELECT count(*) FROM v1 GROUP BY y;

  DROP TABLE t1;
  DROP TABLE t2;
  DROP TABLE t3;
  CREATE TABLE t1(a INTEGER PRIMARY KEY, b TEXT);
  INSERT INTO t1 VALUES(4,'four');
  CREATE TABLE t2(c INTEGER PRIMARY KEY, d TEXT);
  CREATE VIEW t3 AS SELECT a, b FROM t1 UNION ALL SELECT c, d FROM t2;
  SELECT count(*) FROM t3 ORDER BY sum(a);

  CREATE TABLE t1(a INTEGER PRIMARY KEY, b TEXT);
  INSERT INTO t1 VALUES(1,'one'),(4,'four');
  CREATE TABLE t2(c INTEGER PRIMARY KEY, d TEXT);
  INSERT INTO t2 VALUES(2,'two'),(5,'five');
  CREATE VIEW t3 AS SELECT a, b FROM t1 UNION ALL SELECT c, d FROM t2;
  SELECT count(*) FROM t3 HAVING count(*)>0;

  SELECT count(*) FROM t3 HAVING count(*)>5;

  SELECT count(*) FROM t3 HAVING max(b)>'mmm';

  SELECT count(*) FROM t3 HAVING min(b)>'mmm';

  SELECT count(*) FROM (
     SELECT a, max(b) FROM t1 HAVING a<100 UNION ALL SELECT c, d FROM t2
  )
