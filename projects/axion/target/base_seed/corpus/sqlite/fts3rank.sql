
  CREATE VIRTUAL TABLE t1 USING fts3(a, b);
  INSERT INTO t1 VALUES('one two', 'one');
  INSERT INTO t1 VALUES('one two', 'three');
  INSERT INTO t1 VALUES('one two', 'two');

  SELECT * FROM t1 WHERE t1 MATCH 'one' 
  ORDER BY rank(matchinfo(t1), 1.0, 1.0) DESC, rowid

  SELECT * FROM t1 WHERE t1 MATCH 'two' 
  ORDER BY rank(matchinfo(t1), 1.0, 1.0) DESC, rowid
