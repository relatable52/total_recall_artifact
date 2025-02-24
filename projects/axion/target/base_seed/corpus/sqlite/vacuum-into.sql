
  CREATE TABLE t1(a INTEGER PRIMARY KEY, b);
  WITH RECURSIVE c(x) AS (VALUES(1) UNION ALL SELECT x+1 FROM c WHERE x<100)
  INSERT INTO t1(a,b) SELECT x, randomblob(600) FROM c;
  CREATE INDEX t1b ON t1(b);
  DELETE FROM t1 WHERE a%2;
  SELECT count(*), sum(a), sum(length(b)) FROM t1;

  VACUUM main INTO 'out.db';

  CREATE TABLE t2(name TEXT);
  INSERT INTO t2 VALUES(':memory:');
  VACUUM main INTO (SELECT name FROM t2);

  VACUUM INTO 'test.db2';

    PRAGMA page_size;
  
    PRAGMA page_size=1024;
    VACUUM INTO 'test.db2';
  
  CREATE TABLE t1(a, b);
  INSERT INTO t1 VALUES(1, 2);
