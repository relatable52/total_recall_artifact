
  CREATE VIRTUAL TABLE ft USING fts3(x);
  BEGIN;
    INSERT INTO ft VALUES('a one'), ('b one'), ('c one');

  BEGIN;
    INSERT INTO ft VALUES('a one'), ('b one'), ('c one');

  SELECT docid, optimize(ft) FROM ft WHERE ft MATCH 'one'
