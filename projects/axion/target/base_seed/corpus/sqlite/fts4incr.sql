
  SELECT min(docid), max(docid) FROM t1;

  SELECT count(*) FROM t2 WHERE t2 MATCH '"never zero"'

  SELECT count(*) FROM t2 WHERE t2 MATCH '"two zero"'
