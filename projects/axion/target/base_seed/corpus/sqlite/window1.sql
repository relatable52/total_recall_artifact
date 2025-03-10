
  CREATE TABLE t1(a, b, c, d);
  INSERT INTO t1 VALUES(1, 2, 3, 4);
  INSERT INTO t1 VALUES(5, 6, 7, 8);
  INSERT INTO t1 VALUES(9, 10, 11, 12);

  SELECT sum(b) OVER () FROM t1

  SELECT a, sum(b) OVER () FROM t1

  SELECT a, 4 + sum(b) OVER () FROM t1

  SELECT a + 4 + sum(b) OVER () FROM t1

  SELECT a, sum(b) OVER (PARTITION BY c) FROM t1

  CREATE TABLE t2(a, b, c);
  INSERT INTO t2 VALUES(0, 0, 0);
  INSERT INTO t2 VALUES(1, 1, 1);
  INSERT INTO t2 VALUES(2, 0, 2);
  INSERT INTO t2 VALUES(3, 1, 0);
  INSERT INTO t2 VALUES(4, 0, 1);
  INSERT INTO t2 VALUES(5, 1, 2);
  INSERT INTO t2 VALUES(6, 0, 0);

  SELECT a, sum(a) OVER (PARTITION BY b) FROM t2;

  SELECT a, sum(a) OVER (PARTITION BY b) FROM t2 ORDER BY a;

  SELECT a, sum(a) OVER () FROM t2 ORDER BY a;

  SELECT a, sum(a) OVER (ORDER BY a) FROM t2;

  SELECT a, sum(a) OVER (PARTITION BY b ORDER BY a) FROM t2 ORDER BY a

  SELECT a, sum(a) OVER (PARTITION BY c ORDER BY a) FROM t2 ORDER BY a

  SELECT a, sum(a) OVER (PARTITION BY b ORDER BY a DESC) FROM t2 ORDER BY a

  SELECT a, 
    sum(a) OVER (PARTITION BY b ORDER BY a DESC),
    sum(a) OVER (PARTITION BY c ORDER BY a) 
  FROM t2 ORDER BY a

  SELECT a, 
    sum(a) OVER (ORDER BY a), 
    avg(a) OVER (ORDER BY a) 
  FROM t2 ORDER BY a

  SELECT a, 
    count() OVER (ORDER BY a DESC),
    group_concat(a, '.') OVER (ORDER BY a DESC) 
  FROM t2 ORDER BY a DESC

  SELECT a, 
    count(*) OVER (ORDER BY a DESC),
    group_concat(a, '.') OVER (ORDER BY a DESC) 
  FROM t2 ORDER BY a DESC

  CREATE TABLE t4(a, b);
  SELECT ntile(1) OVER (ORDER BY a) FROM t4;

  CREATE TABLE t1(x);
  INSERT INTO t1 VALUES(7), (6), (5), (4), (3), (2), (1);

  CREATE TABLE t2(x);
  INSERT INTO t2 VALUES('b'), ('a');

  SELECT x, count(*) OVER (ORDER BY x) FROM t1;

  SELECT * FROM t2, (SELECT x, count(*) OVER (ORDER BY x) FROM t1)
  ORDER BY 1, 2;

  CREATE TABLE t1(x, y);
  INSERT INTO t1 VALUES(1, 2);
  INSERT INTO t1 VALUES(3, 4);
  INSERT INTO t1 VALUES(5, 6);
  INSERT INTO t1 VALUES(7, 8);
  INSERT INTO t1 VALUES(9, 10);

  SELECT 
    lead(y) OVER win, 
    lead(y, 2) OVER win, 
    lead(y, 3, 'default') OVER win
  FROM t1
  WINDOW win AS (ORDER BY x)

  SELECT row_number() OVER (ORDER BY x) FROM t1

  SELECT 
    row_number() OVER win,
    lead(x) OVER win
  FROM t1
  WINDOW win AS (ORDER BY x ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW)

  CREATE TABLE t3(a, b, c);

  WITH s(i) AS ( VALUES(1) UNION ALL SELECT i+1 FROM s WHERE i<6 )
  INSERT INTO t3 SELECT i, i, i FROM s;

  CREATE VIEW v1 AS SELECT
    sum(b) OVER (ORDER BY c),
    min(b) OVER (ORDER BY c),
    max(b) OVER (ORDER BY c)
  FROM t3;

  CREATE VIEW v2 AS SELECT
    sum(b) OVER win,
    min(b) OVER win,
    max(b) OVER win
  FROM t3
  WINDOW win AS (ORDER BY c);

  SELECT * FROM v1

  SELECT * FROM v2

  SELECT * FROM v1

  SELECT * FROM v2

  CREATE TABLE t4(x, y);
  INSERT INTO t4 VALUES(1, 'g');
  INSERT INTO t4 VALUES(2, 'i');
  INSERT INTO t4 VALUES(3, 'l');
  INSERT INTO t4 VALUES(4, 'g');
  INSERT INTO t4 VALUES(5, 'a');

  CREATE TABLE t5(x, y, m);
  CREATE TRIGGER t4i AFTER INSERT ON t4 BEGIN
    DELETE FROM t5;
    INSERT INTO t5 
      SELECT x, y, max(y) OVER xyz FROM t4
      WINDOW xyz AS (PARTITION BY (x%2) ORDER BY x);
  END;

  SELECT x, y, max(y) OVER xyz FROM t4
      WINDOW xyz AS (PARTITION BY (x%2) ORDER BY x) ORDER BY 1

  INSERT INTO t4 VALUES(6, 'm');
  SELECT x, y, max(y) OVER xyz FROM t4
      WINDOW xyz AS (PARTITION BY (x%2) ORDER BY x) ORDER BY 1

  SELECT * FROM t5 ORDER BY 1

  WITH aaa(x, y, z) AS (
    SELECT x, y, max(y) OVER xyz FROM t4
    WINDOW xyz AS (PARTITION BY (x%2) ORDER BY x)
  )
  SELECT * FROM aaa ORDER BY 1;

  WITH aaa(x, y, z) AS (
    SELECT x, y, max(y) OVER xyz FROM t4
    WINDOW xyz AS (ORDER BY x)
  )
  SELECT *, min(z) OVER (ORDER BY x) FROM aaa ORDER BY 1;

  CREATE TABLE sales(emp TEXT PRIMARY KEY, region, total);
  INSERT INTO sales VALUES
      ('Alice',     'North', 34),
      ('Frank',     'South', 22),
      ('Charles',   'North', 45),
      ('Darrell',   'South', 8),
      ('Grant',     'South', 23),
      ('Brad' ,     'North', 22),
      ('Elizabeth', 'South', 99),
      ('Horace',    'East',   1);

  SELECT emp, region, total FROM (
    SELECT 
      emp, region, total,
      row_number() OVER (PARTITION BY region ORDER BY total DESC) AS rank
    FROM sales
  ) WHERE rank<=2 ORDER BY region, total DESC

  SELECT emp, region, sum(total) OVER win FROM sales
  WINDOW win AS (PARTITION BY region ORDER BY total)

  SELECT emp, region, sum(total) OVER win FROM sales
  WINDOW win AS (PARTITION BY region ORDER BY total)
  LIMIT 5

  SELECT emp, region, sum(total) OVER win FROM sales
  WINDOW win AS (PARTITION BY region ORDER BY total)
  LIMIT 5 OFFSET 2

  SELECT emp, region, sum(total) OVER win FROM sales
  WINDOW win AS (
    PARTITION BY region ORDER BY total 
    ROWS BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING
  )

  SELECT emp, region, sum(total) OVER win FROM sales
  WINDOW win AS (
    PARTITION BY region ORDER BY total 
    ROWS BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING
  ) LIMIT 5 OFFSET 2

  SELECT emp, region, (
    SELECT sum(total) OVER (
      ORDER BY total RANGE BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
    ) || outer.emp FROM sales
  ) FROM sales AS outer;

  SELECT emp, region, (
    SELECT sum(total) FILTER (WHERE sales.emp!=outer.emp) OVER (
      ORDER BY total RANGE BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
    ) FROM sales
  ) FROM sales AS outer;
 CREATE TABLE t6(a, b, c); 
  DROP TABLE IF EXISTS t1;
  CREATE TABLE t1(id INT, b VARCHAR, c VARCHAR);
  INSERT INTO t1 VALUES(1, 'A', 'one');
  INSERT INTO t1 VALUES(2, 'B', 'two');
  INSERT INTO t1 VALUES(3, 'C', 'three');
  INSERT INTO t1 VALUES(4, 'D', 'one');
  INSERT INTO t1 VALUES(5, 'E', 'two');
  SELECT id, b, lead(c,1) OVER(ORDER BY c) AS x 
    FROM t1 WHERE id>1
   ORDER BY b LIMIT 1;

  INSERT INTO t1 VALUES(6, 'F', 'three');
  INSERT INTO t1 VALUES(7, 'G', 'one');
  SELECT id, b, lead(c,1) OVER(ORDER BY c) AS x
    FROM t1 WHERE id>1
   ORDER BY b LIMIT 2;

  DROP TABLE IF EXISTS t1;
  CREATE TABLE t1(a int, b int);
  INSERT INTO t1 VALUES(1,11);
  INSERT INTO t1 VALUES(2,12);

  SELECT a, rank() OVER(ORDER BY b) FROM t1;
  SELECT a, rank() OVER(ORDER BY b DESC) FROM t1;

  SELECT a, rank() OVER(ORDER BY b) FROM t1
    UNION ALL
  SELECT a, rank() OVER(ORDER BY b DESC) FROM t1;

  SELECT a, rank() OVER(ORDER BY b) FROM t1
    UNION 
  SELECT a, rank() OVER(ORDER BY b DESC) FROM t1;

  SELECT a, rank() OVER(ORDER BY b) FROM t1
    EXCEPT 
  SELECT a, rank() OVER(ORDER BY b DESC) FROM t1;

  SELECT a, rank() OVER(ORDER BY b) FROM t1
    INTERSECT 
  SELECT a, rank() OVER(ORDER BY b DESC) FROM t1;

  SELECT * FROM(
    SELECT * FROM (SELECT 1 AS c) WHERE c IN (
        SELECT (row_number() OVER()) FROM (VALUES (0))
    )
  );

  CREATE TABLE t1(x); INSERT INTO t1(x) VALUES(12345);
  CREATE TABLE t2(c); INSERT INTO t2(c) VALUES(1);
  SELECT y, y+1, y+2 FROM (
    SELECT c IN (
      SELECT (row_number() OVER()) FROM t1
    ) AS y FROM t2
  );

  DROP TABLE IF EXISTS t1;
  DROP TABLE IF EXISTS t2;
  CREATE TABLE t1(x);
  INSERT INTO t1 VALUES('a'), ('b'), ('c');
  CREATE TABLE t2(a, b);
  INSERT INTO t2 VALUES('X', 1), ('X', 2), ('Y', 2), ('Y', 3);
  SELECT x, (
    SELECT sum(b)
      OVER (PARTITION BY a ROWS BETWEEN UNBOUNDED PRECEDING
                                    AND UNBOUNDED FOLLOWING)
    FROM t2 WHERE b<x
  ) FROM t1;

  SELECT(
    WITH c AS(
      VALUES(1)
    ) SELECT '' FROM c,c
  ) x WHERE x+x;

  CREATE TABLE t7(a,b); 
  INSERT INTO t7(rowid, a, b) VALUES
      (1, 1, 3),
      (2, 10, 4),
      (3, 100, 2);

  SELECT rowid, sum(a) OVER (PARTITION BY b IN (SELECT rowid FROM t7)) FROM t7;

  SELECT rowid, sum(a) OVER w1 FROM t7 
  WINDOW w1 AS (PARTITION BY b IN (SELECT rowid FROM t7));

  CREATE TABLE t8(a);
  INSERT INTO t8 VALUES(1), (2), (3);

  SELECT +sum(0) OVER () ORDER BY +sum(0) OVER ();

  select +sum(a) OVER () FROM t8 ORDER BY +sum(a) OVER () DESC;

  SELECT 10+sum(a) OVER (ORDER BY a) 
  FROM t8 
  ORDER BY 10+sum(a) OVER (ORDER BY a) DESC;

  DROP TABLE IF EXISTS t1;
  CREATE TABLE t1(a INTEGER PRIMARY KEY, b TEXT, c TEXT, d INTEGER);
  INSERT INTO t1 VALUES(1, 'odd',  'one',   1);
  INSERT INTO t1 VALUES(2, 'even', 'two',   2);
  INSERT INTO t1 VALUES(3, 'odd',  'three', 3);
  INSERT INTO t1 VALUES(4, 'even', 'four',  4);
  INSERT INTO t1 VALUES(5, 'odd',  'five',  5);
  INSERT INTO t1 VALUES(6, 'even', 'six',   6);

  SELECT group_concat(c, '.') OVER (PARTITION BY b ORDER BY c)
  FROM t1

  SELECT group_concat(c, '.') OVER (win1 ORDER BY c)
  FROM t1
  WINDOW win1 AS (PARTITION BY b)

  SELECT group_concat(c, '.') OVER win2
  FROM t1
  WINDOW win1 AS (PARTITION BY b),
         win2 AS (win1 ORDER BY c)

  SELECT group_concat(c, '.') OVER (win2)
  FROM t1
  WINDOW win1 AS (PARTITION BY b),
         win2 AS (win1 ORDER BY c)

  SELECT group_concat(c, '.') OVER win5
  FROM t1
  WINDOW win1 AS (PARTITION BY b),
         win2 AS (win1),
         win3 AS (win2),
         win4 AS (win3),
         win5 AS (win4 ORDER BY c)

  CREATE TABLE t1(a, b);
  INSERT INTO t1 VALUES
    (1, 1), (2, 2), (3, 3), (4, 4), (5, 5),
    ('a', 6), ('b', 7), ('c', 8), ('d', 9), ('e', 10);

  SELECT a, sum(b) OVER (ORDER BY a) FROM t1;

  SELECT a, sum(b) OVER (
    ORDER BY a RANGE BETWEEN 1 PRECEDING AND 1 FOLLOWING
  ) FROM t1;

  SELECT a, sum(b) OVER (
    ORDER BY a DESC RANGE BETWEEN 1 PRECEDING AND 1 FOLLOWING
  ) FROM t1 ORDER BY a ASC;

  SELECT a, sum(b) OVER (
    ORDER BY a RANGE BETWEEN 2 PRECEDING AND 1 FOLLOWING
  ) FROM t1;

  SELECT a, sum(b) OVER (
    ORDER BY a DESC RANGE BETWEEN 1 PRECEDING AND 2 FOLLOWING
  ) FROM t1 ORDER BY a ASC;

  CREATE TABLE t1(a, b);
  INSERT INTO t1 VALUES
    (NULL, 100), (NULL, 100), 
    (1, 1), (2, 2), (3, 3), (4, 4), (5, 5),
    ('a', 6), ('b', 7), ('c', 8), ('d', 9), ('e', 10);

  SELECT a, sum(b) OVER (ORDER BY a) FROM t1;

  SELECT a, sum(b) OVER (
    ORDER BY a RANGE BETWEEN 1 PRECEDING AND 1 FOLLOWING
  ) FROM t1;

  SELECT a, sum(b) OVER (
    ORDER BY a DESC RANGE BETWEEN 1 PRECEDING AND 1 FOLLOWING
  ) FROM t1 ORDER BY a ASC;

  SELECT a, sum(b) OVER (
    ORDER BY a RANGE BETWEEN 2 PRECEDING AND 1 FOLLOWING
  ) FROM t1;

  SELECT a, sum(b) OVER (
    ORDER BY a DESC RANGE BETWEEN 1 PRECEDING AND 2 FOLLOWING
  ) FROM t1 ORDER BY a ASC;

  CREATE TABLE keyword_tab(
    current, exclude, filter, following, groups, no, others, over,
    partition, preceding, range, ties, unbounded, window
  );

  SELECT
    current, exclude, filter, following, groups, no, others, over,
    partition, preceding, range, ties, unbounded, window
  FROM keyword_tab

  CREATE TABLE t5(a, b, c);
  CREATE INDEX t5ab ON t5(a, b);

  SELECT sum(44) OVER ()

  SELECT lead(44) OVER ()

  CREATE TABLE t1 ( t1_id INTEGER PRIMARY KEY );
  CREATE TABLE t2 ( t2_id INTEGER PRIMARY KEY );
  CREATE TABLE t3 ( t3_id INTEGER PRIMARY KEY );

  INSERT INTO t1 VALUES(1),  (3), (5);
  INSERT INTO t2 VALUES      (3), (5);
  INSERT INTO t3 VALUES(10), (11), (12);

  SELECT t1.* FROM t1, t2 WHERE 
    t1_id=t2_id AND t1_id IN (
        SELECT t1_id + row_number() OVER ( ORDER BY t1_id ) FROM t3
    )

  SELECT t1.* FROM t1, t2 WHERE 
    t1_id=t2_id AND t1_id IN (
        SELECT         row_number() OVER ( ORDER BY t1_id ) FROM t3
    )

  CREATE TABLE t1(x);
  CREATE TABLE t2(c);

  SELECT ( SELECT row_number() OVER () FROM ( SELECT c FROM t1 ) ) FROM t2

  INSERT INTO t1 VALUES(1), (2), (3), (4);
  INSERT INTO t2 VALUES(2), (6), (8), (4);
  SELECT c, c IN ( 
    SELECT row_number() OVER () FROM ( SELECT c FROM t1 )
  ) FROM t2

  DELETE FROM t1;
  DELETE FROM t2;

  INSERT INTO t2 VALUES(1), (2), (3), (4);
  INSERT INTO t1 VALUES(1), (1), (2), (3), (3), (3), (3), (4), (4);

  SELECT c, c IN ( 
    SELECT row_number() OVER () FROM ( SELECT 1 FROM t1 WHERE x=c )
  ) FROM t2

  CREATE TABLE t1(x);
  INSERT INTO t1 VALUES(NULL), (1), (2), (3), (4), (5);

  SELECT min(x) FROM t1;

  SELECT min(x) OVER win FROM t1
  WINDOW win AS (ORDER BY rowid ROWS BETWEEN 1 PRECEDING AND 1 FOLLOWING)

  CREATE TABLE t1(a INTEGER PRIMARY KEY, b CHAR(1), c CHAR(2), d ANY);
  INSERT INTO t1 VALUES (3, 'C', 'cc', 1.0);
  INSERT INTO t1 VALUES (13,'M', 'cc', NULL);

  SELECT group_concat(b,'') OVER w1 FROM t1
    WINDOW w1 AS (ORDER BY a RANGE BETWEEN 3 PRECEDING AND 1 PRECEDING)

  CREATE TABLE t2(a TEXT, b INTEGER);
  INSERT INTO t2 VALUES('A', NULL);
  INSERT INTO t2 VALUES('B', NULL);

  DROP TABLE IF EXISTS t1;
  CREATE TABLE t1(a INTEGER PRIMARY KEY, b CHAR(1), c CHAR(2), d ANY);
  INSERT INTO t1 VALUES
    (10,'J', 'cc', NULL),
    (11,'K', 'cc', 'xyz'),
    (13,'M', 'cc', NULL);

  SELECT a, b, c, quote(d), group_concat(b,'') OVER w1, '|' FROM t1
    WINDOW w1 AS
    (ORDER BY d DESC RANGE BETWEEN 7.0 PRECEDING AND 2.5 PRECEDING)
    ORDER BY c, d, a;

  DROP TABLE IF EXISTS t1;
  CREATE TABLE t1(a INTEGER PRIMARY KEY, b CHAR(1), c CHAR(2), d ANY);
  INSERT INTO t1 VALUES
    (1, 'A', 'aa', 2.5),
    (2, 'B', 'bb', 3.75),
    (3, 'C', 'cc', 1.0),
    (4, 'D', 'cc', 8.25),
    (5, 'E', 'bb', 6.5),
    (6, 'F', 'aa', 6.5),
    (7, 'G', 'aa', 6.0),
    (8, 'H', 'bb', 9.0),
    (9, 'I', 'aa', 3.75),
    (10,'J', 'cc', NULL),
    (11,'K', 'cc', 'xyz'),
    (12,'L', 'cc', 'xyZ'),
    (13,'M', 'cc', NULL);

  SELECT a, b, c, quote(d), group_concat(b,'') OVER w1, '|' FROM t1
    WINDOW w1 AS
    (PARTITION BY c ORDER BY d DESC
     RANGE BETWEEN 7.0 PRECEDING AND 2.5 PRECEDING)
    ORDER BY c, d, a;

  DROP TABLE IF EXISTS t1;
  CREATE TABLE t1(a, b, c);
  INSERT INTO t1 VALUES('BB','aa',399);
  SELECT
    count () OVER win1 NOT BETWEEN 'a' AND 'mmm',
    count () OVER win3
  FROM t1
  WINDOW win1 AS (ORDER BY a GROUPS BETWEEN 4 PRECEDING AND 1 FOLLOWING
                  EXCLUDE CURRENT ROW),
         win2 AS (PARTITION BY b ORDER BY a),
         win3 AS (win2 RANGE BETWEEN 5.2 PRECEDING AND true PRECEDING );

  CREATE TABLE t1(a, b);
  CREATE TABLE t2(c, d);
  CREATE TABLE t3(e, f);

  INSERT INTO t1 VALUES(1, 1);
  INSERT INTO t2 VALUES(1, 1);
  INSERT INTO t3 VALUES(1, 1);

  SELECT d IN (SELECT sum(c) OVER (ORDER BY e+c) FROM t3) FROM (
    SELECT * FROM t2
  );

  SELECT d IN (SELECT sum(c) OVER (PARTITION BY d ORDER BY e+c) FROM t3) FROM (
    SELECT * FROM t2
  );

  CREATE TABLE t1(aa, bb);
  INSERT INTO t1 VALUES(1, 2);
  INSERT INTO t1 VALUES(5, 6);
  CREATE TABLE t2(x);
  INSERT INTO t2 VALUES(1);

  SELECT (SELECT DISTINCT sum(aa) OVER() FROM t1 ORDER BY 1), x FROM t2 
  ORDER BY 1;

  CREATE TABLE t1(a,b,c);

  SELECT avg(a) OVER (
      ORDER BY (SELECT sum(b) OVER ()
        FROM t1 ORDER BY (
          SELECT total(d) OVER (ORDER BY c)
          FROM (SELECT 1 AS d) ORDER BY 1
          )
        )
      )
  FROM t1;

  CREATE TABLE t1(x);
  INSERT INTO t1 VALUES(1), (2), (3);
  VALUES(1) INTERSECT 
  SELECT sum(x) OVER f FROM t1 WINDOW f AS (ORDER BY x) ORDER BY 1;

  VALUES(8) EXCEPT 
  SELECT sum(x) OVER f FROM t1 WINDOW f AS (ORDER BY x) ORDER BY 1;

  VALUES(1) UNION 
  SELECT sum(x) OVER f FROM t1 WINDOW f AS (ORDER BY x) ORDER BY 1;

  VALUES(count(*)OVER());

  VALUES(count(*)OVER()),(2);

  VALUES(2),(count(*)OVER());

  VALUES(2),(3),(count(*)OVER()),(4),(5);

  CREATE TABLE t0(a UNIQUE, b PRIMARY KEY);
  CREATE VIEW v0(c) AS SELECT max((SELECT count(a)OVER(ORDER BY 1))) FROM t0;
  SELECT c FROM v0 WHERE c BETWEEN 10 AND 20;

  DROP VIEW v0;
  CREATE VIEW v0(c) AS SELECT max((SELECT count(a)OVER(ORDER BY 1234))) FROM t0;
  SELECT c FROM v0 WHERE c BETWEEN -10 AND 20;

  SELECT COUNT(*), AVG(1) FILTER(WHERE t1.c1) FROM t0, t1;

  CREATE TABLE t0(c0 UNIQUE);

  SELECT FIRST_VALUE(0) OVER();

  SELECT * FROM t0 WHERE(c0, 0) IN(SELECT FIRST_VALUE(0) OVER(), 0);

  SELECT * FROM t0 WHERE (t0.c0, 1) IN(SELECT NTILE(1) OVER(), 0 FROM t0);

  CREATE TABLE t1(a, b, c);
  INSERT INTO t1 VALUES(NULL,'bb',355);
  INSERT INTO t1 VALUES('CC','aa',158);
  INSERT INTO t1 VALUES('GG','bb',929);
  INSERT INTO t1 VALUES('FF','Rb',574);

  SELECT min(c) OVER (
    ORDER BY a RANGE BETWEEN 5.2 PRECEDING AND 0.1 PRECEDING
  ) FROM t1

  SELECT min(c) OVER (
    ORDER BY a RANGE BETWEEN 5.2 PRECEDING AND 0.1 PRECEDING
  ) << 100 FROM t1

  SELECT
    min(c) OVER win3 << first_value(c) OVER win3,
    min(c) OVER win3 << first_value(c) OVER win3
  FROM t1
  WINDOW win3 AS (
    PARTITION BY 6 ORDER BY a RANGE BETWEEN 5.2 PRECEDING AND 0.1 PRECEDING
  );

  CREATE TABLE t1(a, b, c);
  INSERT INTO t1 VALUES(1, 1, 1);
  INSERT INTO t1 VALUES(2, 2, 2);

  SELECT * FROM t1 WHERE (0, 0) IN ( SELECT count(*), 0 FROM t1 )

  SELECT * FROM t1 WHERE (2, 0) IN ( SELECT count(*), 0 FROM t1 )

  SELECT count(*), max(a) OVER () FROM t1 GROUP BY c; 

  SELECT sum(a), max(b) OVER () FROM t1;

  CREATE TABLE t2(a, b);
  INSERT INTO t2 VALUES('a', 1);
  INSERT INTO t2 VALUES('a', 2);
  INSERT INTO t2 VALUES('a', 3);
  INSERT INTO t2 VALUES('b', 4);
  INSERT INTO t2 VALUES('b', 5);
  INSERT INTO t2 VALUES('b', 6);

  SELECT a, sum(b), sum( sum(b) ) OVER (ORDER BY a) FROM t2 GROUP BY a;

  SELECT sum(b), sum( sum(b) ) OVER (ORDER BY a) FROM t2;

  CREATE TABLE t1(x INTEGER PRIMARY KEY);
  INSERT INTO t1 VALUES (10);

  CREATE TABLE t1(a INTEGER PRIMARY KEY, b INTEGER);
  INSERT INTO t1(a, b) VALUES(1,  10); -- 10
  INSERT INTO t1(a, b) VALUES(2,  15); -- 25
  INSERT INTO t1(a, b) VALUES(3,  -5); -- 20
  INSERT INTO t1(a, b) VALUES(4,  -5); -- 15
  INSERT INTO t1(a, b) VALUES(5,  20); -- 35
  INSERT INTO t1(a, b) VALUES(6, -11); -- 24

  SELECT a, sum(b) OVER (ORDER BY a) AS abc FROM t1 ORDER BY 2

  SELECT a, sum(b) OVER (ORDER BY a) AS abc FROM t1 ORDER BY abc

  SELECT a, sum(b) OVER (ORDER BY a) AS abc FROM t1 ORDER BY abc+5

  CREATE TABLE t0(c0);

  SELECT ntile(1) OVER ();

  SELECT (0, 0) IN(SELECT MIN(c0), NTILE(1) OVER()) FROM t0;

  INSERT INTO t0 VALUES(2), (1), (0);
  SELECT (0, 1) IN(SELECT MIN(c0), NTILE(1) OVER()) FROM t0;

  CREATE TABLE t0(x);
  CREATE TABLE t1(a);
  INSERT INTO t1 VALUES(1000);
  INSERT INTO t1 VALUES(1000);
  INSERT INTO t0 VALUES(10000);

  SELECT * FROM (
      SELECT sum (a) OVER() FROM t1 UNION ALL SELECT x FROM t0
  );

  CREATE TABLE t1 (a);
  CREATE INDEX i1 ON t1(a);

  INSERT INTO t1 VALUES (10);

  SELECT (SELECT sum(a) OVER(ORDER BY a)) FROM t1

  SELECT * FROM t1 WHERE (SELECT sum(a) OVER(ORDER BY a));

  SELECT * FROM t1 NATURAL JOIN t1
    WHERE a=1
    OR ((SELECT sum(a)OVER(ORDER BY a)) AND a<=10)

  CREATE TABLE t1(
      a,
      e,
      f,
      g UNIQUE,
      h UNIQUE
  );

  CREATE VIEW t2(k) AS
     SELECT e FROM t1 WHERE g = 'abc' OR h BETWEEN 10 AND f;

  CREATE TABLE t1(a);
  INSERT INTO t1 VALUES(1);
  INSERT INTO t1 VALUES(2);
  INSERT INTO t1 VALUES(3);
  SELECT (SELECT max(x)OVER(ORDER BY x) + min(x)OVER(ORDER BY x))
    FROM (SELECT (SELECT sum(a) FROM t1) AS x FROM t1);

  SELECT (SELECT max(x)OVER(ORDER BY x) + min(x)OVER(ORDER BY x))
    FROM (SELECT (SELECT sum(a) FROM t1 GROUP BY a) AS x FROM t1);

  CREATE TABLE t1 (a PRIMARY KEY);
  INSERT INTO t1 VALUES(1);

  SELECT b AS c FROM (
    SELECT a AS b FROM (
      SELECT a FROM t1 WHERE a=1 OR (SELECT sum(a) OVER ())
    ) 
    WHERE b=1 OR b<10
  ) 
  WHERE c=1 OR c>=10;

  CREATE TABLE t1 (a DOUBLE PRIMARY KEY);
  INSERT INTO t1 VALUES(10.0);

  SELECT * FROM t1 WHERE a%1 OR (SELECT sum(a) OVER (ORDER BY a%2))

  SELECT * FROM (
    SELECT * FROM t1 WHERE a%1 OR (SELECT sum(a) OVER (ORDER BY a%2))
  ) 
  WHERE a=1 OR ( (SELECT sum(a) OVER (ORDER BY a%4)) AND a<=10 )

  SELECT a FROM (
    SELECT * FROM (
      SELECT * FROM t1 WHERE a%1 OR (SELECT sum(a) OVER (ORDER BY a%2))
    ) 
    WHERE a=1 OR ( (SELECT sum(a) OVER (ORDER BY a%4)) AND a<=10 )
  ) 
  WHERE a=1 OR a=10.0

  SELECT a FROM (
    SELECT * FROM (
      SELECT * FROM t1 WHERE a%1 OR (SELECT sum(a) OVER (ORDER BY a%2))
    ) 
    WHERE a=1 OR ( (SELECT sum(a) OVER (ORDER BY a%4)) AND a<=10 )
  ) 
  WHERE a=1 OR ((SELECT sum(a) OVER(ORDER BY a%8)) AND 10<=a)

SELECT * FROM (SELECT * FROM t1 NATURAL JOIN t1 WHERE a%1 OR ((SELECT sum(a)OVER(ORDER BY a)) AND a<=10)) NATURAL JOIN t1 WHERE a=1 OR ((SELECT sum((SELECT * FROM (SELECT * FROM (SELECT * FROM t1 NATURAL JOIN t1 WHERE a%1 OR ((SELECT sum(a)OVER(ORDER BY a)) AND a<=10)) NATURAL JOIN t1 WHERE a=1 OR ((SELECT sum((SELECT * FROM t1 NATURAL JOIN t1 WHERE a=1 OR ((SELECT sum(a)OVER(ORDER BY a)) AND a<=10)))OVER(ORDER BY a% 1 )) AND a<=10)) NATURAL JOIN t1 WHERE a=1 OR ((SELECT sum(a)OVER(ORDER BY a)) AND 10<=a)))OVER(ORDER BY a%5)) AND a<=10);

  CREATE TABLE t1(a, b, c);
  INSERT INTO t1 VALUES('AA','bb',356);
  INSERT INTO t1 VALUES('CC','aa',158);
  INSERT INTO t1 VALUES('BB','aa',399);
  INSERT INTO t1 VALUES('FF','bb',938);

  SELECT
    count() OVER win1,
    sum(c) OVER win2, 
    first_value(c) OVER win2,
    count(a) OVER (ORDER BY b)
      FROM t1
      WINDOW
      win1 AS (ORDER BY a),
    win2 AS (PARTITION BY 6 ORDER BY a
        RANGE BETWEEN 5 PRECEDING AND 0 PRECEDING );

SELECT
  count() OVER (),
  sum(c) OVER win2, 
  first_value(c) OVER win2,
  count(a) OVER (ORDER BY b)
FROM t1
WINDOW
  win1 AS (ORDER BY a),
  win2 AS (PARTITION BY 6 COLLATE binary ORDER BY a
           RANGE BETWEEN 5 PRECEDING AND 0 PRECEDING );

  SELECT
    count() OVER win1,
    sum(c) OVER win2, 
    first_value(c) OVER win2,
    count(a) OVER (ORDER BY b)
  FROM t1
  WINDOW
    win1 AS (ORDER BY a),
    win2 AS (PARTITION BY 6 COLLATE binary ORDER BY a
             RANGE BETWEEN 5 PRECEDING AND 0 PRECEDING );

  CREATE TABLE a(c UNIQUE);
  INSERT INTO a VALUES(4),(0),(9),(-9);
  SELECT a.c
    FROM a
    JOIN a AS b ON a.c=4
    JOIN a AS e ON a.c=e.c
   WHERE a.c=(SELECT (SELECT coalesce(lead(2) OVER(),0) + sum(d.c))
                FROM a AS d
               WHERE a.c);

  CREATE TABLE t1(a VARCHAR(20), b FLOAT);
  INSERT INTO t1 VALUES('1',10.0);

  INSERT INTO t1 VALUES('2',5.0);
  INSERT INTO t1 VALUES('3',15.0);

   CREATE TABLE a(b);
   SELECT
      (SELECT b FROM a
        GROUP BY b
        HAVING (SELECT COUNT()OVER() + lead(b)OVER(ORDER BY SUM(DISTINCT b) + b))
      ) 
    FROM a
  UNION
   SELECT 99
    ORDER BY 1;

  CREATE TABLE t1(a, b INTEGER); 
  CREATE TABLE t2(c, d); 

  CREATE TABLE t4(a, b, c, d, e);

  CREATE TABLE t1(a, b, c);
  INSERT INTO t1 VALUES(NULL,NULL,NULL);
  SELECT 
    sum(a),
    min(b) OVER (),
    count(c) OVER (ORDER BY b)
  FROM t1;

  CREATE TABLE v0 ( v1 INTEGER PRIMARY KEY ) ; 
  INSERT INTO v0 VALUES ( 10 ) ; 
  SELECT DISTINCT v1, lead(v1) OVER() FROM v0 GROUP BY v1 ORDER BY 2;

  CREATE TABLE a(a, b, c);
  INSERT INTO a VALUES(1, 2, 3);
  INSERT INTO a VALUES(4, 5, 6);
  SELECT sum(345+b)      OVER (ORDER BY b),
         sum(avg(678)) OVER (ORDER BY c) FROM a;

  DROP TABLE IF EXISTS t1;
  CREATE TABLE t1 (x INTEGER PRIMARY KEY);
  INSERT INTO t1 VALUES (99);
  SELECT EXISTS(SELECT count(*) OVER() FROM t1 ORDER BY sum(x) OVER());

  CREATE TABLE t1(a);
  CREATE TABLE t2(y);

  SELECT (
    SELECT count(a) OVER ( ORDER BY (SELECT sum(y) FROM t2) )
         + total(a) OVER() 
  )
  FROM t1

  SELECT (
    SELECT count(a) OVER ( ORDER BY sum(a) )
         + total(a) OVER() 
  )
  FROM t1

  SELECT 
    sum(a) OVER ( ORDER BY a ) 
  FROM t1 
  ORDER BY (SELECT sum(y) FROM t2)

  CREATE TABLE t1(a VARCHAR(20), b FLOAT);
  INSERT INTO t1 VALUES('1',10.0);

  SELECT * FROM ( 
      SELECT sum(b) OVER() AS c FROM t1 
      UNION
      SELECT b AS c FROM t1
      ) WHERE c>10;

  INSERT INTO t1 VALUES('2',5.0);
  INSERT INTO t1 VALUES('3',15.0);

  SELECT * FROM ( 
      SELECT sum(b) OVER() AS c FROM t1 
      UNION
      SELECT b AS c FROM t1
      ) WHERE c>10;

  CREATE TABLE t1(b, x);
  CREATE TABLE t2(c, d);
  CREATE TABLE t3(e, f);

  SELECT max(b) OVER(
      ORDER BY SUM(
        (SELECT c FROM t2 UNION SELECT x ORDER BY c)
      )
  ) FROM t1;

  SELECT sum(b) over(
      ORDER BY (
        SELECT max(b) OVER(
          ORDER BY sum(
            (SELECT x AS c UNION SELECT 1234 ORDER BY c)
          )
        ) AS e
        ORDER BY e
      )
    )
  FROM t1;

  CREATE TABLE t1(a INTEGER PRIMARY KEY, b);
  INSERT INTO t1 VALUES(1, 'abcd');
  INSERT INTO t1 VALUES(2, 'BCDE');
  INSERT INTO t1 VALUES(3, 'cdef');
  INSERT INTO t1 VALUES(4, 'DEFG');

  SELECT rowid, max(b COLLATE nocase)||'' 
  FROM t1 
  GROUP BY rowid
  ORDER BY max(b COLLATE nocase)||'';

  SELECT count() OVER (), rowid, max(b COLLATE nocase)||'' 
  FROM t1 
  GROUP BY rowid
  ORDER BY max(b COLLATE nocase)||'';

  SELECT count() OVER (), rowid, max(b COLLATE nocase)
  FROM t1 
  GROUP BY rowid
  ORDER BY max(b COLLATE nocase);

  CREATE TABLE t1(c1);
  INSERT INTO t1 VALUES('abcd');

  SELECT max(c1 COLLATE nocase) IN (SELECT 'aBCd') FROM t1;

  SELECT 
     count() OVER (), 
     group_concat(c1 COLLATE nocase) IN (SELECT 'aBCd') FROM t1;

  SELECT COUNT() OVER () LIKE lead(102030) OVER(
      ORDER BY sum('abcdef' COLLATE nocase) IN (SELECT 54321) 
  )
  FROM t1;

  CREATE TABLE t1(a INTEGER);
  INSERT INTO t1 VALUES(3578824042033200656);
  INSERT INTO t1 VALUES(3029012920382354029);

  CREATE TABLE t2(a INTEGER);
  INSERT INTO t2 VALUES(45);
  INSERT INTO t2 VALUES(30);

  CREATE TABLE t1(a, b, c);
  CREATE TABLE t2(a, b, c);

  CREATE TABLE t1(a);

  SELECT substr(a,4,lag(a,7) OVER(PARTITION BY 'cf23' ORDER BY 2)) AS ca0 FROM t1 ORDER BY ca0;

  SELECT substr(a,4,lag(a,7) OVER(PARTITION BY 'cf23' ORDER BY likely(2))) AS ca0 FROM t1 ORDER BY ca0;

  CREATE TABLE dual(dummy);  INSERT INTO dual VALUES('X');
  CREATE VIEW v1(x,y) AS SELECT RANK() OVER (PARTITION BY 0), SUM(0) FROM dual;
  SELECT * FROM v1 WHERE true;

  CREATE TABLE t0(c0);
  INSERT INTO t0(c0) VALUES (0);
  CREATE VIEW v0(c0) AS SELECT TOTAL(0) OVER (PARTITION BY t0.c0) FROM t0;

  SELECT COUNT(*) FROM (
      SELECT TOTAL(0) OVER (PARTITION BY t0.c0) FROM t0
      )
  WHERE ('1' IS NOT ('abcde' NOTNULL)); 

  CREATE TABLE t1(a INT);
  INSERT INTO t1(a) VALUES(1),(2),(4);
  CREATE VIEW t2(b,c) AS SELECT * FROM t1 JOIN t1 A ORDER BY sum(0) OVER(PARTITION BY 0);
  CREATE TRIGGER x1 INSTEAD OF UPDATE ON t2 BEGIN SELECT true; END;

  SELECT * FROM t2;

  UPDATE t2 SET c=99 WHERE b=4 RETURNING *;

  SELECT *, nth_value(15,2) OVER() FROM t2, t1 WHERE b=4;

  UPDATE t2 SET c=nth_value(15,2) OVER() FROM (SELECT * FROM t1) WHERE b=4 RETURNING *;

  DROP TRIGGER x1;

  CREATE TABLE t1 (a INT, b INT);
  CREATE TABLE t2 (c INT, d INT);
  CREATE INDEX idx ON t1(abs(a));
  INSERT INTO t1 VALUES(1,2),(3,4);
  INSERT INTO t2 VALUES(5,6),(7,8);

  SELECT (
    SELECT count( a ) FROM t2 LIMIT 1
  )
  FROM t1;

  SELECT (
    SELECT count( a+c ) FROM t2 LIMIT 1
  )
  FROM t1;

  SELECT (
    SELECT count( ( SELECT(sum(0) OVER(ORDER BY c, abs(a))) ) )
      FROM t2 GROUP BY c LIMIT 1
  ) 
  FROM t1;

  /* Original test case reported in https://sqlite.org/forum/forumpost/bad532820c
  CREATE TABLE v0 (c1);
  CREATE INDEX i ON v0 (c1, c1=1);
  SELECT 0 FROM v0 AS a1
   WHERE (SELECT count((SELECT(sum(0) OVER(PARTITION BY(c1), (a1.c1=1) ))))
            FROM v0
           GROUP BY hex(0))
     AND a1.c1=0;

  DROP TABLE t1;
  CREATE TABLE t1(a INT, b INT);
  CREATE INDEX t1x ON t1(a+b);

  CREATE TABLE t1(a INT, b INT);
  INSERT INTO t1(a,b) VALUES (111,222),(111,223),(118,229);
  CREATE INDEX t1a ON t1(a);
  CREATE TABLE t2(x INT);
  INSERT INTO t2 VALUES (333),(444),(555);

  SELECT c, (SELECT c + sum(1) OVER ()) AS "res"
    FROM t2 LEFT JOIN (SELECT +a AS c FROM t1) AS v1 ON true
   GROUP BY c
   ORDER by c;

  CREATE TABLE t3(x);
  CREATE TABLE t4(y);
  INSERT INTO t3 VALUES(100), (200), (400);
  INSERT INTO t4 VALUES(100), (300), (400);

  SELECT (SELECT y+sum(0) OVER ()) FROM t3 LEFT JOIN t4 ON x=y;

  SELECT (SELECT y+sum(0) OVER ()) FROM t3 LEFT JOIN t4 ON x=y GROUP BY x;

  SELECT (SELECT max(y)+sum(0) OVER ()) FROM t3 LEFT JOIN t4 ON x=y GROUP BY x;

  CREATE TABLE t1(x INT);
  CREATE INDEX t1x ON t1(likely(x));
  INSERT INTO t1 VALUES(1),(2),(4),(8);

  SELECT max(~likely(x)) FILTER (WHERE true) FROM t1 INDEXED BY t1x GROUP BY x;
