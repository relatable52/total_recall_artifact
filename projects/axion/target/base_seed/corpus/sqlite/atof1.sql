
  PRAGMA encoding = 'UTF16be';
  CREATE TABLE t1(a, b);
  INSERT INTO t1(rowid,a) VALUES (1,x'00'),(2,3);
  SELECT substr(a,',') is true FROM t1 ORDER BY rowid;

  SELECT substr(a,',') is true FROM t1 ORDER BY rowid DESC;

  CREATE INDEX i1 ON t1(a);
  SELECT count(*) FROM t1 WHERE substr(a,',');

  SELECT randomblob(0) - 1;
