
  CREATE TABLE t1(a,b,c);
  WITH RECURSIVE c(x) AS (VALUES(1) UNION SELECT x+1 FROM c WHERE x<100)
  INSERT INTO t1(a,b,c) SELECT x, x%3, printf('n%d',x)  FROM c;
  UPDATE t1 SET a='orange' WHERE rowid=39;
  UPDATE t1 SET a=32.5 WHERE rowid=31;
  UPDATE t1 SET a=x'303132' WHERE rowid=29;
  UPDATE t1 SET a=NULL WHERE rowid=37;
  SELECT json_group_array(a) FROM t1 WHERE a<0 AND typeof(a)!='blob';

  SELECT json_group_array(a) FROM t1
   WHERE rowid BETWEEN 31 AND 39;

  SELECT json_array_length(json_group_array(a)) FROM t1
   WHERE rowid BETWEEN 31 AND 39;

  SELECT b, json_group_array(a) FROM t1 WHERE rowid<10 GROUP BY b ORDER BY b;

  SELECT json_group_object(c,a) FROM t1 WHERE a<0 AND typeof(a)!='blob';

  SELECT json_group_object(c,a) FROM t1
   WHERE rowid BETWEEN 31 AND 39 AND rowid%2==1;

  SELECT b, json_group_object(c,a) FROM t1
   WHERE rowid<7 GROUP BY b ORDER BY b;

  DROP TABLE IF EXISTS t1;
  CREATE TABLE t1(x);
  INSERT INTO t1 VALUES(1),('abc');
  SELECT
     json_group_array(x),
     json_group_array(json_object('x',x))
    FROM t1;

    CREATE TABLE t4(x);
    INSERT INTO t4 VALUES
      (1),
      ('a,b'),
      (3),
      ('x"y'),
      (5),
      (6),
      (7);
    SELECT json_group_array(x) OVER (ROWS 2 PRECEDING) FROM t4;
  
    SELECT json_group_object(rowid, x) OVER (ROWS 2 PRECEDING) FROM t4;
  