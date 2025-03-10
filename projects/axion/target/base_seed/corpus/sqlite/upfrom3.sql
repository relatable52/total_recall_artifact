
    CREATE TABLE log(t TEXT);
    CREATE TABLE t1(x INTEGER PRIMARY KEY, y, z UNIQUE) %WO%;
    CREATE INDEX t1y ON t1(y);

    INSERT INTO t1 VALUES(1, 'i',   'one');
    INSERT INTO t1 VALUES(2, 'ii',  'two');
    INSERT INTO t1 VALUES(3, 'iii', 'three');
    INSERT INTO t1 VALUES(4, 'iv',  'four');
  
    CREATE TABLE x1(o, n);
    INSERT INTO x1 VALUES(1, 11);
    INSERT INTO x1 VALUES(2, 12);
    INSERT INTO x1 VALUES(3, 13);
    INSERT INTO x1 VALUES(4, 14);
    UPDATE t1 SET x=n FROM x1 WHERE x=o;
    SELECT x, y, z FROM t1 ORDER BY 1;
  
    INSERT INTO x1 VALUES(11, 21);
    INSERT INTO x1 VALUES(12, 22);
    INSERT INTO x1 VALUES(13, 23);
    INSERT INTO x1 VALUES(14, 24);

    INSERT INTO x1 VALUES(21, 31);
    INSERT INTO x1 VALUES(22, 32);
    INSERT INTO x1 VALUES(23, 33);
    INSERT INTO x1 VALUES(24, 34);
    UPDATE t1 SET x=n FROM x1 WHERE x=o;
    SELECT x, y, z FROM t1 ORDER BY 1;
  
    UPDATE t1 SET x=n FROM x1 WHERE x=o;
    SELECT x, y, z FROM t1 ORDER BY 1;
  
    INSERT INTO x1 VALUES(31, 32);
    INSERT INTO x1 VALUES(33, 34);
    UPDATE OR REPLACE t1 SET x=n FROM x1 WHERE x=o;
    SELECT x, y, z FROM t1 ORDER BY 1;
  
    INSERT INTO t1 VALUES(33, 'ii', 'two');
    INSERT INTO t1 VALUES(35, 'iv', 'four');
  
    CREATE TABLE x2(o, n, zz);
    INSERT INTO x2 VALUES(32, 41, 'four');
    INSERT INTO x2 VALUES(33, 42, 'three');
    UPDATE OR IGNORE t1 SET x=n, z=zz FROM x2 WHERE x=o;
    SELECT x, y, z FROM t1 ORDER BY 1;
  
    UPDATE OR REPLACE t1 SET x=n, z=zz FROM x2 WHERE x=o;
    SELECT x, y, z FROM t1 ORDER BY 1;
  
  CREATE TABLE u1(a, b, c, PRIMARY KEY(b, c)) WITHOUT ROWID;
  INSERT INTO u1 VALUES(0, 0, 0);
  INSERT INTO u1 VALUES(1, 0, 1);
  INSERT INTO u1 VALUES(2, 1, 0);
  INSERT INTO u1 VALUES(3, 1, 1);

  CREATE TABLE map(f, t);
  INSERT INTO map VALUES(0, 10);
  INSERT INTO map VALUES(1, 11);
  UPDATE u1 SET c=t FROM map WHERE c=f;
  SELECT * FROM u1 ORDER BY a;

  UPDATE u1 SET b=t FROM map WHERE b=f;
  SELECT * FROM u1 ORDER BY a;

  CREATE TABLE map2(o1, o2, n1, n2);
  INSERT INTO map2 VALUES
    (10, 10, 50, 50), (10, 11, 50, 60), 
    (11, 10, 60, 50), (11, 11, 60, 60);
  UPDATE u1 SET b=n1, c=n2 FROM map2 WHERE b=o1 AND c=o2;
  SELECT * FROM u1 ORDER BY a;

      CREATE TABLE g1(a, b, c, PRIMARY KEY(a, b)) %WO%;
      INSERT INTO g1 VALUES(1, 1, 1);

      ATTACH 'test.db2' AS aux;
      CREATE TABLE aux.g1(a, b, c, PRIMARY KEY(a, b)) %WO%;
      INSERT INTO aux.g1 VALUES(10, 1, 10);
      INSERT INTO aux.g1 VALUES(20, 2, 20);
      INSERT INTO aux.g1 VALUES(30, 3, 30);
    
      UPDATE aux.g1 SET c=101 FROM main.g1;
    
      SELECT * FROM aux.g1;
    
      UPDATE g1 SET c=101 FROM g1 AS g2;
    
      SELECT * FROM g1;
    
      CREATE TABLE p1(a INTEGER PRIMARY KEY, b) %WO%;
      CREATE TABLE c1(x PRIMARY KEY, y REFERENCES p1 ON UPDATE CASCADE) %WO%;
      PRAGMA foreign_keys = 1;

      INSERT INTO p1 VALUES(1, 'one');
      INSERT INTO p1 VALUES(11, 'eleven');
      INSERT INTO p1 VALUES(111, 'eleventyone');

      INSERT INTO c1 VALUES('a', 1);
      INSERT INTO c1 VALUES('b', 11);
      INSERT INTO c1 VALUES('c', 111);
    
      CREATE TABLE map(f, t);
      INSERT INTO map VALUES('a', 111);
      INSERT INTO map VALUES('c', 112);
    
      INSERT INTO map VALUES('eleven', 12);
      INSERT INTO map VALUES('eleventyone', 112);
      UPDATE p1 SET a=t FROM map WHERE b=f;
    
      SELECT * FROM c1
    