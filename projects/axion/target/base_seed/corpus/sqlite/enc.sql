
  PRAGMA encoding = 'utf-8';
  CREATE TABLE t1(a, b, c);
  INSERT INTO t1 VALUES('a', 'b', 'c');
  ATTACH 'test.db3' AS aux;
  CREATE TABLE aux.t3(x, y, z);
  INSERT INTO t3 VALUES('xxx', 'yyy', 'zzz');
  PRAGMA encoding;

  SELECT * FROM t3;
  PRAGMA encoding = 'UTF-16le';
  SELECT * FROM t3;

  PRAGMA encoding = 'UTF-16le';
  PRAGMA encoding;

  PRAGMA encoding = 'UTF-8';
  CREATE TEMP TABLE t1(a, b, c);
  INSERT INTO t1 VALUES('xxx', 'yyy', 'zzz');

  CREATE TEMP TABLE t1(a, b, c);
  INSERT INTO t1 VALUES('xxx', 'yyy', 'zzz');

  SELECT * FROM t2;
  SELECT * FROM t1;
