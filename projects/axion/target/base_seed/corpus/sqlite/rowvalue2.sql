
  CREATE TABLE t1(a, b, c);
  INSERT INTO t1 VALUES(0, 0, 0);
  INSERT INTO t1 VALUES(0, 1, 1);
  INSERT INTO t1 VALUES(1, 0, 2);
  INSERT INTO t1 VALUES(1, 1, 3);

  CREATE INDEX i1 ON t1(a, b);
2 33
  CREATE TABLE t2(a INTEGER, b INTEGER, c INTEGER, d INTEGER);
  CREATE INDEX i2 ON t2(a, b, c);

  SELECT d FROM t2 WHERE (a, b) > (2, 2);

  SELECT d FROM t2 WHERE (a, b) >= (2, 2);

  SELECT d FROM t2 WHERE a=1 AND (b, c) >= (1, 2);

  SELECT d FROM t2 WHERE a=1 AND (b, c) > (1, 2);

        SELECT rowid FROM t3 WHERE (a, b, c) [set op] ($a, $b, $c) 
        ORDER BY +rowid
      
        SELECT rowid FROM t3 WHERE (a, b, c) [set op] (
          SELECT a, b, c FROM t3 WHERE w = $w
        )
        ORDER BY +rowid
      
  CREATE TABLE t4(a, b, c);
  INSERT INTO t4 VALUES(NULL, NULL, NULL);
  INSERT INTO t4 VALUES(NULL, NULL, 0);
  INSERT INTO t4 VALUES(NULL, NULL, 1);
  INSERT INTO t4 VALUES(NULL,    0, NULL);
  INSERT INTO t4 VALUES(NULL,    0, 0);
  INSERT INTO t4 VALUES(NULL,    0, 1);
  INSERT INTO t4 VALUES(NULL,    1, NULL);
  INSERT INTO t4 VALUES(NULL,    1, 0);
  INSERT INTO t4 VALUES(NULL,    1, 1);

  INSERT INTO t4 VALUES(   0, NULL, NULL);
  INSERT INTO t4 VALUES(   0, NULL, 0);
  INSERT INTO t4 VALUES(   0, NULL, 1);
  INSERT INTO t4 VALUES(   0,    0, NULL);
  INSERT INTO t4 VALUES(   0,    0, 0);
  INSERT INTO t4 VALUES(   0,    0, 1);
  INSERT INTO t4 VALUES(   0,    1, NULL);
  INSERT INTO t4 VALUES(   0,    1, 0);
  INSERT INTO t4 VALUES(   0,    1, 1);

  INSERT INTO t4 VALUES(   1, NULL, NULL);
  INSERT INTO t4 VALUES(   1, NULL, 0);
  INSERT INTO t4 VALUES(   1, NULL, 1);
  INSERT INTO t4 VALUES(   1,    0, NULL);
  INSERT INTO t4 VALUES(   1,    0, 0);
  INSERT INTO t4 VALUES(   1,    0, 1);
  INSERT INTO t4 VALUES(   1,    1, NULL);
  INSERT INTO t4 VALUES(   1,    1, 0);
  INSERT INTO t4 VALUES(   1,    1, 1);

  CREATE TABLE r1(a TEXT, iB TEXT);
  CREATE TABLE r2(x TEXT, zY INTEGER);
  CREATE INDEX r1ab ON r1(a, iB);

  INSERT INTO r1 VALUES(35, 35);
  INSERT INTO r2 VALUES(35, 36);
  INSERT INTO r2 VALUES(35, 4);
  INSERT INTO r2 VALUES(35, 35);
