
  CREATE VIRTUAL TABLE xx USING fts3(x);
  INSERT INTO xx VALUES('A x x x B C x x');
  INSERT INTO xx VALUES('A B C x B x x C');
  INSERT INTO xx VALUES('A x x B C x x x');

  SELECT oid,extract(offsets(xx), x) FROM xx WHERE xx MATCH 'a OR (b NEAR/1 c)';

  DELETE FROM xx;
  INSERT INTO xx VALUES('A x x x B C x x');
  INSERT INTO xx VALUES('A x x C x x x C');
  INSERT INTO xx VALUES('A x x B C x x x');

  SELECT oid,extract(offsets(xx), x) FROM xx WHERE xx MATCH 'a OR (b NEAR/1 c)';

  DELETE FROM xx;
  INSERT INTO xx(rowid, x) VALUES(1, 'A B C');
  INSERT INTO xx(rowid, x) VALUES(2, 'A x');
  INSERT INTO xx(rowid, x) VALUES(3, 'A B C');
  INSERT INTO xx(rowid, x) VALUES(4, 'A B C x x x x x x x B');
  INSERT INTO xx(rowid, x) VALUES(5, 'A x x x x x x x x x C');
  INSERT INTO xx(rowid, x) VALUES(6, 'A x x x x x x x x x x x B');
  INSERT INTO xx(rowid, x) VALUES(7, 'A B C');

  SELECT oid,extract(offsets(xx), x) FROM xx WHERE xx MATCH 'a OR (b NEAR/1 c)';

  DELETE FROM xx;
  INSERT INTO xx(rowid, x) VALUES(7, 'A B C');
  INSERT INTO xx(rowid, x) VALUES(6, 'A x');
  INSERT INTO xx(rowid, x) VALUES(5, 'A B C');
  INSERT INTO xx(rowid, x) VALUES(4, 'A B C x x x x x x x B');
  INSERT INTO xx(rowid, x) VALUES(3, 'A x x x x x x x x x C');
  INSERT INTO xx(rowid, x) VALUES(2, 'A x x x x x x x x x x x B');
  INSERT INTO xx(rowid, x) VALUES(1, 'A B C');

  SELECT oid,extract(offsets(xx), x) FROM xx WHERE xx MATCH 'a OR (b NEAR/1 c)'
  ORDER BY docid DESC;

  CREATE VIRTUAL TABLE x1 USING fts3(x);
  INSERT INTO x1 VALUES('A A A');
  INSERT INTO x1 VALUES('A A A');

  SELECT offsets(x1) FROM x1 WHERE x1 MATCH 'a OR b AND c NEAR d'
