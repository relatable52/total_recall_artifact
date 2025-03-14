
  PRAGMA temp_store = memory;
  CREATE TABLE t1(a,b,c);
  INSERT INTO t1 VALUES(1, 2, 3);

  BEGIN;
    INSERT INTO t1 VALUES(4, 5, 6);
    SAVEPOINT one;
      INSERT INTO t1 VALUES(7, 8, 9);
    ROLLBACK TO one;
    SELECT * FROM t1;

  COMMIT;

  PRAGMA cache_size = 5;
  CREATE TABLE t2(a BLOB);
  CREATE INDEX i2 ON t2(a);
  WITH s(i) AS (
    SELECT 1 UNION ALL SELECT i+1 FROM s WHERE i<100
  ) INSERT INTO t2 SELECT randomblob(500) FROM s;

  BEGIN;
    UPDATE t2 SET a=randomblob(499);
    SAVEPOINT two;
      UPDATE t2 SET a=randomblob(498);
    ROLLBACK TO two;
  COMMIT;
  PRAGMA integrity_check;
