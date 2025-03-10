
  CREATE TABLE t1(a, b);
  CREATE TABLE t2(c INTEGER PRIMARY KEY, d);

  INSERT INTO t1 VALUES('hello', 'world');
  INSERT INTO t2 VALUES(14, 'fourteen');

  ANALYZE sqlite_schema;
  INSERT INTO sqlite_stat1 VALUES('t2','idx1','6 6');
  ANALYZE sqlite_schema;

  SELECT 'affinity!' FROM t1 CROSS JOIN t2 WHERE t2.c = '14';

  CREATE TABLE t1(a, b TEXT);
  CREATE TABLE t2(c INTEGER PRIMARY KEY, d);
  CREATE TABLE t3(e INTEGER PRIMARY KEY, f);

  ANALYZE sqlite_schema;
  INSERT INTO sqlite_stat1 VALUES('t1','idx1','600 6');
  INSERT INTO sqlite_stat1 VALUES('t2','idx1','6 6');
  INSERT INTO sqlite_stat1 VALUES('t3','idx2','6 6');
  ANALYZE sqlite_schema;

  INSERT INTO t1 VALUES(1, '123');
  INSERT INTO t2 VALUES(123, 'one');
  INSERT INTO t3 VALUES(123, 'two');

  SELECT 'result' FROM t1, t2, t3 
  WHERE t2.c=t1.b AND t2.d!='silly'
    AND t3.e=t1.b AND t3.f!='silly'

  CREATE TABLE objs(c INTEGER, s INTEGER, p INTEGER, o INTEGER);
  CREATE UNIQUE INDEX objs_cspo ON objs(o,p,c,s);
  ANALYZE;
  DELETE FROM sqlite_stat1;
  INSERT INTO sqlite_stat1 VALUES('objs','objs_cspo','520138 21 20 19 1');
  ANALYZE sqlite_schema;

  CREATE TABLE t0(x TEXT COLLATE rtrim);
  INSERT INTO t0(x) VALUES ('a'), ('b'), ('c');
  CREATE VIEW v0(y) AS SELECT DISTINCT x FROM t0;
  SELECT count(*) FROM t0, v0 WHERE x='b ';

  CREATE TABLE t1(x INT COLLATE rtrim);
  INSERT INTO t1(x) VALUES ('a'), ('b'), ('c');
  CREATE VIEW v1(y) AS SELECT DISTINCT x FROM t1;
  SELECT count(*) FROM t1, v1 WHERE x='b ';

  CREATE TABLE t1(x TEXT, y INT, z TEXT);
  INSERT INTO t1(rowid,x,y,z) VALUES(12,'aa','bb','aa');
  CREATE INDEX i1x ON t1(1 IS true,z);
  CREATE TABLE t0(x TEXT);
  INSERT INTO t0(rowid,x) VALUES(4,'aa');
  ANALYZE sqlite_schema;
  INSERT INTO sqlite_stat1 VALUES('t0',NULL,'20');
  INSERT INTO sqlite_stat1 VALUES('t1','i1x','18 18 2');
  ANALYZE sqlite_schema;

  SELECT * FROM t0 NATURAL JOIN t1 WHERE z=t1.x;

  DROP TABLE t0;
  CREATE TABLE t0(a TEXT);
  INSERT INTO t0 VALUES ('xyz');
  CREATE INDEX t0x ON t0(a IS FALSE) WHERE false;
  DROP TABLE t1;
  CREATE TABLE t1(b INT);
  INSERT INTO t1 VALUES('aaa'),('bbb'),('ccc'),('ddd'),(NULL);
  CREATE TABLE t2(c REAL);
  INSERT INTO t2 VALUES(7);
  ANALYZE;
  CREATE INDEX t2x ON t2(true IN ());

  SELECT * FROM t0 LEFT JOIN t1 LEFT JOIN t2 ON (b NOTNULL)==(c IN ()) WHERE c;
