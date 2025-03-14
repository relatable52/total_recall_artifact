
  CREATE TABLE t1(a, b, c);
  CREATE INDEX t1b ON t1(b);
  INSERT INTO t1 VALUES('one', 1, 1);
  INSERT INTO t1 VALUES('two', 1, 2);
  INSERT INTO t1 VALUES('three', 1, 3);
  INSERT INTO t1 VALUES('four', 2, 1);
  INSERT INTO t1 VALUES('five', 2, 2);
  INSERT INTO t1 VALUES('six', 2, 3);
  INSERT INTO t1 VALUES('seven', 3, 1);
  INSERT INTO t1 VALUES('eight', 3, 2);
  INSERT INTO t1 VALUES('nine', 3, 3);

  WITH s(i) AS (
    SELECT 1 UNION ALL SELECT i+1 FROM s WHERE i<10000
  ) INSERT INTO t1 SELECT NULL, NULL, NULL FROM s;
  CREATE VIRTUAL TABLE e1 USING echo(t1);

  SELECT a FROM e1 WHERE (b, c) = (2, 2)

  SELECT a FROM e1 WHERE (b, c) > (2, 2)

  SELECT a FROM e1 WHERE (b, c) >= (2, 2)

  SELECT a FROM e1 WHERE (b, c) BETWEEN (1, 2) AND (2, 3)

  SELECT a FROM e1 WHERE (b, c) IN ( VALUES(2, 2) )
