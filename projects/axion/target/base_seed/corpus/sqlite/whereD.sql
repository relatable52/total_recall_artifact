
  CREATE TABLE t(i,j,k,m,n);
  CREATE INDEX ijk ON t(i,j,k);
  CREATE INDEX jmn ON t(j,m,n);

  INSERT INTO t VALUES(3, 3, 'three', 3, 'tres');
  INSERT INTO t VALUES(2, 2, 'two', 2, 'dos');
  INSERT INTO t VALUES(1, 1, 'one', 1, 'uno');
  INSERT INTO t VALUES(4, 4, 'four', 4, 'cuatro');

  SELECT k FROM t WHERE (i=1 AND j=1) OR (i=2 AND j=2);

  SELECT k FROM t WHERE (i=1 AND j=1) OR (+i=2 AND j=2);

  SELECT n FROM t WHERE (i=1 AND j=1) OR (i=2 AND j=2);

  SELECT k, n FROM t WHERE (i=1 AND j=1) OR (i=2 AND j=2);

  SELECT k FROM t WHERE (i=1 AND j=1) OR (i=2 AND j=2) OR (i=3 AND j=3);

  SELECT n FROM t WHERE (i=1 AND j=1) OR (i=2 AND j=2) OR (i=3 AND j=3);

  SELECT k FROM t WHERE (i=1 AND j=1) OR (j=2 AND m=2);

  SELECT k FROM t WHERE (i=1 AND j=1) OR (i=2 AND j=2) OR (j=3 AND m=3);

  SELECT n FROM t WHERE (i=1 AND j=1) OR (i=2 AND j=2) OR (j=3 AND m=3);

  SELECT k FROM t WHERE (i=1 AND j=1) OR (j=2 AND m=2) OR (i=3 AND j=3);

  SELECT n FROM t WHERE (i=1 AND j=1) OR (j=2 AND m=2) OR (i=3 AND j=3);

  SELECT k FROM t WHERE (j=1 AND m=1) OR (i=2 AND j=2) OR (i=3 AND j=3);

  SELECT k FROM t WHERE (i=1 AND j=1) OR (j=2 AND i=2) OR (i=3 AND j=3);

  SELECT k FROM t WHERE (i=1 AND j=2) OR (i=2 AND j=1) OR (i=3 AND j=4);

  SELECT k FROM t WHERE (i=1 AND (j=1 or j=2)) OR (i=3 AND j=3);

  CREATE TABLE t1(a,b,c,d);
  CREATE INDEX t1b ON t1(b);
  CREATE INDEX t1c ON t1(c);
  CREATE INDEX t1d ON t1(d);
  CREATE TABLE t2(x,y);
  CREATE INDEX t2y ON t2(y);
  
  INSERT INTO t1 VALUES(1,2,3,4);
  INSERT INTO t1 VALUES(5,6,7,8);
  INSERT INTO t2 VALUES(1,2);
  INSERT INTO t2 VALUES(2,7);
  INSERT INTO t2 VALUES(3,4);

  SELECT a, x FROM t1 JOIN t2 ON +y=d OR x=7 ORDER BY a, x;

  SELECT a, x FROM t1 JOIN t2 ON y=d OR x=7 ORDER BY a, x;

  CREATE TABLE t3(a, b, c);
  CREATE UNIQUE INDEX i3 ON t3(a, b);
  INSERT INTO t3 VALUES(1, 'one', 'i');
  INSERT INTO t3 VALUES(3, 'three', 'iii');
  INSERT INTO t3 VALUES(6, 'six', 'vi');
  INSERT INTO t3 VALUES(2, 'two', 'ii');
  INSERT INTO t3 VALUES(4, 'four', 'iv');
  INSERT INTO t3 VALUES(5, 'five', 'v');

  CREATE TABLE t4(x PRIMARY KEY, y);
  INSERT INTO t4 VALUES('a', 'one');
  INSERT INTO t4 VALUES('b', 'two');

  CREATE TABLE t44(a INTEGER, b INTEGER);
  INSERT INTO t44 VALUES(1,2);
  INSERT INTO t44 VALUES(3,4);
  SELECT *
    FROM t44 AS x
       LEFT JOIN (SELECT a AS c, b AS d FROM t44) AS y ON a=c
   WHERE d=4 OR d IS NULL;

  SELECT *
    FROM t44 AS x
       LEFT JOIN (SELECT a AS c, b AS d FROM t44) AS y ON a=c
   WHERE d=4 OR d IS NULL
   ORDER BY a;

  CREATE TABLE t46(c INTEGER, d INTEGER);
  INSERT INTO t46 SELECT a, b FROM t44;
  SELECT * FROM t44 LEFT JOIN t46 ON a=c
   WHERE d=4 OR d IS NULL;

  SELECT * FROM t44 LEFT JOIN t46 ON a=c
   WHERE d=4 OR d IS NULL
   ORDER BY a;

  DROP TABLE IF EXISTS t;
  CREATE TABLE t(c0,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17);
  CREATE INDEX tc0 ON t(c0);
  CREATE INDEX tc1 ON t(c1);
  CREATE INDEX tc2 ON t(c2);
  CREATE INDEX tc3 ON t(c3);
  CREATE INDEX tc4 ON t(c4);
  CREATE INDEX tc5 ON t(c5);
  CREATE INDEX tc6 ON t(c6);
  CREATE INDEX tc7 ON t(c7);
  CREATE INDEX tc8 ON t(c8);
  CREATE INDEX tc9 ON t(c9);
  CREATE INDEX tc10 ON t(c10);
  CREATE INDEX tc11 ON t(c11);
  CREATE INDEX tc12 ON t(c12);
  CREATE INDEX tc13 ON t(c13);
  CREATE INDEX tc14 ON t(c14);
  CREATE INDEX tc15 ON t(c15);
  CREATE INDEX tc16 ON t(c16);
  CREATE INDEX tc17 ON t(c17);
  
  INSERT INTO t(c0, c16) VALUES (1,1);
  
  SELECT * FROM t WHERE
    c0=1 or  c1=1 or  c2=1 or  c3=1 or
    c4=1 or  c5=1 or  c6=1 or  c7=1 or
    c8=1 or  c9=1 or c10=1 or c11=1 or
    c12=1 or c13=1 or c14=1 or c15=1 or
    c16=1 or c17=1;

  DELETE FROM t;
  INSERT INTO t(c0,c17) VALUES(1,1);
  SELECT * FROM t WHERE
    c0=1 or  c1=1 or  c2=1 or  c3=1 or
    c4=1 or  c5=1 or  c6=1 or  c7=1 or
    c8=1 or  c9=1 or c10=1 or c11=1 or
    c12=1 or c13=1 or c14=1 or c15=1 or
    c16=1 or c17=1;

  DELETE FROM t;
  INSERT INTO t(c0,c15) VALUES(1,1);
  SELECT * FROM t WHERE
    c0=1 or  c1=1 or  c2=1 or  c3=1 or
    c4=1 or  c5=1 or  c6=1 or  c7=1 or
    c8=1 or  c9=1 or c10=1 or c11=1 or
    c12=1 or c13=1 or c14=1 or c15=1 or
    c16=1 or c17=1;

  CREATE TABLE x1(a, b, c, d, e);
  CREATE INDEX x1a  ON x1(a);
  CREATE INDEX x1bc ON x1(b, c);
  CREATE INDEX x1cd ON x1(c, d);

  INSERT INTO x1 VALUES(1, 2, 3, 4, 'A');
  INSERT INTO x1 VALUES(5, 6, 7, 8, 'B');
  INSERT INTO x1 VALUES(9, 10, 11, 12, 'C');
  INSERT INTO x1 VALUES(13, 14, 15, 16, 'D');

  DROP TABLE IF EXISTS t1;
  DROP TABLE IF EXISTS t2;
  CREATE TABLE t1(a UNIQUE, b UNIQUE);
  INSERT INTO t1(a,b) VALUES(null,2);
  CREATE VIEW t2 AS SELECT * FROM t1 WHERE b<10 OR a<7 ORDER BY b;
  SELECT t1.* FROM t1 LEFT JOIN t2 ON abs(t1.a)=abs(t2.b);

  CREATE TABLE y1(a, b);
  CREATE TABLE y2(x, y);
  CREATE INDEX y2xy ON y2(x, y);
  INSERT INTO y1 VALUES(1, 1);
  INSERT INTO y2 VALUES(3, 3);

  SELECT * FROM y1 LEFT JOIN y2 ON ((x=1 AND y=b) OR (x=2 AND y=b))

  CREATE TABLE foo (Id INTEGER PRIMARY KEY, fa INTEGER, fb INTEGER); 
  CREATE TABLE bar (Id INTEGER PRIMARY KEY, ba INTEGER, bb INTEGER);

  INSERT INTO foo VALUES(1, 1, 1);
  INSERT INTO foo VALUES(2, 1, 2);
  INSERT INTO foo VALUES(3, 1, 3);
  INSERT INTO foo VALUES(4, 1, 4);
  INSERT INTO foo VALUES(5, 1, 5);
  INSERT INTO foo VALUES(6, 1, 6);
  INSERT INTO foo VALUES(7, 1, 7);
  INSERT INTO foo VALUES(8, 1, 8);
  INSERT INTO foo VALUES(9, 1, 9);

  INSERT INTO bar VALUES(NULL, 1, 1);
  INSERT INTO bar VALUES(NULL, 2, 2);
  INSERT INTO bar VALUES(NULL, 3, 3);
  INSERT INTO bar VALUES(NULL, 1, 4);
  INSERT INTO bar VALUES(NULL, 2, 5);
  INSERT INTO bar VALUES(NULL, 3, 6);
  INSERT INTO bar VALUES(NULL, 1, 7);
  INSERT INTO bar VALUES(NULL, 2, 8);
  INSERT INTO bar VALUES(NULL, 3, 9);

  SELECT 
    bar.Id, bar.ba, bar.bb, foo.fb
    FROM foo LEFT JOIN bar
           ON (bar.ba = 1 AND bar.bb = foo.fb)
           OR (bar.ba = 5 AND bar.bb = foo.fb);

  CREATE INDEX idx_bar ON bar(ba, bb);
  SELECT 
    bar.Id, bar.ba, bar.bb, foo.fb
    FROM foo LEFT JOIN bar
           ON (bar.ba = 1 AND bar.bb = foo.fb)
           OR (bar.ba = 5 AND bar.bb = foo.fb);
