 
  SELECT 0 < 2 LIKE 1,   (0 < 2) LIKE 1,   0 < (2 LIKE 1)
 
  SELECT 0 LIKE 0 < 2,   (0 LIKE 0) < 2,   0 LIKE (0 < 2)
 
  SELECT 2 LIKE 2 == 1,   (2 LIKE 2) == 1,    2 LIKE (2 == 1)
 
  SELECT 2 == 2 LIKE 1,   (2 == 2) LIKE 1,    2 == (2 LIKE 1)
 
  SELECT 0 < 2 == 1,   (0 < 2) == 1,   0 < (2 == 1)
 
  SELECT 0 == 0 < 2,   (0 == 0) < 2,   0 == (0 < 2)
-1010-11022-2-22.01001{{{10110{{{0 SELECT  'abcd' < 'bbbb'    COLLATE reverse  SELECT ('abcd' < 'bbbb')   COLLATE reverse  SELECT  'abcd' <= 'bbbb'   COLLATE reverse  SELECT ('abcd' <= 'bbbb')  COLLATE reverse  SELECT  'abcd' > 'bbbb'    COLLATE reverse  SELECT ('abcd' > 'bbbb')   COLLATE reverse  SELECT  'abcd' >= 'bbbb'   COLLATE reverse  SELECT ('abcd' >= 'bbbb')  COLLATE reverse  SELECT  'abcd' =  'ABCD'  COLLATE nocase  SELECT ('abcd' =  'ABCD') COLLATE nocase  SELECT  'abcd' == 'ABCD'  COLLATE nocase  SELECT ('abcd' == 'ABCD') COLLATE nocase  SELECT  'abcd' IS 'ABCD'  COLLATE nocase  SELECT ('abcd' IS 'ABCD') COLLATE nocase  SELECT  'abcd' != 'ABCD'      COLLATE nocase  SELECT ('abcd' != 'ABCD')     COLLATE nocase  SELECT  'abcd' <> 'ABCD'      COLLATE nocase  SELECT ('abcd' <> 'ABCD')     COLLATE nocase  SELECT  'abcd' IS NOT 'ABCD'  COLLATE nocase  SELECT ('abcd' IS NOT 'ABCD') COLLATE nocase  
  SELECT 'bbb' BETWEEN 'AAA' AND 'CCC' COLLATE nocase 
 
  SELECT ('bbb' BETWEEN 'AAA' AND 'CCC') COLLATE nocase 
 
  CREATE TABLE t24(a COLLATE NOCASE, b);
  INSERT INTO t24 VALUES('aaa', 1);
  INSERT INTO t24 VALUES('bbb', 2);
  INSERT INTO t24 VALUES('ccc', 3);
0 1 00 1 00 0 00 0 0integerrealtextblobnullrealreal0.03430000.0{is nottextisn'ttext SELECT typeof(X'0123456789ABCDEF')  SELECT typeof(x'0123456789ABCDEF')  SELECT typeof(X'0123456789abcdef')  SELECT typeof(x'0123456789abcdef')  SELECT typeof(X'53514C697465')     {null0 0 01 1 -12 2 -2 
  SELECT 1.4, +1.4, -1.4 
 
  SELECT 1.5e+5, +1.5e+5, -1.5e+5 
 
  SELECT 0.0001, +0.0001, -0.0001 
12312340000.0abcdeABC{00:00:011970-01-01{1970-01-01 00:00:01 SELECT 1 == 10 BETWEEN 0 AND 2    SELECT (1 == 10) BETWEEN 0 AND 2  SELECT 1 == (10 BETWEEN 0 AND 2)  SELECT  6 BETWEEN 4 AND 8 == 1  SELECT (6 BETWEEN 4 AND 8) == 1  SELECT  6 BETWEEN 4 AND (8 == 1)  SELECT  5 BETWEEN 0 AND 0  != 1  SELECT (5 BETWEEN 0 AND 0) != 1  SELECT  5 BETWEEN 0 AND (0 != 1)  SELECT  1 != 0  BETWEEN 0 AND 2   SELECT (1 != 0) BETWEEN 0 AND 2   SELECT  1 != (0 BETWEEN 0 AND 2)  SELECT 1 LIKE 10 BETWEEN 0 AND 2    SELECT (1 LIKE 10) BETWEEN 0 AND 2  SELECT 1 LIKE (10 BETWEEN 0 AND 2)  SELECT  6 BETWEEN 4 AND 8 LIKE 1    SELECT (6 BETWEEN 4 AND 8) LIKE 1   SELECT  6 BETWEEN 4 AND (8 LIKE 1)  SELECT 0 AND 0 BETWEEN 0 AND 1    SELECT 0 AND (0 BETWEEN 0 AND 1)  SELECT (0 AND 0) BETWEEN 0 AND 1  SELECT 0 BETWEEN -1 AND 1 AND 0    SELECT (0 BETWEEN -1 AND 1) AND 0  SELECT 0 BETWEEN -1 AND (1 AND 0)  SELECT 2 < 3 BETWEEN 0 AND 1    SELECT (2 < 3) BETWEEN 0 AND 1  SELECT 2 < (3 BETWEEN 0 AND 1)  SELECT 2 BETWEEN 1 AND 2 < 3     SELECT 2 BETWEEN 1 AND (2 < 3)   SELECT (2 BETWEEN 1 AND 2) < 3   SELECT 'abc%' LIKE 'abcde'  SELECT 'abcde' LIKE 'abc%'  SELECT 'abde'    LIKE 'ab%de'  SELECT 'abXde'   LIKE 'ab%de'  SELECT 'abABCde' LIKE 'ab%de'  SELECT 'abde'    LIKE 'ab_de'  SELECT 'abXde'   LIKE 'ab_de'  SELECT 'abABCde' LIKE 'ab_de'  SELECT 'abc' LIKE 'aBc'  SELECT 'aBc' LIKE 'aBc'  SELECT 'ac'  LIKE 'aBc'  SELECT 'A' LIKE 'a'          SELECT 'abc%'  LIKE 'abcX%' ESCAPE 'X'  SELECT 'abc5'  LIKE 'abcX%' ESCAPE 'X'  SELECT 'abc'   LIKE 'abcX%' ESCAPE 'X'  SELECT 'abcX%' LIKE 'abcX%' ESCAPE 'X'  SELECT 'abc%%' LIKE 'abcX%' ESCAPE 'X'  SELECT 'abc_'  LIKE 'abcX_' ESCAPE 'X'  SELECT 'abc5'  LIKE 'abcX_' ESCAPE 'X'  SELECT 'abc'   LIKE 'abcX_' ESCAPE 'X'  SELECT 'abcX_' LIKE 'abcX_' ESCAPE 'X'  SELECT 'abc__' LIKE 'abcX_' ESCAPE 'X'  SELECT 'abcX'  LIKE 'abcXX' ESCAPE 'X'  SELECT 'abc5'  LIKE 'abcXX' ESCAPE 'X'  SELECT 'abc'   LIKE 'abcXX' ESCAPE 'X'  SELECT 'abcXX' LIKE 'abcXX' ESCAPE 'X'  SELECT 'abc' LIKE 'def'  SELECT 'abc' LIKE 'def' ESCAPE 'X'  SELECT 'abcxyz' LIKE 'ABC%'  SELECT 'abc%xyz' LIKE 'ABC\%x%' ESCAPE '\'  SELECT 'abcxyz' LIKE 'ABC%'  SELECT 'abc%xyz' LIKE 'ABC\%X%' ESCAPE '\'  SELECT 'ABCxyz' LIKE 'ABC%'  SELECT 'ABC%xyz' LIKE 'ABC\%x%' ESCAPE '\'  SELECT 'abcxyz' LIKE 'ABC%'  SELECT 'abc%xyz' LIKE 'ABC\%X%' ESCAPE '\'  SELECT 'ABCxyz' LIKE 'ABC%'  SELECT 'ABC%xyz' LIKE 'ABC\%X%' ESCAPE '\'  SELECT 'abcxyz' GLOB 'abc%'  SELECT 'abcxyz' GLOB 'abc*'  SELECT 'abcxyz' GLOB 'abc___'  SELECT 'abcxyz' GLOB 'abc???'  SELECT 'abcxyz' GLOB 'abc*'  SELECT 'ABCxyz' GLOB 'abc*'  SELECT 'abcxyz' GLOB 'ABC*'  SELECT 'abcxyz' NOT GLOB 'ABC*'  SELECT 'abcxyz' NOT GLOB 'abc*'  SELECT 'abcxyz' NOT LIKE 'ABC%'  SELECT 'abcxyz' NOT LIKE 'abc%'  SELECT 'abdxyz' NOT LIKE 'abc%'  SELECT 'abcxyz' NOT GLOB NULL  SELECT 'abcxyz' NOT LIKE NULL  SELECT NULL NOT GLOB 'abc*'  SELECT NULL NOT LIKE 'ABC%'  SELECT 'abc' GLOB 'def'  SELECT 'X' NOT GLOB 'Y'  SELECT 'abc' REGEXP 'def'  SELECT 'X' NOT REGEXP 'Y'  SELECT 'abc' MATCH 'def'  SELECT 'X' NOT MATCH 'Y' 
  SELECT CASE WHEN 1 THEN 'true' WHEN 0 THEN 'false' ELSE 'else' END;

  SELECT CASE 0 WHEN 1 THEN 'true' WHEN 0 THEN 'false' ELSE 'else' END;

  SELECT CASE WHEN var('a') THEN 'A' 
              WHEN var('b') THEN 'B' 
              WHEN var('c') THEN 'C' END

  SELECT CASE WHEN var('c') THEN 'C' 
              WHEN var('b') THEN 'B' 
              WHEN var('a') THEN 'A' 
              ELSE 'no result'
  END

  SELECT CASE WHEN var('a') THEN 'A' 
              WHEN var('b') THEN 'B' 
              WHEN var('c') THEN 'C' 
              ELSE 'no result'
  END

  SELECT CASE WHEN var('a') THEN 'A' 
              WHEN var('b') THEN 'B' 
              WHEN var('c') THEN 'C'
              ELSE 'no result'
  END

  SELECT CASE WHEN var('a') THEN 'A' 
              WHEN var('b') THEN 'B' 
              WHEN var('c') THEN 'C'
              ELSE 'no result'
  END

  SELECT CASE WHEN var('a') THEN 'A' 
              WHEN var('b') THEN 'B' 
              WHEN var('c') THEN 'C'
              ELSE 'no result'
  END

  SELECT CASE WHEN var('a') THEN 'A' 
              WHEN var('b') THEN 'B' 
              WHEN var('c') THEN 'C'
  END

  SELECT CASE WHEN NULL THEN 'A' WHEN 1 THEN 'B' END, iif(NULL,8,99);

  SELECT CASE WHEN 0 THEN 'A' WHEN NULL THEN 'B' ELSE 'C' END, iif(0,8,99);

  SELECT CASE var('a') WHEN 1 THEN 'A' WHEN 2 THEN 'B' WHEN 3 THEN 'C' END

  SELECT CASE 23 WHEN 1 THEN 'A' WHEN 23 THEN 'B' WHEN 23 THEN 'C' END

  SELECT CASE 1 WHEN 1 THEN 'A' WHEN 23 THEN 'B' WHEN 23 THEN 'C' END

  SELECT CASE 24 WHEN 1 THEN 'A' WHEN 23 THEN 'B' WHEN 23 THEN 'C' ELSE 'D' END

  SELECT CASE 24 WHEN 1 THEN 'A' WHEN 23 THEN 'B' WHEN 23 THEN 'C' END

  SELECT CASE 24 WHEN 1 THEN 'A' WHEN 23 THEN 'B' WHEN 23 THEN 'C' END

  CREATE TABLE t1(
    a TEXT     COLLATE NOCASE,
    b          COLLATE REVERSE,
    c INTEGER,
    d BLOB
  );
  INSERT INTO t1 VALUES('abc', 'cba', 55, 34.5);

  SELECT CASE a WHEN 'xyz' THEN 'A' WHEN 'AbC' THEN 'B' END FROM t1

  SELECT CASE 'AbC' WHEN 'abc' THEN 'A' WHEN a THEN 'B' END FROM t1

  SELECT CASE a WHEN b THEN 'A' ELSE 'B' END FROM t1

  SELECT CASE b WHEN a THEN 'A' ELSE 'B' END FROM t1

  SELECT CASE 55 WHEN '55' THEN 'A' ELSE 'B' END

  SELECT CASE c WHEN '55' THEN 'A' ELSE 'B' END FROM t1

  SELECT CASE '34.5' WHEN d THEN 'A' ELSE 'B' END FROM t1

  SELECT CASE NULL WHEN NULL THEN 'A' ELSE 'B' END

  SELECT CASE NULL WHEN 'abc' THEN 'A' WHEN 'def' THEN 'B' END;

  SELECT CASE NULL WHEN 'abc' THEN 'A' WHEN 'def' THEN 'B' ELSE 'C' END;

  SELECT CASE WHEN var('a') THEN 'A' 
              WHEN var('b') THEN 'B' 
              WHEN var('c') THEN 'C' 
  END

  SELECT CASE '0' WHEN var('a') THEN 'A' 
                  WHEN var('b') THEN 'B' 
                  WHEN var('c') THEN 'C' 
  END

  CREATE TABLE t2(x, w1, r1, w2, r2, r3);
  INSERT INTO t2 VALUES(1, 1, 'R1', 2, 'R2', 'R3');
  INSERT INTO t2 VALUES(2, 1, 'R1', 2, 'R2', 'R3');
  INSERT INTO t2 VALUES(3, 1, 'R1', 2, 'R2', 'R3');

  SELECT CASE x WHEN w1 THEN r1 WHEN w2 THEN r2 ELSE r3 END FROM t2

  SELECT CASE WHEN x=w1 THEN r1 WHEN x=w2 THEN r2 ELSE r3 END FROM t2

  SELECT CASE ceval(x) WHEN w1 THEN r1 WHEN w2 THEN r2 ELSE r3 END FROM t2

  SELECT CASE 
    WHEN ceval(x)=w1 THEN r1 
    WHEN ceval(x)=w2 THEN r2 
    ELSE r3 END 
  FROM t2

  CREATE TABLE t3(a TEXT, b REAL, c INTEGER);
  INSERT INTO t3 VALUES(X'555655', '1.23abc', 4.5);
  SELECT typeof(a), a, typeof(b), b, typeof(c), c FROM t3;

  SELECT 
    typeof(CAST(X'555655' as TEXT)), CAST(X'555655' as TEXT),
    typeof(CAST('1.23abc' as REAL)), CAST('1.23abc' as REAL),
    typeof(CAST(4.5 as INTEGER)), CAST(4.5 as INTEGER)

  WITH t1(x) AS (VALUES
     ('9000000000000000001'),
     ('9000000000000000001x'),
     ('9000000000000000001 '),
     (' 9000000000000000001 '),
     (' 9000000000000000001'),
     (' 9000000000000000001.'),
     ('9223372036854775807'),
     ('9223372036854775807 '),
     ('   9223372036854775807   '),
     ('9223372036854775808'),
     ('   9223372036854775808   '),
     ('9223372036854775807.0'),
     ('9223372036854775807e+0'),
     ('-5.0'),
     ('-5e+0'))
  SELECT typeof(CAST(x AS NUMERIC)), CAST(x AS NUMERIC)||'' FROM t1;

  CREATE TABLE t1(a, b);
  INSERT INTO t1 VALUES(1, 2);
  INSERT INTO t1 VALUES(NULL, 2);
  INSERT INTO t1 VALUES(1, NULL);
  INSERT INTO t1 VALUES(NULL, NULL);

  CREATE TABLE t4(x, y);
  INSERT INTO t4 VALUES(1, 'one');
  INSERT INTO t4 VALUES(2, 'two');
  INSERT INTO t4 VALUES(3, 'three');

   SELECT CASE WHEN NULL THEN 'true' ELSE 'false' END, iif(NULL,'true','false');

   SELECT CASE WHEN 0.0 THEN 'true' ELSE 'false' END, iif(0.0,'true','false');

   SELECT CASE WHEN 0 THEN 'true' ELSE 'false' END, iif(0,'true','false');

   SELECT CASE WHEN 'engligh' THEN 'true' ELSE 'false' END, iif('engligh','true','false');

   SELECT CASE WHEN '0' THEN 'true' ELSE 'false' END, iif('0','true','false');

   SELECT CASE WHEN 1 THEN 'true' ELSE 'false' END, iif(1,'true','false');

   SELECT CASE WHEN 1.0 THEN 'true' ELSE 'false' END, iif(1.0,'true','false');

   SELECT CASE WHEN 0.1 THEN 'true' ELSE 'false' END, iif(0.1,'true','false');

   SELECT CASE WHEN -0.1 THEN 'true' ELSE 'false' END, iif(-0.1,'true','false');

   SELECT CASE WHEN '1english' THEN 'true' ELSE 'false' END, iif('1engl','true','false');
