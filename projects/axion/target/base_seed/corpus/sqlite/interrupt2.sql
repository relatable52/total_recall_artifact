
  CREATE TABLE t1(a, b);
  CREATE INDEX t1a ON t1(a);
  CREATE INDEX t1b ON t1(b);
  PRAGMA journal_mode = wal;

  WITH ii(i) AS ( VALUES(1) UNION ALL SELECT i+1 FROM ii WHERE i<1000 )
  INSERT INTO t1 SELECT i, i FROM ii;
 SELECT count(*) FROM t1  SELECT count(*) FROM t1 
  CREATE TEMP TABLE z1(a, b);
  INSERT INTO z1 SELECT * FROM t1;

  SELECT count(*) FROM t1
  UNION ALL
  SELECT count(*) FROM z1
