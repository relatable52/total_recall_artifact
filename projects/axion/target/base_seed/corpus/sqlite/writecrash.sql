
  CREATE TABLE t1(a INTEGER PRIMARY KEY, b BLOB UNIQUE);
  WITH s(i) AS (
    VALUES(1) UNION ALL SELECT i+1 FROM s WHERE i<100
  )
  INSERT INTO t1 SELECT NULL, randomblob(900) FROM s;
okok