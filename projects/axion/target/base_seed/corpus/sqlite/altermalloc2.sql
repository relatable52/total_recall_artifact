
  CREATE TABLE t1(abcd, efgh);

  PRAGMA encoding = 'utf-16';
  CREATE TABLE t1(abcd, efgh);

  CREATE TABLE t1(abcd, efgh);
  CREATE VIEW v1 AS SELECT * FROM t1 WHERE abcd>efgh;

  CREATE TABLE rr(a, b);
  CREATE VIEW vv AS SELECT * FROM rr;

  CREATE TRIGGER vv1 INSTEAD OF INSERT ON vv BEGIN
    SELECT 1, 2, 3;
  END;
  CREATE TRIGGER tr1 AFTER INSERT ON rr BEGIN
    INSERT INTO vv VALUES(new.a, new.b);
  END;

  CREATE TABLE rr(a, b);
  CREATE VIEW vv AS SELECT * FROM (
    WITH abc(d, e) AS (SELECT * FROM rr)
    SELECT * FROM abc
  );
