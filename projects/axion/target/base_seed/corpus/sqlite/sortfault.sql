
  PRAGMA cache_size = 5;
 
  CREATE TABLE t1(a, b, c); 
  INSERT INTO t1 VALUES(1, 2, 3);
 
  CREATE TABLE t1(a, b, c); 
  INSERT INTO t1 VALUES($a, $b, $c); 
  INSERT INTO t1 VALUES($c, $b, $a); 
