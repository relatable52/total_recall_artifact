
  PRAGMA page_size=1024;
  PRAGMA auto_vacuum=0;
  CREATE TABLE t1(a,b);
  WITH RECURSIVE c(i) AS (VALUES(1) UNION ALL SELECT i+1 FROM c WHERE i<10)
    INSERT INTO t1(a,b) SELECT i, zeroblob(700) FROM c;
