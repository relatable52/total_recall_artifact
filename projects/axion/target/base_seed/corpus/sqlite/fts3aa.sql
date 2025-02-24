
  CREATE VIRTUAL TABLE t2 USING fts3(xyz=abc);
  SELECT xyz FROM t2;

  CREATE VIRTUAL TABLE t3 USING fts3(tokenize=simple, tokenize=simple);
  SELECT tokenize FROM t3;

  CREATE VIRTUAL TABLE t0 USING fts4(order=desc);
  BEGIN;
  INSERT INTO t0(rowid, content) VALUES(1, 'abc');
  UPDATE t0 SET docid=5 WHERE docid=1;
  INSERT INTO t0(rowid, content) VALUES(6, 'abc');

  SELECT docid FROM t0 WHERE t0 MATCH 'abc';

  SELECT docid FROM t0 WHERE t0 MATCH '"abc abc"';
 COMMIT 
  SELECT docid FROM t0 WHERE t0 MATCH 'abc';

  SELECT docid FROM t0 WHERE t0 MATCH '"abc abc"';

  CREATE VIRTUAL TABLE t9 USING fts4(a, "", '---');

  CREATE VIRTUAL TABLE t10 USING fts3(<, b, c);

  CREATE VIRTUAL TABLE z1 USING fts3;
  INSERT INTO z1 VALUES('one two three'),('four one five'),('six two five');
  CREATE TRIGGER z1r1 AFTER DELETE ON z1_content BEGIN
    DELETE FROM z1;
  END;
