
    PRAGMA auto_vacuum = 2;
    PRAGMA journal_mode = WAL;
    PRAGMA page_size = 1024;
    CREATE TABLE t1(x);
    INSERT INTO t1 VALUES(randomblob(5000));
    INSERT INTO t1 SELECT * FROM t1;
    INSERT INTO t1 SELECT * FROM t1;
    INSERT INTO t1 SELECT * FROM t1;
    INSERT INTO t1 SELECT * FROM t1;
  