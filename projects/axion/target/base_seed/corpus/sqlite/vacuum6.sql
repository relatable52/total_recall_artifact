
  CREATE TABLE t1(x INTEGER PRIMARY KEY, y);
  INSERT INTO t1 VALUES(1, 1);

  VACUUM

  CREATE TABLE t1(x,b);
  CREATE INDEX x1 ON t1(x);
  CREATE INDEX x2 ON t1(x);
  CREATE INDEX x3 ON t1(x);
  INSERT INTO t1 SELECT 2,'';
  VACUUM;

    CREATE TABLE t1(a INTEGER PRIMARY KEY, b);
    WITH s(i) AS (
        SELECT 1 UNION ALL SELECT i+1 FROM s WHERE i<100
    )
    INSERT INTO t1 SELECT i, randomblob($sz) FROM s;
  
    vacuum;
  
    PRAGMA integrity_check;
  
  PRAGMA page_size = 1024;
  CREATE TABLE t1(x INTEGER PRIMARY KEY, y);
  INSERT INTO t1 VALUES(2, randomblob(1200));

  PRAGMA page_size = 512;
  VACUUM;

  PRAGMA integrity_check

  CREATE TABLE tx(a, b);
  CREATE INDEX i1 ON tx(b);
  WITH s(i) AS (
      SELECT 8000 UNION ALL SELECT i+1 FROM s WHERE i<10000
  )
  INSERT INTO tx SELECT i, randomblob(i) FROM s;

  SELECT sum(length(b)) FROM tx;
