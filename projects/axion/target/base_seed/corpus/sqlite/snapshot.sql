
    CREATE TABLE t1(a, b);
    INSERT INTO t1 VALUES(1, 2);
    INSERT INTO t1 VALUES(3, 4);
  
    BEGIN;
      SELECT * FROM t1;
  
    CREATE TABLE t2(x, y);
    INSERT INTO t2 VALUES('a', 'b');
    INSERT INTO t2 VALUES('c', 'd');
    BEGIN;
      SELECT * FROM t2;
  
    PRAGMA journal_mode = wal;
    CREATE TABLE t3(i, j);
    INSERT INTO t3 VALUES('o', 't');
    INSERT INTO t3 VALUES('t', 'f');
    BEGIN;
      SELECT * FROM t3;
  
    PRAGMA journal_mode = wal;
    CREATE TABLE x1(x, xx, xxx);
    INSERT INTO x1 VALUES('z', 'zz', 'zzz');
    BEGIN;
      SELECT * FROM x1;
  
    PRAGMA journal_mode = wal;
    CREATE TABLE x1(x, xx, xxx);
    INSERT INTO x1 VALUES('z', 'zz', 'zzz');
    BEGIN;
      PRAGMA user_version;
  
    PRAGMA journal_mode = wal;
    CREATE TABLE t1(x);
  
    INSERT INTO t1 VALUES(11);
    INSERT INTO t1 VALUES(12);
    INSERT INTO t1 VALUES(13);
    BEGIN; 
      PRAGMA application_id;
  