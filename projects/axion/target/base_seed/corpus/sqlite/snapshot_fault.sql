
  PRAGMA journal_mode = wal;
  CREATE TABLE t1(zzz);
  INSERT INTO t1 VALUES('abc');
  INSERT INTO t1 VALUES('def');

  PRAGMA page_size = 512;
  PRAGMA journal_mode = wal;
  PRAGMA wal_autocheckpoint = 0;
  CREATE TABLE t1(zzz);
  INSERT INTO t1 VALUES(randomblob( 500 * 9500 ));
  PRAGMA user_version = 211;

  PRAGMA page_size = 512;
  PRAGMA journal_mode = wal;
  PRAGMA wal_autocheckpoint = 0;
  CREATE TABLE t1(zzz);
  INSERT INTO t1 VALUES(randomblob( 5000 ));
  PRAGMA user_version = 211;
