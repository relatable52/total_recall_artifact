
  DROP TABLE IF EXISTS aa;
  DROP TABLE IF EXISTS bb;
  CREATE TABLE aa(x INT);  INSERT INTO aa(x) VALUES(123);
  CREATE TABLE bb(y INT);  INSERT INTO bb(y) VALUES(456);
  SELECT (SELECT sum(x+(SELECT y)) FROM bb) FROM aa;

  SELECT (SELECT sum(x+y) FROM bb) FROM aa;

  DROP TABLE IF EXISTS tx;
  DROP TABLE IF EXISTS ty;
  CREATE TABLE tx(x INT);
  INSERT INTO tx VALUES(1),(2),(3),(4),(5);
  CREATE TABLE ty(y INT);
  INSERT INTO ty VALUES(91),(92),(93);
  SELECT min((SELECT count(y) FROM ty)) FROM tx;

  SELECT max((SELECT a FROM (SELECT count(*) AS a FROM ty) AS s)) FROM tx;

  CREATE TABLE x1(a, b);
  INSERT INTO x1 VALUES(1, 2);
  CREATE TABLE x2(x);
  INSERT INTO x2 VALUES(NULL), (NULL), (NULL);

  SELECT ( SELECT total( (SELECT b FROM x1) ) ) FROM x2;

  SELECT ( SELECT total( (SELECT 2 FROM x1) ) ) FROM x2;

  CREATE TABLE t1(a);
  CREATE TABLE t2(b);

  SELECT(
    SELECT max(b) LIMIT (
      SELECT total( (SELECT a FROM t1) )
    )
  )
  FROM t2;

  CREATE TABLE a(b);
  WITH c AS(SELECT a)
    SELECT(SELECT(SELECT group_concat(b, b)
          LIMIT(SELECT 0.100000 *
            AVG(DISTINCT(SELECT 0 FROM a ORDER BY b, b, b))))
        FROM a GROUP BY b,
        b, b) FROM a EXCEPT SELECT b FROM a ORDER BY b,
    b, b;

  CREATE TABLE t1(a);
  CREATE TABLE t2(b);

  INSERT INTO t1 VALUES('x');
  INSERT INTO t2 VALUES(1);

  SELECT ( 
    SELECT t2.b FROM (SELECT t2.b AS c FROM t1) GROUP BY 1 HAVING t2.b
  )
  FROM t2 GROUP BY 'constant_string';

  SELECT ( 
    SELECT c FROM (SELECT t2.b AS c FROM t1) GROUP BY c HAVING t2.b
  )
  FROM t2 GROUP BY 'constant_string';

  UPDATE t2 SET b=0

  SELECT ( 
    SELECT t2.b FROM (SELECT t2.b AS c FROM t1) GROUP BY 1 HAVING t2.b
  )
  FROM t2 GROUP BY 'constant_string';

  SELECT ( 
    SELECT c FROM (SELECT t2.b AS c FROM t1) GROUP BY c HAVING t2.b
  )
  FROM t2 GROUP BY 'constant_string';
