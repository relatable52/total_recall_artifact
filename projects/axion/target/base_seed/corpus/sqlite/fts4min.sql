
  CREATE TABLE t1(a NOT NULL, b);
  CREATE INDEX i1 ON t1(a);

  CREATE VIRTUAL TABLE ft USING fts3(c);
  INSERT INTO ft(docid, c) VALUES(22, 'hello world');
  INSERT INTO ft(docid, c) VALUES(44, 'hello world');
  INSERT INTO ft(docid, c) VALUES(11, 'hello world');

  SELECT max(rowid) FROM ft

  SELECT min(rowid) FROM ft
