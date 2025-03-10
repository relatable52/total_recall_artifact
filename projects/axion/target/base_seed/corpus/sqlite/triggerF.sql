
    PRAGMA recursive_triggers = on;
    CREATE TABLE t1(a INT PRIMARY KEY, b) WITHOUT ROWID;
    CREATE TABLE log(t);
  
    INSERT INTO t1 VALUES(1, 'one');
    INSERT INTO t1 VALUES(2, 'two');
    INSERT INTO t1 VALUES(3, 'three');

    DELETE FROM t1 WHERE a=1;
    INSERT OR REPLACE INTO t1 VALUES(2, 'three');
    UPDATE OR REPLACE t1 SET a=3 WHERE a=2;
  
    SELECT * FROM log ORDER BY rowid;
  