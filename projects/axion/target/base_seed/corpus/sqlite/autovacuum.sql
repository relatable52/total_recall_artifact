
  DROP TABLE t1;
  CREATE TABLE t1(a INTEGER PRIMARY KEY, b);
  INSERT INTO t1 VALUES(25, randomblob(104));
  REPLACE INTO t1 VALUES(25, randomblob(1117));
  PRAGMA integrity_check;
