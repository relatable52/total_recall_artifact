
    CREATE TABLE log(t TEXT);
    CREATE TABLE t1(x PRIMARY KEY, y, z UNIQUE) %WO%;
    CREATE INDEX t1y ON t1(y);

    INSERT INTO t1 VALUES(1, 'i',   'one');
    INSERT INTO t1 VALUES(2, 'ii',  'two');
    INSERT INTO t1 VALUES(3, 'iii', 'three');
    INSERT INTO t1 VALUES(4, 'iv',  'four');

    CREATE TRIGGER tr1 BEFORE UPDATE ON t1 BEGIN
      INSERT INTO log VALUES(old.z || '->' || new.z);
    END;
    CREATE TRIGGER tr2 AFTER UPDATE ON t1 BEGIN
      INSERT INTO log VALUES(old.y || '->' || new.y);
    END;
  
    WITH data(k, v) AS (
      VALUES(3, 'thirty'), (1, 'ten')
    )
    UPDATE t1 SET z=v FROM data WHERE x=k;

    SELECT * FROM t1;
    SELECT * FROM log;
  
    CREATE TABLE t2(a, b);
    CREATE TABLE t3(k, v);
  
    INSERT INTO t3 VALUES(5,   'v');
    INSERT INTO t3 VALUES(12, 'xii');
  
    INSERT INTO t2 VALUES(2, 12);
    INSERT INTO t2 VALUES(3, 5);
  
    DELETE FROM log;
    UPDATE t1 SET y=v FROM t2, t3 WHERE t1.x=t2.a AND t3.k=t2.b;
  
    SELECT * FROM t1;
    SELECT * FROM log;
  
    DELETE FROM log;
    WITH data(k, v) AS (
      VALUES(1, 'seven'), (1, 'eight'), (2, 'eleven'), (2, 'twelve')
    )
    UPDATE t1 SET z=v FROM data WHERE x=k;
  
    SELECT * FROM t1;
    SELECT * FROM log;
   
    CREATE VIEW v1 AS SELECT * FROM t1;
    CREATE TRIGGER v1tr INSTEAD OF UPDATE ON v1 BEGIN
      UPDATE t1 SET y=new.y, z=new.z WHERE x=new.x;
    END;

    DELETE FROM log;
    WITH data(k, v) AS (
      VALUES(3, 'thirteen'), (3, 'fourteen'), (4, 'fifteen'), (4, 'sixteen')
    )
    UPDATE v1 SET z=v FROM data WHERE x=k;
  
    SELECT * FROM v1;
    SELECT * FROM log;
  
    CREATE TABLE o1(w, x, y, z UNIQUE, PRIMARY KEY(w, x)) %WO%;
    CREATE INDEX o1y ON t1(y);

    INSERT INTO o1 VALUES(0, 0, 'i', 'one');
    INSERT INTO o1 VALUES(0, 1, 'ii', 'two');
    INSERT INTO o1 VALUES(1, 0, 'iii', 'three');
    INSERT INTO o1 VALUES(1, 1, 'iv', 'four');

    CREATE TRIGGER tro1 BEFORE UPDATE ON o1 BEGIN
      INSERT INTO log VALUES(old.z || '->' || new.z);
    END;
    CREATE TRIGGER tro2 AFTER UPDATE ON o1 BEGIN
      INSERT INTO log VALUES(old.y || '->' || new.y);
    END;
  
    DELETE FROM log;
    WITH data(k, v) AS (
      VALUES(3, 'thirty'), (1, 'ten')
    )
    UPDATE o1 SET z=v FROM data WHERE (1+x+w*2)=k;

    SELECT * FROM o1;
    SELECT * FROM log;
  
    DELETE FROM log;
    UPDATE o1 SET y=v FROM t2, t3 WHERE (1+o1.w*2+o1.x)=t2.a AND t3.k=t2.b;
  
    SELECT * FROM o1;
    SELECT * FROM log;
  
    DELETE FROM log;
    WITH data(k, v) AS (
      VALUES(1, 'seven'), (1, 'eight'), (2, 'eleven'), (2, 'twelve')
    )
    UPDATE o1 SET z=v FROM data WHERE (1+w*2+x)=k;
  
    SELECT * FROM o1;
    SELECT * FROM log;
   
    CREATE VIEW w1 AS SELECT * FROM o1;
    CREATE TRIGGER w1tr INSTEAD OF UPDATE ON w1 BEGIN
      UPDATE o1 SET y=new.y, z=new.z WHERE w=new.w AND x=new.x;
    END;

    DELETE FROM log;
    WITH data(k, v) AS (
      VALUES(3, 'thirteen'), (3, 'fourteen'), (4, 'fifteen'), (4, 'sixteen')
    )
    UPDATE w1 SET z=v FROM data WHERE (1+w*2+x)=k;
  
    SELECT * FROM w1;
    SELECT * FROM log;
  
    CREATE TABLE x1(a INTEGER PRIMARY KEY, b) %WO%;
    INSERT INTO x1 VALUES
        (1, 'one'), (2, 'two'), (3, 'three'), (4, 'four'),
        (5, 'five'), (6, 'six'), (7, 'seven'), (8, 'eight');
  
    CREATE TABLE data1(x, y);
    INSERT INTO data1 VALUES
    (1, 'eleven'), (1, 'twenty-one'), (2, 'twelve'), (2, 'twenty-two'),
    (3, 'thirteen'), (3, 'twenty-three'), (4, 'fourteen'), (4, 'twenty-four');
  
    UPDATE x1 SET b=y FROM data1 WHERE a=x ORDER BY a LIMIT 3;
    SELECT * FROM x1;
  
    UPDATE x1 SET b=b||y FROM data1 WHERE a=x ORDER BY b LIMIT 3;
    SELECT * FROM x1;
  
    DROP TABLE x1;
    CREATE TABLE x1(u, v, b, PRIMARY KEY(u, v)) %WO%;
    INSERT INTO x1 VALUES
        (0, 1, 'one'), (1, 0, 'two'), (1, 1, 'three'), (2, 0, 'four'),
        (2, 1, 'five'), (3, 0, 'six'), (3, 1, 'seven'), (4, 0, 'eight');
  
    UPDATE x1 SET b=y FROM data1 WHERE (u*2+v)=x ORDER BY u, v LIMIT 3;
    SELECT * FROM x1;
  
    UPDATE x1 SET b=b||y FROM data1 WHERE (u*2+v)=x ORDER BY b LIMIT 3;
    SELECT * FROM x1;
  
  CREATE TABLE data(x, y, z);
  CREATE VIEW t1 AS SELECT * FROM data;
  CREATE TRIGGER t1_insert INSTEAD OF INSERT ON t1 BEGIN
    INSERT INTO data VALUES(new.x, new.y, new.z);
  END;
  CREATE TRIGGER t1_update INSTEAD OF UPDATE ON t1 BEGIN
    INSERT INTO log VALUES(old.z || '->' || new.z);
  END;

  CREATE TABLE log(t TEXT);

  INSERT INTO t1 VALUES(1, 'i',   'one');
  INSERT INTO t1 VALUES(2, 'ii',  'two');
  INSERT INTO t1 VALUES(3, 'iii', 'three');
  INSERT INTO t1 VALUES(4, 'iv',  'four');

  WITH input(k, v) AS (
      VALUES(3, 'thirty'), (1, 'ten')
  )
  UPDATE t1 SET z=v FROM input WHERE x=k;

    INSERT INTO x1 VALUES(1, 1, 1);
    INSERT INTO x1 VALUES(2, 2, 2);
    INSERT INTO x1 VALUES(3, 3, 3);
    INSERT INTO x1 VALUES(4, 4, 4);
    INSERT INTO x1 VALUES(5, 5, 5);
    CREATE TABLE map(o, t);
    INSERT INTO map VALUES(3, 30), (4, 40), (1, 10);
  
    UPDATE x1 SET a=t FROM map WHERE a=o;
    SELECT * FROM x1 ORDER BY a;
  
  CREATE TABLE x1(a, b, c);
  CREATE TABLE x2(a, b, c);

  CREATE TABLE t1(a); 

  UPDATE t1 SET a = 1 FROM (
      SELECT * FROM t1
  )

  UPDATE t1 SET a = 1 FROM (
      SELECT * FROM t1 UNION ALL SELECT * FROM t1
  )

  CREATE TABLE t1(a);
  INSERT INTO t1(a) VALUES(11),(22),(33),(44),(55);
  CREATE VIEW t2(b,c) AS SELECT a, COUNT(*) OVER () FROM t1;
  CREATE TABLE t3(x,y);
  CREATE TRIGGER t2r1 INSTEAD OF UPDATE ON t2 BEGIN
    INSERT INTO t3(x,y) VALUES(new.b,new.c);
  END;
  SELECT * FROM t2;

  UPDATE t2 SET c=t1.a FROM t1 WHERE t2.b=t1.a;
  SELECT * FROM t3;
