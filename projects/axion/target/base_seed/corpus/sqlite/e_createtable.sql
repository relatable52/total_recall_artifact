
  ATTACH 'test.db2' AS auxa;
  ATTACH 'test.db3' AS auxb;

  CREATE TABLE t1(x, y);
  CREATE INDEX i1 ON t1(x);
  CREATE VIEW  v1 AS SELECT * FROM t1;

  CREATE TABLE auxa.tbl1(x, y);
  CREATE INDEX auxa.idx1 ON tbl1(x);
  CREATE VIEW auxa.view1 AS SELECT * FROM tbl1;

  CREATE TABLE t1(x, y);
  CREATE INDEX i1 ON t1(x);
  CREATE VIEW  v1 AS SELECT * FROM t1;
  CREATE TABLE auxa.tbl1(x, y);
  CREATE INDEX auxa.idx1 ON tbl1(x);
  CREATE VIEW auxa.view1 AS SELECT * FROM tbl1;

  CREATE TABLE t1(x, y);
  CREATE TABLE auxb.t2(x, y);

  CREATE TRIGGER tr1 AFTER INSERT ON t1 BEGIN
    SELECT 1;
  END;
  CREATE TRIGGER auxb.tr2 AFTER INSERT ON t2 BEGIN
    SELECT 1;
  END;

  CREATE TABLE t1(a, b);
  CREATE TABLE t2(a, b);
  CREATE TABLE auxa.t3(a, b);
  CREATE TABLE auxa.t4(a, b);

  SELECT * FROM t1;
  SELECT * FROM t2;
  SELECT * FROM t3;
  SELECT * FROM t4;

  SELECT name FROM sqlite_master;
  SELECT name FROM auxa.sqlite_master;

  SELECT name FROM sqlite_master;
  SELECT name FROM auxa.sqlite_master;

  CREATE TABLE t1(a, b, c);
  CREATE TABLE t2(d, e, f);
  CREATE TABLE t3(g BIGINT, h VARCHAR(10));
  CREATE TABLE t4(i BLOB, j ANYOLDATA);
  CREATE TABLE t5(k FLOAT, l INTEGER);
  CREATE TABLE t6(m DEFAULT 10, n DEFAULT 5, PRIMARY KEY(m, n));
  CREATE TABLE t7(x INTEGER PRIMARY KEY);
  CREATE TABLE t8(o COLLATE nocase DEFAULT 'abc');
  CREATE TABLE t9(p NOT NULL, q DOUBLE CHECK (q!=0), r STRING UNIQUE);

  INSERT INTO x1 DEFAULT VALUES;
  INSERT INTO x2 DEFAULT VALUES;
  INSERT INTO x3 DEFAULT VALUES;
  INSERT INTO x4 DEFAULT VALUES;
null nullnullnullnull null null
  CREATE TABLE t1(x, y);
  INSERT INTO t1 VALUES('i',   'one');
  INSERT INTO t1 VALUES('ii',  'two');
  INSERT INTO t1 VALUES('iii', 'three');

    SELECT * FROM $tbl ORDER BY rowid;
  
    SELECT min(rowid), count(rowid)==max(rowid) FROM $tbl
  
  CREATE TABLE t1(x VARCHAR(10), y INTEGER, z DOUBLE);
  CREATE TABLE t2(a DATETIME, b STRING, c REAL);
  CREATE TABLE t3(o, t);

  INSERT INTO t1 VALUES(14, 'quite a lengthy string', X'555655');
  SELECT * FROM t1;

  INSERT INTO t2 VALUES('not a datetime', 13, '12:41:59');
  SELECT * FROM t2;

  CREATE TABLE t4(
    a DEFAULT NULL,
    b DEFAULT 'string constant',
    c DEFAULT X'424C4F42',
    d DEFAULT 1,
    e DEFAULT -1,
    f DEFAULT 3.14,
    g DEFAULT -3.14,
    h DEFAULT ( substr('abcd', 0, 2) || 'cd' ),
    i DEFAULT CURRENT_TIME,
    j DEFAULT CURRENT_DATE,
    k DEFAULT CURRENT_TIMESTAMP
  );

  CREATE TABLE t5(
    a DEFAULT NULL,  
    b DEFAULT 'text value',  
    c DEFAULT X'424C4F42',
    d DEFAULT -45678.6,
    e DEFAULT 394507
  );

  INSERT INTO t5 DEFAULT VALUES;
  SELECT quote(a), quote(b), quote(c), quote(d), quote(e) FROM t5;

  CREATE TABLE t6(a DEFAULT ( nextint() ), b DEFAULT ( nextint() ));

  INSERT INTO t6 DEFAULT VALUES;
  SELECT quote(a), quote(b) FROM t6;

  INSERT INTO t6(a) VALUES('X');
  SELECT quote(a), quote(b) FROM t6;

  INSERT INTO t6(a) SELECT a FROM t6;
  SELECT quote(a), quote(b) FROM t6;

  CREATE TABLE t7(
    a DEFAULT CURRENT_TIME, 
    b DEFAULT CURRENT_DATE, 
    c DEFAULT CURRENT_TIMESTAMP
  );

  INSERT INTO t7 DEFAULT VALUES;
  SELECT quote(a), quote(b), quote(c) FROM t7;

  CREATE TABLE t8(a COLLATE nocase, b COLLATE rtrim, c COLLATE binary, d);
  INSERT INTO t8 VALUES('abc',   'abc',   'abc',   'abc');
  INSERT INTO t8 VALUES('abc  ', 'abc  ', 'abc  ', 'abc  ');
  INSERT INTO t8 VALUES('ABC  ', 'ABC  ', 'ABC  ', 'ABC  ');
  INSERT INTO t8 VALUES('ABC',   'ABC',   'ABC',   'ABC');

  CREATE TABLE t9([columns $::SQLITE_MAX_COLUMN]);

  CREATE TABLE t10([columns 500]);

  CREATE TABLE t12(a, b, c);
  INSERT INTO t12 VALUES(randomblob(30000),randomblob(30000),randomblob(30000));

  CREATE TABLE t1(x PRIMARY KEY, y);
  INSERT INTO t1 VALUES(0,          'zero');
  INSERT INTO t1 VALUES(45.5,       'one');
  INSERT INTO t1 VALUES('brambles', 'two');
  INSERT INTO t1 VALUES(X'ABCDEF',  'three');

  CREATE TABLE t2(x, y, PRIMARY KEY(x, y));
  INSERT INTO t2 VALUES(0,          'zero');
  INSERT INTO t2 VALUES(45.5,       'one');
  INSERT INTO t2 VALUES('brambles', 'two');
  INSERT INTO t2 VALUES(X'ABCDEF',  'three');

  CREATE TABLE t3(s, u INTEGER PRIMARY KEY, v);
  INSERT INTO t3 VALUES(1, NULL, 2);
  INSERT INTO t3 VALUES('x', NULL, 'y');
  SELECT u FROM t3;

  INSERT INTO t1 VALUES(1, 2);
  INSERT INTO t1 VALUES(4.3, 5.5);
  INSERT INTO t1 VALUES('reveal', 'variableness');
  INSERT INTO t1 VALUES(X'123456', X'654321');

  INSERT INTO t4 VALUES('xyx', 1, 1);
  INSERT INTO t4 VALUES('xyx', 2, 1);
  INSERT INTO t4 VALUES('uvw', 1, 1);

  CREATE TABLE t1(a, b PRIMARY KEY);
  CREATE TABLE t2(a, b, c, UNIQUE(b, c));

  CREATE TABLE x1(a TEXT, b INTEGER CHECK( b>0 ));
  CREATE TABLE t1(a TEXT, b INTEGER, CHECK( b>0 ));
  INSERT INTO x1 VALUES('x', 'xx');
  INSERT INTO x1 VALUES('y', 'yy');
  INSERT INTO t1 SELECT * FROM x1;

  CREATE TABLE x2(a CHECK( a||b ), b);
  CREATE TABLE t2(a, b, CHECK( a||b ));
  INSERT INTO x2 VALUES(1, 'xx');
  INSERT INTO x2 VALUES(1, 'yy');
  INSERT INTO t2 SELECT * FROM x2;

  INSERT INTO t1 VALUES('x', 'y');
  INSERT INTO t1 VALUES('z', NULL);

  INSERT INTO t2 VALUES('x', 'y');
  INSERT INTO t2 VALUES('z', NULL);

  INSERT INTO t3 VALUES('x', 'y', 'z');
  INSERT INTO t3 VALUES(1, 2, 3);

  CREATE TABLE t1_ab(a PRIMARY KEY ON CONFLICT ABORT, b);
  CREATE TABLE t1_ro(a PRIMARY KEY ON CONFLICT ROLLBACK, b);
  CREATE TABLE t1_ig(a PRIMARY KEY ON CONFLICT IGNORE, b);
  CREATE TABLE t1_fa(a PRIMARY KEY ON CONFLICT FAIL, b);
  CREATE TABLE t1_re(a PRIMARY KEY ON CONFLICT REPLACE, b);
  CREATE TABLE t1_xx(a PRIMARY KEY, b);

  INSERT INTO t1_ab VALUES(1, 'one');
  INSERT INTO t1_ab VALUES(2, 'two');
  INSERT INTO t1_ro SELECT * FROM t1_ab;
  INSERT INTO t1_ig SELECT * FROM t1_ab;
  INSERT INTO t1_fa SELECT * FROM t1_ab;
  INSERT INTO t1_re SELECT * FROM t1_ab;
  INSERT INTO t1_xx SELECT * FROM t1_ab;

  CREATE TABLE t2_ab(a, b NOT NULL ON CONFLICT ABORT);
  CREATE TABLE t2_ro(a, b NOT NULL ON CONFLICT ROLLBACK);
  CREATE TABLE t2_ig(a, b NOT NULL ON CONFLICT IGNORE);
  CREATE TABLE t2_fa(a, b NOT NULL ON CONFLICT FAIL);
  CREATE TABLE t2_re(a, b NOT NULL ON CONFLICT REPLACE);
  CREATE TABLE t2_xx(a, b NOT NULL);

  INSERT INTO t2_ab VALUES(1, 'one');
  INSERT INTO t2_ab VALUES(2, 'two');
  INSERT INTO t2_ro SELECT * FROM t2_ab;
  INSERT INTO t2_ig SELECT * FROM t2_ab;
  INSERT INTO t2_fa SELECT * FROM t2_ab;
  INSERT INTO t2_re SELECT * FROM t2_ab;
  INSERT INTO t2_xx SELECT * FROM t2_ab;

  CREATE TABLE t3_ab(a, b, UNIQUE(a, b) ON CONFLICT ABORT);
  CREATE TABLE t3_ro(a, b, UNIQUE(a, b) ON CONFLICT ROLLBACK);
  CREATE TABLE t3_ig(a, b, UNIQUE(a, b) ON CONFLICT IGNORE);
  CREATE TABLE t3_fa(a, b, UNIQUE(a, b) ON CONFLICT FAIL);
  CREATE TABLE t3_re(a, b, UNIQUE(a, b) ON CONFLICT REPLACE);
  CREATE TABLE t3_xx(a, b, UNIQUE(a, b));

  INSERT INTO t3_ab VALUES(1, 'one');
  INSERT INTO t3_ab VALUES(2, 'two');
  INSERT INTO t3_ro SELECT * FROM t3_ab;
  INSERT INTO t3_ig SELECT * FROM t3_ab;
  INSERT INTO t3_fa SELECT * FROM t3_ab;
  INSERT INTO t3_re SELECT * FROM t3_ab;
  INSERT INTO t3_xx SELECT * FROM t3_ab;

  CREATE TABLE t4(a, b CHECK (b!=10));
  INSERT INTO t4 VALUES(1, 2);
  INSERT INTO t4 VALUES(3, 4);
 BEGIN; INSERT INTO t4 VALUES(5, 6) 1 2 3 4 5 6
  CREATE TABLE t5(a NOT NULL ON CONFLICT IGNORE, b NOT NULL ON CONFLICT ABORT);

  CREATE TABLE t1(x, y);
  INSERT INTO t1 VALUES('one', 'first');
  INSERT INTO t1 VALUES('two', 'second');
  INSERT INTO t1 VALUES('three', 'third');

  CREATE TABLE t2(oid, b);
  CREATE TABLE t3(a, _rowid_);
  CREATE TABLE t4(a, b, rowid);

  INSERT INTO t2 VALUES('one', 'two');
  INSERT INTO t2 VALUES('three', 'four');

  INSERT INTO t3 VALUES('five', 'six');
  INSERT INTO t3 VALUES('seven', 'eight');

  INSERT INTO t4 VALUES('nine', 'ten', 'eleven');
  INSERT INTO t4 VALUES('twelve', 'thirteen', 'fourteen');

  CREATE TABLE t6(pk INT primary key);
  CREATE TABLE t7(pk BIGINT primary key);
  CREATE TABLE t8(pk SHORT INTEGER primary key);
  CREATE TABLE t9(pk UNSIGNED INTEGER primary key);

  INSERT INTO t6 VALUES('2.0');
  INSERT INTO t7 VALUES('2.0');
  INSERT INTO t8 VALUES('2.0');
  INSERT INTO t9 VALUES('2.0');
  SELECT typeof(pk), pk FROM t6;
  SELECT typeof(pk), pk FROM t7;
  SELECT typeof(pk), pk FROM t8;
  SELECT typeof(pk), pk FROM t9;

  CREATE TABLE t10(a, b);
  INSERT INTO t10 VALUES('ten', 10);

  CREATE TABLE t11(a, b INTEGER PRIMARY KEY);
  INSERT INTO t11 VALUES('ten', 10);

  CREATE TABLE t12(x INTEGER PRIMARY KEY, y);
  INSERT INTO t12 VALUES(5, 'five');
 DELETE FROM t12  DELETE FROM t12 