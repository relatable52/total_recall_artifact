
  BEGIN;
    CREATE VIRTUAL TABLE ft USING fts3(a, b, c);
    INSERT INTO ft VALUES('one', 'one', 'one');
  COMMIT;

  SELECT * FROM ft WHERE ft MATCH 'b:one'

  SELECT quote(root) FROM ft_segdir;
