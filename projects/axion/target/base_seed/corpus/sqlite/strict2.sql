
  CREATE TABLE t1(
    a INT,
    b INTEGER,
    c TEXT,
    d REAL,
    e BLOB
  ) STRICT;
  CREATE TABLE t1nn(
    a INT NOT NULL,
    b INTEGER NOT NULL,
    c TEXT NOT NULL,
    d REAL NOT NULL,
    e BLOB NOT NULL
  ) STRICT;
  CREATE TABLE t2(a,b,c,d,e);
  INSERT INTO t1(a,b,c,d,e) VALUES(1,1,'one',1.0,x'b1'),(2,2,'two',2.25,x'b2b2b2');
  PRAGMA writable_schema=on;
  UPDATE sqlite_schema SET rootpage=(SELECT rootpage FROM sqlite_schema WHERE name='t1');

  PRAGMA quick_check('t1');

  UPDATE t2 SET a=2.5 WHERE b=2;
  PRAGMA quick_check('t1');

  UPDATE t2 SET a='xyz' WHERE b=2;
  PRAGMA quick_check('t1');

  UPDATE t2 SET a=x'445566' WHERE b=2;
  PRAGMA quick_check('t1');

  UPDATE t2 SET a=2.5 WHERE b=2;
  PRAGMA quick_check('t1nn');

  UPDATE t2 SET a='xyz' WHERE b=2;
  PRAGMA quick_check('t1nn');

  UPDATE t2 SET a=x'445566' WHERE b=2;
  PRAGMA quick_check('t1nn');

  UPDATE t2 SET a=2 WHERE b=2;
  UPDATE t2 SET b=2.5 WHERE a=2;
  PRAGMA quick_check('t1');

  UPDATE t2 SET b='two' WHERE a=2;
  PRAGMA quick_check('t1');

  UPDATE t2 SET b=x'b0b1b2b3b4' WHERE a=2;
  PRAGMA quick_check('t1');

  UPDATE t2 SET b=NULL WHERE a=2;
  PRAGMA quick_check('t1');

  UPDATE t2 SET b=2.5 WHERE a=2;
  PRAGMA quick_check('t1nn');

  UPDATE t2 SET b=NULL WHERE a=2;
  PRAGMA quick_check('t1nn');

  UPDATE t2 SET b=2 WHERE a=2;
  UPDATE t2 SET c=9 WHERE a=2;
  PRAGMA quick_check('t1');

  UPDATE t2 SET c=9.5 WHERE a=2;
  PRAGMA quick_check('t1');

  UPDATE t2 SET c=x'b0b1b2b3b4' WHERE a=2;
  PRAGMA quick_check('t1');

  UPDATE t2 SET c='two' WHERE a=2;
  UPDATE t2 SET d=9 WHERE a=2;
  PRAGMA quick_check('t1');

  UPDATE t2 SET d='nine' WHERE a=2;
  PRAGMA quick_check('t1');

  UPDATE t2 SET d=x'b0b1b2b3b4' WHERE a=2;
  PRAGMA quick_check('t1');

  UPDATE t2 SET d=2.5 WHERE a=2;
  UPDATE t2 SET e=9 WHERE a=2;
  PRAGMA quick_check('t1');

  UPDATE t2 SET e=9.5 WHERE a=2;
  PRAGMA quick_check('t1');

  UPDATE t2 SET e='hello' WHERE a=2;
  PRAGMA quick_check('t1');

  DROP TABLE IF EXISTS t2;
  CREATE TABLE t2(a INT, b ANY) STRICT;
  INSERT INTO t2(a,b) VALUES(1,2),(3,4.5),(5,'six'),(7,x'8888'),(9,NULL);
  PRAGMA integrity_check(t2);

  DROP TABLE IF EXISTS t1;
  CREATE TABLE t1(id ANY PRIMARY KEY, x TEXT);
  INSERT INTO t1 VALUES(1,2),('three','four'),(x'5555','six'),(NULL,'eight');
  PRAGMA writable_schema=ON;
  UPDATE sqlite_schema SET sql=(sql||'STRICT') WHERE name='t1';
  PRAGMA writable_schema=RESET;
  PRAGMA integrity_check(t1);
