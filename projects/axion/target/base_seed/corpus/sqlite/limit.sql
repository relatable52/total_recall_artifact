
  SELECT 123 LIMIT 1 OFFSET 0

  SELECT 123 LIMIT 1 OFFSET 1

  SELECT 123 LIMIT 0 OFFSET 0

  SELECT 123 LIMIT 0 OFFSET 1

  SELECT 123 LIMIT -1 OFFSET 0

  SELECT 123 LIMIT -1 OFFSET 1

  CREATE TABLE t1(a PRIMARY KEY, b TEXT);
  CREATE TABLE t4(c PRIMARY KEY, d);
  CREATE TABLE t5(e PRIMARY KEY, f);
  CREATE TABLE t6(g, h);
  CREATE TABLE t3_a(k, v);
  CREATE TABLE t3_b(k, v);
  CREATE VIEW t3 AS SELECT * FROM t3_a UNION ALL SELECT * FROM t3_b;
  INSERT INTO t5(e,f) VALUES(500000,'orange');
  INSERT INTO t4(c,d) VALUES(300000,'blue'),(400,'green'),(8000,'grey');
  INSERT INTO t1(a,b) VALUES(300000,'purple');
  INSERT INTO t3_a VALUES(300000,'yellow'),(500,'pink'),(8000,'red');
  INSERT INTO t6 default values;
  SELECT (
      SELECT 100000 FROM
          (SELECT 200000 FROM t6 WHERE a = ( SELECT 300000 FROM t3 WHERE a ) ),
          (SELECT 400000 FROM t5 WHERE e=500000),
          (SELECT 600000 FROM t4 WHERE c=a)
  ) FROM t1;
