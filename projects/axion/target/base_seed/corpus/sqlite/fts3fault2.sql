
  CREATE VIRTUAL TABLE t7 USING fts4(x,prefix=2);
  INSERT INTO t7 VALUES('the quick brown fox');
  INSERT INTO t7 VALUES('jumped over the');
  INSERT INTO t7 VALUES('lazy dog');

  CREATE VIRTUAL TABLE t8 USING fts3;
  INSERT INTO t8 VALUES('the quick brown fox');
  INSERT INTO t8 VALUES('jumped over the');
  INSERT INTO t8 VALUES('lazy dog');
  INSERT INTO t8(t8) VALUES('automerge=8');
  SELECT name FROM sqlite_master WHERE name LIKE 't8%';

  PRAGMA page_size = 512;
  CREATE VIRTUAL TABLE t9 USING fts3;
  WITH s(i) AS (
    SELECT 1 UNION ALL SELECT i+1 FROM s WHERE i<50
  )
  INSERT INTO t9 SELECT 'one two three' FROM s;
