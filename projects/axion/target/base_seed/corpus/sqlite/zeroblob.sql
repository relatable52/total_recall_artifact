 
  SELECT length(zeroblob(-1444444444444444));

  DROP TABLE IF EXISTS t1;
  CREATE TABLE t1(a,b,c);
  CREATE INDEX t1bbc ON t1(b, b+c);
  INSERT INTO t1(a,b,c) VALUES(1,zeroblob(8),3);
  SELECT a, quote(b), length(b), c FROM t1;
