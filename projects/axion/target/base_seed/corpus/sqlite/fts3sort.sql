
  BEGIN;
    CREATE VIRTUAL TABLE t2 USING fts4(order=desc);
    INSERT INTO t2 VALUES('aa bb');
    INSERT INTO t2 VALUES('bb cc');
    INSERT INTO t2 VALUES('cc aa');
    SELECT docid FROM t2 WHERE t2 MATCH 'aa';
  END;

  SELECT docid FROM t2 WHERE t2 MATCH 'aa';

  SELECT docid FROM t2 WHERE t2 MATCH 'aa' ORDER BY content;

  CREATE VIRTUAL TABLE t3 USING fts4(x, order=DESC);
  INSERT INTO t3(docid, x) VALUES(113382409004785664, 'aa');
  INSERT INTO t3(docid, x) VALUES(1, 'ab');
  SELECT rowid FROM t3 WHERE x MATCH 'a*' ORDER BY docid DESC;

  CREATE VIRTUAL TABLE t4 USING fts4(x);
  INSERT INTO t4(docid, x) VALUES(-113382409004785664, 'aa');
  INSERT INTO t4(docid, x) VALUES(1, 'ab');
  SELECT rowid FROM t4 WHERE x MATCH 'a*';
