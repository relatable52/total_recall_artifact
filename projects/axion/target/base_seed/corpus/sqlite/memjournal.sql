
  PRAGMA journal_mode = memory;
  CREATE TABLE t1(a);

  BEGIN;
    INSERT INTO t1 VALUES( randomblob(500) );

  COMMIT;
