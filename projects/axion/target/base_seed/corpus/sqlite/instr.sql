
  SELECT coalesce(instr(NULL,'abc'), 999);

  SELECT coalesce(instr('abc',NULL), 999);

  SELECT coalesce(instr(NULL,NULL), 999);

  SELECT instr(X'', 'abc')

  CREATE TABLE x1(a, b);
  INSERT INTO x1 VALUES(X'', 'abc');
  SELECT instr(a, b) FROM x1;

  DROP TABLE IF EXISTS t0;
  CREATE TABLE t0(c0 PRIMARY KEY, c1);
  INSERT INTO t0(c0) VALUES (x'bb'), (0);
  SELECT COUNT(*) FROM t0 WHERE INSTR(x'aabb', t0.c0) ORDER BY t0.c0, t0.c1;

  SELECT quote(c0) FROM t0 WHERE INSTR(x'aabb', t0.c0) ORDER BY t0.c0, t0.c1;

  DROP TABLE IF EXISTS t1;
  CREATE TABLE t1(x);
  INSERT INTO t1(x) VALUES('text'),(x'bb');
  SELECT quote(x) FROM t1 WHERE instr(x'aabb',x);

  SELECT quote(x) FROM t1 WHERE x>'zzz' AND instr(x'aabb',x);
