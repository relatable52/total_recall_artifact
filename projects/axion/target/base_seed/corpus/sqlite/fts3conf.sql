
  CREATE VIRTUAL TABLE t1 USING fts3(x);
  INSERT INTO t1(rowid, x) VALUES(1, 'a b c d');
  INSERT INTO t1(rowid, x) VALUES(2, 'e f g h');

  CREATE TABLE source(a, b);
  INSERT INTO source VALUES(4, 'z');
  INSERT INTO source VALUES(2, 'y');

  DELETE FROM t1;
  BEGIN;
    INSERT INTO t1 VALUES('a b c');
    SAVEPOINT a;
      INSERT INTO t1 VALUES('x y z');
    ROLLBACK TO a;
  COMMIT;
 COMMIT a b c
    CREATE VIRTUAL TABLE t3 USING fts4;
    REPLACE INTO t3(docid, content) VALUES (1, 'one two');
    SELECT quote(matchinfo(t3, 'na')) FROM t3 WHERE t3 MATCH 'one'
  
    REPLACE INTO t3(docid, content) VALUES (2, 'one two three four');
    SELECT quote(matchinfo(t3, 'na')) FROM t3 WHERE t3 MATCH 'four'
  
    REPLACE INTO t3(docid, content) VALUES (1, 'one two three four five six');
    SELECT quote(matchinfo(t3, 'na')) FROM t3 WHERE t3 MATCH 'six'
  
    UPDATE OR REPLACE t3 SET docid = 2 WHERE docid=1;
    SELECT quote(matchinfo(t3, 'na')) FROM t3 WHERE t3 MATCH 'six'
  
    UPDATE OR REPLACE t3 SET docid = 3 WHERE docid=2;
    SELECT quote(matchinfo(t3, 'na')) FROM t3 WHERE t3 MATCH 'six'
  
    REPLACE INTO t3(docid, content) VALUES (3, 'one two');
    SELECT quote(matchinfo(t3, 'na')) FROM t3 WHERE t3 MATCH 'one'
  
    REPLACE INTO t3(docid, content) VALUES(NULL,'one two three four');
    REPLACE INTO t3(docid, content) VALUES(NULL,'one two three four five six');
    SELECT docid FROM t3;
  
    UPDATE OR REPLACE t3 SET docid = 5, content='three four' WHERE docid = 4;
    SELECT quote(matchinfo(t3, 'na')) FROM t3 WHERE t3 MATCH 'one'
  
  COMMIT;

  SELECT * FROM t0 WHERE t0 MATCH 'abc';
  INSERT INTO t0(t0) VALUES('integrity-check');

  CREATE VIRTUAL TABLE t01 USING fts4;
  BEGIN;
    SAVEPOINT abc;
      INSERT INTO t01 VALUES('a b c');
    ROLLBACK TO abc;
  COMMIT;

  SELECT * FROM t01 WHERE t01 MATCH 'b';
  INSERT INTO t01(t01) VALUES('integrity-check');

  CREATE VIRTUAL TABLE t02 USING fts4;
  INSERT INTO t01 VALUES('1 1 1');
  INSERT INTO t02 VALUES('2 2 2');
  BEGIN;
    SAVEPOINT abc;
      INSERT INTO t01 VALUES('a b c');
      INSERT INTO t02 VALUES('a b c');
    ROLLBACK TO abc;
  COMMIT;

  SELECT * FROM t01 WHERE t01 MATCH 'b';
  INSERT INTO t01(t01) VALUES('integrity-check');

  CREATE TABLE A(ID INTEGER PRIMARY KEY, AnotherID INTEGER, Notes TEXT);
  CREATE VIRTUAL TABLE AFTS USING FTS4 (Notes);
  CREATE TRIGGER A_DeleteTrigger AFTER DELETE ON A FOR EACH ROW BEGIN 
    DELETE FROM AFTS WHERE rowid=OLD.ID; 
  END;
  CREATE TABLE B(ID INTEGER PRIMARY KEY,Notes TEXT);
  CREATE VIRTUAL TABLE BFTS USING FTS3 (Notes);
  CREATE TRIGGER B_DeleteTrigger AFTER DELETE ON B FOR EACH ROW BEGIN 
    DELETE FROM BFTS WHERE rowid=OLD.ID; 
  END;

  BEGIN TRANSACTION;
    DELETE FROM A WHERE AnotherID=1;
    DELETE FROM B WHERE ID=1;
  COMMIT;
