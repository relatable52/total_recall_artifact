
  -- create a table with many entries
  CREATE TABLE t1(x);
  WITH RECURSIVE
     c(x) AS (VALUES(1) UNION ALL SELECT x+1 FROM c WHERE x<100)
  INSERT INTO t1 SELECT x FROM c;
