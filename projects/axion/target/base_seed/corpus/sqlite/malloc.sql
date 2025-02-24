
  CREATE TABLE t1(a);
  INSERT INTO t1 VALUES('fghij');
  INSERT INTO t1 VALUES('pqrst');
  INSERT INTO t1 VALUES('abcde');
  INSERT INTO t1 VALUES('uvwxy');
  INSERT INTO t1 VALUES('klmno');

  SELECT * FROM t1 ORDER BY 1 COLLATE utf16bin;

  DROP TABLE IF EXISTS t1;
  CREATE TABLE t1(a COLLATE utf16bin);
  INSERT INTO t1 VALUES('fghij' || $::big);
  INSERT INTO t1 VALUES('pqrst' || $::big);
  INSERT INTO t1 VALUES('abcde' || $::big);
  INSERT INTO t1 VALUES('uvwxy' || $::big);
  INSERT INTO t1 VALUES('klmno' || $::big);
  CREATE INDEX i1 ON t1(a);

  CREATE TABLE t1(x INTEGER PRIMARY KEY, y, z);
  CREATE TABLE t2(a, b);
  CREATE VIEW a002 AS SELECT *, sum(b) AS m FROM t2 GROUP BY a;
