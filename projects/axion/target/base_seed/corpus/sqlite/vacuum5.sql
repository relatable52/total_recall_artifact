
  PRAGMA auto_vacuum = 0;
  CREATE TABLE main.t1(a,b);
  WITH RECURSIVE c(x) AS (VALUES(1) UNION ALL SELECT x+1 FROM c WHERE x<1000)
    INSERT INTO t1(a,b) SELECT x, randomblob(1000) FROM c;
  CREATE TEMP TABLE ttemp(x,y);
  INSERT INTO ttemp SELECT * FROM t1;
  ATTACH 'test2.db' AS x2;
  ATTACH 'test3.db' AS x3;
  CREATE TABLE x2.t2(c,d);
  INSERT INTO t2 SELECT * FROM t1;
  CREATE TABLE x3.t3(e,f);
  INSERT INTO t3 SELECT * FROM t1;
  DELETE FROM t1 WHERE (rowid%3)!=0;
  DELETE FROM t2 WHERE (rowid%4)!=0;
  DELETE FROM t3 WHERE (rowid%5)!=0;
  PRAGMA main.integrity_check;
  PRAGMA x2.integrity_check;
  PRAGMA x3.integrity_check;

  VACUUM main;

  DELETE FROM t1;
  PRAGMA main.integrity_check;

  VACUUM x2;

  DELETE FROM t2;
  PRAGMA x2.integrity_check;

  VACUUM x3;

  VACUUM temp;

  PRAGMA temp.page_count;

    PRAGMA temp_store = file;
    PRAGMA page_size = 1024;
    PRAGMA cache_size = 50;
    CREATE TABLE t1(i INTEGER PRIMARY KEY, j UNIQUE);
    WITH s(i) AS (
      VALUES(1) UNION ALL SELECT i+1 FROM s WHERE i<1000
    )
    INSERT INTO t1 SELECT NULL, randomblob(100) FROM s;
   VACUUM 