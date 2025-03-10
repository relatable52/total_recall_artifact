
  CREATE TABLE map(k, v);
  INSERT INTO map VALUES(1, 'one'), (2, 'two'), (3, 'three'), (4, 'four');

  CREATE TABLE t1(a INTEGER PRIMARY KEY, b, c);

  CREATE TRIGGER tr AFTER INSERT ON t1 BEGIN
    UPDATE t1 SET c = v FROM map WHERE k=new.a AND a=new.a;
  END;

  INSERT INTO t1(a) VALUES(1);

  SELECT a, c FROM t1 ORDER BY a;

  INSERT INTO t1(a) VALUES(2), (3), (4), (5);
  SELECT a, c FROM t1 ORDER BY a;

  ATTACH 'test.db2' AS aux;
  CREATE TABLE aux.t3(x, y);
  INSERT INTO aux.t3 VALUES('x', 'y');

  CREATE TEMP TRIGGER tr2 AFTER INSERT ON t1 BEGIN
    UPDATE t1 SET b = y FROM aux.t3 WHERE a=new.a;
  END;
  INSERT INTO t1(a) VALUES(10), (20);
  SELECT * FROM t1;

  CREATE TABLE link(f, t);
  INSERT INTO link VALUES(5, 2), (20, 10), (2, 1);
  CREATE TRIGGER tr3 BEFORE DELETE ON t1 BEGIN
    UPDATE t1 SET b=coalesce(old.b,old.c) FROM main.link WHERE a=t AND old.a=f;
  END;
  DELETE FROM t1 WHERE a=2;
  SELECT * FROM t1;

  CREATE TABLE mmm(x, y);
  INSERT INTO mmm VALUES(1, 'one');
  INSERT INTO mmm VALUES(2, 'two');
  INSERT INTO mmm VALUES(3, 'three');

  ATTACH 'test.db2' AS aux;
  CREATE TABLE aux.t1(a, b);
  CREATE TABLE aux.mmm(x, y);
  INSERT INTO aux.mmm VALUES(1, 'ONE');
  INSERT INTO aux.mmm VALUES(2, 'TWO');
  INSERT INTO aux.mmm VALUES(3, 'THREE');

  CREATE TRIGGER aux.ttt AFTER INSERT ON t1 BEGIN
    UPDATE t1 SET b=y FROM mmm WHERE x=new.a AND a=new.a;
  END;
  
  INSERT INTO t1(a) VALUES (2);
  SELECT * FROM t1;

  CREATE TABLE t1(k, a, b);
  INSERT INTO t1 VALUES('a', 1, 'one');
  INSERT INTO t1 VALUES('b', 2, 'two');
  INSERT INTO t1 VALUES('c', 3, 'three');
  INSERT INTO t1 VALUES('d', 4, 'four');

  CREATE TABLE log(x);
  CREATE VIEW v1 AS SELECT k, a, b AS __hidden__b FROM t1;
  CREATE TRIGGER tr1 INSTEAD OF UPDATE ON v1 BEGIN
    INSERT INTO log VALUES(
      '('||old.a||','||old.__hidden__b||')->('||new.a||','||new.__hidden__b||')'
    );
  END;

    SELECT * FROM v1
  
    SELECT * FROM v1
  
  UPDATE v1 SET a='xyz' WHERE k IN ('a', 'c');
  SELECT * FROM log;
  DELETE FROM log;

  CREATE TABLE map(k, v);
  INSERT INTO map VALUES('b', 'twelve');
  INSERT INTO map VALUES('d', 'fourteen');
  UPDATE v1 SET a=map.v FROM map WHERE v1.k=map.k;
  SELECT * FROM log;
  DELETE FROM log;
