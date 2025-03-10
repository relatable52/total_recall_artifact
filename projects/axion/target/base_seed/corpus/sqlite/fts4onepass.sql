
  CREATE VIRTUAL TABLE ft USING fts3;
  INSERT INTO ft(rowid, content) VALUES(1, '1 2 3');
  INSERT INTO ft(rowid, content) VALUES(2, '4 5 6');
  INSERT INTO ft(rowid, content) VALUES(3, '7 8 9');

  CREATE TABLE t1(x);

  CREATE TRIGGER t1_ai AFTER INSERT ON t1 BEGIN
    DELETE FROM ft WHERE rowid=new.x;
  END;

  CREATE TRIGGER t1_ad AFTER DELETE ON t1 BEGIN
    UPDATE ft SET content = 'a b c' WHERE rowid=old.x;
  END;

  CREATE TRIGGER t1_bu BEFORE UPDATE ON t1 BEGIN
    DELETE FROM ft WHERE rowid=old.x;
  END;

    DROP TABLE IF EXISTS ft2;
    CREATE VIRTUAL TABLE ft2 USING fts4;
    INSERT INTO ft2(rowid, content) VALUES(1, 'a b c');
    INSERT INTO ft2(rowid, content) VALUES(2, 'a b d');
    INSERT INTO ft2(rowid, content) VALUES(3, 'a b e');
   SELECT rowid, content FROM ft2  
      INSERT INTO ft2(ft2) VALUES('integrity-check');
    
  CREATE VIRTUAL TABLE zt USING fts4(a, b);
  INSERT INTO zt(rowid, a, b) VALUES(1, 'unus duo', NULL);
  INSERT INTO zt(rowid, a, b) VALUES(2, NULL, NULL);

  BEGIN;
    UPDATE zt SET b='septum' WHERE rowid = 1;
    UPDATE zt SET b='octo' WHERE rowid = 1;
  COMMIT;

  SELECT count(*) FROM zt_segdir;
