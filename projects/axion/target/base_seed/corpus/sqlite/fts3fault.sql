
  CREATE VIRTUAL TABLE t1 USING fts3;
  INSERT INTO t1 VALUES('test renaming the table');
  INSERT INTO t1 VALUES(' after it has been written');

  CREATE VIRTUAL TABLE t1 USING fts3(a, b);
