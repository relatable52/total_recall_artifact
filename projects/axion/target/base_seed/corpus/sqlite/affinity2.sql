
  CREATE TABLE t1(
    xi INTEGER,
    xr REAL,
    xb BLOB,
    xn NUMERIC,
    xt TEXT
  );
  INSERT INTO t1(rowid,xi,xr,xb,xn,xt) VALUES(1,1,1,1,1,1);
  INSERT INTO t1(rowid,xi,xr,xb,xn,xt) VALUES(2,'2','2','2','2','2');
  INSERT INTO t1(rowid,xi,xr,xb,xn,xt) VALUES(3,'03','03','03','03','03');


  SELECT xi, typeof(xi) FROM t1 ORDER BY rowid;

  SELECT xr, typeof(xr) FROM t1 ORDER BY rowid;

  SELECT xb, typeof(xb) FROM t1 ORDER BY rowid;

  SELECT xn, typeof(xn) FROM t1 ORDER BY rowid;

  SELECT xt, typeof(xt) FROM t1 ORDER BY rowid;

  SELECT rowid, xi==xt, xi==xb, xi==+xt FROM t1 ORDER BY rowid;

  SELECT rowid, xr==xt, xr==xb, xr==+xt FROM t1 ORDER BY rowid;

  SELECT rowid, xn==xt, xn==xb, xn==+xt FROM t1 ORDER BY rowid;

  SELECT rowid, xt==+xi, xt==xi, xt==xb FROM t1 ORDER BY rowid;

  CREATE TABLE ttt(c0, c1);
  CREATE INDEX ii ON ttt(CAST(c0 AS NUMERIC)); 
  INSERT INTO ttt VALUES('abc', '-1');

  SELECT * FROM ttt WHERE CAST(c0 AS NUMERIC) > c1 GROUP BY rowid; 

  SELECT * FROM ttt INDEXED BY ii WHERE CAST(c0 AS NUMERIC) > c1 GROUP BY rowid;

  CREATE TABLE t3(a, b, c INTEGER);
  CREATE INDEX t3ac ON t3(a, c-1);
  INSERT INTO t3 VALUES(1, 1, 1);
  INSERT INTO t3 VALUES(2, 1, 0);
  INSERT INTO t3 VALUES(3, 1, 1);
  INSERT INTO t3 VALUES(4, 1, 0);
  INSERT INTO t3 VALUES(5, 1, 1);

  SELECT * FROM t3 WHERE c='0' ORDER BY a;

  DROP TABLE IF EXISTS t0;
  CREATE TABLE t0(c0 TEXT UNIQUE, c1);
  INSERT INTO t0(c0) VALUES (-1);
  SELECT quote(- x'ce'), quote(t0.c0), quote(- x'ce' >= t0.c0) FROM t0;

  SELECT * FROM t0 WHERE - x'ce' >= t0.c0;

  SELECT quote(+-+x'ce'), quote(t0.c0), quote(+-+x'ce' >= t0.c0) FROM t0;

  SELECT * FROM t0 WHERE +-+x'ce' >= t0.c0;

  SELECT quote(- 'ce'), quote(t0.c0), quote(- 'ce' >= t0.c0) FROM t0;

  SELECT * FROM t0 WHERE - 'ce' >= t0.c0;

  SELECT quote(+-+'ce'), quote(t0.c0), quote(+-+'ce' >= t0.c0) FROM t0;

  SELECT * FROM t0 WHERE +-+'ce' >= t0.c0;

    DROP TABLE IF EXISTS t0;
    CREATE TABLE t0(c0 REAL UNIQUE);
    INSERT INTO t0(c0) VALUES (3175546974276630385);
    SELECT 3175546974276630385 < c0 FROM t0;
  
    SELECT 1 FROM t0 WHERE 3175546974276630385 < c0;
  