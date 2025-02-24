
  CREATE TABLE t12nc(id INTEGER, x TEXT UNIQUE COLLATE nocase);
  INSERT INTO t12nc VALUES(1,'abcde'),(2,'uvwxy'),(3,'ABCDEF');
  CREATE TABLE t12b(id INTEGER, x TEXT UNIQUE COLLATE binary);
  INSERT INTO t12b VALUES(1,'abcde'),(2,'uvwxy'),(3,'ABCDEF');
  SELECT id FROM t12nc WHERE x LIKE 'abc%' ORDER BY +id;

  SELECT id FROM t12b WHERE x LIKE 'abc%' ORDER BY +id;

  SELECT id FROM t12nc WHERE x LIKE 'abc%' COLLATE binary ORDER BY +id;

  SELECT id FROM t12b WHERE x LIKE 'abc%' COLLATE binary ORDER BY +id;

  SELECT id FROM t12nc WHERE x LIKE 'abc%' COLLATE nocase ORDER BY +id;

  SELECT id FROM t12b WHERE x LIKE 'abc%' COLLATE nocase ORDER BY +id;

  EXPLAIN QUERY PLAN
  SELECT id FROM t12nc WHERE x LIKE 'abc%' ORDER BY +id;

  EXPLAIN QUERY PLAN
  SELECT id FROM t12b WHERE x LIKE 'abc%' ORDER BY +id;

  EXPLAIN QUERY PLAN
  SELECT id FROM t12nc WHERE x LIKE 'abc%' COLLATE nocase ORDER BY +id;

  EXPLAIN QUERY PLAN
  SELECT id FROM t12b WHERE x LIKE 'abc%' COLLATE nocase ORDER BY +id;

  EXPLAIN QUERY PLAN
  SELECT id FROM t12nc WHERE x LIKE 'abc%' COLLATE binary ORDER BY +id;

  EXPLAIN QUERY PLAN
  SELECT id FROM t12b WHERE x LIKE 'abc%' COLLATE binary ORDER BY +id;

  SELECT char(0x304d) LIKE char(0x306d);

  SELECT char(0x4d) LIKE char(0x306d);

  SELECT char(0x304d) LIKE char(0x6d);

  SELECT char(0x4d) LIKE char(0x6d);

  CREATE TABLE t15(x TEXT COLLATE nocase, y, PRIMARY KEY(x));
  INSERT INTO t15(x,y) VALUES
    ('abcde',1), ('ab%de',2), ('a_cde',3),
    ('uvwxy',11),('uvwx%',12),('uvwx_',13),
    ('_bcde',21),('%bcde',22),
    ('abcd_',31),('abcd%',32),
    ('ab%xy',41);
  SELECT y FROM t15 WHERE x LIKE 'ab/%d%' ESCAPE '/';

  EXPLAIN QUERY PLAN
  SELECT y FROM t15 WHERE x LIKE 'ab/%d%' ESCAPE '/';

  EXPLAIN QUERY PLAN
  SELECT y FROM t15 WHERE x LIKE 'ab/%d%' ESCAPE '//';

  EXPLAIN QUERY PLAN
  SELECT y FROM t15 WHERE x LIKE 'ab/%d%' ESCAPE '';

  SELECT y FROM t15 WHERE x LIKE 'abcdx%%' ESCAPE 'x';

  SELECT y FROM t15 WHERE x LIKE 'abx%%' ESCAPE 'x' ORDER BY +y

  EXPLAIN QUERY PLAN
  SELECT y FROM t15 WHERE x LIKE 'abx%%' ESCAPE 'x' ORDER BY +y

  SELECT y FROM t15 WHERE x LIKE '/%bc%' ESCAPE '/';

  EXPLAIN QUERY PLAN
  SELECT y FROM t15 WHERE x LIKE '/%bc%' ESCAPE '/';

  CREATE TABLE t1(a INTEGER COLLATE NOCASE);
  CREATE INDEX i1 ON t1(a);
  INSERT INTO t1 VALUES(' 1x');
  INSERT INTO t1 VALUES(' 1-');

  SELECT * FROM t1 WHERE a LIKE ' 1%';

  SELECT * FROM t1 WHERE a LIKE ' 1-';

  DROP TABLE IF EXISTS t1;
  CREATE TABLE t1(id INTEGER PRIMARY KEY, x TEXT);
  INSERT INTO t1 VALUES
    (1,'abcde'),
    (2,'abc_'),
    (3,'abc__'),
    (4,'abc%'),
    (5,'abc%%');
  SELECT id FROM t1 WHERE x LIKE 'abc%%' ESCAPE '%';

  SELECT id FROM t1 WHERE x LIKE 'abc__' ESCAPE '_';

  SELECT 'x' LIKE '%' ESCAPE '_';
