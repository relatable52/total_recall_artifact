 
  CREATE TABLE t1(docid, words);

  CREATE VIRTUAL TABLE x1 USING fts3; 
  INSERT INTO x1(x1) VALUES('nodesize=64');
  INSERT INTO x1(x1) VALUES('maxpending=64');

  INSERT INTO x1(docid, content) SELECT * FROM t1;

    INSERT INTO x1(x1) VALUES('merge=1,2');
  
    INSERT INTO x1(x1) VALUES('integrity-check');
  