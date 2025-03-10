
  CREATE VIRTUAL TABLE t14 USING fts4(a, b);
  INSERT INTO t14 VALUES('one two three', 'one three four');
  INSERT INTO t14 VALUES('a b c', 'd e a');

  SELECT rowid FROM t14 WHERE t14 MATCH '"one two three"'

  SELECT rowid FROM t14 WHERE t14 MATCH '"one four"'

  SELECT rowid FROM t14 WHERE t14 MATCH '"e a"'

  SELECT rowid FROM t14 WHERE t14 MATCH '"e b"'

  CREATE VIRTUAL TABLE t15 USING fts4(a, b, c);
  INSERT INTO t15 VALUES('abc def ghi', 'abc2 def2 ghi2', 'abc3 def3 ghi3');
  INSERT INTO t15 VALUES('abc2 def2 ghi2', 'abc2 def2 ghi2', 'abc def3 ghi3');

  SELECT rowid FROM t15 WHERE t15 MATCH '"abc* def2"'

  CREATE VIRTUAL TABLE t16 USING fts4;
  INSERT INTO t16 VALUES('theoretical work to examine the relationship');
  INSERT INTO t16 VALUES('solution of our problems on the invisible');
  DELETE FROM t16_content WHERE rowid = 2;

  CREATE VIRTUAL TABLE t17 USING fts4;
  INSERT INTO t17(content) VALUES('one one one');
  UPDATE t17_segdir SET root = X'00036F6E65FFFFFFFFFFFFFFFFFFFFFF02030300'
