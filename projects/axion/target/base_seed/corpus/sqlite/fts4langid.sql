
  CREATE VIRTUAL TABLE t1 USING fts4(a, b, languageid=lang_id);

  SELECT sql FROM sqlite_master WHERE name = 't1_content';
INSERT INTO t1(a, b) VALUES('aaa', 'bbb')0INSERT INTO t1(a, b, lang_id) VALUES('aaa', 'bbb', 4)0 4INSERT INTO t1(a, b, lang_id) VALUES('aaa', 'bbb', 'xyz')0 4 0
  CREATE VIRTUAL TABLE t2 USING fts4;
  INSERT INTO t2 VALUES('abc');
 SELECT rowid FROM t2 WHERE content MATCH 'abc' 
  DROP TABLE t1;
  CREATE VIRTUAL TABLE t1 USING fts4(languageid=lang_id);
  INSERT INTO t1(content)          VALUES('a b c');
  INSERT INTO t1(content, lang_id) VALUES('a b c', 1);

  SELECT rowid FROM t1 WHERE t1 MATCH 'b';

  SELECT rowid FROM t1 WHERE t1 MATCH 'b' AND lang_id = 0;

  SELECT rowid FROM t1 WHERE t1 MATCH 'b' AND lang_id = 1;

  DROP TABLE t1;
  CREATE VIRTUAL TABLE t1 USING fts4(languageid=lang_id);
  INSERT INTO t1(content, lang_id) VALUES('A', 13);
  INSERT INTO t1(content, lang_id) VALUES('B', 13);
  INSERT INTO t1(content, lang_id) VALUES('C', 13);
  INSERT INTO t1(content, lang_id) VALUES('D', 13);
  INSERT INTO t1(content, lang_id) VALUES('E', 13);
  INSERT INTO t1(content, lang_id) VALUES('F', 13);
  INSERT INTO t1(content, lang_id) VALUES('G', 13);
  INSERT INTO t1(content, lang_id) VALUES('H', 13);
  INSERT INTO t1(content, lang_id) VALUES('I', 13);
  INSERT INTO t1(content, lang_id) VALUES('J', 13);
  INSERT INTO t1(content, lang_id) VALUES('K', 13);
  INSERT INTO t1(content, lang_id) VALUES('L', 13);
  INSERT INTO t1(content, lang_id) VALUES('M', 13);
  INSERT INTO t1(content, lang_id) VALUES('N', 13);
  INSERT INTO t1(content, lang_id) VALUES('O', 13);
  INSERT INTO t1(content, lang_id) VALUES('P', 13);
  INSERT INTO t1(content, lang_id) VALUES('Q', 13);
  INSERT INTO t1(content, lang_id) VALUES('R', 13);
  INSERT INTO t1(content, lang_id) VALUES('S', 13);
  SELECT rowid FROM t1 WHERE t1 MATCH 'A';

  INSERT INTO t2(t2) VALUES('optimize');
  SELECT count(*) FROM t2_segdir;

  CREATE VIRTUAL TABLE t2 USING fts4(content=t3_data, languageid=l);
  INSERT INTO t2(t2) VALUES('rebuild');

  DROP TABLE t2;
  CREATE VIRTUAL TABLE t2 USING fts4(x, y, languageid=l, content=nosuchtable);

  INSERT INTO t2(docid, x, y, l) SELECT rowid, x, y, l FROM t3_data;

  DROP TABLE t3_data;

  CREATE TABLE t8c(a, b);
  CREATE VIRTUAL TABLE t8 USING fts4(content=t8c, languageid=langid);
  INSERT INTO t8(docid, a, b) VALUES(-1, 'one two three', 'x y z');
  SELECT docid FROM t8 WHERE t8 MATCH 'one x' AND langid=0

  SELECT docid FROM t4 WHERE t4 MATCH 'quick';

  SELECT docid FROM t4 WHERE t4 MATCH 'quick' AND lid=1;

  SELECT docid FROM t4 WHERE t4 MATCH 'Quick' AND lid=1;

    SELECT count(*) FROM t4 WHERE t4 MATCH 'fox' AND lid=$i;
  
  SELECT level FROM t5_segdir;
SELECT docid FROM t5 WHERE t5 MATCH 'language' 
    SELECT docid FROM t5 WHERE t5 MATCH 'language' AND lid = $langid
  
  CREATE VIRTUAL TABLE t6 USING fts4(languageid=lid);
  INSERT INTO t6 VALUES('I belong to language 0!');
1 
  SELECT docid FROM t6 WHERE t6 MATCH 'belong' AND lid=$lid

    DELETE FROM t6;
    SELECT count(*) FROM t6_segdir;
    SELECT count(*) FROM t6_segments;
  
    INSERT INTO t6(content, lid) VALUES('zero zero zero', $lid);
    INSERT INTO t6(content, lid) VALUES('zero zero one', $lid);
    INSERT INTO t6(content, lid) VALUES('zero one zero', $lid);
    INSERT INTO t6(content, lid) VALUES('zero one one', $lid);
    INSERT INTO t6(content, lid) VALUES('one zero zero', $lid);
    INSERT INTO t6(content, lid) VALUES('one zero one', $lid);
    INSERT INTO t6(content, lid) VALUES('one one zero', $lid);
    INSERT INTO t6(content, lid) VALUES('one one one', $lid);

    SELECT docid FROM t6 WHERE t6 MATCH '"zero zero"' AND lid=$lid;
  
    SELECT count(*) FROM t6_segdir;
    SELECT count(*) FROM t6_segments;
  
    INSERT INTO t6(t6) VALUES('merge=100,3');
    INSERT INTO t6(t6) VALUES('merge=100,3');
    SELECT docid FROM t6 WHERE t6 MATCH '"zero zero"' AND lid=$lid;
  
    SELECT count(*) FROM t6_segdir;
    SELECT count(*) FROM t6_segments;
  
  CREATE VIRTUAL TABLE vt0 USING fts4(c0, languageid="lid");
  INSERT INTO vt0 VALUES ('a'), ('b');
  BEGIN;
    UPDATE vt0 SET lid = 1 WHERE lid=0;

  INSERT INTO vt0(vt0) VALUES('integrity-check');

  COMMIT;
  INSERT INTO vt0(vt0) VALUES('integrity-check');
