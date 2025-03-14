
  PRAGMA auto_vacuum=OFF;
  PRAGMA page_size = 1024;
  PRAGMA journal_mode = wal;
  CREATE TABLE c1(x, y, z);
  INSERT INTO c1 VALUES(1, 2, 3);

  INSERT INTO c1 VALUES(4, 5, 6);
  INSERT INTO c1 VALUES(7, 8, 9);

  SELECT * FROM c1
waldelete
  PRAGMA auto_vacuum=OFF;
  PRAGMA journal_mode = wal;
  CREATE TABLE y1(a PRIMARY KEY, b UNIQUE, c);
  INSERT INTO y1 VALUES('a', 'b', 'c');
  INSERT INTO y1 VALUES('d', 'e', 'f');

  BEGIN;
    SELECT * FROM y1;

  UPDATE y1 SET c='g' WHERE a='d';
  PRAGMA wal_checkpoint;

  COMMIT
