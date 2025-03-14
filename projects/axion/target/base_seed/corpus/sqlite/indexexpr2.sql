
  CREATE TABLE t1(a, b);
  INSERT INTO t1 VALUES(1, 'one');
  INSERT INTO t1 VALUES(2, 'two');
  INSERT INTO t1 VALUES(3, 'three');

  CREATE INDEX i1 ON t1(b || 'x');

  SELECT 'TWOX' == (b || 'x') FROM t1 WHERE (b || 'x')>'onex'

  SELECT 'TWOX' == (b || 'x') COLLATE nocase  FROM t1 WHERE (b || 'x')>'onex'

  CREATE INDEX i2 ON t1(a+1);

  SELECT a+1, quote(a+1) FROM t1 ORDER BY 1;

  CREATE TABLE t1(a, b);
  CREATE INDEX i1 ON t1(a, b);

  CREATE TABLE t2(x);

  INSERT INTO t2 VALUES('.ABC');
  INSERT INTO t2 VALUES('.abcd');
  INSERT INTO t2 VALUES('.defg');
  INSERT INTO t2 VALUES('.DEF');

  SELECT x FROM t2 ORDER BY substr(x, 2) COLLATE nocase;

  CREATE INDEX i2 ON t2( substr(x, 2) );
  SELECT x FROM t2 ORDER BY substr(x, 2) COLLATE nocase;

  CREATE TABLE t3(x);

    CREATE INDEX i3 ON t3(json_extract(x, '$.a'), json_extract(x, '$.b'));
  
  CREATE TABLE t4(a, b);
  INSERT INTO t4 VALUES('.ABC', 1);
  INSERT INTO t4 VALUES('.abc', 2);
  INSERT INTO t4 VALUES('.ABC', 3);
  INSERT INTO t4 VALUES('.abc', 4);

  SELECT * FROM t4 
  WHERE substr(a, 2) = 'abc' COLLATE NOCASE
  ORDER BY substr(a, 2), b;

  CREATE INDEX i4 ON t4( substr(a, 2) COLLATE NOCASE, b );
  SELECT * FROM t4 
  WHERE substr(a, 2) = 'abc' COLLATE NOCASE
  ORDER BY substr(a, 2), b;

  DROP INDEX i4;
  UPDATE t4 SET a = printf('%s%d',a,b);
  SELECT * FROM t4 ORDER BY Substr(a,-2) COLLATE nocase;

  SELECT * FROM t4 ORDER BY Substr(a,-2) COLLATE binary;

  CREATE INDEX i4 ON t4( Substr(a,-2) COLLATE nocase );
  SELECT * FROM t4 ORDER BY Substr(a,-2) COLLATE nocase;

  EXPLAIN QUERY PLAN
  SELECT * FROM t4 ORDER BY Substr(a,-2) COLLATE nocase;

  SELECT * FROM t4 ORDER BY Substr(a,-2) COLLATE binary;

    CREATE TABLE t2(a,b,c,d,e,f);
    INSERT INTO t2 VALUES(2,3,4,5,6,7);
    CREATE INDEX t2abc ON t2(a+b+c);
    CREATE INDEX t2cd ON t2(c*d);
    CREATE INDEX t2def ON t2(d,e+25*f);
    SELECT sqlite_master.name 
      FROM sqlite_master, explain('UPDATE t2 SET b=b+1')
     WHERE explain.opcode LIKE 'Open%'
       AND sqlite_master.rootpage=explain.p2
     ORDER BY 1;
  
    SELECT sqlite_master.name 
      FROM sqlite_master, explain('UPDATE t2 SET c=c+1')
     WHERE explain.opcode LIKE 'Open%'
       AND sqlite_master.rootpage=explain.p2
     ORDER BY 1;
  
    SELECT sqlite_master.name 
      FROM sqlite_master, explain('UPDATE t2 SET c=c+1, f=NULL')
     WHERE explain.opcode LIKE 'Open%'
       AND sqlite_master.rootpage=explain.p2
     ORDER BY 1;
  
  CREATE TABLE t5(a INTEGER, b INTEGER);
  INSERT INTO t5 VALUES(2, 4), (3, 9);

  SELECT * FROM t5 WHERE abs(a)=2 or abs(b)=9;

  CREATE INDEX t5a ON t5( abs(a) );
  CREATE INDEX t5b ON t5( abs(b) );

  SELECT * FROM t5 WHERE abs(a)=2 or abs(b)=9;

  CREATE TABLE x1(a INTEGER PRIMARY KEY, b);
  INSERT INTO x1 VALUES
      (1, 123), (2, '123'), (3, '123abc'), (4, 123.0), (5, 1234);

  SELECT a, b FROM x1 WHERE CAST(b AS INTEGER) = 123;

  CREATE INDEX x1i ON x1( CAST(b AS INTEGER) );
  SELECT a, b FROM x1 WHERE CAST(b AS INTEGER) = 123;

  SELECT a, b FROM x1 WHERE CAST(b AS TEXT) = 123;

  CREATE INDEX x1i2 ON x1( CAST(b AS TEXT) );
  SELECT a, b FROM x1 WHERE CAST(b AS TEXT) = 123;

  CREATE TABLE IF NOT EXISTS t0(c0);
  INSERT INTO t0(c0) VALUES (-9223372036854775808);
  BEGIN;

  COMMIT;
  SELECT sql FROM sqlite_master WHERE tbl_name = 't0';
  CREATE INDEX i0 ON t0(c0);

  REINDEX;

  CREATE TABLE t0(c0);
  CREATE INDEX i0 ON t0(c0) WHERE c0 NOT NULL;
  INSERT INTO t0(c0) VALUES (NULL);

  SELECT * FROM t0 WHERE ~('' BETWEEN t0.c0 AND TRUE);

  SELECT ~('' BETWEEN t0.c0 AND TRUE) FROM t0;
 1 
  CREATE TABLE t1(a, b);
  INSERT INTO t1 VALUES(1, 2), (3, 4);
  CREATE TABLE t2(x, y);

  CREATE TABLE t1(a INT, b INT);
  CREATE INDEX t1x ON t1(a, abs(b));
  CREATE TABLE t2(c INT, d INT);
  INSERT INTO t1(a,b) VALUES(4,4),(5,-5),(5,20),(6,6);
  INSERT INTO t2(c,d) VALUES(100,1),(200,1),(300,2);
  SELECT *,
    (SELECT max(c+abs(b)) FROM t2 GROUP BY d ORDER BY d LIMIT 1) AS subq
   FROM t1 WHERE a=5;

  CREATE TABLE t1(a INTEGER PRIMARY KEY, b TEXT);
  CREATE INDEX t1x ON t1 (b, +b COLLATE NOCASE);
  INSERT INTO t1(a,b) VALUES(1,'abcde');
  SELECT * FROM t1 AS a0
   WHERE (SELECT count(a0.b=+a0.b COLLATE NOCASE IN (b)) FROM t1 GROUP BY 2.5)
   ORDER BY a0.b;

  CREATE TABLE t2(a TEXT);
  INSERT INTO t2 VALUES('alice'),('bob'),('cindy'),('david');
  CREATE INDEX t2x ON t2 (+a COLLATE NOCASE);
  SELECT count(+a COLLATE NOCASE IN (SELECT 1)) AS x
    FROM t2
   GROUP BY SUBSTR(0,0);

  CREATE TABLE t3 (a INT, b AS (-a));
  CREATE INDEX t3x ON t3(b, a);
  INSERT INTO t3(a) VALUES(44);
  SELECT * FROM t3 AS a0
   WHERE (SELECT sum(-a0.a=b) FROM t3 GROUP BY b)
   GROUP BY b;
