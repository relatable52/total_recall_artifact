
  CREATE TABLE t0(c0 AS(TYPEOF(c1)), c1);
  INSERT INTO t0(c1) VALUES(0);
  CREATE TABLE t1(x AS (typeof(y)), y);
  INSERT INTO t1 SELECT * FROM t0;
  SELECT * FROM t1;

    INSERT INTO t1(a,b,c) VALUES(1,'abcdef',5.5),(3,'cantaloupe',NULL);
    SELECT w, x, y, '|' FROM t1 ORDER BY a;
  
    SELECT w, x, y, '|' FROM t1 ORDER BY w;
  
    SELECT a FROM t1 WHERE w=30;
  
    SELECT a FROM t1 WHERE x='real';
  
    SELECT a FROM t1 WHERE y LIKE '%tal%' OR x='real' ORDER BY b;
  
    CREATE INDEX t1w ON t1(w);
    SELECT a FROM t1 WHERE w=10;
  
    CREATE INDEX t1x ON t1(x) WHERE w BETWEEN 20 AND 40;
    SELECT a FROM t1 WHERE x='null' AND w BETWEEN 20 AND 40;
  
    SELECT a FROM t1 WHERE x='real';
  
    VACUUM;
    PRAGMA integrity_check;
  
    UPDATE t1 SET a=a+100 WHERE w<20;
    SELECT a, w, '|' FROM t1 ORDER BY w;
  
    INSERT INTO t1 VALUES(4,'jambalaya','Chef John'),(15,87719874135,0);
    SELECT w, x, y, '|' FROM t1 ORDER BY w;
  
  PRAGMA foreign_keys = true;
  CREATE TABLE t0(c0 PRIMARY KEY, c1, c2 AS (c0+c1-c3) REFERENCES t0, c3);
  INSERT INTO t0 VALUES (0, 0, 0), (11, 5, 5);
  UPDATE t0 SET c1 = c0, c3 = c0;
  SELECT *, '|' FROM t0 ORDER BY +c0;

  CREATE TABLE t0 (
    c0,
    c1 a UNIQUE AS (1),
    c2,
    c3 REFERENCES t0(c1)
  );
  PRAGMA foreign_keys = true;
  INSERT INTO t0(c0,c2,c3) VALUES(0,0,1);

  PRAGMA foreign_keys=ON;
  CREATE TABLE t1(
    gcb AS (b*1),
    a INTEGER PRIMARY KEY,
    gcc AS (c+0),
    b UNIQUE,
    gca AS (1*a+0),
    c UNIQUE
  ) WITHOUT ROWID;
  INSERT INTO t1 VALUES(1,2,3);
  INSERT INTO t1 VALUES(4,5,6);
  INSERT INTO t1 VALUES(7,8,9);
  CREATE TABLE t1a(
    gcx AS (x+0) REFERENCES t1(a) ON DELETE CASCADE,
    id,
    x,
    gcid AS (1*id)
  );
  INSERT INTO t1a VALUES(1, 1);
  INSERT INTO t1a VALUES(2, 4);
  INSERT INTO t1a VALUES(3, 7);
  DELETE FROM t1 WHERE b=5;
  SELECT id,x,'|' FROM t1a ORDER BY id;

  CREATE TABLE t0 (c0 GENERATED ALWAYS AS (1), c1 UNIQUE, c2 UNIQUE);
  INSERT INTO t0(c1) VALUES (1);
  SELECT quote(0 = t0.c2 OR t0.c1 BETWEEN t0.c2 AND 1) FROM t0;

  DROP TABLE t0;
  CREATE TABLE t0(c0 NOT NULL DEFAULT 'xyz', c1 AS(c0) NOT NULL);
  REPLACE INTO t0(c0) VALUES(NULL);
  SELECT * FROM t0;

  DROP TABLE t0;
  CREATE TABLE t0(c0 NOT NULL DEFAULT 'xyz', c1 AS(c0) STORED NOT NULL);
  REPLACE INTO t0(c0) VALUES(NULL);
  SELECT * FROM t0;

  CREATE TABLE t1(
   a NOT NULL DEFAULT 'aaa',
   b AS(c) NOT NULL,
   c NOT NULL DEFAULT 'ccc');
  REPLACE INTO t1(a,c) VALUES(NULL,NULL);
  SELECT * FROM t1;

  DROP TABLE t1;
  CREATE TABLE t1(
   a NOT NULL DEFAULT 'aaa',
   b AS(c) STORED NOT NULL,
   c NOT NULL DEFAULT 'ccc');
  REPLACE INTO t1(a,c) VALUES(NULL,NULL);
  SELECT * FROM t1;

  CREATE TABLE t2(
   a NOT NULL DEFAULT 'aaa',
   b AS(a) NOT NULL,
   c NOT NULL DEFAULT 'ccc');
  REPLACE INTO t2(a,c) VALUES(NULL,NULL);
  SELECT * FROM t2;

  DROP TABLE t2;
  CREATE TABLE t2(
   a NOT NULL DEFAULT 'aaa',
   b AS(a) STORED NOT NULL,
   c NOT NULL DEFAULT 'ccc');
  REPLACE INTO t2(a,c) VALUES(NULL,NULL);
  SELECT * FROM t2;

  CREATE TABLE t3(a NOT NULL DEFAULT 123, b AS(a) UNIQUE);
  REPLACE INTO t3 VALUES(NULL);
  SELECT * FROM t3;

  SELECT * FROM t3 WHERE b=123;

  CREATE TABLE t4(a NOT NULL DEFAULT 123, b AS(a*10+4) STORED UNIQUE);
  REPLACE INTO t4 VALUES(NULL);
  SELECT * FROM t4;

  SELECT * FROM t4 WHERE b=1234;

  DROP TABLE IF EXISTS t0;
  CREATE TABLE t0(
    c0 AS (('a', 9) < ('b', c1)),
    c1 AS (1),
    c2 CHECK (1 = c1)
  );
  INSERT INTO t0 VALUES (0),(99);
  SELECT * FROM t0;

  PRAGMA foreign_keys=OFF;
  CREATE TABLE t1(aa , bb AS (17) UNIQUE);
  INSERT INTO t1 VALUES(17);
  CREATE TABLE t2(cc);
  INSERT INTO t2 VALUES(41);
  SELECT * FROM t2 JOIN t1 WHERE t1.bb=t1.aa AND t1.bb=17;

  CREATE TABLE t3(aa INT PRIMARY KEY, bb UNIQUE AS(aa));
  INSERT INTO t3 VALUES(1);
  SELECT 100, * FROM t3;
  DELETE FROM t3 WHERE (SELECT bb FROM t3);
  SELECT 200, * FROM t3;

  CREATE TABLE t1(aa,bb);
  CREATE TABLE IF NOT EXISTS t1(aa, bb AS (aa+1));
  PRAGMA integrity_check;

  PRAGMA foreign_keys = true;
  CREATE TABLE t0(
    c0,
    c1 INTEGER PRIMARY KEY,
    c2 BLOB UNIQUE DEFAULT x'00',
    c3 BLOB GENERATED ALWAYS AS (1), 
    FOREIGN KEY(c1) REFERENCES t0(c2)
  );

  DROP TABLE t0;
  CREATE TABLE t0(
    c0,
    c1 INTEGER PRIMARY KEY,
    c3 BLOB GENERATED ALWAYS AS (1), 
    c2 BLOB UNIQUE DEFAULT x'00',
    FOREIGN KEY(c1) REFERENCES t0(c2)
  );

  DROP TABLE t0;
  CREATE TABLE t0(
    c0,
    c3 BLOB GENERATED ALWAYS AS (1), 
    c1 INTEGER PRIMARY KEY,
    c2 BLOB UNIQUE DEFAULT x'00',
    FOREIGN KEY(c1) REFERENCES t0(c2)
  );

  DROP TABLE t0;
  CREATE TABLE t0(
    c3 BLOB GENERATED ALWAYS AS (1), 
    c0,
    c1 INTEGER PRIMARY KEY,
    c2 BLOB UNIQUE DEFAULT x'00',
    FOREIGN KEY(c1) REFERENCES t0(c2)
  );

  CREATE TABLE t0 (c0, c1 NOT NULL AS (c0==0));
  INSERT INTO t0(c0) VALUES (0);
  PRAGMA integrity_check;

  CREATE TABLE t1(x, y AS(x+1));
  INSERT INTO t1 VALUES(10);
  SELECT y FROM t1 JOIN t1 USING (y,y);

  SELECT 123 FROM t1 JOIN t1 USING (x);

  SELECT 456 FROM t1 JOIN t1 USING (x,x);

  CREATE INDEX t1y ON t1(y);
  SELECT y FROM t1 JOIN t1 USING (y,y);

  CREATE INDEX t1x ON t1(x);
  SELECT 123 FROM t1 JOIN t1 USING (x);

  SELECT 456 FROM t1 JOIN t1 USING (x,x);

  CREATE TABLE t0(c0 AS(1 >= 1), c1 UNIQUE AS(TYPEOF(c0)), c2);
  INSERT INTO t0 VALUES(0);
  REINDEX;
  SELECT * FROM t0;

  PRAGMA writable_schema=ON;
  REPLACE INTO t1 VALUES(9);
  SELECT a, quote(b) FROM t1

  CREATE TABLE t0(c0);
  CREATE TABLE t1(c1, c2 AS(1));
  INSERT INTO t0 VALUES(0);
  SELECT c0, c1, c2 FROM t0 LEFT JOIN t1;

  DROP TABLE t1;
  CREATE TABLE t1(c1, c2 AS (c1 ISNULL));
  SELECT c0, c1, c2 FROM t0 LEFT JOIN t1;

  INSERT INTO t1(c1) VALUES(1),(NULL);
  SELECT * FROM t1;

  SELECT c0, c1, c2 FROM t0 LEFT JOIN t1 ON c0=c1;

  CREATE TABLE t0(c0 REAL AS(1) UNIQUE, c1 INT);
  INSERT INTO t0 VALUES('');
  SELECT quote(c0), quote(c1) from t0;

  SELECT *, (1 BETWEEN CAST(t0.c0 AS TEXT) AND t0.c0) FROM t0;

  SELECT * FROM t0 WHERE (1 BETWEEN CAST(t0.c0 AS TEXT) AND t0.c0);

  CREATE TABLE t1(a TEXT AS(b) COLLATE nocase, b TEXT, c INT, d DEFAULT 1);
  INSERT INTO t1(b,c) VALUES('abc',11),('DEF',22),('ghi',33);
  SELECT a FROM t1 WHERE b='DEF' AND a='def';

  CREATE INDEX t1bca ON t1(b,c,a);
  SELECT a FROM t1 WHERE b='DEF' AND a='def';

  CREATE TABLE t0(c0 UNIQUE AS(0), c1, c2);
  INSERT INTO t0(c1) VALUES(0);
  SELECT * FROM t0;

  UPDATE t0 SET c1=0, c2=0 WHERE c0>=0;
  SELECT * FROM t0;

  CREATE TEMPORARY TABLE tab (
    prim DATE PRIMARY KEY,
    a INTEGER,
    comp INTEGER AS (a),
    b INTEGER,
    x INTEGER
  );
  -- Add some data
  INSERT INTO tab (prim, a, b) VALUES ('2001-01-01', 0, 0);
  -- Check that each column is 0 like I expect
  SELECT * FROM tab;

  -- Do an UPSERT on the b column
  INSERT INTO tab (prim, b)
  VALUES ('2001-01-01',5)
      ON CONFLICT(prim) DO UPDATE SET  b=excluded.b;
  -- Now b is NULL rather than 5
  SELECT * FROM tab;

    CREATE TABLE t1(
      a integer primary key,
      b int generated always as (a+5),
      c text    GENERATED   ALWAYS as (printf('%08x',a)),
      d Generated
        Always
        AS ('xyzzy'),
      e int                         Always default(5)
    );
    INSERT INTO t1(a) VALUES(5);
    SELECT name, type FROM pragma_table_xinfo('t1');
  
  CREATE TABLE t0(a PRIMARY KEY,b TEXT AS ('2') UNIQUE);
  INSERT INTO t0(a) VALUES(2);
  SELECT * FROM t0 AS x JOIN t0 AS y
   WHERE x.b='2'
     AND (y.a=2 OR (x.b LIKE '2*' AND y.a=x.b));

  DROP TABLE t1;
  CREATE TABLE t1(
    x,
    a INT AS (x) VIRTUAL,
    b BLOB AS (x) VIRTUAL
  );
  CREATE INDEX x2 ON t1(a);
  INSERT INTO t1(x) VALUES(NULL),('1'),('xyz'),(2),(3.5);
  SELECT quote(a) FROM t1 INDEXED BY x2;

  EXPLAIN SELECT a FROM t1 INDEXED BY x2;

  EXPLAIN SELECT b FROM t1 INDEXED BY x2;

  CREATE TABLE v0(c1 INT, c2 AS (RAISE(IGNORE)));
