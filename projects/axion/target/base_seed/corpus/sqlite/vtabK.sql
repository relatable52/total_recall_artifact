
  CREATE TABLE t1(x);
  INSERT INTO t1 VALUES(123);
  PRAGMA writable_schema=ON;
  CREATE VIRTUAL TABLE sqlite_stat1 USING fts5(a);
  PRAGMA writable_schema=OFF;
  CREATE VIRTUAL TABLE t3 USING fts5(b);
  INSERT INTO t3 VALUES('this is a test');

  SELECT * FROM t1;

  INSERT INTO t3(b) VALUES('Four score and seven years ago');
  SELECT * FROM t3 WHERE t3 MATCH 'this';

  SELECT * FROM t3 WHERE t3 MATCH 'four seven';

  INSERT INTO sqlite_stat1(a)
  VALUES('We hold these truths to be self-evident...');
  SELECT * FROM sqlite_stat1;

  PRAGMA integrity_check;

  CREATE TABLE t1(a);
  INSERT INTO t1 VALUES('Ebed-malech');
  CREATE TABLE x(a);
  PRAGMA writable_schema=ON;
  CREATE VIRTUAL TABLE sqlite_stat1 USING fts5(a);

  SELECT * FROM t1;
