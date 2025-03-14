
  CREATE TABLE T1(a, b);
  INSERT INTO t1(rowid, a ,b) VALUES(5, 'v', 'five');
  INSERT INTO t1(rowid, a, b) VALUES(10, 'x', 'ten');

  SELECT pgno, cell, field, quote(value) FROM sqlite_dbdata WHERE pgno=2;

  SELECT pgno, cell, field, quote(value) FROM sqlite_dbdata;

  INSERT INTO t1 VALUES(NULL, $big);
  SELECT value FROM sqlite_dbdata WHERE pgno=2 AND cell=2 AND field=1;

  DELETE FROM t1;
  INSERT INTO t1 VALUES(NULL, randomblob(5050));

  CREATE TABLE t1(a);
  CREATE INDEX i1 ON t1(a);
  WITH s(i) AS (
    SELECT 1 UNION ALL SELECT i+1 FROM s WHERE i<10
  )
  INSERT INTO t1 SELECT randomblob(900) FROM s;

  SELECT * FROM sqlite_dbptr WHERE pgno=2;

  SELECT * FROM sqlite_dbptr WHERE pgno=3;

  SELECT * FROM sqlite_dbptr
