 CREATE TABLE t1(docid, words); 
  CREATE VIRTUAL TABLE x1 USING fts4;
  INSERT INTO x1(x1) VALUES('automerge=2');

  DELETE FROM t1 WHERE rowid>16;
  DROP TABLE IF EXISTS x1;
  CREATE VIRTUAL TABLE x1 USING fts4;
