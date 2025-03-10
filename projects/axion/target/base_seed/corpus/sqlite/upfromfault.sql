
    CREATE TABLE log(t TEXT);

    INSERT INTO t1 VALUES(1, 'i',   'one');
    INSERT INTO t1 VALUES(2, 'ii',  'two');
    INSERT INTO t1 VALUES(3, 'iii', 'three');
    INSERT INTO t1 VALUES(4, 'iv',  'four');
  
      CREATE TRIGGER tr1 BEFORE UPDATE ON t1 BEGIN
        INSERT INTO log VALUES(old.z || '->' || new.z);
      END;
      CREATE TRIGGER tr2 AFTER UPDATE ON t1 BEGIN
        INSERT INTO log VALUES(old.y || '->' || new.y);
      END;
    
  CREATE TABLE t1(a, b, c);
  CREATE TABLE t2(x, y, z);

  CREATE TRIGGER tr1 AFTER INSERT ON t1 BEGIN
    UPDATE t1 SET a=x FROM t2 WHERE c=z;
  END;

  INSERT INTO t2 VALUES(1, 1, 1);
  INSERT INTO t2 VALUES(2, 2, 2);
  INSERT INTO t2 VALUES(3, 3, 3);
