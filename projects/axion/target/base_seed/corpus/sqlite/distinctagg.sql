
  CREATE TABLE t1(a, b, c);
  CREATE TABLE t2(d, e, f);

  INSERT INTO t1 VALUES (1, 1, 1);
  INSERT INTO t1 VALUES (2, 2, 2);
  INSERT INTO t1 VALUES (3, 3, 3);
  INSERT INTO t1 VALUES (4, 1, 4);
  INSERT INTO t1 VALUES (5, 2, 1);
  INSERT INTO t1 VALUES (5, 3, 2);
  INSERT INTO t1 VALUES (4, 1, 3);
  INSERT INTO t1 VALUES (3, 2, 4);
  INSERT INTO t1 VALUES (2, 3, 1);
  INSERT INTO t1 VALUES (1, 1, 2);

  INSERT INTO t2 VALUES('a', 'a', 'a');
  INSERT INTO t2 VALUES('b', 'b', 'b');
  INSERT INTO t2 VALUES('c', 'c', 'c');

  CREATE INDEX t1a ON t1(a);
  CREATE INDEX t1bc ON t1(b, c);

  SELECT a, count(DISTINCT b) FROM t1 GROUP BY a;

  CREATE TABLE t1(a, b, c);
  CREATE INDEX t1a ON t1(a);
  CREATE INDEX t1bc ON t1(b, c);

  INSERT INTO t1 VALUES(1, 'A', 1);
  INSERT INTO t1 VALUES(1, 'A', 1);
  INSERT INTO t1 VALUES(2, 'A', 2);
  INSERT INTO t1 VALUES(2, 'A', 2);
  INSERT INTO t1 VALUES(1, 'B', 1);
  INSERT INTO t1 VALUES(2, 'B', 2);
  INSERT INTO t1 VALUES(3, 'B', 3);
  INSERT INTO t1 VALUES(NULL, 'B', NULL);
  INSERT INTO t1 VALUES(NULL, 'C', NULL);
  INSERT INTO t1 VALUES('d', 'D', 'd');

  CREATE TABLE t2(d, e, f);
  CREATE INDEX t2def ON t2(d, e, f);

  INSERT INTO t2 VALUES(1, 1, 'a');
  INSERT INTO t2 VALUES(1, 1, 'a');
  INSERT INTO t2 VALUES(1, 2, 'a');
  INSERT INTO t2 VALUES(1, 2, 'a');
  INSERT INTO t2 VALUES(1, 2, 'b');
  INSERT INTO t2 VALUES(1, 3, 'b');
  INSERT INTO t2 VALUES(1, 3, 'a');
  INSERT INTO t2 VALUES(1, 3, 'b');
  INSERT INTO t2 VALUES(2, 3, 'x');
  INSERT INTO t2 VALUES(2, 3, 'y');
  INSERT INTO t2 VALUES(2, 3, 'z');

  CREATE TABLE t3(x, y, z);
  INSERT INTO t3 VALUES(1,1,1);
  INSERT INTO t3 VALUES(2,2,2);

  CREATE TABLE t1(a, b);
  CREATE TABLE t2(c, d);
  INSERT INTO t1 VALUES(123,456);
  INSERT INTO t2 VALUES(123,456);

  SELECT count(DISTINCT c) FROM t1 LEFT JOIN t2;

  CREATE TABLE v1 ( v2 UNIQUE, v3 AS( TYPEOF ( NULL ) ) UNIQUE ); 
  SELECT COUNT ( DISTINCT TRUE ) FROM v1 GROUP BY likelihood ( v3 , 0.100000 );
