
  SELECT """""""";

  PRAGMA foreign_keys = ON;
  CREATE TABLE p1(a PRIMARY KEY COLLATE '"""');
  CREATE TABLE c1(x, y REFERENCES p1);
 
  INSERT INTO p1 VALUES('abc'); 
  INSERT INTO c1 VALUES(1, 'ABC'); 
 
  INSERT INTO p1 VALUES('abb');
  INSERT INTO p1 VALUES('wxz');
  INSERT INTO p1 VALUES('wxy');

  INSERT INTO c1 VALUES(2, 'abb');
  INSERT INTO c1 VALUES(3, 'wxz');
  INSERT INTO c1 VALUES(4, 'WXY');
  SELECT x, y FROM c1 ORDER BY y COLLATE """""""";

   SELECT 'abc' UNION ALL SELECT 'DEF'
    ORDER BY 1 COLLATE nocase COLLATE nocase COLLATE nocase COLLATE nocase;

   SELECT 'abc' UNION ALL SELECT 'DEF'
    ORDER BY 1 COLLATE nocase COLLATE nocase COLLATE nocase COLLATE binary;

   SELECT 'abc' UNION ALL SELECT 'DEF'
    ORDER BY 1 COLLATE binary COLLATE binary COLLATE binary COLLATE nocase;

  SELECT ' ' > char(20) COLLATE rtrim;

  SELECT '' < char(20) COLLATE rtrim;

  DROP TABLE IF EXISTS t0;
  CREATE TABLE t0(c0 COLLATE RTRIM, c1 BLOB UNIQUE,
                  PRIMARY KEY (c0, c1)) WITHOUT ROWID;
  INSERT INTO t0 VALUES (123, 3), (' ', 1), ('	', 2), ('', 4);
  SELECT * FROM t0 WHERE c1 = 1;

  CREATE TABLE t1(a, b);
  CREATE TABLE t2(c, d);
