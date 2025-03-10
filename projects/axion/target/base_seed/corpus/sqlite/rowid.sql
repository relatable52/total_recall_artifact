
  CREATE TABLE t13(x);
  INSERT INTO t13(rowid,x) VALUES(1234,5);
  SELECT rowid, x, addrow(rowid+1000), '|' FROM t13 LIMIT 3;
  SELECT last_insert_rowid();

  CREATE TABLE t14(x INTEGER PRIMARY KEY);
  INSERT INTO t14(x) VALUES (100);

  SELECT * FROM t14 WHERE x < 'a' ORDER BY rowid ASC;

  SELECT * FROM t14 WHERE x < 'a' ORDER BY rowid DESC;

  DELETE FROM t14;
  SELECT * FROM t14 WHERE x < 'a' ORDER BY rowid ASC;

  SELECT * FROM t14 WHERE x < 'a' ORDER BY rowid DESC;

  PRAGMA reverse_unordered_selects=true;
  CREATE TABLE t1 (c0, c1);
  CREATE TABLE t2 (c0 INT UNIQUE);
  INSERT INTO t1(c0, c1) VALUES (0, 0), (0, NULL);
  INSERT INTO t2(c0) VALUES (1);

  SELECT t2.c0, t1.c1 FROM t1, t2 
  WHERE (t2.rowid <= 'a') OR (t1.c0 <= t2.c0) LIMIT 100

  SELECT 1, NULL INTERSECT SELECT * FROM (
      SELECT t2.c0, t1.c1 FROM t1, t2
      WHERE ((t2.rowid <= 'a')) OR (t1.c0 <= t2.c0) ORDER BY 'a' DESC LIMIT 100
  );

  CREATE TABLE t1(x);
  CREATE TABLE t2(y PRIMARY KEY) WITHOUT ROWID;
  CREATE VIEW v1 AS SELECT x FROM t1;
  CREATE TABLE t3(z);

  INSERT INTO t1(rowid, x) VALUES(1, 1);
  INSERT INTO t2(y) VALUES(2);
  INSERT INTO t3(rowid, z) VALUES(3, 3);
11331133