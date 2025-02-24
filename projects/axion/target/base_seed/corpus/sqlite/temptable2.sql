
  CREATE TEMP TABLE t1(a, b);
  CREATE INDEX i1 ON t1(a, b);

  WITH x(i) AS ( SELECT 1 UNION ALL SELECT i+1 FROM x WHERE i<100000 )
  INSERT INTO t1 SELECT randomblob(100), randomblob(100) FROM X;

  PRAGMA temp.integrity_check;

  CREATE TEMP TABLE t2(a, b);
  INSERT INTO t2 VALUES(1, 2);

  BEGIN;
    INSERT INTO t2 VALUES(3, 4);
    SELECT * FROM t2;

  ROLLBACK;
  SELECT * FROM t2;

  PRAGMA main.cache_size = 10;
  PRAGMA temp.cache_size = 10;

  CREATE TEMP TABLE t1(a, b);
  CREATE INDEX i1 ON t1(a, b);

  WITH x(i) AS ( SELECT 1 UNION ALL SELECT i+1 FROM x WHERE i<1000 )
  INSERT INTO t1 SELECT randomblob(100), randomblob(100) FROM x;

  SELECT count(*) FROM t1;

  BEGIN;
    UPDATE t1 SET b=randomblob(100) WHERE (rowid%10)==0;
  ROLLBACK;

  SELECT count(*) FROM t1;
ok
  BEGIN;
    UPDATE t1 SET b=randomblob(100) WHERE (rowid%10)==0;
    SAVEPOINT abc;
      UPDATE t1 SET b=randomblob(100) WHERE (rowid%10)==1;
    ROLLBACK TO abc;
    UPDATE t1 SET b=randomblob(100) WHERE (rowid%10)==2;
  COMMIT;
ok
  PRAGMA main.cache_size = 10;
  PRAGMA temp.cache_size = 10;

  CREATE TEMP TABLE t1(a, b);
  CREATE INDEX i1 ON t1(a, b);

  WITH x(i) AS ( SELECT 1 UNION ALL SELECT i+1 FROM x WHERE i<10 )
  INSERT INTO t1 SELECT randomblob(100), randomblob(100) FROM x;

  SELECT count(*) FROM t1;
  PRAGMA temp.page_count;

  BEGIN;
    UPDATE t1 SET b=randomblob(100);
  ROLLBACK;

  CREATE TEMP TABLE t2(a, b);
  CREATE INDEX i2 ON t2(a, b);
  WITH x(i) AS ( SELECT 1 UNION ALL SELECT i+1 FROM x WHERE i<500 )
  INSERT INTO t2 SELECT randomblob(100), randomblob(100) FROM x;

  SELECT count(*) FROM t2;
  SELECT count(*) FROM t1;
ok
  PRAGMA main.cache_size = 10;
  PRAGMA temp.cache_size = 10;

  CREATE TEMP TABLE t2(a, b);
  CREATE INDEX i2 ON t2(a, b);
  WITH x(i) AS ( SELECT 1 UNION ALL SELECT i+1 FROM x WHERE i<500 )
  INSERT INTO t2 SELECT randomblob(100), randomblob(100) FROM x;

  CREATE TEMP TABLE t1(a, b);
  CREATE INDEX i1 ON t1(a, b);
  INSERT INTO t1 VALUES(1, 2);

  BEGIN;
    UPDATE t1 SET a=2;
    UPDATE t2 SET a=randomblob(100);
    SELECT count(*) FROM t1;
  ROLLBACK;

  UPDATE t2 SET a=randomblob(100);

  SELECT * FROM t1;
ok
  PRAGMA main.cache_size = 10;
  PRAGMA temp.cache_size = 10;

  CREATE TEMP TABLE t1(x);
  INSERT INTO t1 VALUES('one');

  CREATE TEMP TABLE t2(a, b);
  CREATE INDEX i2 ON t2(a, b);
  WITH x(i) AS ( SELECT 1 UNION ALL SELECT i+1 FROM x WHERE i<500 )
  INSERT INTO t2 SELECT randomblob(100), randomblob(100) FROM x;

  UPDATE t1 SET x='two';             -- step 1
  BEGIN;
    UPDATE t2 SET a=randomblob(100); -- step 2
    SELECT * FROM t1;                -- step 3
  ROLLBACK;                          -- step 4

  SELECT count(*) FROM t2;
  SELECT * FROM t1;

  PRAGMA auto_vacuum=INCREMENTAL;
  CREATE TABLE t1(x);
  INSERT INTO t1 VALUES(zeroblob(900));
  INSERT INTO t1 VALUES(zeroblob(900));
  INSERT INTO t1 SELECT x FROM t1;
  INSERT INTO t1 SELECT x FROM t1;
  INSERT INTO t1 SELECT x FROM t1;
  INSERT INTO t1 SELECT x FROM t1;
  BEGIN;
  DELETE FROM t1 WHERE rowid%2;
  PRAGMA incremental_vacuum(4);
  ROLLBACK;
  PRAGMA integrity_check;

  PRAGMA auto_vacuum = OFF;
  CREATE TABLE t2(a, b);
  CREATE INDEX i2 ON t2(a, b);
  WITH x(i) AS ( SELECT 1 UNION ALL SELECT i+1 FROM x WHERE i<20 )
  INSERT INTO t2 SELECT randomblob(100), randomblob(100) FROM x ORDER BY 1, 2;
  PRAGMA page_count;

    PRAGMA cache_size = 15;
    PRAGMA auto_vacuum = 1;
  
    CREATE TABLE tx(a, b);
    CREATE INDEX i1 ON tx(a);
    CREATE INDEX i2 ON tx(b);
    WITH x(i) AS ( SELECT 1 UNION ALL SELECT i+1 FROM x WHERE i<1000 )
      INSERT INTO tx SELECT randomblob(100), randomblob(100) FROM x;
   DELETE FROM tx WHERE (random()%3)==0  PRAGMA integrity_check  
        WITH x(i) AS ( SELECT 1 UNION ALL SELECT i+1 FROM x WHERE i<400 )
          INSERT INTO tx SELECT randomblob(100), randomblob(100) FROM x;
       PRAGMA integrity_check  
      BEGIN;
      DELETE FROM tx WHERE (random()%3)==0;
      WITH x(i) AS ( SELECT 1 UNION ALL SELECT i+1 FROM x WHERE i<500 )
        INSERT INTO tx SELECT randomblob(100), randomblob(100) FROM x;
      COMMIT;
     PRAGMA integrity_check 
  PRAGMA cache_size = 50;
  PRAGMA page_size = 1024;
  CREATE TABLE t1(a, b, PRIMARY KEY(a)) WITHOUT ROWID;
  CREATE INDEX i1 ON t1(a);
  CREATE TABLE t2(x, y);
  INSERT INTO t2 VALUES(1, 2);

  BEGIN;
    WITH x(i) AS ( SELECT 1 UNION ALL SELECT i+1 FROM x WHERE i<500 )
      INSERT INTO t1 SELECT randomblob(100), randomblob(100) FROM x;
  COMMIT;
  INSERT INTO t2 VALUES(3, 4);
 PRAGMA mmap_size = 512000 1 2 3 4 PRAGMA integrity_check 