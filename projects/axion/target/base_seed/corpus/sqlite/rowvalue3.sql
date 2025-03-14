
  CREATE TABLE t1(a, b, c);
  CREATE INDEX i1 ON t1(a, b);
  INSERT INTO t1 VALUES(1, 2, 3);
  INSERT INTO t1 VALUES(4, 5, 6);
  INSERT INTO t1 VALUES(7, 8, 9);

  CREATE TABLE z1(x, y, z);
  CREATE TABLE kk(a, b);

  INSERT INTO z1 VALUES('a', 'b', 'c');
  INSERT INTO z1 VALUES('d', 'e', 'f');
  INSERT INTO z1 VALUES('g', 'h', 'i');

  -- INSERT INTO kk VALUES('y', 'y');
  INSERT INTO kk VALUES('d', 'e');
  -- INSERT INTO kk VALUES('x', 'x');


    SELECT * FROM z1 WHERE x IN (SELECT a FROM kk)
  
    SELECT * FROM z1 WHERE (x,y) IN (SELECT a, b FROM kk)
  
    SELECT * FROM z1 WHERE (x, +y) IN (SELECT a, b FROM kk)
  
    SELECT * FROM z1 WHERE (x, +y) IN (SELECT a, b||'x' FROM kk)
  
    SELECT * FROM z1 WHERE (+x, y) IN (SELECT a, b FROM kk)
  
  CREATE TABLE c1(a, b, c, d);
  INSERT INTO c1(rowid, a, b) VALUES(1,   NULL, 1);
  INSERT INTO c1(rowid, a, b) VALUES(2,   2, NULL);
  INSERT INTO c1(rowid, a, b) VALUES(3,   2, 2);
  INSERT INTO c1(rowid, a, b) VALUES(4,   3, 3);

  INSERT INTO c1(rowid, a, b, c, d) VALUES(101, 'a', 'b', 1, 1);
  INSERT INTO c1(rowid, a, b, c, d) VALUES(102, 'a', 'b', 1, 2);
  INSERT INTO c1(rowid, a, b, c, d) VALUES(103, 'a', 'b', 1, 3);
  INSERT INTO c1(rowid, a, b, c, d) VALUES(104, 'a', 'b', 2, 1);
  INSERT INTO c1(rowid, a, b, c, d) VALUES(105, 'a', 'b', 2, 2);
  INSERT INTO c1(rowid, a, b, c, d) VALUES(106, 'a', 'b', 2, 3);
  INSERT INTO c1(rowid, a, b, c, d) VALUES(107, 'a', 'b', 3, 1);
  INSERT INTO c1(rowid, a, b, c, d) VALUES(108, 'a', 'b', 3, 2);
  INSERT INTO c1(rowid, a, b, c, d) VALUES(109, 'a', 'b', 3, 3);

  CREATE TABLE hh(a, b, c);

  INSERT INTO hh VALUES('a', 'a', 1);
  INSERT INTO hh VALUES('a', 'b', 2);
  INSERT INTO hh VALUES('b', 'a', 3);
  INSERT INTO hh VALUES('b', 'b', 4);

  CREATE TABLE k1(x, y);
  INSERT INTO k1 VALUES('a', 'a');
  INSERT INTO k1 VALUES('b', 'b');
  INSERT INTO k1 VALUES('a', 'b');
  INSERT INTO k1 VALUES('b', 'a');

  DROP TABLE IF EXISTS t1;
  DROP TABLE IF EXISTS t2;
  CREATE TABLE T1(a TEXT);
  INSERT INTO T1(a) VALUES ('aaa');
  CREATE TABLE T2(a TEXT PRIMARY KEY,n INT);
  INSERT INTO T2(a, n) VALUES('aaa',0);
  SELECT * FROM T2
   WHERE (a,n) IN (SELECT T1.a, V.n
                     FROM T1, (SELECT * FROM (SELECT 0 n) T3) V);
