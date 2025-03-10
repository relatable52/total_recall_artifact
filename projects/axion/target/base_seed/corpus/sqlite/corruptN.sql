
    CREATE TABLE t1(x INTEGER PRIMARY KEY AUTOINCREMENT, y);
    PRAGMA writable_schema = 1;
    UPDATE sqlite_schema 
      SET sql = 'CREATE TABLE sqlite_sequence(name-seq)' 
      WHERE name = 'sqlite_sequence';
  
    CREATE TABLE x1(a INTEGER PRIMARY KEY, b UNIQUE, c UNIQUE);
    INSERT INTO x1 VALUES(1, 1, 2);
    INSERT INTO x1 VALUES(2, 2, 3);
    INSERT INTO x1 VALUES(3, 3, 4);
    INSERT INTO x1 VALUES(4, 5, 6);
    PRAGMA writable_schema = 1;

    UPDATE sqlite_schema SET rootpage = (
      SELECT rootpage FROM sqlite_schema WHERE name = 'sqlite_autoindex_x1_2'
    ) WHERE name = 'sqlite_autoindex_x1_1';
  
    CREATE TABLE t1(a, b);
    CREATE INDEX t1a ON t1(a);
    CREATE INDEX t1b ON t1(b);

    PRAGMA writable_schema = 1;
    UPDATE sqlite_schema 
      SET sql = strreplace(sql, 't1', 'json_each') 
      WHERE type='index';
  
      PRAGMA writable_schema = 1;
      SELECT * FROM t1
    
  PRAGMA auto_vacuum = 0;
  PRAGMA page_size=1024;
  CREATE TABLE t1(a INTEGER PRIMARY KEY, b);
  INSERT INTO t1(b) VALUES(zeroblob(300)),(zeroblob(300)),(zeroblob(300)),(zeroblob(300));
  CREATE TABLE t2(a);
  CREATE TRIGGER t1tr BEFORE UPDATE ON t1 BEGIN DELETE FROM t2; END;
  PRAGMA writable_schema=ON;
  UPDATE sqlite_schema SET rootpage=3 WHERE rowid=2;
  PRAGMA writable_schema=RESET;
  INSERT INTO t2 VALUES('active'),('boomer'),('atom'),('atomic'),
         ('alpha channel backup abandon test aback boomer atom alpha active');

  -- Make "t1" a large table. Large enough that the children of the root
  -- node are interior nodes.
  PRAGMA page_size = 1024;
  PRAGMA auto_vacuum = 0;
  CREATE TABLE t1(x);
  WITH s(i) AS (
    SELECT 1 UNION ALL SELECT i+1 FROM s WHERE i<500
  )
  INSERT INTO t1 SELECT zeroblob(300) FROM s;
  
  CREATE TABLE t2(y);
  CREATE TRIGGER tr BEFORE UPDATE ON t1 BEGIN
    DELETE FROM t2;
  END;
  
  -- Set the root of table t2 to 137 - the leftmost child of the root of t1.
  PRAGMA writable_schema = ON;
  UPDATE sqlite_schema SET rootpage = 137 WHERE name='t2';
  PRAGMA writable_schema = RESET;
