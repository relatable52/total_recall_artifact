 
  CREATE TABLE t1(a, b, c); 
  CREATE VIEW v1 AS SELECT * FROM t1;
  CREATE TRIGGER tr1 AFTER INSERT ON t1 BEGIN
    DELETE FROM t1 WHERE a<new.a;
  END;

  CREATE TEMP TRIGGER tr2 AFTER UPDATE OF a, b ON t1 BEGIN
    UPDATE t1 SET a=a+1 WHERE new.b<b;
  END;
