
  CREATE VIRTUAL TABLE t1 USING fts4(str);

  INSERT INTO t1 VALUES('one string');
  INSERT INTO t1 VALUES('two string');
  INSERT INTO t1 VALUES('three string');
  SELECT last_insert_rowid();

  BEGIN;
    INSERT INTO t1 VALUES('one string');
    INSERT INTO t1 VALUES('two string');
    INSERT INTO t1 VALUES('three string');
  COMMIT;
  SELECT last_insert_rowid();

  INSERT INTO t1(rowid, str) VALUES(-22, 'some more text');
  SELECT last_insert_rowid();

  BEGIN;
    INSERT INTO t1(rowid, str) VALUES(45, 'some more text');
    INSERT INTO t1(rowid, str) VALUES(46, 'some more text');
    INSERT INTO t1(rowid, str) VALUES(222, 'some more text');
    SELECT last_insert_rowid();
  COMMIT;
  SELECT last_insert_rowid();

  CREATE TABLE x1(x);
  INSERT INTO x1 VALUES('john'), ('paul'), ('george'), ('ringo');
  INSERT INTO t1 SELECT x FROM x1;
  SELECT last_insert_rowid();

  INSERT INTO t1(rowid, str) SELECT rowid+10, x FROM x1;
  SELECT last_insert_rowid();
