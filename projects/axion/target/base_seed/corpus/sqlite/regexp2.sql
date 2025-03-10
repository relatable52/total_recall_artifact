
  CREATE TABLE t1(a, b, c);
  CREATE TABLE x1(x, y, z);
  CREATE TABLE x2(x, y, z);

  CREATE TRIGGER tr1 AFTER INSERT ON t1 BEGIN
    INSERT INTO x1 VALUES(
        new.a REGEXP 'abc',
        new.b REGEXP 'abc',
        new.c REGEXP 'abc'
    );
  END;

  CREATE TRIGGER tr2 AFTER INSERT ON t1 BEGIN
    INSERT INTO x2 VALUES(
        new.a REGEXP 'def',
        new.b REGEXP 'def',
        new.c REGEXP 'def'
    );
  END;

  INSERT INTO t1 VALUES('abc', 'def', 'abc');
  SELECT * FROM t1;
1 0 10 1 0
  CREATE TABLE t2(a, b);
  CREATE TABLE t3(c, d);
  CREATE TABLE t4(e, f);

  CREATE TRIGGER t2_tr1 AFTER UPDATE ON t2 BEGIN
    UPDATE t3 SET d = new.b WHERE c = old.a;
  END;

  CREATE TRIGGER t3_tr1 AFTER UPDATE ON t3 BEGIN
    UPDATE t4 SET f = new.d WHERE e = old.c AND new.d REGEXP 'a.*';
  END;

  CREATE TRIGGER t4_tr1 AFTER UPDATE ON t4 BEGIN
    SELECT CASE WHEN new.f REGEXP '.*y.*' THEN error() ELSE 1 END;
  END;

  INSERT INTO t2 VALUES(1, 'a_x_1');
  INSERT INTO t2 VALUES(2, 'a_y_1');

  INSERT INTO t3 VALUES(1, 'b1');
  INSERT INTO t3 VALUES(2, 'b2');

  INSERT INTO t4 VALUES(1, 'b1');
  INSERT INTO t4 VALUES(2, 'b2');

  UPDATE t2 SET b = 'a_abc_1';

  SELECT * FROM t2;
  SELECT * FROM t3;
  SELECT * FROM t4;

  CREATE TABLE t5(a);
  CREATE TABLE t6(x);

  CREATE TRIGGER t5tr AFTER DELETE ON t5 BEGIN
    DELETE FROM t6 WHERE t6.x REGEXP old.a;
  END;

  INSERT INTO t5 VALUES ('^a.*'), ('^b.*'), ('^c.*');
  INSERT INTO t6 VALUES ('eab'), ('abc'), ('bcd'), ('cde'), ('dea');

  DELETE FROM t5;
  SELECT * FROM t6;
011110101111000100