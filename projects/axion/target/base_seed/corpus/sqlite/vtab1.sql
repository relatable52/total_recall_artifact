
  CREATE TABLE t6(a, b TEXT);
  CREATE INDEX i6 ON t6(b, a);
  INSERT INTO t6 VALUES(1, 'Peter');
  INSERT INTO t6 VALUES(2, 'Andrew');
  INSERT INTO t6 VALUES(3, '8James');
  INSERT INTO t6 VALUES(4, '8John');
  INSERT INTO t6 VALUES(5, 'Phillip');
  INSERT INTO t6 VALUES(6, 'Bartholomew');
  CREATE VIRTUAL TABLE e6 USING echo(t6);
  PRAGMA case_sensitive_like = ON   PRAGMA case_sensitive_like = OFF 
  CREATE TABLE t7 (a, b);
  CREATE TABLE t8 (c, d);
  CREATE INDEX i2 ON t7(a);
  CREATE INDEX i3 ON t7(b);
  CREATE INDEX i4 ON t8(c);
  CREATE INDEX i5 ON t8(d);

  CREATE VIRTUAL TABLE t7v USING echo(t7);
  CREATE VIRTUAL TABLE t8v USING echo(t8);

  SELECT a, b FROM (
      SELECT a, b FROM t7 WHERE a=11 OR b=12
      UNION ALL
      SELECT c, d FROM t8 WHERE c=5 OR d=6
  )
  ORDER BY 1, 2;

  SELECT a, b FROM (
      SELECT a, b FROM t7v WHERE a=11 OR b=12
      UNION ALL
      SELECT c, d FROM t8v WHERE c=5 OR d=6
  )
  ORDER BY 1, 2;

  CREATE TABLE t9(a,b,c);
  CREATE VIRTUAL TABLE t9v USING echo(t9);

  INSERT INTO t9 VALUES(1,2,3);
  INSERT INTO t9 VALUES(3,2,1);
  INSERT INTO t9 VALUES(2,2,2);

  SELECT * FROM t9v WHERE a<b;

  SELECT * FROM t9v WHERE a=b;

    ATTACH 'test.db2' AS $nm
  1 2 3 4
    CREATE VIRTUAL TABLE t4 USING fts3();
    SAVEPOINT a;
    INSERT INTO t4 VALUES('a b c');
    ROLLBACK TO a;
    RELEASE a;
    SELECT * FROM t4;
  
    SAVEPOINT a;
    CREATE VIRTUAL TABLE t5 USING fts3();
    SAVEPOINT b;
    ROLLBACK TO a;
    SAVEPOINT c;
    RELEASE a;
  
  CREATE VIRTUAL TABLE t1 USING wholenumber;
  CREATE TABLE tx(a, b, c);

  SELECT value FROM t1 WHERE value<5
