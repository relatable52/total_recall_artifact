
  PRAGMA encoding=UTF8;
  CREATE TEMP TABLE t1(x);
  INSERT INTO t1 VALUES('this is a test');
  PRAGMA encoding=UTF16;
  SELECT * FROM t1;
