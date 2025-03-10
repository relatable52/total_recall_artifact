
    CREATE TABLE t1(x, y);
    CREATE TABLE t2(x, y);
    CREATE INDEX i1y ON t1(y);
  
    WITH cnt(i) AS (
      SELECT 1 UNION ALL SELECT i+1 FROM cnt WHERE i<20
    )
    INSERT INTO t1 SELECT i, randomblob(800) FROM cnt;
   PRAGMA integrity_check 