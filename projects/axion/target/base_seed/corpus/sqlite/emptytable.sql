
  CREATE TABLE t1(a);
  WITH RECURSIVE c(x) AS (VALUES(1) UNION ALL SELECT x+1 FROM c WHERE x<100)
    INSERT INTO t1(a) SELECT x FROM c;
  CREATE TABLE empty(x);
  SELECT count(*) FROM t1;
