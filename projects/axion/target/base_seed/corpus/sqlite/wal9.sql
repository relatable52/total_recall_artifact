
  PRAGMA page_size = 1024;
  PRAGMA journal_mode = WAL;
  PRAGMA wal_autocheckpoint = 0;
  CREATE TABLE t(x);

  BEGIN;
    INSERT INTO t VALUES(randomblob(100));
    INSERT INTO t SELECT randomblob(100) FROM t;
    INSERT INTO t SELECT randomblob(100) FROM t;
    INSERT INTO t SELECT randomblob(100) FROM t;
    INSERT INTO t SELECT randomblob(100) FROM t;
    INSERT INTO t SELECT randomblob(100) FROM t;
    INSERT INTO t SELECT randomblob(100) FROM t;
    INSERT INTO t SELECT randomblob(100) FROM t;

    INSERT INTO t SELECT randomblob(100) FROM t;
    INSERT INTO t SELECT randomblob(100) FROM t;
    INSERT INTO t SELECT randomblob(100) FROM t;
    INSERT INTO t SELECT randomblob(100) FROM t;
    INSERT INTO t SELECT randomblob(100) FROM t;
    INSERT INTO t SELECT randomblob(100) FROM t;
    INSERT INTO t SELECT randomblob(100) FROM t;
    INSERT INTO t SELECT randomblob(100) FROM t;

    INSERT INTO t SELECT randomblob(100) FROM t;
    INSERT INTO t SELECT randomblob(100) FROM t;
  COMMIT;
