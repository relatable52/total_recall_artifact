
  CREATE VIRTUAL TABLE t1 USING fts3(a, b);
  INSERT INTO t1 VALUES('one', 'i');
  INSERT INTO t1 VALUES('one', 'ii');
  INSERT INTO t1 VALUES('two', 'i');
  INSERT INTO t1 VALUES('two', 'ii');

  SELECT a.a, b.b FROM t1 a, t1 b WHERE a.t1 MATCH 'two' AND b.t1 MATCH 'i'

  SELECT rowid FROM t2 WHERE t2 MATCH '"a b c"'

  SELECT rowid FROM t2 WHERE t2 MATCH '"g h i"'

  SELECT rowid FROM t2 WHERE t2 MATCH '"i h"'

  SELECT rowid FROM t2 WHERE t2 MATCH '"f e"'

  SELECT rowid FROM t2 WHERE t2 MATCH '"e f"'

  SELECT rowid FROM t2 WHERE t2 MATCH 'e' AND rowid BETWEEN NULL AND 45;

  SELECT rowid FROM t2 WHERE t2 MATCH 'e' AND rowid BETWEEN 11.5 AND 48.2;

  SELECT rowid FROM t2 WHERE t2 MATCH 'e' AND rowid BETWEEN '11.5' AND '48.2';

  CREATE VIRTUAL TABLE t3 USING fts3;
  INSERT INTO t3 VALUES('a b c');
  INSERT INTO t3 VALUES('d e f');
  INSERT INTO t3 VALUES('a b d');
  INSERT INTO t3 VALUES('1 2 3 4 5 6 7 8 9 10 11');

  SELECT * FROM t3 WHERE t3 MATCH '"a b x y"' ORDER BY docid DESC

  SELECT * FROM t3 WHERE t3 MATCH '"a b c" OR "a b x y"' ORDER BY docid DESC

  SELECT * FROM t3 WHERE t3 MATCH '"a* b* x* a*"'

  SELECT rowid FROM t3 WHERE t3 MATCH '"2 3 4 5 6 7 8 9"'

    PRAGMA page_size = 512;
    CREATE VIRTUAL TABLE t4 USING fts4;
    WITH s(i) AS ( SELECT 1 UNION ALL SELECT i+1 FROM s WHERE i<8000 )
    INSERT INTO t4 SELECT 'a b c a b c a b c' FROM s;
  
    SELECT count(*) FROM t4 WHERE t4 MATCH '"a b c" OR "c a b"'
  
    SELECT quote(value) from t4_stat where id=0
  
    UPDATE t4_stat SET value = X'C03EC0B204C0A60800' WHERE id=0;
  
    UPDATE t4_stat SET value = X'00C03EC0B204C0A608' WHERE id=0;
  
  CREATE VIRTUAL TABLE t5 USING fts4;
  INSERT INTO t5 VALUES('a x x x x b x x x x c');
  INSERT INTO t5 VALUES('a x x x x b x x x x c');
  INSERT INTO t5 VALUES('a x x x x b x x x x c');

  SELECT rowid FROM t5 WHERE t5 MATCH 'a NEAR/4 b NEAR/4 c'

  SELECT rowid FROM t5 WHERE t5 MATCH 'a NEAR/3 b NEAR/4 c'

  SELECT rowid FROM t5 WHERE t5 MATCH 'a NEAR/4 b NEAR/3 c'

  SELECT rowid FROM t5 WHERE t5 MATCH 'y NEAR/4 b NEAR/4 c'

  SELECT rowid FROM t5 WHERE t5 MATCH 'x OR a NEAR/3 b NEAR/3 c'

  SELECT rowid FROM t5 WHERE t5 MATCH 'x OR y NEAR/3 b NEAR/3 c'

  CREATE VIRTUAL TABLE t6 USING fts4;

  BEGIN;
  WITH s(i) AS (SELECT 1 UNION ALL SELECT i+1 FROM s WHERE i<50000)
    INSERT INTO t6 SELECT 'x x x x x x x x x x x' FROM s;

  INSERT INTO t6 VALUES('x x x x x x x x x x x A');
  INSERT INTO t6 VALUES('x x x x x x x x x x x B');
  INSERT INTO t6 VALUES('x x x x x x x x x x x A');
  INSERT INTO t6 VALUES('x x x x x x x x x x x B');

  WITH s(i) AS (SELECT 1 UNION ALL SELECT i+1 FROM s WHERE i<50000)
    INSERT INTO t6 SELECT 'x x x x x x x x x x x' FROM s;
  COMMIT;

  SELECT rowid FROM t6 WHERE t6 MATCH 'b OR "x a"'

  CREATE VIRTUAL TABLE vt0 USING fts3(c0);
  INSERT INTO vt0 VALUES (x'00');

  INSERT INTO vt0(vt0) VALUES('integrity-check');

  CREATE VIRTUAL TABLE vt0 USING fts4(c0, order=DESC);
  INSERT INTO vt0(c0) VALUES (0), (0);

  INSERT INTO vt0(vt0) VALUES('integrity-check');

  CREATE VIRTUAL TABLE vt0 USING fts4(c0, order=ASC);
  INSERT INTO vt0(c0) VALUES (0), (0);

  INSERT INTO vt0(vt0) VALUES('integrity-check');

  CREATE VIRTUAL TABLE ft USING fts4(c0, c1, order=DESC, prefix=1);
  INSERT INTO ft VALUES('a b c d', 'hello world');
  INSERT INTO ft VALUES('negative', 'positive');
  INSERT INTO ft VALUES('hello world', 'a b c d');

  INSERT INTO vt0(vt0) VALUES('integrity-check');

  CREATE VIRTUAL TABLE vt0 USING fts4(c0, prefix=1);

  BEGIN;
    INSERT INTO vt0 VALUES (0);
    INSERT INTO vt0(vt0) VALUES('optimize');
  COMMIT;

  INSERT INTO vt0(vt0) VALUES('integrity-check');

  CREATE VIRTUAL TABLE t1 using fts4(mailcontent);
  insert into t1(rowid, mailcontent) values
      (-4764623217061966105, 'we are going to upgrade'),
      (8324454597464624651, 'we are going to upgrade');

  INSERT INTO t1(t1) VALUES('integrity-check');

  SELECT rowid FROM t1 WHERE t1 MATCH 'upgrade';

  CREATE VIRTUAL TABLE f USING fts3(a,b);
  CREATE TABLE 'f_stat'(id INTEGER PRIMARY KEY, value BLOB);
  INSERT INTO f_stat VALUES (1,x'3b3b3b3b3b3b3b28ffffffffffffffffff1807f9073481f1d43bc93b3b3b3b3b3b3b3b3b3b18073b3b3b3b3b3b3b9b003b');

  CREATE VIRTUAL TABLE xyz USING fts3();

  SELECT * FROM xyz WHERE xyz MATCH 'a NEAR/4294836224 a';
