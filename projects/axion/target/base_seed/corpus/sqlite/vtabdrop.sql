
    CREATE VIRTUAL TABLE rt USING rtree(id, x1, x2);
    CREATE TABLE t1(x, y);
    INSERT INTO t1 VALUES(1, 2);
  
    SELECT name FROM sqlite_master ORDER BY 1;
    SELECT * FROM t1;
    SELECT * FROM rt;
  
    SELECT name FROM sqlite_master ORDER BY 1;
  
    CREATE VIRTUAL TABLE ft USING fts5(x);
    CREATE TABLE t1(x, y);
    INSERT INTO t1 VALUES(1, 2);
  
    SELECT name FROM sqlite_master ORDER BY 1;
  
    SELECT name FROM sqlite_master ORDER BY 1;
  
    CREATE VIRTUAL TABLE ft USING fts3(x);
    CREATE TABLE t1(x, y);
    INSERT INTO t1 VALUES(1, 2);
  
    SELECT name FROM sqlite_master ORDER BY 1;
  
    SELECT name FROM sqlite_master ORDER BY 1;
  