
  CREATE VIRTUAL TABLE t2 USING FTS4;
  INSERT INTO t2 VALUES('it was the first time in history');
 UPDATE t2_content SET c0content = X'1234'  DROP TABLE t2 
  CREATE VIRTUAL TABLE t3 USING FTS4(a, b);
  INSERT INTO t3 VALUES('no gestures', 'another intriguing discovery by observing the hand gestures (called beats) people make while speaking. Research has shown that such gestures do more than add visual emphasis to our words (many people gesture while they''re on the telephone, for example); it seems they actually help our brains find words');

  CREATE VIRTUAL TABLE ft4 USING fts4(x);
  CREATE TABLE t4(x);

    SELECT rowid FROM ft4 WHERE rowid BETWEEN $iFirst AND $iLast
  
    SELECT rowid FROM ft4 WHERE rowid BETWEEN $iFirst AND $iLast
    ORDER BY rowid DESC
  
    SELECT rowid FROM ft4 WHERE rowid > $ii
  
    SELECT rowid FROM ft4 WHERE rowid < $ii
  
    SELECT rowid FROM ft4 WHERE rowid > $ii ORDER BY rowid DESC
  
    SELECT rowid FROM ft4 WHERE rowid < $ii ORDER BY rowid DESC
  