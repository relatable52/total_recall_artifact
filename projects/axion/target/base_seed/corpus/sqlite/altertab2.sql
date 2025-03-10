
    CREATE TABLE rr(a, b);
    CREATE VIRTUAL TABLE ff USING fts5(a, b);
    CREATE TRIGGER tr1 AFTER INSERT ON rr BEGIN
      INSERT INTO ff VALUES(new.a, new.b);
    END;
    INSERT INTO rr VALUES('hello', 'world');
    SELECT * FROM ff;
  
    ALTER TABLE ff RENAME TO ffff;
  
    INSERT INTO rr VALUES('in', 'tcl');
    SELECT * FROM ffff;
  
  CREATE TABLE p1(a PRIMARY KEY, b);
  CREATE TABLE c1(x REFERENCES p1);
  CREATE TABLE c2(x, FOREIGN KEY (x) REFERENCES p1);
  CREATE TABLE c3(x, FOREIGN KEY (x) REFERENCES p1(a));

  ALTER TABLE p1 RENAME TO p2;
  SELECT sql FROM sqlite_master WHERE name LIKE 'c%';

  PRAGMA legacy_alter_table = 1;
  ALTER TABLE p2 RENAME TO p3;
  SELECT sql FROM sqlite_master WHERE name LIKE 'c%';

  ALTER TABLE p3 RENAME TO p2;
  PRAGMA foreign_keys = 1;
  ALTER TABLE p2 RENAME TO p3;
  SELECT sql FROM sqlite_master WHERE name LIKE 'c%';

    ALTER TABLE log_entry RENAME TO newname;
    SELECT sql FROM sqlite_master;
  
    ALTER TABLE log_entry RENAME col1 TO newname;
    SELECT sql FROM sqlite_master;
  
  CREATE TABLE t1(a,b,c,d,e,f);
  CREATE TRIGGER r1 AFTER INSERT ON t1 WHEN new.a NOT NULL BEGIN
    UPDATE t1 SET (c,d)=(a,b);
  END;

  ALTER TABLE t1 RENAME TO t1x;
  SELECT sql FROM sqlite_master WHERE type = 'trigger';

  ALTER TABLE t1x RENAME a TO aaa;
  SELECT sql FROM sqlite_master WHERE type = 'trigger';

  ALTER TABLE t1x RENAME d TO ddd;
  SELECT sql FROM sqlite_master WHERE type = 'trigger';

  CREATE TABLE t2(a);
  CREATE TRIGGER r2 AFTER INSERT ON t2 WHEN new.a NOT NULL BEGIN
    SELECT a, sum(a) OVER w1 FROM t2
      WINDOW w1 AS (
        PARTITION BY a ORDER BY a 
        ROWS BETWEEN 2 PRECEDING AND 3 FOLLOWING
      ),
      w2 AS (
        PARTITION BY a
        ORDER BY rowid ROWS BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING
      );
  END;

  INSERT INTO t2 VALUES(1);

  ALTER TABLE t2 RENAME TO t2x;
  SELECT sql FROM sqlite_master WHERE name = 'r2';

  ALTER TABLE t2x RENAME a TO aaaa;
  SELECT sql FROM sqlite_master WHERE name = 'r2';

  INSERT INTO t2x VALUES(1);

  CREATE TABLE t3(a,b,c,d);
  CREATE TRIGGER r3 AFTER INSERT ON t3 WHEN new.a NOT NULL BEGIN
    SELECT a,b,c FROM t3 EXCEPT SELECT a,b,c FROM t3 ORDER BY a;
    SELECT rowid, * FROM t3;
  END;

  ALTER TABLE t3 RENAME TO t3x;
  SELECT sql FROM sqlite_master WHERE name = 'r3';

  ALTER TABLE t3x RENAME a TO abcd;
  SELECT sql FROM sqlite_master WHERE name = 'r3';

  CREATE TABLE t1(a,b,c,d,e,f);
  INSERT INTO t1 VALUES(1,2,3,4,5,6);
  CREATE TABLE t2(x,y,z);

  SELECT a,b,c FROM t1 UNION SELECT d,e,f FROM t1 ORDER BY b,c;

  CREATE TRIGGER r1 AFTER INSERT ON t1 BEGIN
    INSERT INTO t2
    SELECT a,b,c FROM t1 UNION SELECT d,e,f FROM t1 ORDER BY b,c;
  END;
  INSERT INTO t1 VALUES(2,3,4,5,6,7);
  SELECT * FROM t2;

  ALTER TABLE t1 RENAME TO xyzzy;
  SELECT sql FROM sqlite_master WHERE name='r1'

  ALTER TABLE xyzzy RENAME c TO ccc;
  SELECT sql FROM sqlite_master WHERE name='r1'

  CREATE TABLE t1(a, b, c); 
  CREATE TABLE t2(a, b, c); 
  CREATE TABLE t3(d, e, f);
  CREATE VIEW v1 AS SELECT * FROM t1;
  CREATE TRIGGER tr AFTER INSERT ON t3 BEGIN
    UPDATE t2 SET a = new.d;
    SELECT a, b, c FROM v1;
  END;

  INSERT INTO t3 VALUES(1, 2, 3);

  INSERT INTO t3 VALUES(4, 5, 6);

  CREATE TABLE t4(a, b);
  CREATE VIEW v4 AS SELECT * FROM t4 WHERE (a=1 AND 0) OR b=2;

  ALTER TABLE t4 RENAME a TO c;
  SELECT sql FROM sqlite_master WHERE name = 'v4'
