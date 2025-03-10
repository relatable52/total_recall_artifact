
    CREATE TABLE t15(a INTEGER PRIMARY KEY, b);
    INSERT INTO t15(a,b) VALUES(10,'abc'),(20,'def'),(30,'ghi');
    ALTER TABLE t15 ADD COLUMN c;
    CREATE INDEX t15c ON t15(c);
    INSERT INTO t15(a,b)
      VALUES(5,'zyx'),(15,'wvu'),(25,'tsr'),(35,'qpo');
    UPDATE t15 SET c=printf('y%d',a) WHERE c IS NULL;
    SELECT a,b,c,'|' FROM t15 ORDER BY a;
  
  CREATE TABLE t16(a INTEGER PRIMARY KEY ON CONFLICT REPLACE, b UNIQUE);
  INSERT INTO t16(a,b) VALUES(1,2),(3,4),(5,6);
  UPDATE t16 SET a=a;
  SELECT * FROM t16 ORDER BY +a;

  DROP TABLE IF EXISTS t1;
  CREATE TABLE t1(x,y);
  INSERT INTO t1(x) VALUES(1);
  CREATE INDEX t1x1 ON t1(1) WHERE 3;
  UPDATE t1 SET x=2, y=3 WHERE 3;
  SELECT * FROM t1;

  PRAGMA encoding = 'UTF16';
  CREATE TABLE t0(c0 REAL, c1);
  INSERT INTO t0(c0,c1) VALUES('xyz',11),('uvw',22);
  CREATE INDEX i0 ON t0(c1) WHERE c0 GLOB 3;
  CREATE INDEX i1 ON t0(c0,c1) WHERE typeof(c0)='text' AND typeof(c1)='integer';
  UPDATE t0 SET c1=345;
  SELECT * FROM t0;

  PRAGMA encoding = 'utf16';
  CREATE TABLE t0(c0 TEXT);
  CREATE INDEX i0 ON t0(0 LIKE COALESCE(c0, 0));
  INSERT INTO t0(c0) VALUES (0), (0);
  SELECT * FROM t0;

  CREATE TABLE t1(
   a TEXT,
   b INTEGER PRIMARY KEY UNIQUE
  ); 
  INSERT INTO t1 VALUES(1,2);
  UPDATE t1 SET a = quote(b) WHERE b>=2;
  SELECT * FROM t1;

  PRAGMA recursive_triggers = true;
  CREATE TABLE t1(a UNIQUE ON CONFLICT REPLACE, b);
  INSERT INTO t1(a,b) VALUES(4,12),(9,13);
  CREATE INDEX i0 ON t1(b);
  CREATE TRIGGER tr0 DELETE ON t1 BEGIN
    UPDATE t1 SET b = a;
  END;
  PRAGMA integrity_check;

  PRAGMA integrity_check;

  CREATE TABLE t1 (vkey INTEGER, c5 INTEGER);
  INSERT INTO t1 VALUES(3,NULL),(6,-54);

  BEGIN;
  UPDATE t1 SET vkey = 100 WHERE c5 is null;
  SELECT * FROM t1 ORDER BY vkey, c5;
  ROLLBACK;

  BEGIN;
  UPDATE t1 SET vkey = 100 WHERE NOT (-10*(select min(vkey) from t1) >= c5);
  SELECT * FROM t1 ORDER BY vkey, c5;
  ROLLBACK;

  BEGIN;
  UPDATE t1 SET vkey = 100 WHERE c5 is null OR NOT (-10*(select min(vkey) from t1) >= c5);
  SELECT * FROM t1 ORDER BY vkey, c5;
  ROLLBACK;
