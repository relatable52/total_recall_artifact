 CREATE TABLE t1(docid, words) 
  SELECT level, count(*) FROM t2_segdir GROUP BY level
 INSERT INTO t2(t2) VALUES('integrity-check')  INSERT INTO t2(t2) VALUES('integrity-check') 
  SELECT level, count(*) FROM t2_segdir GROUP BY level
 INSERT INTO t2(t2) VALUES('integrity-check') 
  INSERT INTO t2(words) SELECT words FROM t1;
  SELECT level, count(*) FROM t2_segdir GROUP BY level;

  DELETE FROM t2;

  SELECT level, count(*) FROM t2_segdir GROUP BY level
 INSERT INTO t2(t2) VALUES('integrity-check')  INSERT INTO t2(t2) VALUES('integrity-check') 
  SELECT level, count(*) FROM t2_segdir GROUP BY level
 INSERT INTO t2(t2) VALUES('integrity-check') 
  INSERT INTO t2(words) SELECT words FROM t1;
  SELECT level, count(*) FROM t2_segdir GROUP BY level;

  CREATE VIRTUAL TABLE fts USING fts4 (t);
  INSERT INTO fts (fts) VALUES ('optimize');

  INSERT INTO fts(fts) VALUES('integrity-check');
  SELECT count(*) FROM fts_segdir;

  BEGIN;
  INSERT INTO fts (rowid, t) VALUES (2, 'test');
  INSERT INTO fts (fts) VALUES ('optimize');
  COMMIT;
  SELECT level, idx FROM fts_segdir;

  INSERT INTO fts(fts) VALUES('integrity-check');
  SELECT rowid FROM fts WHERE fts MATCH 'test';

  INSERT INTO fts (fts) VALUES ('optimize');
  INSERT INTO fts(fts) VALUES('integrity-check');
