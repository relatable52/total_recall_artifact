
  CREATE TABLE t1(x);
  INSERT INTO t1 VALUES(1),(2.5),('three'),(x'4444'),(NULL);
  SELECT quote(x) FROM t1 ORDER BY x;
  SELECT name FROM sqlite_master;
