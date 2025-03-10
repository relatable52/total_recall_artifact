*
  CREATE VIRTUAL TABLE t1 USING fts4(tokenize=unicode61, x, y);
  INSERT INTO t1 VALUES(NULL, 'a b c');

  SELECT snippet(t1, '[', ']') FROM t1 WHERE t1 MATCH 'b'

  BEGIN;
  DELETE FROM t1;
  INSERT INTO t1 VALUES('b b b b b b b b b b b', 'b b b b b b b b b b b b b');
  INSERT INTO t1 SELECT * FROM t1;
  INSERT INTO t1 SELECT * FROM t1;
  INSERT INTO t1 SELECT * FROM t1;
  INSERT INTO t1 SELECT * FROM t1;
  INSERT INTO t1 SELECT * FROM t1;
  INSERT INTO t1 SELECT * FROM t1;
  INSERT INTO t1 SELECT * FROM t1;
  INSERT INTO t1 SELECT * FROM t1;
  INSERT INTO t1 SELECT * FROM t1;
  INSERT INTO t1 SELECT * FROM t1;
  INSERT INTO t1 SELECT * FROM t1;
  INSERT INTO t1 SELECT * FROM t1;
  INSERT INTO t1 SELECT * FROM t1;
  INSERT INTO t1 SELECT * FROM t1;
  INSERT INTO t1 SELECT * FROM t1;
  INSERT INTO t1 SELECT * FROM t1;
  INSERT INTO t1 VALUES('a b c', NULL);
  INSERT INTO t1 VALUES('a x c', NULL);
  COMMIT;

  SELECT * FROM t1 WHERE t1 MATCH 'a b';

  SELECT rowid FROM t3 WHERE t3 MATCH 'o';

  SELECT rowid FROM t3 WHERE t3 MATCH 'a';

  CREATE VIRTUAL TABLE t4 USING fts4(tokenize=unicode61 "remove_diacritics=0");
  INSERT INTO t4 SELECT * FROM t3;

  SELECT rowid FROM t4 WHERE t4 MATCH 'o';

  SELECT rowid FROM t4 WHERE t4 MATCH 'a';
 
    DROP TABLE IF EXISTS t5;
    DROP TABLE IF EXISTS t5aux;
    DROP TABLE IF EXISTS t6;
    DROP TABLE IF EXISTS t6aux;
    DROP TABLE IF EXISTS t7;
    DROP TABLE IF EXISTS t7aux;
  
    CREATE VIRTUAL TABLE t5aux USING fts4aux(t5);
    INSERT INTO t5 VALUES('one two three/four.five.six');
    SELECT * FROM t5aux;
  
    CREATE VIRTUAL TABLE t6aux USING fts4aux(t6);
    INSERT INTO t6 VALUES('alpha=beta"gamma/delta[epsilon]zeta');
    SELECT * FROM t6aux;
  
    CREATE VIRTUAL TABLE t7aux USING fts4aux(t7);
    INSERT INTO t7 VALUES('alephxbeth\xC4gimel');
    SELECT * FROM t7aux;
  
  DROP TABLE IF EXISTS t1;
  CREATE VIRTUAL TABLE t1 USING fts4(tokenize=unicode61
    "tokenchars=xyz" "tokenchars=.=" "separators=.=" "separators=xy"
    "separators=a" "separators=a" "tokenchars=a" "tokenchars=a"
  );

  INSERT INTO t1 VALUES('oneatwoxthreeyfour');
  INSERT INTO t1 VALUES('a.single=word');
  CREATE VIRTUAL TABLE t1aux USING fts4aux(t1);
  SELECT * FROM t1aux;

  DROP TABLE IF EXISTS t2;
  CREATE VIRTUAL TABLE t2 USING fts4(tokenize=unicode61 "separators=aB");
  INSERT INTO t2 VALUES('oneatwoBthree');
  INSERT INTO t2 VALUES('onebtwoAthree');
  CREATE VIRTUAL TABLE t2aux USING fts4aux(t2);
  SELECT * FROM t2aux;

  CREATE VIRTUAL TABLE ft1 USING fts3tokenize(
    "unicode61", "tokenchars=@.", "separators=1234567890"
  );
  SELECT token FROM ft1 WHERE input = 'berlin@street123sydney.road';

  CREATE VIRTUAL TABLE t12 USING fts4(tokenize=unicode61);
  INSERT INTO t12 VALUES('abc' || char(0) || 'def');
  SELECT hex(CAST(content AS blob)) FROM t12;

  INSERT INTO t12(t12) VALUES('integrity-check');
 
  CREATE VIRTUAL TABLE t12aux USING fts4aux(t12);
  SELECT * FROM t12aux;
 
  SELECT hex(CAST(content AS blob)) FROM t12 WHERE t12 MATCH 'abc'
