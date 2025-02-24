
  CREATE TABLE t1(a PRIMARY KEY, b UNIQUE);
  INSERT INTO t1 VALUES(1, randomblob(500));
  INSERT INTO t1 SELECT a+1, randomblob(500) FROM t1;      -- 2
  INSERT INTO t1 SELECT a+2, randomblob(500) FROM t1;      -- 4 
  INSERT INTO t1 SELECT a+4, randomblob(500) FROM t1;      -- 8 
  INSERT INTO t1 SELECT a+8, randomblob(500) FROM t1;      -- 16 

  CREATE TABLE t6(x PRIMARY KEY COLLATE cmp, y) WITHOUT ROWID;
  CREATE INDEX t6y ON t6(y);
  INSERT INTO t6 VALUES('i', 'one');
  INSERT INTO t6 VALUES('ii', 'one');
  INSERT INTO t6 VALUES('iii', 'one');
