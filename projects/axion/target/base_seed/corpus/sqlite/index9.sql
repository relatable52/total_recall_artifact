
  CREATE TABLE t1(x, y);
  CREATE INDEX t1x ON t1(x) WHERE y=45;

  CREATE INDEX t1x2 ON t1(x) WHERE y=-20111000111

  CREATE INDEX t1x3 ON t1(x) WHERE y=9223372036854775807

  CREATE INDEX t1x4 ON t1(x) WHERE y=-9223372036854775808
