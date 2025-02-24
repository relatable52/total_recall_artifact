
  PRAGMA page_size=1024;
  PRAGMA auto_vacuum=FULL;
  CREATE TABLE t1(x);
  VACUUM;
  INSERT INTO t1(x) VALUES(zeroblob(10000));
  PRAGMA page_count;

  BEGIN;
  DELETE FROM t1;
  PRAGMA freelist_count;
  PRAGMA page_count;

  COMMIT;

  PRAGMA freelist_count;
  PRAGMA page_count;

  PRAGMA integrity_check;

  CREATE TABLE t2(x);
  PRAGMA freelist_count;

  BEGIN;
  INSERT INTO t1(x) VALUES(zeroblob(10000));
  DELETE FROM t1;
  PRAGMA freelist_count;
  COMMIT;
  PRAGMA freelist_count;
