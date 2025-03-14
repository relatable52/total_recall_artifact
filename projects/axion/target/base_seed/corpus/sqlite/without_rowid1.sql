
  CREATE TABLE t1(a,b,c,d, PRIMARY KEY(c,a)) WITHOUT ROWID;
  CREATE INDEX t1bd ON t1(b, d);
  INSERT INTO t1 VALUES('journal','sherman','ammonia','helena');
  INSERT INTO t1 VALUES('dynamic','juliet','flipper','command');
  INSERT INTO t1 VALUES('journal','sherman','gamma','patriot');
  INSERT INTO t1 VALUES('arctic','sleep','ammonia','helena');
  SELECT *, '|' FROM t1 ORDER BY c, a;

  SELECT *, '|' FROM t1 ORDER BY +c, a;

  SELECT *, '|' FROM t1 ORDER BY c DESC, a DESC;

  SELECT *, '|' FROM t1 ORDER BY b, d;

  SELECT *, '|' FROM t1 ORDER BY +b, d;

  REPLACE INTO t1 VALUES('dynamic','phone','flipper','harvard');
  SELECT *, '|' FROM t1 ORDER BY c, a;

  SELECT *, '|' FROM t1 ORDER BY b, d;

  UPDATE t1 SET d=3.1415926 WHERE a='journal';
  SELECT *, '|' FROM t1 ORDER BY c, a;

  SELECT *, '|' FROM t1 ORDER BY b, d;

  UPDATE t1 SET a=1250 WHERE b='phone';
  SELECT *, '|' FROM t1 ORDER BY c, a;

  SELECT *, '|' FROM t1 ORDER BY b, d;

  VACUUM;
  SELECT *, '|' FROM t1 ORDER BY b, d;

  ANALYZE;
  SELECT * FROM sqlite_stat1 ORDER BY idx;

    SELECT DISTINCT tbl, idx FROM sqlite_stat4 ORDER BY idx;
  
  CREATE TABLE t4 (a COLLATE nocase PRIMARY KEY, b) WITHOUT ROWID;
  INSERT INTO t4 VALUES('abc', 'def');
  SELECT * FROM t4;

  UPDATE t4 SET a = 'ABC';
  SELECT * FROM t4;

  DROP TABLE t4;
  CREATE TABLE t4 (b, a COLLATE nocase PRIMARY KEY) WITHOUT ROWID;
  INSERT INTO t4(a, b) VALUES('abc', 'def');
  SELECT * FROM t4;

  UPDATE t4 SET a = 'ABC', b = 'xyz';
  SELECT * FROM t4;

  CREATE TABLE t5 (a, b, PRIMARY KEY(b, a)) WITHOUT ROWID;
  INSERT INTO t5(a, b) VALUES('abc', 'def');
  UPDATE t5 SET a='abc', b='def';

  CREATE TABLE t6 (
    a COLLATE nocase, b, c UNIQUE, PRIMARY KEY(b, a)
  ) WITHOUT ROWID;

  INSERT INTO t6(a, b, c) VALUES('abc', 'def', 'ghi');
  UPDATE t6 SET a='ABC', c='ghi';

  SELECT * FROM t6 ORDER BY b, a;
  SELECT * FROM t6 ORDER BY c;

  CREATE TABLE t1(a, b, PRIMARY KEY(a)) WITHOUT ROWID;
  CREATE UNIQUE INDEX i1 ON t1(b);

  CREATE TABLE t2(a, b, PRIMARY KEY(a)) WITHOUT ROWID;
  CREATE UNIQUE INDEX i2 ON t2(b);

  INSERT INTO t1 VALUES('one', 'two');
  INSERT INTO t2 VALUES('three', 'two');

  INSERT OR REPLACE INTO t1 SELECT * FROM t2;
  SELECT * FROM t1;

  DELETE FROM t1;
  INSERT INTO t1 SELECT * FROM t2;
  SELECT * FROM t1;

  CREATE TABLE t3(a PRIMARY KEY);
  CREATE TABLE t4(a PRIMARY KEY);

  INSERT INTO t4 VALUES('i');
  INSERT INTO t4 VALUES('ii');
  INSERT INTO t4 VALUES('iii');

  INSERT INTO t3 SELECT * FROM t4;
  SELECT * FROM t3;

  CREATE TABLE t41(a PRIMARY KEY) WITHOUT ROWID;
  INSERT INTO t41 VALUES('abc');
  CREATE TABLE t42(x);
  INSERT INTO t42 VALUES('xyz');
  SELECT t42.rowid FROM t41, t42;

  SELECT t42.rowid FROM t42, t41;

  CREATE TABLE t45(a PRIMARY KEY, b, c) WITHOUT ROWID;
  CREATE INDEX i45 ON t45(b);

  INSERT INTO t45 VALUES(2, 'one', 'x');
  INSERT INTO t45 VALUES(4, 'one', 'x');
  INSERT INTO t45 VALUES(6, 'one', 'x');
  INSERT INTO t45 VALUES(8, 'one', 'x');
  INSERT INTO t45 VALUES(10, 'one', 'x');

  INSERT INTO t45 VALUES(1, 'two', 'x');
  INSERT INTO t45 VALUES(3, 'two', 'x');
  INSERT INTO t45 VALUES(5, 'two', 'x');
  INSERT INTO t45 VALUES(7, 'two', 'x');
  INSERT INTO t45 VALUES(9, 'two', 'x');

  SELECT * FROM t45 WHERE b='two' AND a>4

  SELECT * FROM t45 WHERE b='one' AND a<8

  CREATE TABLE t46(a, b, c, d, PRIMARY KEY(a, b)) WITHOUT ROWID;
  WITH r(x) AS (
    SELECT 1 UNION ALL SELECT x+1 FROM r WHERE x<100
  )
  INSERT INTO t46 SELECT x / 20, x % 20, x % 10, x FROM r;

  CREATE INDEX i46 ON t46(c);

  CREATE TABLE t47(a, b UNIQUE PRIMARY KEY) WITHOUT ROWID;
  CREATE INDEX i47 ON t47(a);
  INSERT INTO t47 VALUES(1, 2);
  INSERT INTO t47 VALUES(2, 4);
  INSERT INTO t47 VALUES(3, 6);
  INSERT INTO t47 VALUES(4, 8);

  VACUUM;
  PRAGMA integrity_check;
  SELECT name FROM sqlite_master WHERE tbl_name = 't47';

  CREATE TABLE t48(
    a UNIQUE UNIQUE, 
    b UNIQUE, 
    PRIMARY KEY(a), 
    UNIQUE(a)
  ) WITHOUT ROWID;
  INSERT INTO t48 VALUES('a', 'b'), ('c', 'd'), ('e', 'f');
  VACUUM;
  PRAGMA integrity_check;
  SELECT name FROM sqlite_master WHERE tbl_name = 't48';

  CREATE TABLE t70a(
     a INT CHECK( rowid!=33 ),
     b TEXT PRIMARY KEY
  );
  INSERT INTO t70a(a,b) VALUES(99,'hello');

  CREATE TABLE t1(x INTEGER PRIMARY KEY UNIQUE, b) WITHOUT ROWID;
  CREATE INDEX t1x ON t1(x);
  INSERT INTO t1(x,b) VALUES('funny','buffalo');
  SELECT type, name, '|' FROM sqlite_master;

  CREATE TABLE t2(b, c, PRIMARY KEY(b,c)) WITHOUT ROWID;
  CREATE UNIQUE INDEX t2b ON t2(b);
  UPDATE t2 SET b=1 WHERE b='';

  DELETE FROM t2 WHERE b=1

  CREATE TABLE t1(a, b, c UNIQUE, PRIMARY KEY(a, b)) WITHOUT ROWID;
  INSERT INTO t1 VALUES('a', 'a', 1);
  INSERT INTO t1 VALUES('a', 'b', 2);
  INSERT INTO t1 VALUES('b', 'a', 3);
  INSERT INTO t1 VALUES('b', 'b', 4);

  CREATE TRIGGER t1_tr BEFORE UPDATE ON t1 BEGIN
    DELETE FROM t1 WHERE a = new.a;
  END;
  UPDATE t1 SET c = c+1 WHERE a = 'a';
  SELECT * FROM t1;

  CREATE TABLE t11(a TEXT PRIMARY KEY, b INT) WITHOUT ROWID;
  CREATE INDEX t11a ON t11(a COLLATE NOCASE);
  INSERT INTO t11(a,b) VALUES ('A',1),('a',2);
  PRAGMA integrity_check;
  SELECT a FROM t11 ORDER BY a COLLATE binary;

  DROP TABLE IF EXISTS t0;
  CREATE TABLE t0 (c0 INTEGER PRIMARY KEY DESC, c1 UNIQUE DEFAULT NULL) WITHOUT ROWID;
  INSERT INTO t0(c0) VALUES (1), (2), (3), (4), (5);
  REINDEX;
  PRAGMA integrity_check;

  DROP TABLE IF EXISTS t0;
  DROP TABLE IF EXISTS t1;
  CREATE TABLE t0(
    c0,
    c1 UNIQUE,
    PRIMARY KEY(c1, c1)
  ) WITHOUT ROWID;
  INSERT INTO t0(c0,c1) VALUES('abc','xyz');
  CREATE TABLE t1(
    c0,
    c1 UNIQUE,
    PRIMARY KEY(c1, c1)
  ) WITHOUT ROWID;
  INSERT INTO t1 SELECT * FROM t0;
  PRAGMA integrity_check;
  SELECT * FROM t0, t1;

    CREATE TABLE t1(a INT PRIMARY KEY) WITHOUT ROWID;
    INSERT INTO t1(a) VALUES(10);
    ALTER TABLE t1 ADD COLUMN b INT;
    SELECT * FROM t1 WHERE a=20 OR (a=10 AND b=10);
  
    CREATE TABLE dual AS SELECT 'X' AS dummy;
    EXPLAIN QUERY PLAN SELECT * FROM dual, t1 WHERE a=10 AND b=10;
  
    PRAGMA writable_schema=ON;
    CREATE TABLE sqlite_sequence (name PRIMARY KEY) WITHOUT ROWID;
    PRAGMA writable_schema=OFF;
    CREATE TABLE c1(x);
    INSERT INTO sqlite_sequence(name) VALUES('c0'),('c1'),('c2');
    ALTER TABLE c1 RENAME TO a;
    SELECT name FROM sqlite_sequence ORDER BY +name;
  