
  PRAGMA defer_foreign_keys;

  PRAGMA foreign_keys=ON;
  CREATE TABLE t1(x INTEGER PRIMARY KEY);
  CREATE TABLE t2(y INTEGER PRIMARY KEY,
          z INTEGER REFERENCES t1(x) DEFERRABLE INITIALLY DEFERRED);
  CREATE INDEX t2z ON t2(z);
  CREATE TABLE t3(u INTEGER PRIMARY KEY, v INTEGER REFERENCES t1(x));
  CREATE INDEX t3v ON t3(v);
  INSERT INTO t1 VALUES(1),(2),(3),(4),(5);
  INSERT INTO t2 VALUES(1,1),(2,2);
  INSERT INTO t3 VALUES(3,3),(4,4);

  PRAGMA defer_foreign_keys;
  ROLLBACK;
  PRAGMA defer_foreign_keys;
  BEGIN;
  PRAGMA defer_foreign_keys=ON;
  PRAGMA defer_foreign_keys;
  COMMIT;
  PRAGMA defer_foreign_keys;
  BEGIN;

  CREATE TABLE p1(a PRIMARY KEY);
  INSERT INTO p1 VALUES('one'), ('two');
  CREATE TABLE c1(x REFERENCES p1);
  INSERT INTO c1 VALUES('two'), ('one');

  BEGIN;
    PRAGMA defer_foreign_keys = 1;
    DELETE FROM p1;
  ROLLBACK;
  PRAGMA defer_foreign_keys;

  BEGIN;
    PRAGMA defer_foreign_keys = 1;
    DROP TABLE p1;
    PRAGMA vdbe_trace = 0;
  ROLLBACK;
  PRAGMA defer_foreign_keys;

  BEGIN;
    PRAGMA defer_foreign_keys = 1;
    DELETE FROM p1;
    DROP TABLE c1;
  COMMIT;
  PRAGMA defer_foreign_keys;

  DROP TABLE p1;
  CREATE TABLE p1(a PRIMARY KEY);
  INSERT INTO p1 VALUES('one'), ('two');
  CREATE TABLE c1(x REFERENCES p1);
  INSERT INTO c1 VALUES('two'), ('one');

  BEGIN;
    PRAGMA defer_foreign_keys = 1;
    INSERT INTO c1 VALUES('three');
    DROP TABLE c1;
  COMMIT;
  PRAGMA defer_foreign_keys;

  CREATE TABLE p2(a PRIMARY KEY, b);
  CREATE TABLE c2(x, y REFERENCES p2 ON DELETE RESTRICT ON UPDATE RESTRICT);
  INSERT INTO p2 VALUES(1, 'one');
  INSERT INTO p2 VALUES(2, 'two');
  INSERT INTO c2 VALUES('i', 1);
 COMMIT 
  BEGIN;
    PRAGMA defer_foreign_keys = 1;
    UPDATE p2 SET a=a-1;
  COMMIT;

  BEGIN;
    PRAGMA defer_foreign_keys = 1;
    UPDATE p2 SET a=a-1;
 ROLLBACK 
  CREATE TRIGGER p2t AFTER DELETE ON p2 BEGIN
    INSERT INTO p2 VALUES(old.a, 'deleted!');
  END;
 COMMIT 
  BEGIN;
    PRAGMA defer_foreign_keys = 1;
    DELETE FROM p2 WHERE a=1;
  COMMIT;
  SELECT * FROM p2;
