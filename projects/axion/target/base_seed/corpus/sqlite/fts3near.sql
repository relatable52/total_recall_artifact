
  CREATE VIRTUAL TABLE x USING fts4(y,z);
  INSERT INTO x VALUES('aaa bbb ccc ddd', 'bbb ddd aaa ccc');
  SELECT * FROM x where y MATCH 'bbb NEAR/6 aaa';

  CREATE VIRTUAL TABLE t2 USING fts4(a, b);
  INSERT INTO t2 VALUES('A B C', 'A D E');
  SELECT * FROM t2 where t2 MATCH 'a:A NEAR E'
