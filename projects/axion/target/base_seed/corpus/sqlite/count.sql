
  SELECT count(*) FROM t2 HAVING count(*)>1;

  SELECT count(*) FROM t2 HAVING count(*)<10;

  CREATE TABLE t5(a TEXT PRIMARY KEY, b VARCHAR(50)) WITHOUT ROWID;
  INSERT INTO t5 VALUES('bison','jazz');
  SELECT count(*) FROM t5;

  CREATE TABLE t1(a INTEGER PRIMARY KEY, b INT, c VARCHAR(1000));
  CREATE INDEX t1b ON t1(b);
  INSERT INTO t1(a,b,c) values(1,2,'count.test cases for NOT INDEXED');
  ANALYZE;
  UPDATE sqlite_stat1 SET stat='1000000 10' WHERE idx='t1b';
  ANALYZE sqlite_master;

  CREATE TABLE t7(a INT,b TEXT,c BLOB,d REAL);
  CREATE TABLE t8(a INT,b TEXT,c BLOB,d REAL);
  CREATE INDEX t8a ON t8(a);
