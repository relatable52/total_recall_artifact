
  SELECT *, '|' FROM generate_series WHERE start=1 AND stop=9 AND step=2;

  PRAGMA table_xinfo(generate_series);

  SELECT *, '|' FROM generate_series(0) LIMIT 5;

  SELECT * FROM generate_series(1,9,2);

  SELECT * FROM generate_series(1,9);

  SELECT * FROM generate_series(1,10) WHERE step=3;

  SELECT * FROM generate_series(0,32,5) ORDER BY rowid DESC;

  SELECT rowid, * FROM generate_series(0,32,5) ORDER BY value DESC;

  SELECT rowid, * FROM generate_series(0,32,5) ORDER BY +value DESC;

  CREATE VIEW v1(a,b) AS VALUES(1,2),(3,4);
  SELECT * FROM v1;

  CREATE VIEW v2(x) AS SELECT value FROM generate_series(1,5);
  SELECT * FROM v2;

  CREATE TABLE t0(x);
  INSERT INTO t0(x) VALUES(123),(456),(789);
  SELECT * FROM t0 ORDER BY x;

  CREATE TABLE t1(x);
  INSERT INTO t1(x) VALUES(2),(3);
  SELECT *, '|' FROM t1, generate_series(1,x) ORDER BY 1, 2

  SELECT *, '|' FROM (SELECT x FROM t1) AS y, generate_series(1,y.x)
  ORDER BY 1, 2;

  SELECT * FROM generate_series(0) LIMIT 5;

  SELECT DISTINCT value FROM generate_series(1,x), t1 ORDER BY 1;

  SELECT * FROM main.generate_series(1,4)

  SELECT * FROM temp.generate_series(1,4)

  ATTACH ':memory:' AS aux1;
  CREATE TABLE aux1.t1(a,b,c);
  SELECT * FROM aux1.generate_series(1,4)

  SELECT * FROM (generate_series(1,5,2)) AS x LIMIT 10;

  SELECT * FROM generate_series WHERE start IN (1,7) AND stop=20 AND step=10
  ORDER BY +1;

  CREATE TABLE t600(a INTEGER PRIMARY KEY, b TEXT);
  WITH RECURSIVE c(x) AS (VALUES(1) UNION ALL SELECT x+1 FROM c WHERE x<100)
    INSERT INTO t600(a,b) SELECT x, printf('(%03d)',x) FROM c;
  SELECT b FROM t600 WHERE a IN generate_series(2,52,10);
