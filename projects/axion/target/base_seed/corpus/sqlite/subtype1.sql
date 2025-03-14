
  SELECT test_getsubtype('hello');

  SELECT test_getsubtype(test_setsubtype('hello',123));

  SELECT typeof(test_setsubtype('hello',123));

  SELECT test_setsubtype('hello',123);

  CREATE TABLE t1(a); INSERT INTO t1 VALUES ('x');
  CREATE VIEW t2(b) AS SELECT json(TRUE);
  CREATE TABLE t3(b); INSERT INTO t3 VALUES(json(TRUE));

  SELECT * FROM t3, t1 WHERE NOT json_quote(b);

  SELECT * FROM t2, t1 WHERE NOT json_quote(b);

  WITH t4(a) AS MATERIALIZED (SELECT json(1)) SELECT subtype(a) FROM t4;

  WITH t4(a) AS NOT MATERIALIZED (SELECT json(1)) SELECT subtype(a) FROM t4;

  CREATE TABLE t0(c0);
  INSERT INTO t0 VALUES ('1');
  CREATE VIEW v0(c0) AS SELECT CASE WHEN 1 THEN json_patch('1', '1') END 
                        FROM t0 GROUP BY t0.c0;
  SELECT * FROM v0 WHERE json_quote(v0.c0) != '1';

  SELECT *, json_quote(y) FROM (SELECT +json('1') AS y);

  SELECT *, json_quote(y) FROM (SELECT +json('1') AS y)
   WHERE json_quote(y)='"1"';
