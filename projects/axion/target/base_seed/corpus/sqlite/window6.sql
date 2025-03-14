
    SELECT group_concat(%x, '.') OVER (ORDER BY %y) FROM %t1
  
    SELECT sum(%x) OVER %w FROM %t1 WINDOW %w AS (ORDER BY %y)
  
    SELECT sum(%alias.%x) OVER %w FROM %t1 %alias WINDOW %w AS (ORDER BY %y)
  
    SELECT sum(%x) %alias FROM %t1
  
  SELECT window('hello world');

  CREATE TABLE window(x COLLATE window);
  INSERT INTO window VALUES('bob'), ('alice'), ('cate');
  SELECT * FROM window ORDER BY x COLLATE window;

  DROP TABLE window;
  CREATE TABLE x1(x);
  INSERT INTO x1 VALUES('bob'), ('alice'), ('cate');
  CREATE INDEX window ON x1(x COLLATE window);
  SELECT * FROM x1 ORDER BY x COLLATE window;
 CREATE TABLE t4(x, y);  PRAGMA parser_trace = 1  
  SELECT * FROM t4 window, t4;

  CREATE TABLE over(x, over);
  CREATE TABLE window(x, window);
  INSERT INTO over VALUES(1, 2), (3, 4), (5, 6);
  INSERT INTO window VALUES(1, 2), (3, 4), (5, 6);
  SELECT sum(x) over FROM over

  SELECT sum(x) over over FROM over WINDOW over AS ()

  SELECT sum(over) over over over FROM over over WINDOW over AS (ORDER BY over)

  SELECT sum(over) over over over FROM over over WINDOW over AS (ORDER BY over);

  SELECT sum(window) OVER window window FROM window window window window AS (ORDER BY window);

  SELECT count(*) OVER win FROM over
  WINDOW win AS (ORDER BY x ROWS BETWEEN +2 FOLLOWING AND +3 FOLLOWING)

    SELECT LIKE('!', '', '!') x WHERE x;
  
    SELECT LIKE("!","","!")""WHeRE"";
  
  CREATE TABLE t1(x TEXT);
  CREATE INDEX i1 ON t1(x COLLATE nocase);
  INSERT INTO t1 VALUES('');

    SELECT count(*) FROM t1 WHERE x LIKE '!' ESCAPE '!';
  
  CREATE TABLE IF NOT EXISTS "sample" (
      "id" INTEGER NOT NULL PRIMARY KEY, 
      "counter" INTEGER NOT NULL, 
      "value" REAL NOT NULL
  );

  INSERT INTO "sample" (counter, value) 
  VALUES (1, 10.), (1, 20.), (2, 1.), (2, 3.), (3, 100.);

  SELECT "counter", "value", RANK() OVER w AS "rank" 
  FROM "sample"
  WINDOW w AS (PARTITION BY "counter" ORDER BY "value" DESC) 
  ORDER BY "counter", RANK() OVER w

  SELECT "counter", "value", SUM("value") OVER 
  (ORDER BY "id" ROWS 2 PRECEDING) 
    FROM "sample" 
  ORDER BY "id"

  SELECT SUM("value") OVER 
  (ORDER BY "id" ROWS BETWEEN 2 PRECEDING AND CURRENT ROW) 
    FROM "sample" 
  ORDER BY "id"

  WITH RECURSIVE c(x) AS (VALUES(1) UNION ALL SELECT x+1 FROM c WHERE x<5)
  SELECT x, group_concat(x) OVER (ORDER BY x ROWS 2 PRECEDING)
  FROM c;

  WITH t1(a,b) AS (VALUES(1,2))
  SELECT count() FILTER (where b<>5) OVER w1
    FROM t1
    WINDOW w1 AS (ROWS BETWEEN 1 PRECEDING AND 1 FOLLOWING);

  CREATE TABLE t1(a INT);
  INSERT INTO t1 VALUES(10),(15),(20),(20),(25),(30),(30),(50);
  CREATE TABLE t3(x INT, y VARCHAR);
  INSERT INTO t3(x,y) VALUES(10,'ten'),('15','fifteen'),(30,'thirty');

  SELECT a, (SELECT y FROM t3 WHERE x=a) FROM t1 ORDER BY a;

  SELECT a, (SELECT y FROM t3 WHERE x=a), sum(a) OVER (ORDER BY a)
    FROM t1 ORDER BY a;

  SELECT a, sum(a) OVER win FROM t1
  WINDOW win AS (ORDER BY a ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW)

  SELECT a, sum(a) OVER win FROM t1
  WINDOW win AS (ORDER BY a ROWS BETWEEN UNBOUNDED PRECEDING AND 0 FOLLOWING)

  SELECT a, sum(a) OVER win FROM t1
  WINDOW win AS (ORDER BY a ROWS BETWEEN UNBOUNDED PRECEDING AND 0 PRECEDING)

  SELECT y, group_concat(y, '.') OVER win FROM t3
  WINDOW win AS (
    ORDER BY y RANGE BETWEEN UNBOUNDED PRECEDING AND 10 PRECEDING
  );
