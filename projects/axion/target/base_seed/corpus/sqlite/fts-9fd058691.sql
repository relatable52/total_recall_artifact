
  CREATE VIRTUAL TABLE fts USING fts3( tags TEXT);
  INSERT INTO fts (tags) VALUES ('tag1');
  SELECT * FROM fts WHERE tags MATCH 'tag1';

  CREATE VIRTUAL TABLE fts USING fts3(tags TEXT);
  INSERT INTO fts (docid, tags) VALUES (1, 'tag1');
  INSERT INTO fts (docid, tags) VALUES (2, NULL);
  INSERT INTO fts (docid, tags) VALUES (3, 'three');
