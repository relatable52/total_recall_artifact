 
  CREATE TABLE f1(tn INTEGER PRIMARY KEY, x BLOB); 
  CREATE TABLE f2(tn INTEGER PRIMARY KEY, x BLOB); 

  INSERT INTO f1 VALUES(1, X'01020304');
  INSERT INTO f1 VALUES(2, X'01000304');
  INSERT INTO f1 VALUES(3, randomblob(200));
 
    SELECT (SELECT x FROM f1 WHERE tn=1)==(SELECT x FROM f2 WHERE tn=1)
  