
  CREATE TABLE t1(a, b, c);
  CREATE INDEX i1 ON t1(a);
  CREATE INDEX i2 ON t1(b);
  CREATE TABLE t2(d, e);

  INSERT INTO t1 VALUES('A', 'B', 'C');
  INSERT INTO t2 VALUES('D', 'E');

  SELECT * FROM t1, t2 WHERE
    (a='A' AND d='E') OR
    (b='B' AND c IN ('C', 'D', 'E'))

  SELECT * FROM t1, t2 WHERE
    (a='A' AND d='E') OR
    (b='B' AND c IN (SELECT c FROM t1))

    SELECT * FROM t1, t2 WHERE
      (a='A' AND d='E') OR
      (b='B' AND c IN (SELECT 'B' UNION SELECT 'C' UNION SELECT 'D'))
  
  SELECT * FROM t1, t2 WHERE
    (b='B' AND c IN ('C', 'D', 'E')) OR
    (a='A' AND d='E')

  SELECT * FROM t1, t2 WHERE
    (b='B' AND c IN (SELECT c FROM t1)) OR
    (a='A' AND d='E')

    SELECT * FROM t1, t2 WHERE
      (b='B' AND c IN (SELECT 'B' UNION SELECT 'C' UNION SELECT 'D')) OR
      (a='A' AND d='E')
  