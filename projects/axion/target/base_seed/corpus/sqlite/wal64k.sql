 
  PRAGMA journal_mode = WAL;
  CREATE TABLE t1(x);
  CREATE INDEX i1 ON t1(x);

  PRAGMA page_size=512;
  PRAGMA journal_mode=WAL;
  CREATE TABLE t1(a,b);
  WITH RECURSIVE c(x) AS (VALUES(1) UNION ALL SELECT x+1 FROM c WHERE x<8200)
  INSERT INTO t1(a,b) SELECT x, zeroblob(300) FROM c;
  PRAGMA integrity_check;
