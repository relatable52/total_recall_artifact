
  DROP TABLE t1;
  CREATE TABLE t1(a, b, c, d, e, 
                  PRIMARY KEY('a'), UNIQUE('b' COLLATE nocase DESC));
  CREATE INDEX t1c ON t1('c');
  CREATE INDEX t1d ON t1('d' COLLATE binary ASC);
  WITH RECURSIVE c(x) AS (VALUES(1) UNION SELECT x+1 FROM c WHERE x<30)
    INSERT INTO t1(a,b,c,d,e) 
      SELECT x, printf('ab%03xxy',x), x, x, x FROM c;

  SELECT a FROM t1 WHERE b='ab005xy' COLLATE nocase;

  EXPLAIN QUERY PLAN
  SELECT a FROM t1 WHERE b='ab005xy' COLLATE nocase;

  SELECT name FROM sqlite_master WHERE tbl_name='t1' ORDER BY name

  CREATE TABLE t2a(a integer, b, PRIMARY KEY(a));
  CREATE TABLE t2b("a" integer, b, PRIMARY KEY("a"));
  CREATE TABLE t2c([a] integer, b, PRIMARY KEY([a]));
  CREATE TABLE t2d('a' integer, b, PRIMARY KEY('a'));

  SELECT name FROM sqlite_master WHERE tbl_name LIKE 't2_' ORDER BY name
