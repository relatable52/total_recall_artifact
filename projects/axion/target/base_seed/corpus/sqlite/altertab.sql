
  CREATE TABLE t1(a, b, CHECK(t1.a != t1.b));

  CREATE TABLE t2(a, b);
  CREATE INDEX t2expr ON t2(a) WHERE t2.b>0;

  SELECT sql FROM sqlite_master

  ALTER TABLE t1 RENAME TO t1new;

  CREATE TABLE t3(c, d);
  ALTER TABLE t3 RENAME TO t3new;
  DROP TABLE t3new;

  SELECT sql FROM sqlite_master

  ALTER TABLE t2 RENAME TO t2new;

  SELECT sql FROM sqlite_master

    CREATE TABLE abc(a, b, c);
    INSERT INTO abc VALUES(1, 2, 3);
    CREATE VIRTUAL TABLE eee USING echo('abc');
    SELECT * FROM eee;
  
    ALTER TABLE eee RENAME TO fff;
    SELECT * FROM fff;
  
  CREATE TABLE txx(a, b, c);
  INSERT INTO txx VALUES(1, 2, 3);
  CREATE VIEW vvv AS SELECT main.txx.a, txx.b, c FROM txx;
  CREATE VIEW uuu AS SELECT main.one.a, one.b, c FROM txx AS one;
  CREATE VIEW temp.ttt AS SELECT main.txx.a, txx.b, one.b, main.one.a FROM txx AS one, txx;

  SELECT * FROM vvv;

  ALTER TABLE txx RENAME TO "t xx";
  SELECT * FROM vvv;

  SELECT sql FROM sqlite_master WHERE name='vvv';

  SELECT * FROM uuu;

  SELECT sql FROM sqlite_master WHERE name='uuu';;

  SELECT * FROM ttt;

  SELECT sql FROM sqlite_temp_master WHERE name='ttt';

  CREATE table t1(x, y);
  CREATE table t2(a, b);

  CREATE TRIGGER tr1 AFTER INSERT ON t1 BEGIN
    SELECT t1.x, * FROM t1, t2;
    INSERT INTO t2 VALUES(new.x, new.y);
  END;

  INSERT INTO t1 VALUES(1, 1);
  ALTER TABLE t1 RENAME TO t11;
  INSERT INTO t11 VALUES(2, 2);
  ALTER TABLE t2 RENAME TO t22;
  INSERT INTO t11 VALUES(3, 3);

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

  SELECT  *  FROM v

  DROP VIEW v;
  CREATE VIEW temp.vv AS SELECT one.a, one.b, t2.a, t2.b FROM t1 AS one, t2;
  SELECT * FROM vv;

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
  
    SELECT 
    sqlite_rename_table(db, 0, 0, sql, zOld, zNew, bTemp)
    FROM ddd;
  
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

  CREATE TABLE t1(a, b, c);
  CREATE VIEW v1 AS SELECT * FROM t2;

  DROP VIEW v1;
  CREATE TRIGGER tr AFTER INSERT ON t1 BEGIN
    INSERT INTO t2 VALUES(new.a);
  END;

  DROP TRIGGER tr;

  ATTACH 'test.db2' AS aux;
  CREATE TRIGGER tr AFTER INSERT ON t1 WHEN new.a IS NULL BEGIN SELECT 1, 2, 3; END;

  CREATE TABLE aux.t1(x);
  CREATE TEMP TRIGGER tr AFTER INSERT ON aux.t1 BEGIN SELECT 1, 2, 3; END;

  ALTER TABLE main.t1 RENAME TO t3;

  SELECT sql FROM sqlite_temp_master;
  SELECT sql FROM sqlite_master WHERE type='trigger';

    CREATE VIRTUAL TABLE fff USING fts5(x, y, z);
  
    BEGIN;
      INSERT INTO fff VALUES('a', 'b', 'c');
      ALTER TABLE fff RENAME TO ggg;
    COMMIT;
  
    SELECT * FROM ggg;
  
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

  CREATE TABLE t1(a);
  CREATE TABLE t2(w);
  CREATE TRIGGER temp.r1 AFTER INSERT ON main.t2 BEGIN
    INSERT INTO t1(a) VALUES(new.w);
  END;
  CREATE TEMP TABLE t2(x);

  ALTER TABLE main.t2 RENAME TO t3;

  INSERT INTO t3 VALUES('WWW');
  SELECT * FROM t1;

  CREATE TABLE t1(x, y);
  CREATE TABLE t2(a, b);
  CREATE TABLE log(c);
  CREATE TRIGGER tr1 AFTER INSERT ON t1 BEGIN
    INSERT INTO log SELECT y FROM t1, t2;
  END;

  INSERT INTO t1 VALUES(1, 2);

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
  
  CREATE TABLE t1(a, b, c);
  CREATE VIEW v1 AS SELECT * FROM t1;
  CREATE TRIGGER xyz AFTER INSERT ON t1 BEGIN
    SELECT a, b FROM v1;
  END;

  ALTER TABLE t1 RENAME TO tt1;

  CREATE TABLE t1(a integer NOT NULL PRIMARY KEY);
  CREATE VIEW v1 AS SELECT a FROM t1;
  CREATE TRIGGER tr1 INSTEAD OF INSERT ON v1 BEGIN 
    UPDATE t1 SET a = NEW.a;
  END;
  CREATE TRIGGER tr2 INSTEAD OF INSERT ON v1 BEGIN 
    SELECT new.a;
  END;
  CREATE TABLE t2 (b);

  INSERT INTO v1 VALUES(1);
  ALTER TABLE t2 RENAME TO t3;

  CREATE TABLE x(f1 integer NOT NULL);
  CREATE VIEW y AS SELECT f1 AS f1 FROM x;
  CREATE TRIGGER t INSTEAD OF UPDATE OF f1 ON y BEGIN 
    UPDATE x SET f1 = NEW.f1; 
  END;
  CREATE TABLE z (f1 integer NOT NULL PRIMARY KEY);
  ALTER TABLE z RENAME TO z2;

  INSERT INTO x VALUES(1), (2), (3);
  ALTER TABLE x RENAME f1 TO f2;
  SELECT * FROM x;

  UPDATE y SET f1 = 'x' WHERE f1 = 1;
  SELECT * FROM x;

  SELECT sql FROM sqlite_master WHERE name = 'y';

    CREATE VIRTUAL TABLE y1 USING fts3;
    VACUUM;
  
    ALTER TABLE y1 RENAME TO z1;
  
    SELECT * FROM z1_segments;
  
  CREATE TABLE sqlite1234 (id integer);
  ALTER TABLE sqlite1234 RENAME TO User;
  SELECT name, sql FROM sqlite_master WHERE sql IS NOT NULL;

  CREATE TABLE t0 (c0 INTEGER, PRIMARY KEY(c0)) WITHOUT ROWID;

  ALTER TABLE t0 RENAME COLUMN c0 TO c1;

  SELECT sql FROM sqlite_master;

  CREATE TABLE t0 (c0 INTEGER, PRIMARY KEY(c0));

  ALTER TABLE t0 RENAME COLUMN c0 TO c1;

  SELECT sql FROM sqlite_master;

  CREATE TABLE t1(x);
  CREATE VIEW t2 AS SELECT 1 FROM t1, (t1 AS a0, t1);
  ALTER TABLE t1 RENAME TO t3;
  SELECT sql FROM sqlite_master;

  INSERT INTO t3(x) VALUES(123);
  SELECT * FROM t2;

  INSERT INTO t3(x) VALUES('xyz');
  SELECT * FROM t2;

  CREATE TABLE a(a);
  CREATE VIEW b AS SELECT(SELECT *FROM c JOIN a USING(d, a, a, a) JOIN a) IN();

  ALTER TABLE a RENAME a TO e;

  CREATE TABLE a(b);
  CREATE VIEW c AS 
      SELECT NULL INTERSECT 
      SELECT NULL ORDER BY
      likelihood(NULL, (d, (SELECT c)));

  CREATE TABLE t1(a INT, b TEXT NOT NULL);
  INSERT INTO t1 VALUES(1,2),('a','b');
  BEGIN;
  PRAGMA writable_schema=ON;
  UPDATE sqlite_schema SET sql='CREATE TABLE t1(a INT, b TEXT)' WHERE name LIKE 't1';
  PRAGMA schema_version=1234;
  COMMIT;
  PRAGMA integrity_check;

  ALTER TABLE t1 ADD COLUMN c INT DEFAULT 78;
  SELECT * FROM t1;

  CREATE TABLE gigo(a text);
  CREATE TABLE idx(x text COLLATE compare64);
  CREATE VIEW v1 AS SELECT * FROM idx WHERE x='abc';

  alter table gigo rename to ggiiggoo;
  alter table idx rename to idx2;

  SELECT sql FROM sqlite_master;

  ALTER TABLE idx2 RENAME x TO y;
  SELECT sql FROM sqlite_master;

  CREATE TABLE t1(a, b);
  CREATE TRIGGER AFTER INSERT ON t1 BEGIN
    INSERT INTO nosuchtable VALUES(new.a) ON CONFLICT(a) DO NOTHING;
  END;

  CREATE TABLE t1(a, b);
  CREATE TRIGGER AFTER INSERT ON t1 BEGIN
    INSERT INTO v1 VALUES(new.a) ON CONFLICT(a) DO NOTHING;
  END;
  CREATE VIEW v1 AS SELECT * FROM nosuchtable;

  CREATE TABLE xx(x);
  CREATE VIEW v3(b) AS WITH b AS (SELECT b FROM (SELECT * FROM t2)) VALUES(1);

  CREATE TABLE t1(k,v);
  CREATE TABLE t2_a(k,v);
  CREATE VIEW t2 AS SELECT * FROM t2_a;
  CREATE TRIGGER r2 AFTER INSERT ON t1 BEGIN
    UPDATE t1 
       SET (k,v)=((WITH cte1(a) AS (SELECT 1 FROM t2) SELECT t2.k FROM t2, cte1),1);
  END;
  ALTER TABLE t1 RENAME TO t1x;
  INSERT INTO t2_a VALUES(2,3);
  INSERT INTO t1x VALUES(98,99);
  SELECT * FROM t1x;


 create table t_sa (
 c_muyat INTEGER NOT NULL,
 c_d4u TEXT 
 );

 create table t2 ( abc );

 CREATE TRIGGER trig AFTER DELETE ON t_sa
   BEGIN
   DELETE FROM t_sa WHERE (
       SELECT 123 FROM t2
       WINDOW oamat7fzf AS ( PARTITION BY t_sa.c_d4u )
   );
   END;

  alter table t_sa rename column c_muyat to c_dg;

  CREATE TABLE t1(a, b, c);
  INSERT INTO t1 VALUES('a', 'b', 'c');

  CREATE VIEW v0 AS
    WITH p AS ( SELECT 1 FROM t1 ),
         g AS ( SELECT 1 FROM p, t1 )
    SELECT 1 FROM g;

  SELECT * FROM v0

  ALTER TABLE t1 RENAME TO t2

  SELECT sql FROM sqlite_schema WHERE name='v0'

  CREATE VIEW v2 AS
    WITH p AS ( SELECT 1 FROM t2 ),
         g AS ( SELECT 1 FROM (
           WITH i AS (SELECT 1 FROM p, t2)
           SELECT * FROM i
         )
    )
    SELECT 1 FROM g;

    SELECT * FROM v2;

  ALTER TABLE t2 RENAME TO t3;

  SELECT sql FROM sqlite_schema WHERE name='v2'

  CREATE TABLE t1(a);
  CREATE TABLE t2(b,c);
  CREATE TABLE t4(b,c);
  INSERT INTO t2 VALUES(1,2),(1,3),(2,5);
  INSERT INTO t4 VALUES(1,2),(1,3),(2,5);

  CREATE VIEW v3 AS 
    WITH RECURSIVE t3(x,y,z) AS (
        SELECT b,c,NULL FROM t4
        UNION
        SELECT x,y,NULL FROM t3, t2
    )
  SELECT * FROM t3 AS xyz;

  SELECT * FROM v3

  ALTER TABLE t1 RENAME a TO a2; -- fails in v3

  ALTER TABLE t2 RENAME TO t5;

  SELECT sql FROM sqlite_schema WHERE name='v3'

  CREATE TABLE t1(a,b,c,d,e,f);
  CREATE TABLE t2(a,b,c);
  CREATE INDEX t1abc ON t1(a,b,c+d+e);
  CREATE VIEW v1(x,y) AS 
    SELECT t1.b,t2.b FROM t1,t2 WHERE t1.a=t2.a 
      GROUP BY 1 HAVING t2.c NOT NULL LIMIT 10;
  CREATE TRIGGER r1 AFTER INSERT ON t1 WHEN 'no' NOT NULL BEGIN
    INSERT INTO t2(a,a,b,c) VALUES(new.b,new.a,new.c-7);
    WITH c1(x) AS (
      VALUES(0) 
        UNION ALL 
      SELECT current_time+x FROM c1 WHERE x 
        UNION ALL 
      SELECT 1+x FROM c1 WHERE x<1
    ), c2(x) AS (VALUES(0),(1))
    SELECT * FROM c1 AS x1, c2 AS x2, (
      SELECT x+1 FROM c1 WHERE x IS NOT TRUE 
        UNION ALL 
      SELECT 1+x FROM c1 WHERE 1<x
    ) AS x3, c2 x5;
  END;

  ALTER TABLE t1 RENAME TO t1x;

  SELECT sql FROM sqlite_schema ORDER BY rowid

  CREATE TABLE t1(q);
  CREATE VIEW vvv AS WITH x AS (WITH y AS (SELECT * FROM x) SELECT 1) SELECT 1;

  SELECT * FROM vvv;

  ALTER TABLE t1 RENAME TO t1x;

  ALTER TABLE t1x RENAME q TO x;

  CREATE TABLE t1(a TEXT);
  INSERT INTO t1(a) VALUES('abc'),('def'),(NULL);
  CREATE TABLE t2(b TEXT);
  CREATE TRIGGER r3 AFTER INSERT ON t1 BEGIN
   UPDATE t2 SET (b,a)=(SELECT 1) FROM t1 JOIN t2 ON (SELECT * FROM (SELECT a));
  END;

  SELECT quote(a) FROM t1 ORDER BY +a;
