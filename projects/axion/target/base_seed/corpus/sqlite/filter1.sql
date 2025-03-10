
  CREATE TABLE t1(a);
  CREATE INDEX i1 ON t1(a);
  INSERT INTO t1 VALUES(1), (2), (3), (4), (5), (6), (7), (8), (9);
 SELECT sum(a) FROM t1;  SELECT sum(a) FILTER( WHERE a<5 ) FROM t1;  
  SELECT sum(a) FILTER( WHERE a>9 ),
         sum(a) FILTER( WHERE a>8 ),
         sum(a) FILTER( WHERE a>7 ),
         sum(a) FILTER( WHERE a>6 ),
         sum(a) FILTER( WHERE a>5 ),
         sum(a) FILTER( WHERE a>4 ),
         sum(a) FILTER( WHERE a>3 ),
         sum(a) FILTER( WHERE a>2 ),
         sum(a) FILTER( WHERE a>1 ),
         sum(a) FILTER( WHERE a>0 )
  FROM t1;

  SELECT max(a) FILTER (WHERE (a % 2)==0) FROM t1

  SELECT min(a) FILTER (WHERE a>4) FROM t1

  SELECT count(*) FILTER (WHERE a!=5) FROM t1

  SELECT min(a) FILTER (WHERE a>3) FROM t1 GROUP BY (a%2) ORDER BY 1;

  CREATE VIEW vv AS 
  SELECT sum(a) FILTER( WHERE a>9 ),
         sum(a) FILTER( WHERE a>8 ),
         sum(a) FILTER( WHERE a>7 ),
         sum(a) FILTER( WHERE a>6 ),
         sum(a) FILTER( WHERE a>5 ),
         sum(a) FILTER( WHERE a>4 ),
         sum(a) FILTER( WHERE a>3 ),
         sum(a) FILTER( WHERE a>2 ),
         sum(a) FILTER( WHERE a>1 ),
         sum(a) FILTER( WHERE a>0 )
  FROM t1;
  SELECT * FROM vv;

  CREATE TABLE t1(a);
  INSERT INTO t1 VALUES(1), (2), (3), (4), (5), (6), (7), (8), (9);

  CREATE TABLE t1(a,b);
  INSERT INTO t1 VALUES(1, 1);

  SELECT b, max(a) FILTER (WHERE b='x') FROM t1;

  CREATE TABLE t2(a, b, c);
  INSERT INTO t2 VALUES(1, 2, 3);
  INSERT INTO t2 VALUES(1, 3, 4);
  INSERT INTO t2 VALUES(2, 5, 6);
  INSERT INTO t2 VALUES(2, 7, 8);

  SELECT a, c, max(b) FILTER (WHERE c='x') FROM t2 GROUP BY a;

  DELETE FROM t2;
  INSERT INTO t2 VALUES(1, 5, 'x');
  INSERT INTO t2 VALUES(1, 2, 3);
  INSERT INTO t2 VALUES(1, 4, 'x');
  INSERT INTO t2 VALUES(2, 5, 6);
  INSERT INTO t2 VALUES(2, 7, 8);

  SELECT a, c, max(b) FILTER (WHERE c='x') FROM t2 GROUP BY a;

  CREATE TABLE t1(a, b, c);
  INSERT INTO t1 VALUES('a', 0, 5);
  INSERT INTO t1 VALUES('a', 1, 10);
  INSERT INTO t1 VALUES('a', 0, 15);

  INSERT INTO t1 VALUES('b', 0, 5);
  INSERT INTO t1 VALUES('b', 1, 1000);
  INSERT INTO t1 VALUES('b', 0, 5);

  INSERT INTO t1 VALUES('c', 0, 1);
  INSERT INTO t1 VALUES('c', 1, 2);
  INSERT INTO t1 VALUES('c', 0, 3);

  SELECT avg(c) FILTER (WHERE b!=1) AS h FROM t1 GROUP BY a ORDER BY h;

  SELECT avg(c) FILTER (WHERE b!=1) AS h FROM t1 GROUP BY a ORDER BY (h+1.0);

  SELECT a, avg(c) FILTER (WHERE b!=1) AS h FROM t1 GROUP BY a ORDER BY avg(c);

  SELECT a, avg(c) FILTER (WHERE b!=1) FROM t1 GROUP BY a ORDER BY 2

  CREATE TABLE t1(a, b);
  INSERT INTO t1 VALUES(1, 2);
  INSERT INTO t1 VALUES(1, 3);

  SELECT count(*) FILTER (WHERE b>2) FROM (SELECT * FROM t1) 

  SELECT count(*) FILTER (WHERE b>2) OVER () FROM (SELECT * FROM t1) 

  SELECT count(*) FILTER (WHERE b>2) OVER (ORDER BY b) FROM (SELECT * FROM t1) 

  CREATE TABLE t1(a,b);
  INSERT INTO t1 VALUES(1,1);
  INSERT INTO t1 VALUES(2,2);
  CREATE TABLE t2(x,y);
  INSERT INTO t2 VALUES(1,1);

  SELECT (SELECT COUNT(a) FILTER(WHERE x) FROM t2) FROM t1;

  SELECT (SELECT COUNT(a+x) FROM t2) FROM t1;

  SELECT (SELECT COUNT(a) FROM t2) FROM t1;

  CREATE TABLE t1(a INTEGER PRIMARY KEY, b);
  INSERT INTO t1 VALUES(321, 100000);
  INSERT INTO t1 VALUES(111, 110000);
  INSERT INTO t1 VALUES(444, 120000);
  INSERT INTO t1 VALUES(222, 130000);

  SELECT max(a), max(a) FILTER (WHERE b<12345), b FROM t1;

  CREATE TABLE t0(c0 INT);
  CREATE TABLE t1a(a INTEGER PRIMARY KEY, b TEXT);
  INSERT INTO t1a VALUES(1,'one'),(2,NULL),(3,'three');
  CREATE TABLE t1b(c INTEGER PRIMARY KEY, d TEXT);
  INSERT INTO t1b VALUES(4,'four'),(5,NULL),(6,'six');
  CREATE VIEW t1 AS SELECT a, b FROM t1a UNION ALL SELECT c, d FROM t1b;
  SELECT count()FILTER(WHERE b IS NULL) FROM t1;
