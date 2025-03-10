
  CREATE TABLE t1(a, b);
  CREATE INDEX i1 ON t1(a, b);
  INSERT INTO t1 VALUES('a', 'b'), ('c', 'd');
  INSERT INTO t1 VALUES('a', 'b'), ('c', 'd');
  CREATE VIRTUAL TABLE vt1 USING tcl(vtab_command t1);

  CREATE TABLE t0(c0);
  INSERT INTO t0(c0) VALUES (1), (0);

  CREATE TABLE t1(a, b);
  CREATE INDEX i1 ON t1(a, b);
  CREATE VIRTUAL TABLE vt1 USING tcl(vtab_command t1);

  CREATE TABLE t1(a, b);
  CREATE INDEX i1 ON t1(a, b);
  CREATE VIRTUAL TABLE vt1 USING tcl(vtab_command t1);

  CREATE TABLE t1(a, b, c);
  CREATE VIRTUAL TABLE vt1 USING tcl(vtab_command t1);

  CREATE TABLE t1(a, b, c);
  CREATE VIRTUAL TABLE vt1 USING tcl(vtab_command t1);
  INSERT INTO t1 VALUES(1, 2, 3);
  INSERT INTO t1 VALUES(2, 3, 4);
  INSERT INTO t1 VALUES(3, 4, 5);
  INSERT INTO t1 VALUES(1, 5, 6);
  INSERT INTO t1 VALUES(2, 6, 7);
  INSERT INTO t1 VALUES(3, 7, 8);
  INSERT INTO t1 VALUES(1, 8, 9);
  INSERT INTO t1 VALUES(2, 9, 0);
