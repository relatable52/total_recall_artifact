
  CREATE TABLE t1(a, b UNIQUE);
  INSERT INTO t1 VALUES(1, randomblob(500));
  INSERT INTO t1 VALUES(randomblob(500), 1);
  INSERT INTO t1 VALUES(2, randomblob(250));
  INSERT INTO t1 VALUES(randomblob(250), 2);
  CREATE VIRTUAL TABLE sss USING dbstat;
