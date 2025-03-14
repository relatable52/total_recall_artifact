 PRAGMA foreign_keys = 1; 
  PRAGMA foreign_keys = on;
  CREATE TABLE p1(a PRIMARY KEY, b) WITHOUT ROWID;
  CREATE TABLE c1(x REFERENCES p1 DEFERRABLE INITIALLY DEFERRED);

  INSERT INTO p1 VALUES(1, 'one');
  INSERT INTO p1 VALUES(2, 'two');
  INSERT INTO c1 VALUES(1);
  INSERT INTO c1 VALUES(2);

  PRAGMA foreign_keys = on;
  CREATE TABLE p2(a PRIMARY KEY, b);
  CREATE TABLE c2(
    x PRIMARY KEY,
    y REFERENCES p2 DEFERRABLE INITIALLY DEFERRED
  ) WITHOUT ROWID;

  PRAGMA foreign_keys = on;
  CREATE TABLE p3(a PRIMARY KEY, b) WITHOUT ROWID;
  CREATE TABLE c3(x REFERENCES p3);

  INSERT INTO p3 VALUES(1, 'one');
  INSERT INTO p3 VALUES(2, 'two');
  INSERT INTO c3 VALUES(1);
  INSERT INTO c3 VALUES(2);

  CREATE TRIGGER p3d AFTER DELETE ON p3 WHEN old.a=1 BEGIN
    INSERT OR REPLACE INTO p3 VALUES(2, 'three');
  END;

  PRAGMA foreign_keys=ON;
  CREATE TABLE t2(
    a PRIMARY KEY, b, c, d, e,
      FOREIGN KEY(b, c) REFERENCES t2(d, e)
  ) WITHOUT ROWID;
  CREATE UNIQUE INDEX idx ON t2(d, e);

  INSERT INTO t2 VALUES(1, 'one', 'one', 'one', 'one'); -- row is parent of self
  INSERT INTO t2 VALUES(2, 'one', 'one', 'one', NULL);  -- parent is row 1

  CREATE TABLE t1 (
      c1 PRIMARY KEY,
      c2 NUMERIC,
      FOREIGN KEY(c1) REFERENCES t1(c2)
      ) WITHOUT ROWID ;
  CREATE INDEX t1c1 ON t1(c1);
  CREATE UNIQUE INDEX t1c1unique ON t1(c2);

  INSERT OR REPLACE INTO t1 VALUES(20000, 20000);

  PRAGMA foreign_keys = true;
  CREATE TABLE parent(
    p TEXT PRIMARY KEY
  );
  CREATE TABLE child(
    c INTEGER UNIQUE, 
    FOREIGN KEY(c) REFERENCES parent(p) DEFERRABLE INITIALLY DEFERRED
  );
  BEGIN;
    INSERT INTO child VALUES(123);
    INSERT INTO parent VALUES('123');
  COMMIT;

  PRAGMA integrity_check;

  INSERT INTO parent VALUES(1200);
  BEGIN;
    INSERT INTO child VALUES(456);
    UPDATE parent SET p = '456' WHERE p=1200;
  COMMIT;

  PRAGMA integrity_check;

  PRAGMA foreign_keys = on;
  CREATE TABLE c1(b);
  INSERT INTO c1 VALUES(123);

  ATTACH 'test.db2' AS aux;
  CREATE TABLE aux.p1(a INTEGER PRIMARY KEY);
  CREATE TABLE aux.c1(b REFERENCES p1(a) ON DELETE RESTRICT);

  INSERT INTO aux.p1 VALUES(123);

  DELETE FROM aux.p1 WHERE a=123;
