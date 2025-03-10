
 SELECT d FROM t1
  WHERE a=100
    AND b IN (200,201,202,204)
    AND c IN (300,302,301,305)
  ORDER BY +d;

  CREATE TABLE t2(e INT UNIQUE, f TEXT);
  SELECT d, f FROM t1 LEFT JOIN t2 ON (e=d)
  WHERE a=100
    AND b IN (200,201,202,204)
    AND c IN (300,302,301,305)
  ORDER BY +d;

  CREATE TABLE t1(a);
  INSERT INTO t1 VALUES(0);
  CREATE TABLE t2(b, c, d);
  INSERT INTO t2(b,c,d) VALUES(4,5,3),(4,5,4),(4,5,8);
  CREATE INDEX t2bcd ON t2(b, c, d);
  SELECT * FROM t1 LEFT JOIN t2 ON b=NULL AND c=5 AND d IN (2,3,4);

  CREATE TABLE v0(v1);
  CREATE TABLE v3(v5, v4);
  INSERT INTO v0 VALUES(0);
  CREATE INDEX v9 ON v3(v4, v4, v5);
  SELECT quote(v5) FROM v0 LEFT JOIN v3 ON v4 = NULL AND v5 IN(0);

  CREATE TABLE t1(a TEXT, b TEXT);
  INSERT INTO t1 VALUES(null,10),(0,10),(10,10);
  CREATE INDEX t1ab ON t1(a,b);
  SELECT quote(a), quote(b), '|' FROM t1 WHERE b in (SELECT a FROM t1) AND a=0;

  CREATE TABLE t2(x TEXT);
  INSERT INTO t2(x) VALUES(NULL),(0),(10);
  SELECT quote(x), quote(a), quote(b), 'x'
    FROM t2 LEFT JOIN t1 ON a=x AND b in (null,0,10);
