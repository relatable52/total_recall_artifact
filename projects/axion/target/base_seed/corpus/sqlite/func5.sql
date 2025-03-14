
  PRAGMA encoding=UTF16le;
  CREATE TABLE t1(x,a,b,c);
  INSERT INTO t1 VALUES(1,'ab','cd',1);
  INSERT INTO t1 VALUES(2,'gh','ef',5);
  INSERT INTO t1 VALUES(3,'pqr','fuzzy',99);
  INSERT INTO t1 VALUES(4,'abcdefg','xy',22);
  INSERT INTO t1 VALUES(5,'shoe','mayer',2953);
  SELECT x FROM t1 WHERE c=instr('abcdefg',b) OR a='abcdefg' ORDER BY +x;

  SELECT x FROM t1 WHERE a='abcdefg' OR c=instr('abcdefg',b) ORDER BY +x;

  CREATE TABLE t2(x,y);
  INSERT INTO t2 VALUES(1,2),(3,4),(5,6),(7,8);
  SELECT x, y FROM t2 WHERE x+5=5+x ORDER BY +x;

  SELECT x, y FROM t2
   WHERE x+counter1('hello')=counter1('hello')+x
   ORDER BY +x;

  SELECT x, y FROM t2
   WHERE x+counter2('hello')=$cvalue+x
   ORDER BY +x;
