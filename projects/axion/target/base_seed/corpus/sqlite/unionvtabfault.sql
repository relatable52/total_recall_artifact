
  ATTACH 'test.db2' AS aux;
  CREATE TABLE t1(a INTEGER PRIMARY KEY, b TEXT);
  CREATE TABLE t2(a INTEGER PRIMARY KEY, b TEXT);
  CREATE TABLE aux.t3(a INTEGER PRIMARY KEY, b TEXT);

  INSERT INTO t1 VALUES(1, 'one'), (2, 'two'), (3, 'three');
  INSERT INTO t2 VALUES(10, 'ten'), (11, 'eleven'), (12, 'twelve');
  INSERT INTO t3 VALUES(20, 'twenty'), (21, 'twenty-one'), (22, 'twenty-two');
