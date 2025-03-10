
    INSERT INTO t1 VALUES(1, 2, 3);
  
    ALTER TABLE t1 RENAME COLUMN b TO d;
  
    SELECT * FROM t1;
  
    SELECT sql FROM sqlite_master WHERE tbl_name='t1' AND sql!=''
  
  CREATE TABLE t3(a, b, c, d, e, f, g, h, i, j, k, l, m, FOREIGN KEY (b, c, d, e, f, g, h, i, j, k, l, m) REFERENCES t4);
 SELECT b FROM t3 
  ALTER TABLE t3 RENAME b TO biglongname;
  SELECT sql FROM sqlite_master WHERE name='t3';
 SELECT biglongname FROM t3 
  CREATE TABLE t4(x, y, z);
  CREATE TRIGGER ttt AFTER INSERT ON t4 WHEN new.y<0 BEGIN
    SELECT x, y, z FROM t4;
    DELETE FROM t4 WHERE y=32;
    UPDATE t4 SET x=y+1, y=0 WHERE y=32;
    INSERT INTO t4(x, y, z) SELECT 4, 5, 6 WHERE 0;
  END;
  INSERT INTO t4 VALUES(3, 2, 1);

  ALTER TABLE t4 RENAME y TO abc;
  SELECT sql FROM sqlite_master WHERE name='t4';

  SELECT * FROM t4;

{CREATE TRIGGER ttt AFTER INSERT ON t4 WHEN new.abc<0 BEGIN
    SELECT x, abc, z FROM t4;
    DELETE FROM t4 WHERE abc=32;
    UPDATE t4 SET x=abc+1, abc=0 WHERE abc=32;
    INSERT INTO t4(x, abc, z) SELECT 4, 5, 6 WHERE 0;
  END
  CREATE TABLE c1(a, b, FOREIGN KEY (a, b) REFERENCES p1(c, d));
  CREATE TABLE p1(c, d, PRIMARY KEY(c, d));
  PRAGMA foreign_keys = 1;
  INSERT INTO p1 VALUES(1, 2);
  INSERT INTO p1 VALUES(3, 4);

  ALTER TABLE p1 RENAME d TO "silly name";
  SELECT sql FROM sqlite_master WHERE name IN ('c1', 'p1');
 INSERT INTO c1 VALUES(1, 2); 
  CREATE TABLE c2(a, b, FOREIGN KEY (a, b) REFERENCES p1);

  ALTER TABLE p1 RENAME "silly name" TO reasonable;
  SELECT sql FROM sqlite_master WHERE name IN ('c1', 'c2', 'p1');

  CREATE TABLE t5(a, b, c);
  CREATE INDEX t5a ON t5(a);
  INSERT INTO t5 VALUES(1, 2, 3), (4, 5, 6);
  ANALYZE;

  ALTER TABLE t5 RENAME b TO big;
  SELECT big FROM t5;

  CREATE TABLE blob(
    rid INTEGER PRIMARY KEY,
    rcvid INTEGER,
    size INTEGER,
    uuid TEXT UNIQUE NOT NULL,
    content BLOB,
    CHECK( length(uuid)>=40 AND rid>0 )
  );

  ALTER TABLE "blob" RENAME COLUMN "rid" TO "a1";

  SELECT "where" FROM blob;

  CREATE TABLE c(x);
  INSERT INTO c VALUES(0);
  CREATE TABLE t6("col a", "col b", "col c");
  CREATE TRIGGER zzz AFTER UPDATE OF "col a", "col c" ON t6 BEGIN
    UPDATE c SET x=x+1;
  END;

  INSERT INTO t6 VALUES(0, 0, 0);
  UPDATE t6 SET "col c" = 1;
  SELECT * FROM c;

  ALTER TABLE t6 RENAME "col c" TO "col 3";

  UPDATE t6 SET "col 3" = 0;
  SELECT * FROM c;

  CREATE TABLE a1(x INTEGER, y TEXT, z BLOB, PRIMARY KEY(x));
  CREATE TABLE a2(a, b, c);
  CREATE VIEW v1 AS SELECT x, y, z FROM a1;

  ALTER TABLE a1 RENAME y TO yyy;
  SELECT sql FROM sqlite_master WHERE type='view';

  DROP VIEW v1;
  CREATE VIEW v2 AS SELECT x, x+x, a, a+a FROM a1, a2;

  ALTER TABLE a1 RENAME x TO xxx;

  SELECT sql FROM sqlite_master WHERE type='view';

  DROP TABLE a2;
  DROP VIEW v2;
  CREATE TABLE a2(a INTEGER PRIMARY KEY, b, c);
  CREATE VIEW v2 AS SELECT xxx, xxx+xxx, a, a+a FROM a1, a2;

  ALTER TABLE a1 RENAME xxx TO x;

  SELECT sql FROM sqlite_master WHERE type='view';

  CREATE TABLE b1(a, b, c);
  CREATE TABLE b2(x, y, z);

  CREATE VIEW vvv AS SELECT c+c || coalesce(c, c) FROM b1, b2 WHERE x=c GROUP BY c HAVING c>0;
  ALTER TABLE b1 RENAME c TO "a;b";
  SELECT sql FROM sqlite_master WHERE name='vvv';

  CREATE VIEW www AS SELECT b FROM b1 UNION ALL SELECT y FROM b2;
  ALTER TABLE b1 RENAME b TO bbb;
  SELECT sql FROM sqlite_master WHERE name='www';

  CREATE VIEW xxx AS SELECT a FROM b1 UNION SELECT x FROM b2 ORDER BY 1 COLLATE nocase;

  ALTER TABLE b2 RENAME x TO hello;
  SELECT sql FROM sqlite_master WHERE name='xxx';

      SELECT sql FROM sqlite_master WHERE sql!='' ORDER BY 1
    
      SELECT sql FROM sqlite_master ORDER BY 1
    
    CREATE TABLE x1(a, b, c);
    CREATE VIRTUAL TABLE e1 USING echo(x1);
  
    ALTER TABLE x1 RENAME b TO bbb;
    SELECT sql FROM sqlite_master;
  
    CREATE VIEW v1 AS SELECT e1.*, x1.c FROM e1, x1;
  
  CREATE TABLE t1(a, b);
  CREATE INDEX t1a ON t1(a);
  INSERT INTO t1 VALUES(1, 1), (2, 2), (3, 4);
  ANALYZE;

  SELECT sql FROM sqlite_master WHERE tbl_name = 'sqlite_stat1'

  CREATE VIEW v1 AS SELECT * FROM t1;
  CREATE VIEW v2(c, d) AS SELECT * FROM t1;

    CREATE VIRTUAL TABLE ft USING fts5(a, b, c);
  
  CREATE TABLE t2(x, y, z);

  CREATE TABLE x1(i INTEGER, t TEXT UNIQUE);
  CREATE TRIGGER tr1 AFTER INSERT ON x1 BEGIN
    SELECT * FROM nosuchtable;
  END;

  DROP TRIGGER tr1;
  CREATE INDEX x1i ON x1(i);
  SELECT sql FROM sqlite_master WHERE name='x1i';

  PRAGMA writable_schema = ON;
  UPDATE sqlite_master SET sql = 'CREATE INDEX x1i ON x1(j)' WHERE name='x1i';
  PRAGMA writable_schema = OFF;

  PRAGMA writable_schema = ON;
  UPDATE sqlite_master SET sql = '' WHERE name='x1i';
  PRAGMA writable_schema = OFF;

  PRAGMA writable_schema = ON;
  DELETE FROM sqlite_master WHERE name = 'x1i';
  PRAGMA writable_schema = OFF;

  CREATE TABLE data(x UNIQUE, y, z);

  CREATE TABLE ddd(sql, type, object, db, tbl, icol, znew, bquote);
  INSERT INTO ddd VALUES(
      'CREATE TABLE x1(i INTEGER, t TEXT)',
      'table', 'x1', 'main', 'x1', -1, 'zzz', 0
  ), (
      'CREATE TABLE x1(i INTEGER, t TEXT)',
      'table', 'x1', 'main', 'x1', 2, 'zzz', 0
  ), (
      'CREATE TABLE x1(i INTEGER, t TEXT)',
      'table', 'x1', 'main', 'notable', 0, 'zzz', 0
  ), (
      'CREATE TABLE x1(i INTEGER, t TEXT)',
      'table', 'x1', 'main', 'ddd', -1, 'zzz', 0
  );

  SELECT 
  sqlite_rename_column(sql, type, object, db, tbl, icol, znew, bquote, 0)
  FROM ddd;

  CREATE TABLE xxx(a, b, c);
  SELECT a AS d FROM xxx WHERE d=0;

  CREATE VIEW vvv AS SELECT a AS d FROM xxx WHERE d=0;
  ALTER TABLE xxx RENAME a TO xyz;

  SELECT sql FROM sqlite_master WHERE type='view';

  CREATE TABLE t1(a,b,c);
  CREATE TABLE t2(d,e,f);
  INSERT INTO t1 VALUES(1,2,3);
  INSERT INTO t2 VALUES(4,5,6);
  CREATE VIEW v4 AS SELECT a, d FROM t1, t2;
  SELECT * FROM v4;

  SELECT * FROM v4;

  CREATE UNIQUE INDEX t2d ON t2(d);
  CREATE TRIGGER tr1 AFTER INSERT ON t1 BEGIN
    INSERT INTO t2 VALUES(new.a, new.b, new.c)
      ON CONFLICT(d) DO UPDATE SET f = excluded.f;
  END;

  INSERT INTO t1 VALUES(4, 8, 456);
  SELECT * FROM t2;

  ALTER TABLE t2 RENAME COLUMN f TO "big f";
  INSERT INTO t1 VALUES(4, 0, 20456);
  SELECT * FROM t2;

  ALTER TABLE t1 RENAME COLUMN c TO "big c";
  INSERT INTO t1 VALUES(4, 0, 0);
  SELECT * FROM t2;

  CREATE VIEW temp.v5 AS SELECT "big c" FROM t1; 
  SELECT * FROM v5;

  ALTER TABLE t1 RENAME COLUMN "big c" TO reallybigc;

  SELECT * FROM v5;

  CREATE TABLE u7(x, y, z);
  CREATE TRIGGER u7t AFTER INSERT ON u7 BEGIN
    INSERT INTO u8 VALUES(new.x, new.y, new.z);
  END;

  CREATE TEMP TABLE uu7(x, y, z);
  CREATE TRIGGER uu7t AFTER INSERT ON uu7 BEGIN
    INSERT INTO u8 VALUES(new.x, new.y, new.z);
  END;

  ATTACH 'test.db2' AS aux;
  CREATE TABLE t1(a);
  CREATE TABLE aux.log(v);
  CREATE TEMP TRIGGER tr1 AFTER INSERT ON t1 BEGIN
    INSERT INTO log VALUES(new.a);
  END;
  INSERT INTO t1 VALUES(111);
  SELECT v FROM log;

  ALTER TABLE t1 RENAME a TO b;

  CREATE TABLE t1(a, b);
  CREATE TABLE t2(c, d);
  CREATE VIEW v2(e) AS SELECT coalesce(t2.c,t1.a) FROM t1, t2 WHERE t1.b=t2.d;

  ALTER TABLE t1 RENAME a TO f;
  SELECT sql FROM sqlite_master WHERE name = 'v2';

  CREATE TABLE t1(aaa,b,c,UNIQUE(aaA),PRIMARY KEY(aAa),UNIQUE(aAA));
  ALTER TABLE t1 RENAME aaa TO bbb;
  SELECT sql FROM sqlite_master WHERE name='t1';

  DROP TABLE t1;
  CREATE TABLE t1(aaa,b,c,UNIQUE(aaA),PRIMARY KEY(aAa),UNIQUE(aAA))WITHOUT ROWID;
  ALTER TABLE t1 RENAME aaa TO bbb;
  SELECT sql FROM sqlite_master WHERE name='t1';

  DROP TABLE t1;
  CREATE TABLE t1(aa UNIQUE,bb UNIQUE,cc UNIQUE,UNIQUE(aA),PRIMARY KEY(bB),UNIQUE(cC));
  ALTER TABLE t1 RENAME aa TO xx;
  ALTER TABLE t1 RENAME bb TO yy;
  ALTER TABLE t1 RENAME cc TO zz;
  SELECT sql FROM sqlite_master WHERE name='t1';

  CREATE TABLE t1(a, b, c NOT NULL);
  CREATE TRIGGER tr1 AFTER INSERT ON t1 WHEN new.c IS NOT NULL BEGIN
    SELECT c NOT NULL FROM t1;
  END;

  ALTER TABLE t1 RENAME c TO d;

  SELECT sql FROM sqlite_schema WHERE name IS 'tr1'

  CREATE TABLE t1(a, b);
  CREATE TABLE t2(c, othername, extra AS (c + 1));
  ALTER TABLE t1 RENAME a to othername;
  SELECT sql FROM sqlite_schema;

  CREATE TABLE t1(a, b);
  CREATE INDEX x1 on t1("c"=b);
  INSERT INTO t1 VALUES('a', 'a');
  INSERT INTO t1 VALUES('b', 'b');
  INSERT INTO t1 VALUES('c', 'c');
  ALTER TABLE t1 RENAME COLUMN a TO "c";
  PRAGMA integrity_check;

  CREATE TABLE t1('a'"b",c);
  CREATE INDEX i1 ON t1('a');
  INSERT INTO t1 VALUES(1,2), (3,4);
  ALTER TABLE t1 RENAME COLUMN a TO x;
  PRAGMA integrity_check;
  SELECT sql FROM sqlite_schema WHERE name='t1';


  CREATE TABLE t1(a INT, b REAL, c TEXT, d BLOB, e ANY);
  CREATE INDEX t1abx ON t1(a, b, a+b) WHERE c IS NOT NULL;
  CREATE VIEW t2 AS SELECT a+10, b*5.0, xyz FROM t1; -- unknown column "xyz"
  CREATE TABLE schema_copy(name TEXT, sql TEXT);
  INSERT INTO schema_copy(name,sql) SELECT name, sql FROM sqlite_schema WHERE sql IS NOT NULL;

  SELECT name, sql FROM sqlite_master
    EXCEPT SELECT name, sql FROM schema_copy;

  BEGIN;
  PRAGMA writable_schema=ON;
  ALTER TABLE t1 RENAME COLUMN e TO eeee;
  PRAGMA writable_schema=OFF;
  SELECT name FROM sqlite_master
     WHERE (name, sql) NOT IN (SELECT name, sql FROM schema_copy);
  ROLLBACK;

  DROP VIEW t2;
  CREATE TRIGGER r3 AFTER INSERT ON t1 BEGIN
    INSERT INTO t3(x,y) VALUES(new.a, new.b);
    INSERT INTO t4(p) VALUES(new.c);    -- no such table "t4"
  END;
  DELETE FROM schema_copy;
  INSERT INTO schema_copy(name,sql) SELECT name, sql FROM sqlite_schema WHERE sql IS NOT NULL;

  SELECT name, sql FROM sqlite_master
    EXCEPT SELECT name, sql FROM schema_copy;

  BEGIN;
  PRAGMA writable_schema=ON;
  ALTER TABLE t1 RENAME COLUMN e TO eeee;
  PRAGMA writable_schema=OFF;
  SELECT name FROM sqlite_master
     WHERE (name, sql) NOT IN (SELECT name, sql FROM schema_copy);
  ROLLBACK;

  CREATE TABLE t4(id INTEGER PRIMARY KEY, c1 INT, c2 INT);
  CREATE VIEW t4v1 AS SELECT id, c1, c99 FROM t4;
  DELETE FROM schema_copy;
  INSERT INTO schema_copy SELECT name, sql FROM sqlite_schema;
  BEGIN;
  PRAGMA writable_schema=ON;
  ALTER TABLE t4 RENAME to t4new;
  SELECT name FROM sqlite_schema WHERE (name,sql) NOT IN (SELECT * FROM schema_copy);
  ROLLBACK;
