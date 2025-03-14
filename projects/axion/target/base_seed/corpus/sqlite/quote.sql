
  CREATE TABLE t1(x, y, z);

  PRAGMA writable_schema = 1;
  CREATE TABLE xyz(a, b, c CHECK (c!="null") );
  CREATE INDEX i2 ON t1(x, y, z||"abc");
  CREATE INDEX i3 ON t1("w"||"");
  CREATE INDEX i4 ON t1(x) WHERE z="w";

  INSERT INTO xyz VALUES(1, 2, 3);

  INSERT INTO t1 VALUES(1, 2, 3);
  INSERT INTO t1 VALUES(4, 5, 'w');
  SELECT * FROM t1 WHERE z='w';

  SELECT sql FROM sqlite_master;
