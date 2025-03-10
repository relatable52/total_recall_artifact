
  CREATE TABLE t1(a, b, c);
  CREATE VIEW v1 AS SELECT * FROM t1;

  CREATE TABLE t2(x INTEGER PRIMARY KEY, y, z UNIQUE);
  CREATE INDEX t2y ON t2(y);

  CREATE TABLE t3(q, r, s);
  CREATE INDEX t3rs ON t3(r+s);

    CREATE VIRTUAL TABLE ft1 USING fts5(one, two);
  
  ALTER TABLE t1 DROP COLUMN b;

  SELECT sql FROM sqlite_schema WHERE name = 't1'

  ALTER TABLE t1 DROP COLUMN c;

  SELECT sql FROM sqlite_schema WHERE name = 't1'

    CREATE TABLE t1(x, y INTEGER PRIMARY KEY, z) %WO% ;
    INSERT INTO t1 VALUES(1, 2, 3);
    INSERT INTO t1 VALUES(4, 5, 6);
    INSERT INTO t1 VALUES(7, 8, 9);
  
    ALTER TABLE t1 DROP COLUMN x;
    SELECT * FROM t1;
  
    ALTER TABLE t1 DROP COLUMN z;
    SELECT * FROM t1;
  
  CREATE TABLE t12(a, b, c, CHECK(c>10));
  CREATE TABLE t13(a, b, c CHECK(c>10));

    INSERT INTO "my table"(a, b, d) VALUES(1, 2, 'hello');
    INSERT INTO "my table"(a, b, d) VALUES(3, 4, 'world');

    SELECT * FROM "my table"
  
    ALTER TABLE "my table" DROP COLUMN c;
  
    SELECT * FROM "my table"
  
    INSERT INTO x1(a, b, c, e) VALUES(1, 2, 3, 4);
    INSERT INTO x1(a, b, c, e) VALUES(5, 6, 7, 8);
    INSERT INTO x1(a, b, c, e) VALUES(9, 10, 11, 12);
    SELECT * FROM x1;
  
    ALTER TABLE x1 DROP COLUMN a
  
    SELECT * FROM x1
  
    ALTER TABLE x1 DROP COLUMN e
  
    SELECT * FROM x1
  
  CREATE TABLE p1(a PRIMARY KEY, b UNIQUE);
  CREATE TABLE c1(x, y, z REFERENCES p1(c));
  CREATE TABLE c2(x, y, z, w REFERENCES p1(b));

  ALTER TABLE c1 DROP COLUMN z;
  ALTER TABLE c2 DROP COLUMN z;
  SELECT sql FROM sqlite_schema WHERE name IN ('c1', 'c2');

  CREATE VIEW v1 AS SELECT d, e FROM p1

  DROP VIEW v1;
  CREATE VIEW v1 AS SELECT x, y FROM c1;

  CREATE TRIGGER tr AFTER INSERT ON c1 BEGIN
    INSERT INTO p1 VALUES(new.y, new.xyz);
  END;

  DROP TRIGGER tr;
  CREATE TRIGGER tr AFTER INSERT ON c1 BEGIN
    INSERT INTO p1 VALUES(new.y, new.z);
  END;

  CREATE TABLE t1(a, b, c, PRIMARY KEY(a COLLATE nocase, a)) WITHOUT ROWID;
  INSERT INTO t1 VALUES(1, 2, 3);
  INSERT INTO t1 VALUES(4, 5, 6);

  ALTER TABLE t1 DROP COLUMN c;                

  SELECT sql FROM sqlite_schema;

  SELECT * FROM t1;

  CREATE TABLE t1(a INTEGER PRIMARY KEY, b);
  PRAGMA writable_schema = 1;
  UPDATE sqlite_schema 
  SET sql = 'CREATE TABLE t1(a INTEGER PRIMARY KEY AUTOINCREMENT, b)'

  ALTER TABLE t1 DROP COLUMN b;                

  SELECT sql FROM sqlite_schema;

    WITH s(i) AS (
        SELECT 1 UNION ALL SELECT i+1 FROM s WHERE i<50000
    )
    INSERT INTO t1(a, b, c) SELECT i, 123, 456 FROM s;
  
    ALTER TABLE t1 DROP COLUMN b;
  
    SELECT count(*), c FROM t1 GROUP BY c;
  