
    INSERT INTO t1 VALUES('one two three', 'two four six');
    SELECT a, b FROM t1;
  
    SELECT c0a, c1b FROM t1_content;
  
    INSERT INTO t1 VALUES('three six nine', 'four eight twelve');
    SELECT a, b FROM t1;
  
    SELECT c0a, c1b FROM t1_content;
  
    SELECT a, b FROM t1 WHERE docid = 2
  
    SELECT a, b FROM t1 WHERE t1 MATCH 'two'
  
    CREATE VIRTUAL TABLE terms USING fts4aux(t1);
    SELECT term, documents, occurrences FROM terms WHERE col = '*';
  
    DELETE FROM t1 WHERE docid = 1;
    SELECT term, documents, occurrences FROM terms WHERE col = '*';
  3 4