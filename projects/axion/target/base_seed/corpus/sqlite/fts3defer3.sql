
  SELECT blockid, length(block) FROM t1_segments;

  SELECT docid, content FROM t1 WHERE t1 MATCH 'a b';

  SELECT docid, content FROM t1 WHERE t1 MATCH 'a b';

  SELECT count(*) FROM t1 WHERE t1 MATCH 'a b';
