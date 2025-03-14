
  CREATE TABLE a1(c, b INTEGER, a TEXT, PRIMARY KEY(a, b));
 
  INSERT INTO a1 (rowid, c, b, a) VALUES(3,  '0x03', 1, 1);
  INSERT INTO a1 (rowid, c, b, a) VALUES(14, '0x0E', 2, 2);
  INSERT INTO a1 (rowid, c, b, a) VALUES(15, '0x0F', 3, 3);
  INSERT INTO a1 (rowid, c, b, a) VALUES(92, '0x5C', 4, 4);

  CREATE TABLE a2(x BLOB, y BLOB);
  INSERT INTO a2(x, y) VALUES(1, 1);
  INSERT INTO a2(x, y) VALUES(2, '2');
  INSERT INTO a2(x, y) VALUES('3', 3);
  INSERT INTO a2(x, y) VALUES('4', '4');
 
  SELECT x, typeof(x), y, typeof(y) FROM a2 ORDER BY rowid

  SELECT (SELECT rowid FROM a1 WHERE a=x AND b=y) FROM a2

  SELECT (SELECT rowid FROM a1 WHERE (a, b) = (x, y)) FROM a2

  SELECT a1.rowid FROM a1, a2 WHERE a=x AND b=y;

  SELECT a1.rowid FROM a1, a2 WHERE (a, b) = (x, y)

  SELECT a1.rowid FROM a1, a2 WHERE coalesce(NULL,x)=a AND coalesce(NULL,y)=b

  SELECT a1.rowid FROM a1, a2 
  WHERE (coalesce(NULL,x), coalesce(NULL,y)) = (a, b)

  SELECT a1.rowid FROM a1, a2 WHERE +x=a AND +y=b

  SELECT a1.rowid FROM a1, a2 WHERE (+x, +y) = (a, b)

  SELECT (SELECT rowid FROM a1 WHERE a=+x AND b=+y) FROM a2

  SELECT (SELECT rowid FROM a1 WHERE (a, b) = (+x, +y)) FROM a2

  SELECT (SELECT rowid FROM a1 WHERE (+x, +y) = (a, b)) FROM a2

  SELECT a1.rowid FROM a1 WHERE (a, b) IN (SELECT x, y FROM a2)

  SELECT a1.rowid FROM a1, a2 WHERE EXISTS (
    SELECT 1 FROM a1 WHERE a=x AND b=y
  )

  CREATE TABLE b1(a TEXT);
  CREATE TABLE b2(x BLOB);
  INSERT INTO b1 VALUES(1);
  INSERT INTO b2 VALUES(1);
 CREATE UNIQUE INDEX b1a ON b1(a); 
  CREATE TABLE c1(a INTEGER, b TEXT);
  INSERT INTO c1 VALUES(1, 1);
  CREATE TABLE c2(x BLOB, y BLOB);
  INSERT INTO c2 VALUES(1, 1);

  SELECT * FROM c1 WHERE (a, b) IN (SELECT x, y FROM c2)

  CREATE UNIQUE INDEX c1ab ON c1(a, b);
  SELECT * FROM c1 WHERE (a, b) IN (SELECT x, y FROM c2)

  SELECT * FROM c1 WHERE (a, +b) IN (SELECT x, y FROM c2)

  SELECT c1.rowid FROM c1 WHERE b = (SELECT y FROM c2);

  SELECT c1.rowid FROM c1 WHERE (a, b) = (SELECT x, y FROM c2);

  CREATE TABLE d1(a TEXT, b INTEGER, c NUMERIC);
  CREATE TABLE d2(x BLOB, y BLOB);

  INSERT INTO d1 VALUES(1, 1, 1);
  INSERT INTO d1 VALUES(2, 2, 2);
  INSERT INTO d1 VALUES(3, 3, 3);
  INSERT INTO d1 VALUES(4, 4, 4);

  INSERT INTO d2 VALUES (1, 1);
  INSERT INTO d2 VALUES (2, '2');
  INSERT INTO d2 VALUES ('3', 3);
  INSERT INTO d2 VALUES ('4', '4');

    SELECT rowid FROM d1 WHERE (a, c) IN (SELECT x, y FROM d2);
  
    SELECT rowid FROM d1 WHERE (c, a) IN (SELECT x, y FROM d2);
  
    SELECT rowid FROM d1 WHERE (+c, a) IN (SELECT x, y FROM d2);
  
    SELECT rowid FROM d1 WHERE (c, a) = (
      SELECT x, y FROM d2 WHERE d2.rowid=d1.rowid
    );
  
    SELECT d1.rowid FROM d1, d2 WHERE a = y;
  
    SELECT d1.rowid FROM d1 WHERE a = (
      SELECT y FROM d2 where d2.rowid=d1.rowid
    );
  
  CREATE TABLE e1(a TEXT, c NUMERIC);
  CREATE TABLE e2(x BLOB, y BLOB);

  INSERT INTO e1 VALUES(2, 2);

  INSERT INTO e2 VALUES ('2', 2);
  INSERT INTO e2 VALUES ('2', '2');
  INSERT INTO e2 VALUES ('2', '2.0');

  CREATE INDEX e1c ON e1(c);

  SELECT rowid FROM e1 WHERE (a, c) IN (SELECT x, y FROM e2);

  SELECT rowid FROM e2 WHERE rowid IN (SELECT +c FROM e1);

  SELECT rowid FROM e2 WHERE rowid IN (SELECT 0+c FROM e1);

  CREATE TABLE f1(a, b);
  CREATE TABLE f2(c, d);
  CREATE TABLE f3(e, f);

  SELECT * FROM f3 WHERE (e, f) IN (
    SELECT a, b FROM f1 UNION ALL SELECT c, d FROM f2
  );

  CREATE INDEX f3e ON f3(e);
  SELECT * FROM f3 WHERE (e, f) IN (
    SELECT a, b FROM f1 UNION ALL SELECT c, d FROM f2
  );

  CREATE TABLE g1(a, b); 
  INSERT INTO g1 VALUES
      (1, 1), (1, 2), (1, 3), (1, 'i'), (1, 'j'),
      (1, 6), (1, 7), (1, 8), (1, 9), (1, 10),
      (1, 4), (1, 5);

  CREATE TABLE g2(x, y);
  CREATE INDEX g2x ON g2(x);

  INSERT INTO g2 VALUES(1, 4);
  INSERT INTO g2 VALUES(1, 5);

  SELECT * FROM g2 WHERE (x, y) IN (
    SELECT a, b FROM g1 ORDER BY +a, +b LIMIT 10
  );

  SELECT * FROM g2 WHERE (x, y) IN (
    SELECT a, b FROM g1 ORDER BY a, b LIMIT 10
  );

  SELECT * FROM g2 WHERE (x, y) IN (
    SELECT a, b FROM g1 ORDER BY 1, 2 LIMIT 10
  );

  CREATE TABLE t1(a ,b FLOAT);
  CREATE INDEX t1x1 ON t1(a,b,a,a,a,a,a,a,a,a,a,b);

  CREATE TABLE t1(a, b);
  INSERT INTO t1 VALUES(1, 1), (1, 2), (2, 2), (2, 3), (3, 3), (3, 4), (4, 4);

  SELECT * FROM t1 WHERE (a, b) IN ( (3, 3), (2, 2) );

  CREATE INDEX i1 ON t1(a);

  SELECT * FROM t1 WHERE (a, b) IN ( (3, 3), (2, 2) );

  CREATE INDEX i2 ON t1(b, a);
  SELECT * FROM t1 WHERE (a, b) IN ( (3, 3), (2, 2) );
