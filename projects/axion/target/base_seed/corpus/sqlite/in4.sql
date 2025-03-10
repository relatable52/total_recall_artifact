
  SELECT * FROM t3 WHERE x=10 AND y IN (10);

  SELECT * FROM t3 WHERE x IN (10) AND y=10;

  SELECT * FROM t3 WHERE x IN (10) AND y IN (10);

  SELECT * FROM t3 WHERE x=1 AND y NOT IN (10);

  SELECT * FROM t3 WHERE x  NOT IN (10) AND y=1;

  SELECT * FROM t3 WHERE x NOT IN (10) AND y NOT IN (10);

  DROP INDEX t3i1;
  CREATE UNIQUE INDEX t3xy ON t3(x,y);

  SELECT *, '|' FROM t3 A, t3 B
   WHERE A.x=10 AND A.y IN (10)
     AND B.x=1 AND B.y IN (1);

  EXPLAIN QUERY PLAN
  SELECT *, '|' FROM t3 A, t3 B
   WHERE A.x=10 AND A.y IN (10)
     AND B.x=1 AND B.y IN (1);

  SELECT *, '|' FROM t3 A, t3 B
   WHERE A.x IN (10) AND A.y=10
     AND B.x IN (1) AND B.y=1;

  EXPLAIN QUERY PLAN
  SELECT *, '|' FROM t3 A, t3 B
   WHERE A.x IN (10) AND A.y=10
     AND B.x IN (1) AND B.y=1;

  SELECT * FROM t3 WHERE x IN (10,11);

  EXPLAIN
  SELECT * FROM t3 WHERE x IN (10,11);

  SELECT * FROM t3 WHERE x IN (10);

#  EXPLAIN
#  SELECT * FROM t3 WHERE x IN (10);
#
  SELECT * FROM t3 WHERE x NOT IN (10,11,99999);

  EXPLAIN
  SELECT * FROM t3 WHERE x NOT IN (10,11,99999);

  SELECT * FROM t3 WHERE x NOT IN (10);

  EXPLAIN
  SELECT * FROM t3 WHERE x NOT IN (10);

  CREATE TABLE t4a(a TEXT, b TEXT COLLATE nocase, c);
  INSERT INTO t4a VALUES('ABC','abc',1);
  INSERT INTO t4a VALUES('def','xyz',2);
  INSERT INTO t4a VALUES('ghi','ghi',3);
  SELECT c FROM t4a WHERE a=b ORDER BY c;

  SELECT c FROM t4a WHERE b=a ORDER BY c;

  SELECT c FROM t4a WHERE (a||'')=b ORDER BY c;

  SELECT c FROM t4a WHERE (a||'')=(b||'') ORDER BY c;

  SELECT c FROM t4a WHERE a IN (b) ORDER BY c;

  SELECT c FROM t4a WHERE (a||'') IN (b) ORDER BY c;

  CREATE TABLE t4b(a TEXT, b NUMERIC, c);
  INSERT INTO t4b VALUES('1.0',1,4);
  SELECT c FROM t4b WHERE a=b;

  SELECT c FROM t4b WHERE b=a;

  SELECT c FROM t4b WHERE +a=b;

  SELECT c FROM t4b WHERE a=+b;

  SELECT c FROM t4b WHERE +b=a;

  SELECT c FROM t4b WHERE b=+a;

  SELECT c FROM t4b WHERE a IN (b);

  SELECT c FROM t4b WHERE b IN (a);

  SELECT c FROM t4b WHERE +b IN (a);

  CREATE TABLE t5(c INTEGER PRIMARY KEY, d TEXT COLLATE nocase);
  INSERT INTO t5 VALUES(17, 'fuzz');
  SELECT 1 FROM t5 WHERE 'fuzz' IN (d);  -- match
  SELECT 2 FROM t5 WHERE 'FUZZ' IN (d);  -- no match
  SELECT 3 FROM t5 WHERE d IN ('fuzz');  -- match
  SELECT 4 FROM t5 WHERE d IN ('FUZZ');  -- match

  CREATE TABLE t6a(a INTEGER PRIMARY KEY, b);
  INSERT INTO t6a VALUES(1,2),(3,4),(5,6);
  CREATE TABLE t6b(c INTEGER PRIMARY KEY, d);
  INSERT INTO t6b VALUES(4,44),(5,55),(6,66);

  SELECT * FROM t6a, t6b WHERE a=3 AND b IN (c);

  EXPLAIN QUERY PLAN
  SELECT * FROM t6a, t6b WHERE a=3 AND b IN (c);

  SELECT * FROM t6a, t6b WHERE a=3 AND c IN (b);

  EXPLAIN QUERY PLAN
  SELECT * FROM t6a, t6b WHERE a=3 AND c IN (b);

  CREATE TABLE t1(a, b, c);
  CREATE TABLE t2(d, e);
  CREATE INDEX t1bc ON t1(c, b);
  INSERT INTO t2(e) VALUES(1);
  INSERT INTO t1 VALUES(NULL, NULL, NULL);

  SELECT * FROM t2 LEFT JOIN t1 ON c = d AND b IN (10,10,10);

    CREATE VIRTUAL TABLE t1 USING rtree(a, b, c);
    CREATE TABLE t2(d INTEGER, e INT);
    INSERT INTO t2(e) VALUES(1);
  
    SELECT * FROM t2 LEFT JOIN t1 ON c IN (d) AND b IN (10,10,10);
  
  CREATE TABLE t1(x INTEGER PRIMARY KEY, y);
  CREATE UNIQUE INDEX t1y ON t1(y);
  INSERT INTO t1 VALUES(111, 'AAA'),(222, 'BBB'),(333, 'CCC');
  CREATE TABLE t2(z);
  INSERT INTO t2 VALUES('BBB'),('AAA');
  ANALYZE sqlite_schema;
  INSERT INTO sqlite_stat1 VALUES('t1', 't1y','100 1');

  SELECT t1.x FROM t2 CROSS JOIN t1 WHERE t2.z = t1.y;

  SELECT t1.x FROM t2 CROSS JOIN t1 WHERE t2.z = t1.y AND +t1.x IN (111, 222);

  SELECT t1.x FROM t2 CROSS JOIN t1 WHERE t2.z = t1.y AND t1.x IN (111, 222);

  CREATE TABLE node(node_id INTEGER PRIMARY KEY);
  CREATE TABLE edge(node_from INT, node_to INT);
  CREATE TABLE sub_nodes(node_id INTEGER PRIMARY KEY);
  CREATE INDEX edge_from_to ON edge(node_from,node_to);
  CREATE INDEX edge_to_from ON edge(node_to,node_from);
  ANALYZE;
  DELETE FROM sqlite_stat1;
  INSERT INTO sqlite_stat1 VALUES
    ('sub_nodes',NULL,'1000000'),
    ('edge','edge_to_from','20000000 2 2'),
    ('edge','edge_from_to','20000000 2 2'),
    ('node',NULL,'10000000');
  ANALYZE sqlite_schema;

  CREATE TABLE t1(a,b,c,d,PRIMARY KEY(a,b,c)) WITHOUT ROWID;
  INSERT INTO t1(a,b,c,d) VALUES
    (0,-2,2,3),
    (0,2,3,4),
    (0,5,8,10),
    (1,7,11,13);
  ANALYZE sqlite_schema;
  INSERT INTO sqlite_stat1 VALUES('t1','t1','10 3 2 1');
  ANALYZE sqlite_schema;
  PRAGMA reverse_unordered_selects(1);
  SELECT d FROM t1 WHERE 0=a AND b IN (-17,-4,-3,1,5,25,7798);

  CREATE TABLE t1(a TEXT, b INT, c INT, d INT);
  INSERT INTO t1 VALUES('abc',123,4,5);
  INSERT INTO t1 VALUES('xyz',1,'abcdefxyz',99);
  CREATE INDEX t1abc ON t1(b,b,c);
  ANALYZE sqlite_schema;
  INSERT INTO sqlite_stat1 VALUES('t1','t1abc','10000 5 00 2003 10');
  ANALYZE sqlite_schema;

  SELECT * FROM t1
   WHERE b IN (345, (SELECT 1 FROM t1 
                      WHERE b IN (345 NOT GLOB 510)
                        AND c GLOB 'abc*xyz'))
     AND c BETWEEN 'abc' AND 'xyz';

  EXPLAIN SELECT * FROM t1
   WHERE b IN (345, (SELECT 1 FROM t1 
                      WHERE b IN (345 NOT GLOB 510)
                        AND c GLOB 'abc*xyz'))
     AND c BETWEEN 'abc' AND 'xyz';

  CREATE TABLE t1(a,b,c);
  CREATE INDEX t1abc ON t1(a,b,c);
  CREATE INDEX t1bca on t1(b,c,a);
  INSERT INTO t1 VALUES(56,1119,1115);
  INSERT INTO t1 VALUES(57,1147,1137);
  INSERT INTO t1 VALUES(100,1050,1023);
  INSERT INTO t1 VALUES(101,1050,1023);
  ANALYZE sqlite_schema;
  INSERT INTO sqlite_stat1 VALUES('t1','t1abc','358677 2 2 1');
  INSERT INTO sqlite_stat1 VALUES('t1','t1bca','358677 4 2 1');
  ANALYZE sqlite_schema;
  SELECT * FROM t1 NOT INDEXED
   WHERE (b = 1137 AND c IN (97, 98))
      OR (b = 1119 AND c IN (1115, 1023));

  SELECT * FROM t1
   WHERE (b = 1137 AND c IN (97, 98))
      OR (b = 1119 AND c IN (1115, 1023));

  CREATE TABLE t1(id INTEGER PRIMARY KEY, a INT, b INT, c INT);
  INSERT INTO t1 VALUES(10,1,2,5);
  INSERT INTO t1 VALUES(20,1,3,5);
  INSERT INTO t1 VALUES(30,1,2,4);
  INSERT INTO t1 VALUES(40,1,3,4);
  ANALYZE sqlite_master;
  INSERT INTO sqlite_stat1 VALUES('t1','t1x','84000 3 2 1');
  CREATE INDEX t1x ON t1(a,b,c);
  PRAGMA writable_schema=RESET;
  SELECT * FROM t1
   WHERE a=1
     AND b IN (2,3)
     AND c BETWEEN 4 AND 5
   ORDER BY +id;
