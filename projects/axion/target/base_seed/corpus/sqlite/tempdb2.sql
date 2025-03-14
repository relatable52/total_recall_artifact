
  PRAGMA page_size=1024;
  PRAGMA cache_size=50;

  BEGIN;
    CREATE TABLE t1(a INTEGER PRIMARY KEY, b);
    INSERT INTO t1 VALUES(1, int2str(1));
    INSERT INTO t1 VALUES(2, int2str(1));
    INSERT INTO t1 VALUES(3, int2str(1));

    CREATE TABLE t2(a INTEGER PRIMARY KEY, b);
    WITH c(x) AS ( VALUES(1) UNION ALL SELECT x+1 FROM c WHERE x<100 ) 
    INSERT INTO t2 SELECT x, int2str(x) FROM c;
  COMMIT;

  PRAGMA lock_status;

  UPDATE t1 SET b=int2str(2);
  SELECT b=int2str(2) FROM t1

  BEGIN;
    DELETE FROM t1;
    UPDATE t2 SET b=int2str(a+1);
  ROLLBACK;

  SELECT b=int2str(2) FROM t1

  PRAGMA cache_size = -100;
  CREATE TABLE t1(a INTEGER PRIMARY KEY, b);
  WITH c(x) AS ( VALUES(1) UNION ALL SELECT x+1 FROM c WHERE x<100 ) 
    INSERT INTO t1 SELECT x, int2str(x) FROM c;

  INSERT INTO t1 VALUES(10001, int2str(1001) || int2str(1001) || int2str(1001));

  SELECT b FROM t1 WHERE a = 10001;
