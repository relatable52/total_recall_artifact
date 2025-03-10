
  CREATE TABLE t1(a INTEGER PRIMARY KEY, b int, c DEFAULT 0);
  INSERT INTO t1(a,b) VALUES(1,2),(3,4);
  INSERT INTO t1(a,b) VALUES(1,8),(2,11),(3,1)
    ON CONFLICT(a) DO UPDATE SET b=excluded.b, c=c+1 WHERE t1.b<excluded.b;
  SELECT *, 'x' FROM t1 ORDER BY a;

  DROP TABLE t1;
  CREATE TABLE t1(a INT PRIMARY KEY, b int, c DEFAULT 0) WITHOUT ROWID;
  INSERT INTO t1(a,b) VALUES(1,2),(3,4);
  INSERT INTO t1(a,b) VALUES(1,8),(2,11),(3,1)
    ON CONFLICT(a) DO UPDATE SET b=excluded.b, c=c+1 WHERE t1.b<excluded.b;
  SELECT *, 'x' FROM t1 ORDER BY a;

  DROP TABLE t1;
  CREATE TABLE t1(a INTEGER PRIMARY KEY, b int, c DEFAULT 0);
  INSERT INTO t1(a,b) VALUES(1,2),(3,4);
  WITH nx(a,b) AS (VALUES(1,8),(2,11),(3,1),(2,15),(1,4),(1,99))
  INSERT INTO t1(a,b) SELECT a, b FROM nx WHERE true
    ON CONFLICT(a) DO UPDATE SET b=excluded.b, c=c+1 WHERE t1.b<excluded.b;
  SELECT *, 'x' FROM t1 ORDER BY a;

  DELETE FROM t1;
  INSERT INTO t1(a,b) VALUES(1,2),(3,4);
  WITH nx(a,b) AS (VALUES(1,8),(2,11),(3,1),(2,15),(1,4),(1,99))
  INSERT INTO main.t1 AS t2(a,b) SELECT a, b FROM nx WHERE true
    ON CONFLICT(a) DO UPDATE SET b=excluded.b, c=t2.c+1 WHERE t2.b<excluded.b;
  SELECT *, 'x' FROM t1 ORDER BY a;

  DROP TABLE t1;
  CREATE TABLE t1(a INT PRIMARY KEY, b int, c DEFAULT 0) WITHOUT ROWID;
  INSERT INTO t1(a,b) VALUES(1,2),(3,4);
  WITH nx(a,b) AS (VALUES(1,8),(2,11),(3,1),(2,15),(1,4),(1,99))
  INSERT INTO t1(a,b) SELECT a, b FROM nx WHERE true
    ON CONFLICT(a) DO UPDATE SET b=excluded.b, c=c+1 WHERE t1.b<excluded.b;
  SELECT *, 'x' FROM t1 ORDER BY a;

  DROP TABLE t1;
  CREATE TABLE t1(a INTEGER PRIMARY KEY, b int, c DEFAULT 0);
  CREATE TABLE record(x TEXT, y TEXT);
  CREATE TRIGGER r1 BEFORE INSERT ON t1 BEGIN
    INSERT INTO record(x,y)
        VALUES('before-insert',format('%d,%d,%d',new.a,new.b,new.c));
  END;
  CREATE TRIGGER r2 AFTER INSERT ON t1 BEGIN
    INSERT INTO record(x,y)
        VALUES('after-insert',printf('%d,%d,%d',new.a,new.b,new.c));
  END;
  CREATE TRIGGER r3 BEFORE UPDATE ON t1 BEGIN
    INSERT INTO record(x,y)
        VALUES('before-update',format('%d,%d,%d/%d,%d,%d',
                                      old.a,old.b,old.c,new.a,new.b,new.c));
  END;
  CREATE TRIGGER r4 AFTER UPDATE ON t1 BEGIN
    INSERT INTO record(x,y)
        VALUES('after-update',printf('%d,%d,%d/%d,%d,%d',
                                      old.a,old.b,old.c,new.a,new.b,new.c));
  END;
  INSERT INTO t1(a,b) VALUES(1,2);
  DELETE FROM record;
  INSERT INTO t1(a,b) VALUES(1,2)
    ON CONFLICT(a) DO UPDATE SET c=t1.c+1;
  SELECT * FROM record

  DELETE FROM record;
  INSERT INTO t1(a,b) VALUES(1,2) ON CONFLICT DO NOTHING;
  SELECT * FROM record;

  DELETE FROM record;
  INSERT INTO t1(a,b) VALUES(1,2)
    ON CONFLICT(a) DO UPDATE SET c=c+1 WHERE c<0;
  SELECT * FROM record;

  SELECT * FROM t1;

  DROP TABLE t1;
  CREATE TABLE t1(a INT PRIMARY KEY, b int, c DEFAULT 0) WITHOUT ROWID;
  CREATE TRIGGER r1 BEFORE INSERT ON t1 BEGIN
    INSERT INTO record(x,y)
        VALUES('before-insert',format('%d,%d,%d',new.a,new.b,new.c));
  END;
  CREATE TRIGGER r2 AFTER INSERT ON t1 BEGIN
    INSERT INTO record(x,y)
        VALUES('after-insert',printf('%d,%d,%d',new.a,new.b,new.c));
  END;
  CREATE TRIGGER r3 BEFORE UPDATE ON t1 BEGIN
    INSERT INTO record(x,y)
        VALUES('before-update',format('%d,%d,%d/%d,%d,%d',
                                      old.a,old.b,old.c,new.a,new.b,new.c));
  END;
  CREATE TRIGGER r4 AFTER UPDATE ON t1 BEGIN
    INSERT INTO record(x,y)
        VALUES('after-update',printf('%d,%d,%d/%d,%d,%d',
                                      old.a,old.b,old.c,new.a,new.b,new.c));
  END;
  INSERT INTO t1(a,b) VALUES(1,2);
  DELETE FROM record;
  INSERT INTO t1(a,b) VALUES(1,2)
    ON CONFLICT(a) DO UPDATE SET c=t1.c+1;
  SELECT * FROM record

  DELETE FROM record;
  INSERT INTO t1(a,b) VALUES(1,2) ON CONFLICT DO NOTHING;
  SELECT * FROM record;

  DELETE FROM record;
  INSERT INTO t1(a,b) VALUES(1,2)
    ON CONFLICT(a) DO UPDATE SET c=c+1 WHERE c<0;
  SELECT * FROM record;

  SELECT * FROM t1;
