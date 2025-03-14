
  PRAGMA page_size=4096;
  PRAGMA auto_vacuum=NONE;
  CREATE TABLE t1(a,b,c,d);
  WITH RECURSIVE c(x) AS (VALUES(1) UNION ALL SELECT x+1 FROM c WHERE x<100)
   INSERT INTO t1(a,b,c,d) SELECT printf('abc%03x',x), x, 1000-x, NULL FROM c;
  CREATE INDEX t1a ON t1(a);
  CREATE INDEX t1bc ON t1(b,c);
  CREATE TABLE t2(x TEXT PRIMARY KEY, y) WITHOUT ROWID;
  INSERT INTO t2(x,y) SELECT a, b FROM t1;

  SELECT sqlite_offset(d) FROM t1 ORDER BY rowid LIMIT 1;

  SELECT offrec(sqlite_offset(d), a, b, c, d) FROM t1 ORDER BY rowid

  SELECT a, typeof(sqlite_offset(+a)) FROM t1
   ORDER BY rowid LIMIT 2;

  SELECT offrec(sqlite_offset(a), a, rowid) FROM t1 ORDER BY a

  SELECT offrec(sqlite_offset(d), a, b, c, d) FROM t1 ORDER BY a

  SELECT offrec(sqlite_offset(a), a, rowid),
         offrec(sqlite_offset(d), a, b, c, d)
  FROM t1 ORDER BY a

  SELECT offrec(sqlite_offset(b), b, c, rowid),
         offrec(sqlite_offset(c), b, c, rowid),
         offrec(sqlite_offset(d), a, b, c, d)
  FROM t1
  ORDER BY b

  SELECT offrec( sqlite_offset(y), x, y ) FROM t2 ORDER BY x

  CREATE TABLE t2(a INT, b INT PRIMARY KEY) WITHOUT ROWID;
  CREATE INDEX x3 ON t2(b);
  CREATE TABLE t1(a INT PRIMARY KEY, b TEXT);
  SELECT * FROM t1 WHERE a IN (SELECT sqlite_offset(b) FROM t2);
