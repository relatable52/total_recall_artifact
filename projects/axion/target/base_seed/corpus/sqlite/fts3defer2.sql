
  CREATE VIRTUAL TABLE t1 USING fts4;
a z 
  INSERT INTO t1 VALUES('a b c d e f a x y');
  INSERT INTO t1 VALUES('');
  INSERT INTO t1 VALUES('');
  INSERT INTO t1 VALUES('');
  INSERT INTO t1 VALUES('');
  INSERT INTO t1 VALUES('');
  INSERT INTO t1(t1) VALUES('optimize');

  SELECT count(*) FROM t1_segments WHERE length(block)>10000;
  UPDATE t1_segments SET block = zeroblob(length(block)) WHERE length(block)>10000;

  SELECT content FROM t1 WHERE t1 MATCH 'f (e a)';

  SELECT content FROM t1 WHERE t1 MATCH 'f (e NEAR/2 a)';

  SELECT snippet(t1, '[', ']'), offsets(t1), mit(matchinfo(t1, 'pcxnal'))
  FROM t1 WHERE t1 MATCH 'f (e NEAR/2 a)';

  SELECT snippet(t1, '[', ']'), offsets(t1), mit(matchinfo(t1, 'pcxnal'))
  FROM t1 WHERE t1 MATCH 'f (e NEAR/3 a)';
 DROP TABLE t1 a z 
  INSERT INTO t2 VALUES('a b c d e f g z');
  INSERT INTO t2 VALUES('a b c d e f g');

    SELECT mit(matchinfo(t2, 'pcxnal')) FROM t2 WHERE t2 MATCH 'a b';
  
    SELECT mit(matchinfo(t2, 'x')) FROM t2 WHERE t2 MATCH 'g z';
  
    SELECT mit(matchinfo(t2, 'x')) FROM t2 WHERE t2 MATCH 'g OR (g z)';
  
    SELECT mit(matchinfo(t2, 'x')) FROM t2 WHERE t2 MATCH 'e "g z"';
  
  CREATE VIRTUAL TABLE t3 USING fts4;
  INSERT INTO t3 VALUES('a b c d e f');
  INSERT INTO t3 VALUES('x b c d e f');
  INSERT INTO t3 VALUES('d e f a b c');
  INSERT INTO t3 VALUES('b c d e f');
  INSERT INTO t3 VALUES('');
  INSERT INTO t3 VALUES('');
  INSERT INTO t3 VALUES('');
  INSERT INTO t3 VALUES('');
  INSERT INTO t3 VALUES('');
  INSERT INTO t3 VALUES('');

    SELECT docid, mit(matchinfo(t3, 'pcxnal')) FROM t3 WHERE t3 MATCH '"a b c"';
  
  INSERT INTO t3(t3) VALUES('rebuild');

  SELECT rowid, length(offsets(t3)) FROM t3 WHERE t3 MATCH '(a NEAR a)';

  SELECT rowid, length(offsets(t3)) FROM t3 WHERE t3 MATCH '(a NEAR b NEAR a)';

  SELECT rowid, length(offsets(t3)) FROM t3 WHERE t3 MATCH '(a NEAR b)';

  SELECT rowid, length(matchinfo(t3)) FROM t3 WHERE t3 MATCH '(a NEAR a)';

  SELECT rowid, length(matchinfo(t3)) FROM t3 WHERE t3 MATCH '(a NEAR b NEAR a)'

  SELECT rowid, length(matchinfo(t3)) FROM t3 WHERE t3 MATCH '(a NEAR b)';

  SELECT rowid, length(matchinfo(t3)) FROM t3 
  WHERE t3 MATCH '(a NEAR b NEAR a NEAR b NEAR a)'
