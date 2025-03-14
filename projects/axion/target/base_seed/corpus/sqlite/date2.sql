
  CREATE TABLE t1(x, y, CHECK( date(x) BETWEEN '2017-07-01' AND '2017-07-31' ));
  INSERT INTO t1(x,y) VALUES('2017-07-20','one');

  SELECT * FROM t1;

  CREATE TABLE t2(x,y);
  INSERT INTO t2(x,y) VALUES(1, '2017-07-20'), (2, 'xyzzy');
  CREATE INDEX t2y ON t2(date(y));

  SELECT x, y FROM t2 ORDER BY x;

  CREATE TABLE t3(a INTEGER PRIMARY KEY,b);
  WITH RECURSIVE c(x) AS (VALUES(1) UNION ALL SELECT x+1 FROM c WHERE x<1000)
    INSERT INTO t3(a,b) SELECT x, julianday('2017-07-01')+x FROM c;
  UPDATE t3 SET b='now' WHERE a=500;

  EXPLAIN QUERY PLAN
  SELECT a FROM t3
   WHERE typeof(b)='real'
     AND datetime(b) BETWEEN '2017-07-04' AND '2017-07-08';

  SELECT a FROM t3
   WHERE typeof(b)='real'
     AND datetime(b) BETWEEN '2017-07-04' AND '2017-07-08'
  ORDER BY a;

  CREATE TABLE t4(a INTEGER PRIMARY KEY,b);
  WITH RECURSIVE c(x) AS (VALUES(1) UNION ALL SELECT x+1 FROM c WHERE x<1000)
    INSERT INTO t4(a,b) SELECT x, julianday('2017-07-01')+x FROM c;
  UPDATE t4 SET b='now' WHERE a=500;

  DELETE FROM t4 WHERE a=500;
  CREATE INDEX t4b1 ON t4(b)
    WHERE date(b) BETWEEN '2017-06-01' AND '2017-08-31';

  CREATE TABLE mods(x);
  INSERT INTO mods(x) VALUES
    ('+10 days'),
    ('-10 days'),
    ('+10 hours'),
    ('-10 hours'),
    ('+10 minutes'),
    ('-10 minutes'),
    ('+10 seconds'),
    ('-10 seconds'),
    ('+10 months'),
    ('-10 months'),
    ('+10 years'),
    ('-10 years'),
    ('start of month'),
    ('start of year'),
    ('start of day'),
    ('weekday 1'),
    ('unixepoch');
  CREATE TABLE t5(y,m);
  WITH RECURSIVE c(x) AS (VALUES(1) UNION ALL SELECT x+1 FROM c WHERE x<5)
    INSERT INTO t5(y,m) SELECT julianday('2017-07-01')+c.x, mods.x FROM c, mods;
  CREATE INDEX t5x1 on t5(y) WHERE datetime(y,m) IS NOT NULL;
