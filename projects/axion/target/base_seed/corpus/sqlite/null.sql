
  CREATE TABLE t5(a, b, c);
  CREATE UNIQUE INDEX t5ab ON t5(a, b);

  INSERT INTO t5 VALUES(1, NULL, 'one');
  INSERT INTO t5 VALUES(1, NULL, 'i');
  INSERT INTO t5 VALUES(NULL, 'x', 'two');
  INSERT INTO t5 VALUES(NULL, 'x', 'ii');

  SELECT * FROM t5 WHERE a = 1 AND b IS NULL;

  SELECT * FROM t5 WHERE a IS NULL AND b = 'x';

  CREATE TABLE t0(c0 PRIMARY KEY DESC);
  INSERT INTO t0(c0) VALUES (0);
  SELECT * FROM t0 WHERE t0.c0 > NULL;
