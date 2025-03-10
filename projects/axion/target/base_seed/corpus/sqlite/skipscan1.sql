
  CREATE TABLE t1(a TEXT, b INT, c INT, d INT);
  CREATE INDEX t1abc ON t1(a,b,c);
  INSERT INTO t1 VALUES('abc',123,4,5);
  INSERT INTO t1 VALUES('abc',234,5,6);
  INSERT INTO t1 VALUES('abc',234,6,7);
  INSERT INTO t1 VALUES('abc',345,7,8);
  INSERT INTO t1 VALUES('def',567,8,9);
  INSERT INTO t1 VALUES('def',345,9,10);
  INSERT INTO t1 VALUES('bcd',100,6,11);

  /* Fake the sqlite_stat1 table so that the query planner believes
  ** the table contains thousands of rows and that the first few
  ** columns are not selective. */
  ANALYZE;
  DELETE FROM sqlite_stat1;
  INSERT INTO sqlite_stat1 VALUES('t1','t1abc','10000 5000 2000 10');
  ANALYZE sqlite_master;

  SELECT a,b,c,d,'|' FROM t1 WHERE b=345 ORDER BY a;

  EXPLAIN QUERY PLAN
  SELECT a,b,c,d,'|' FROM t1 WHERE d<>99 AND b=345 ORDER BY a;

  EXPLAIN QUERY PLAN
  SELECT a,b,c,d,'|' FROM t1 WHERE d<>99 AND b=345 ORDER BY a;

  SELECT a,b,c,d,'|' FROM t1 WHERE d<>99 AND b=345 ORDER BY a DESC;

  EXPLAIN QUERY PLAN
  SELECT a,b,c,d,'|' FROM t1 WHERE d<>99 AND b=345 ORDER BY a DESC;

  EXPLAIN QUERY PLAN
  SELECT a,b,c,d,'|' FROM t1 WHERE d<>99 AND b=345 ORDER BY a DESC;

  SELECT a,b,c,d,'|' FROM t1 WHERE c=6 ORDER BY a, b, c;

  EXPLAIN QUERY PLAN
  SELECT a,b,c,d,'|' FROM t1 WHERE c=6 ORDER BY a, b, c;

  EXPLAIN QUERY PLAN
  SELECT a,b,c,d,'|' FROM t1 WHERE c=6 ORDER BY a, b, c;

  SELECT a,b,c,d,'|' FROM t1 WHERE c IN (6,7) ORDER BY a, b, c;

  EXPLAIN QUERY PLAN
  SELECT a,b,c,d,'|' FROM t1 WHERE c IN (6,7) ORDER BY a, b, c;

  EXPLAIN QUERY PLAN
  SELECT a,b,c,d,'|' FROM t1 WHERE c IN (6,7) ORDER BY a, b, c;

  SELECT a,b,c,d,'|' FROM t1 WHERE c BETWEEN 6 AND 7 ORDER BY a, b, c;

  EXPLAIN QUERY PLAN
  SELECT a,b,c,d,'|' FROM t1 WHERE c BETWEEN 6 AND 7 ORDER BY a, b, c;

  EXPLAIN QUERY PLAN
  SELECT a,b,c,d,'|' FROM t1 WHERE c BETWEEN 6 AND 7 ORDER BY a, b, c;

  SELECT a,b,c,d,'|' FROM t1 WHERE b IN (234, 345) AND c BETWEEN 6 AND 7
   ORDER BY a, b;

  EXPLAIN QUERY PLAN
  SELECT a,b,c,d,'|' FROM t1 WHERE b IN (234, 345) AND c BETWEEN 6 AND 7
   ORDER BY a, b;

  EXPLAIN QUERY PLAN
  SELECT a,b,c,d,'|' FROM t1 WHERE b IN (234, 345) AND c BETWEEN 6 AND 7
   ORDER BY a, b;

  CREATE TABLE t1j(x TEXT, y INTEGER);
  INSERT INTO t1j VALUES('one',1),('six',6),('ninty-nine',99);
  INSERT INTO sqlite_stat1 VALUES('t1j',null,'3');
  ANALYZE sqlite_master;
  SELECT x, a, b, c, d, '|' FROM t1j, t1 WHERE c=y ORDER BY +a;

  EXPLAIN QUERY PLAN
  SELECT x, a, b, c, d, '|' FROM t1j, t1 WHERE c=y ORDER BY +a;

  SELECT x, a, b, c, d, '|' FROM t1j LEFT JOIN t1 ON c=y ORDER BY +y, +a;

  EXPLAIN QUERY PLAN
  SELECT x, a, b, c, d, '|' FROM t1j LEFT JOIN t1 ON c=y ORDER BY +y, +a;

  CREATE TABLE t2(a TEXT, b INT, c INT, d INT,
                  PRIMARY KEY(a,b,c));
  INSERT INTO t2 SELECT * FROM t1;

  /* Fake the sqlite_stat1 table so that the query planner believes
  ** the table contains thousands of rows and that the first few
  ** columns are not selective. */
  ANALYZE;
  UPDATE sqlite_stat1 SET stat='10000 5000 2000 10' WHERE idx NOT NULL;
  ANALYZE sqlite_master;

  SELECT a,b,c,d,'|' FROM t2 WHERE d<>99 AND b=345 ORDER BY a;

  EXPLAIN QUERY PLAN
  SELECT a,b,c,d,'|' FROM t2 WHERE d<>99 AND b=345 ORDER BY a;

  EXPLAIN QUERY PLAN
  SELECT a,b,c,d,'|' FROM t2 WHERE d<>99 AND b=345 ORDER BY a;

  CREATE TABLE t3(a TEXT, b INT, c INT, d INT,
                  PRIMARY KEY(a,b,c)) WITHOUT ROWID;
  INSERT INTO t3 SELECT * FROM t1;

  /* Fake the sqlite_stat1 table so that the query planner believes
  ** the table contains thousands of rows and that the first few
  ** columns are not selective. */
  ANALYZE;
  UPDATE sqlite_stat1 SET stat='10000 5000 2000 10' WHERE idx NOT NULL;
  ANALYZE sqlite_master;

  SELECT a,b,c,d,'|' FROM t3 WHERE b=345 ORDER BY a;

  EXPLAIN QUERY PLAN
  SELECT a,b,c,d,'|' FROM t3 WHERE b=345 ORDER BY a;

  EXPLAIN QUERY PLAN
  SELECT a,b,c,d,'|' FROM t3 WHERE b=345 ORDER BY a;

  CREATE TABLE t4(a,b,c,d,e,f,g,h,i);
  CREATE INDEX t4all ON t4(a,b,c,d,e,f,g,h);
  INSERT INTO t4 VALUES(1,2,3,4,5,6,7,8,9);
  ANALYZE;
  DELETE FROM sqlite_stat1;
  INSERT INTO sqlite_stat1 
    VALUES('t4','t4all','655360 163840 40960 10240 2560 640 160 40 10');
  ANALYZE sqlite_master;
  SELECT i FROM t4 WHERE a=1;
  SELECT i FROM t4 WHERE b=2;
  SELECT i FROM t4 WHERE c=3;
  SELECT i FROM t4 WHERE d=4;
  SELECT i FROM t4 WHERE e=5;
  SELECT i FROM t4 WHERE f=6;
  SELECT i FROM t4 WHERE g=7;
  SELECT i FROM t4 WHERE h=8;

  CREATE TABLE t5(
    id INTEGER PRIMARY KEY,
    loc TEXT,
    lang INTEGER,
    utype INTEGER,
    xa INTEGER,
    xd INTEGER,
    xh INTEGER
  );
  CREATE INDEX t5i1 on t5(loc, xh, xa, utype, lang);
  CREATE INDEX t5i2 ON t5(xd,loc,utype,lang);
  EXPLAIN QUERY PLAN
    SELECT xh, loc FROM t5 WHERE loc >= 'M' AND loc < 'N';

  ANALYZE;
  DELETE FROM sqlite_stat1;
  DROP TABLE IF EXISTS sqlite_stat4;
  INSERT INTO sqlite_stat1 VALUES('t5','t5i1','2702931 3 2 2 2 2');
  INSERT INTO sqlite_stat1 VALUES('t5','t5i2','2702931 686 2 2 2');
  ANALYZE sqlite_master;

  EXPLAIN QUERY PLAN
    SELECT xh, loc FROM t5 WHERE loc >= 'M' AND loc < 'N';

  CREATE TABLE t1(a,b,c,d,e,f,g,h varchar(300));
  CREATE INDEX t1ab ON t1(a,b);
  ANALYZE sqlite_master;
  -- Only two distinct values for the skip-scan column.  Skip-scan is not used.
  INSERT INTO sqlite_stat1 VALUES('t1','t1ab','500000 250000 125000');
  ANALYZE sqlite_master;
  EXPLAIN QUERY PLAN SELECT * FROM t1 WHERE b=1;

  -- Four distinct values for the skip-scan column.  Skip-scan is used.
  UPDATE sqlite_stat1 SET stat='500000 250000 62500';
  ANALYZE sqlite_master;
  EXPLAIN QUERY PLAN SELECT * FROM t1 WHERE b=1;

  -- Two distinct values for the skip-scan column again.  Skip-scan is not used.
  UPDATE sqlite_stat1 SET stat='500000 125000 62500';
  ANALYZE sqlite_master;
  EXPLAIN QUERY PLAN SELECT * FROM t1 WHERE b=1;

  UPDATE sqlite_stat1 SET stat='500000 125000 1 sz=100';
  ANALYZE sqlite_master;
  EXPLAIN QUERY PLAN SELECT * FROM t1 WHERE b=1;

  UPDATE sqlite_stat1 SET stat='500000 125000 1 noskipscan sz=100';
  ANALYZE sqlite_master;
  EXPLAIN QUERY PLAN SELECT * FROM t1 WHERE b=1;

  UPDATE sqlite_stat1 SET stat='500000 125000 1 sz=100 noskipscan';
  ANALYZE sqlite_master;
  EXPLAIN QUERY PLAN SELECT * FROM t1 WHERE b=1;

  DROP TABLE IF EXISTS t1;
  CREATE TABLE t1(x, y, PRIMARY KEY(x,y)) WITHOUT ROWID;
  INSERT INTO t1(x,y) VALUES(1,'AB');
  INSERT INTO t1(x,y) VALUES(2,'CD');
  ANALYZE;
  DROP TABLE IF EXISTS sqlite_stat4;
  DELETE FROM sqlite_stat1;
  INSERT INTO sqlite_stat1(tbl,idx,stat) VALUES('t1','t1','1000000 100 1');
  ANALYZE sqlite_master;
  SELECT * FROM t1
   WHERE (y = 'AB' AND x <= 4)
      OR (y = 'EF' AND x = 5);

  EXPLAIN QUERY PLAN
  SELECT * FROM t1
   WHERE (y = 'AB' AND x <= 4)
      OR (y = 'EF' AND x = 5);

  SELECT * FROM t1
   WHERE y = 'AB' OR (y = 'CD' AND x = 2)
  ORDER BY +x;

  CREATE TABLE t9a(a,b,c);
  CREATE INDEX t9a_ab ON t9a(a,b);
  CREATE TABLE t9b(x,y);
  ANALYZE sqlite_master;
  INSERT INTO sqlite_stat1 VALUES('t9a','t9a_ab','1000000 250000 1');
  ANALYZE sqlite_master;
  EXPLAIN QUERY PLAN
  SELECT * FROM t9a WHERE b IN (SELECT x FROM t9b WHERE y!=5);

  EXPLAIN QUERY PLAN
  SELECT  * FROM t9a WHERE b IN (SELECT x FROM t9b WHERE y!=5);

  CREATE TABLE t6(a TEXT, b INT, c INT, d INT);
  CREATE INDEX t6abc ON t6(a,b,c);
  INSERT INTO t6 VALUES('abc',123,4,5);

  ANALYZE;
  DELETE FROM sqlite_stat1;
  INSERT INTO sqlite_stat1 VALUES('t6','t6abc','10000 5000 2000 10');
  ANALYZE sqlite_master;
  DELETE FROM t6;

  EXPLAIN QUERY PLAN
  SELECT a,b,c,d,'|' FROM t6 WHERE d<>99 AND b=345 ORDER BY a;

  SELECT a,b,c,d,'|' FROM t6 WHERE d<>99 AND b=345 ORDER BY a;

  EXPLAIN QUERY PLAN
  SELECT a,b,c,d,'|' FROM t6 WHERE d<>99 AND b=345 ORDER BY a DESC;

  SELECT a,b,c,d,'|' FROM t6 WHERE d<>99 AND b=345 ORDER BY a DESC;

  CREATE TABLE t1 (c1, c2, c3, c4, PRIMARY KEY(c4, c3));
  INSERT INTO t1 VALUES(3,0,1,NULL);
  INSERT INTO t1 VALUES(0,4,1,NULL);
  INSERT INTO t1 VALUES(5,6,1,NULL);
  INSERT INTO t1 VALUES(0,4,1,NULL);
  ANALYZE sqlite_master;
  INSERT INTO sqlite_stat1 VALUES('t1','sqlite_autoindex_t1_1','18 18 6');
  ANALYZE sqlite_master;
  SELECT DISTINCT quote(c1), quote(c2), quote(c3), quote(c4), '|'
    FROM t1 WHERE t1.c3 = 1;

  CREATE TABLE t1(a,b INT);
  INSERT INTO t1(a,b) VALUES(1,2),(3,3),(4,5);
  CREATE UNIQUE INDEX i1 ON t1(b,b,a,a,a,a,a,b,a);
  ANALYZE;
  DROP TABLE IF EXISTS sqlite_stat4;
  INSERT INTO sqlite_stat1 VALUES('t1','i1','30 30 30 2 2 2 2 2 2 2');
  ANALYZE sqlite_master;

  SELECT DISTINCT a
    FROM t1
   WHERE a = b
     AND a = 3
     AND b IN (1,3,2,4)
     AND b >= 0
     AND a <= 10;

  CREATE TABLE t1(a TEXT, UNIQUE(a,a,a));
  INSERT INTO t1 VALUES (hex(zeroblob(241))),(1),(2),(3);
  ANALYZE;
  SELECT max(a) FROM t1 WHERE a IN t1;
