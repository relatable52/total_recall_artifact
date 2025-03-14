
  PRAGMA legacy_alter_table = 1;
  CREATE TABLE t1(a, b, CHECK(t1.a != t1.b));
  CREATE TABLE t2(a, b);
  CREATE INDEX t2expr ON t2(a) WHERE t2.b>0;

  SELECT sql FROM sqlite_master

  CREATE TABLE t3(c, d);
  ALTER TABLE t3 RENAME TO t3new;
  DROP TABLE t3new;

  SELECT sql FROM sqlite_master

  SELECT sql FROM sqlite_master

    PRAGMA legacy_alter_table = 1;
    CREATE TABLE abc(a, b, c);
    INSERT INTO abc VALUES(1, 2, 3);
    CREATE VIRTUAL TABLE eee USING echo('abc');
    SELECT * FROM eee;
  
    ALTER TABLE eee RENAME TO fff;
    SELECT * FROM fff;
  
  PRAGMA legacy_alter_table = 1;
  CREATE TABLE txx(a, b, c);
  INSERT INTO txx VALUES(1, 2, 3);
  CREATE VIEW vvv AS SELECT main.txx.a, txx.b, c FROM txx;
  CREATE VIEW uuu AS SELECT main.one.a, one.b, c FROM txx AS one;
  CREATE VIEW temp.ttt AS SELECT main.txx.a, txx.b, one.b, main.one.a FROM txx AS one, txx;

  SELECT * FROM vvv;

  ALTER TABLE txx RENAME TO "t xx";

  SELECT sql FROM sqlite_master WHERE name='vvv';

  SELECT sql FROM sqlite_master WHERE name='uuu';;

  SELECT sql FROM sqlite_temp_master WHERE name='ttt';

  PRAGMA legacy_alter_table = 1;
  CREATE table t1(x, y);
  CREATE table t2(a, b);

  CREATE TRIGGER tr1 AFTER INSERT ON t1 BEGIN
    SELECT t1.x, * FROM t1, t2;
    INSERT INTO t2 VALUES(new.x, new.y);
  END;

  INSERT INTO t1 VALUES(1, 1);
  ALTER TABLE t1 RENAME TO t11;

  ALTER TABLE t11 RENAME TO t1;
  ALTER TABLE t2 RENAME TO t22;

  PRAGMA legacy_alter_table = 1;
  CREATE TABLE t9(a, b, c);
  CREATE TABLE t10(a, b, c);
  CREATE TEMP TABLE t9(a, b, c);

  CREATE TRIGGER temp.t9t AFTER INSERT ON temp.t9 BEGIN
    INSERT INTO t10 VALUES(new.a, new.b, new.c);
  END;

  INSERT INTO temp.t9 VALUES(1, 2, 3);
  SELECT * FROM t10;

  ALTER TABLE temp.t9 RENAME TO 't1234567890'

  CREATE TABLE t1(a, b);
  CREATE TABLE t2(a, b);
  INSERT INTO t1 VALUES(1, 2);
  INSERT INTO t2 VALUES(3, 4);
  CREATE VIEW v AS SELECT one.a, one.b, t2.a, t2.b FROM t1 AS one, t2;
  SELECT * FROM v;

  ALTER TABLE t2 RENAME TO one;

  ALTER TABLE one RENAME TO t2;
  DROP VIEW v;
  CREATE VIEW temp.vv AS SELECT one.a, one.b, t2.a, t2.b FROM t1 AS one, t2;
  SELECT * FROM vv;

  ALTER TABLE t2 RENAME TO one;

    CREATE VIRTUAL TABLE x1 USING tcl(tcl_command);
  
    ALTER TABLE x1 RENAME TO x2;
    SELECT sql FROM sqlite_master WHERE name = 'x2'
  
    CREATE TABLE ddd(db, sql, zOld, zNew, bTemp);
    INSERT INTO ddd VALUES(
        'main', 'CREATE TABLE x1(i INTEGER, t TEXT)', 'ddd', NULL, 0
    ), (
        'main', 'CREATE TABLE x1(i INTEGER, t TEXT)', NULL, 'eee', 0
    ), (
        'main', NULL, 'ddd', 'eee', 0
    );
  
  PRAGMA legacy_alter_table = 1;
  ATTACH 'test.db2' AS aux;
  PRAGMA foreign_keys = on;
  CREATE TABLE aux.p1(a INTEGER PRIMARY KEY, b);
  CREATE TABLE aux.c1(x INTEGER PRIMARY KEY, y REFERENCES p1(a));
  INSERT INTO aux.p1 VALUES(1, 1);
  INSERT INTO aux.p1 VALUES(2, 2);
  INSERT INTO aux.c1 VALUES(NULL, 2);
  CREATE TABLE aux.c2(x INTEGER PRIMARY KEY, y REFERENCES c1(a));

  ALTER TABLE aux.p1 RENAME TO ppp;

  INSERT INTO aux.c1 VALUES(NULL, 1);
  SELECT sql FROM aux.sqlite_master WHERE name = 'c1';

  PRAGMA legacy_alter_table = 1;
  CREATE TABLE t1(a, b, c);
  CREATE VIEW v1 AS SELECT * FROM t2;

  ALTER TABLE t1 RENAME TO t3;

  ALTER TABLE t3 RENAME TO t1;

  DROP VIEW v1;
  CREATE TRIGGER tr AFTER INSERT ON t1 BEGIN
    INSERT INTO t2 VALUES(new.a);
  END;

  ALTER TABLE t1 RENAME TO t3;

  ALTER TABLE t3 RENAME TO t1;
  DROP TRIGGER tr;

  ATTACH 'test.db2' AS aux;
  CREATE TRIGGER tr AFTER INSERT ON t1 WHEN new.a IS NULL BEGIN SELECT 1, 2, 3; END;

  CREATE TABLE aux.t1(x);
  CREATE TEMP TRIGGER tr AFTER INSERT ON aux.t1 BEGIN SELECT 1, 2, 3; END;

  ALTER TABLE main.t1 RENAME TO t3;

  SELECT sql FROM sqlite_temp_master;
  SELECT sql FROM sqlite_master WHERE type='trigger';

    PRAGMA legacy_alter_table = 1;
    CREATE VIRTUAL TABLE fff USING fts5(x, y, z);
  
    BEGIN;
      INSERT INTO fff VALUES('a', 'b', 'c');
      ALTER TABLE fff RENAME TO ggg;
    COMMIT;
  
    SELECT * FROM ggg;
  
  PRAGMA legacy_alter_table = 1;
  ATTACH 'test.db2' AS aux;
  CREATE TABLE aux.t1(a, b, c);
  CREATE TABLE main.t1(a, b, c);
  CREATE TEMP TRIGGER tr AFTER INSERT ON aux.t1 BEGIN
    SELECT trigger(new.a, new.b, new.c);
  END;

  INSERT INTO main.t1 VALUES(1, 2, 3);
  INSERT INTO aux.t1 VALUES(4, 5, 6);

  SELECT name, tbl_name FROM sqlite_temp_master;

  ALTER TABLE main.t1 RENAME TO t2;
  SELECT name, tbl_name FROM sqlite_temp_master;

  ALTER TABLE aux.t1 RENAME TO t2;
  SELECT name, tbl_name FROM sqlite_temp_master;

  INSERT INTO aux.t2 VALUES(7, 8, 9);

  PRAGMA legacy_alter_table = 1;
  CREATE TABLE t1(a);
  CREATE TABLE t2(w);
  CREATE TRIGGER temp.r1 AFTER INSERT ON main.t2 BEGIN
    INSERT INTO t1(a) VALUES(new.w);
  END;
  CREATE TEMP TABLE t2(x);

  ALTER TABLE main.t2 RENAME TO t3;

  INSERT INTO t3 VALUES('WWW');
  SELECT * FROM t1;

    PRAGMA legacy_alter_table = 1;
    CREATE VIRTUAL TABLE rt USING rtree(id, minx, maxx, miny, maxy);

    CREATE TABLE "mytable" ( "fid" INTEGER PRIMARY KEY, "geom" BLOB);

    CREATE TRIGGER tr1 AFTER UPDATE OF "geom" ON "mytable" 
          WHEN OLD."fid" = NEW."fid" AND NEW."geom" IS NULL BEGIN 
      DELETE FROM rt WHERE id = OLD."fid"; 
    END;

    INSERT INTO mytable VALUES(1, X'abcd');
  
    UPDATE mytable SET geom = X'1234'
  
    ALTER TABLE mytable RENAME TO mytable_renamed;
  
    CREATE TRIGGER tr2 AFTER INSERT ON mytable_renamed BEGIN
      DELETE FROM rt WHERE id=(SELECT min(id) FROM rt);
    END;
  
    ALTER TABLE mytable_renamed RENAME TO mytable2;
  
  PRAGMA legacy_alter_table = 1;
  CREATE TABLE t1(a, b, c);
  CREATE VIEW v1 AS SELECT * FROM t1;
  CREATE TRIGGER xyz AFTER INSERT ON t1 BEGIN
    SELECT a, b FROM v1;
  END;

  ALTER TABLE t1 RENAME TO tt1;
