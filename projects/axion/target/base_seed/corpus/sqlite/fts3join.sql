
  CREATE VIRTUAL TABLE ft1 USING fts4(x);
  INSERT INTO ft1 VALUES('aaa aaa');
  INSERT INTO ft1 VALUES('aaa bbb');
  INSERT INTO ft1 VALUES('bbb aaa');
  INSERT INTO ft1 VALUES('bbb bbb');

  CREATE TABLE t1(id, y);
  INSERT INTO t1 VALUES(1, 'aaa');
  INSERT INTO t1 VALUES(2, 'bbb');

  SELECT docid FROM ft1, t1 WHERE ft1 MATCH y AND id=1;

  SELECT docid FROM ft1, t1 WHERE ft1 MATCH y AND id=1 ORDER BY docid;

  CREATE VIRTUAL TABLE ft2 USING fts4(x);
  CREATE VIRTUAL TABLE ft3 USING fts4(y);

  INSERT INTO ft2 VALUES('abc');
  INSERT INTO ft2 VALUES('def');
  INSERT INTO ft3 VALUES('ghi');
  INSERT INTO ft3 VALUES('abc');
abc abcabc abcabc abcabc abc
  CREATE VIRTUAL TABLE vt USING fts3(x);
  INSERT INTO vt VALUES('abc');
  INSERT INTO vt VALUES('xyz');

  CREATE TABLE tt(a INTEGER PRIMARY KEY);
  INSERT INTO tt VALUES(1), (2);

  SELECT * FROM tt LEFT JOIN (
    SELECT rowid AS rrr, * FROM vt WHERE vt MATCH 'abc'
  ) ON tt.a = rrr

  SELECT * FROM tt LEFT JOIN vt ON (vt MATCH 'abc')

  CREATE VIRTUAL TABLE ft4 USING fts3(x);
  CREATE TABLE t4(y, z);
  CREATE INDEX t4y ON t1(y);
