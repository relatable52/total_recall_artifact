
  DELETE FROM t1e;
  INSERT INTO t1e SELECT 'abc','def';

  INSERT INTO t1e VALUES('ghi','jkl'),('mno','pqr'),('stu','vwx');

  SELECT a,b,c, '|' FROM t1e ORDER BY 1;
