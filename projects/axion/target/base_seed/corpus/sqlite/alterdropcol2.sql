
  CREATE TABLE t1(c, b, a, PRIMARY KEY(b, a)) WITHOUT ROWID;
  INSERT INTO t1 VALUES(1, 2, 3), (4, 5, 6);

  ALTER TABLE t1 DROP c;

  SELECT * FROM t1;

  SELECT sql FROM sqlite_schema;

  CREATE TABLE yyy(q, w, e CHECK (e > 0), r);
  INSERT INTO yyy VALUES(1,1,1,1), (2,2,2,2);

  CREATE TABLE zzz(q, w, e, r, CHECK (e > 0));
  INSERT INTO zzz VALUES(1,1,1,1), (2,2,2,2);

  ALTER TABLE yyy DROP e;
