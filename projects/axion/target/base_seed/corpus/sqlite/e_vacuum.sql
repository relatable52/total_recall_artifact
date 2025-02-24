
    DELETE FROM t1;
    DELETE FROM t2;
  PRAGMA freelist_countPRAGMA freelist_count
    DELETE FROM t1 WHERE a%2;
    INSERT INTO t1 SELECT b, a FROM t2 WHERE a%2;
    UPDATE t1 SET b=randomblob(600) WHERE (a%2)==0;
  
  ATTACH 'test.db2' AS aux;
  PRAGMA aux.page_size = 1024;
  CREATE TABLE aux.t3 AS SELECT * FROM t1;
  DELETE FROM t3;

  CREATE TABLE t4(x);
  INSERT INTO t4(x) VALUES('x');
  INSERT INTO t4(x) VALUES('y');
  INSERT INTO t4(x) VALUES('z');
  DELETE FROM t4 WHERE x = 'y';
  SELECT rowid, x FROM t4;

  VACUUM;
  SELECT rowid, x FROM t4;

  CREATE TABLE t5(x, y INTEGER PRIMARY KEY);
  INSERT INTO t5(x) VALUES('x');
  INSERT INTO t5(x) VALUES('y');
  INSERT INTO t5(x) VALUES('z');
  DELETE FROM t5 WHERE x = 'y';
  SELECT rowid, x FROM t5;

  VACUUM;
  SELECT rowid, x FROM t5;

  DROP TABLE t5;
  CREATE TABLE t5(x);
  INSERT INTO t5(x) VALUES('x');
  INSERT INTO t5(x) VALUES('y');
  INSERT INTO t5(x) VALUES('z');
  DELETE FROM t5 WHERE x = 'y';
  SELECT rowid, x FROM t5;

  VACUUM INTO 'test2.db';
  ATTACH 'test2.db' AS aux1;
  SELECT rowid, x FROM aux1.t5;
  DETACH aux1;

  DROP TABLE t5;
  CREATE TABLE t5(x,y,z);
  INSERT INTO t5(x) VALUES('x');
  INSERT INTO t5(x) VALUES('y');
  INSERT INTO t5(x) VALUES('z');
  UPDATE t5 SET y=x, z=random();
  DELETE FROM t5 WHERE x = 'y';
  CREATE INDEX t5x ON t5(x);
  CREATE UNIQUE INDEX t5y ON t5(y);
  CREATE INDEX t5zxy ON t5(z,x,y);
  SELECT rowid, x FROM t5;

  VACUUM;
  SELECT rowid, x FROM t5;
