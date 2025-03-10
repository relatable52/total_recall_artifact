
    PRAGMA auto_vacuum = 1;
    PRAGMA mmap_size = 67108864;
    PRAGMA journal_mode = wal;
    CREATE TABLE t1(a, b, UNIQUE(a, b));
    INSERT INTO t1 VALUES(rblob(500), rblob(500));
    INSERT INTO t1 SELECT rblob(500), rblob(500) FROM t1; --    2
    INSERT INTO t1 SELECT rblob(500), rblob(500) FROM t1; --    4
    INSERT INTO t1 SELECT rblob(500), rblob(500) FROM t1; --    8
    INSERT INTO t1 SELECT rblob(500), rblob(500) FROM t1; --   16
    INSERT INTO t1 SELECT rblob(500), rblob(500) FROM t1; --   32
    PRAGMA wal_checkpoint;
  
    PRAGMA auto_vacuum;
    SELECT count(*) FROM t1;
  
      PRAGMA wal_checkpoint;
    
  PRAGMA auto_vacuum = 1;

  CREATE TABLE t1(a, b, UNIQUE(a, b));
  INSERT INTO t1 VALUES(rblob(500), rblob(500));
  INSERT INTO t1 SELECT rblob(500), rblob(500) FROM t1; --    2
  INSERT INTO t1 SELECT rblob(500), rblob(500) FROM t1; --    4
  INSERT INTO t1 SELECT rblob(500), rblob(500) FROM t1; --    8

  CREATE TABLE t2(a, b, UNIQUE(a, b));
  INSERT INTO t2 SELECT * FROM t1;

  PRAGMA page_size = 1024;
  CREATE TABLE t1(x);
  INSERT INTO t1 VALUES($aaa);
  INSERT INTO t1 VALUES($bbb);
  INSERT INTO t1 VALUES($ccc);
  INSERT INTO t1 VALUES($ddd);
  SELECT * FROM t1;
  BEGIN;
 COMMIT 
  PRAGMA auto_vacuum = 2;
  PRAGMA page_size = 1024;
  CREATE TABLE t1(x);
  INSERT INTO t1 VALUES($aaa);
  INSERT INTO t1 VALUES($bbb);
  INSERT INTO t1 VALUES($ccc);
  INSERT INTO t1 VALUES($ddd);

  PRAGMA auto_vacuum;
  SELECT * FROM t1;

  CREATE TABLE t2(x);
  INSERT INTO t2 VALUES('tricked you!');
  INSERT INTO t2 VALUES('tricked you!');
