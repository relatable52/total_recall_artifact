
  CREATE VIRTUAL TABLE t1 USING fts3(x);
  BEGIN;
  INSERT INTO t1 VALUES('We listened and looked sideways up!');
  INSERT INTO t1 VALUES('Fear at my heart, as at a cup,');
  INSERT INTO t1 VALUES('My life-blood seemed to sip!');
  INSERT INTO t1 VALUES('The stars were dim, and thick the night');
  COMMIT;

  BEGIN;
    INSERT INTO t1 VALUES('The steersman''s face by his lamp gleamed white;');
