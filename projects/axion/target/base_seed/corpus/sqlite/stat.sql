
  PRAGMA table_info(dbstat);

  PRAGMA table_info=dbstat;

  PRAGMA auto_vacuum = OFF;
  CREATE VIRTUAL TABLE temp.stat USING dbstat;
  SELECT * FROM stat;

    PRAGMA journal_mode = WAL;
    PRAGMA journal_mode = delete;
    SELECT name, path, pageno, pagetype, ncell, payload, unused, mx_payload
      FROM stat;
  
  CREATE TABLE t3(a PRIMARY KEY, b);
  INSERT INTO t3(rowid, a, b) VALUES(2, a_string(111), a_string(222));
  INSERT INTO t3 SELECT a_string(110+rowid), a_string(221+rowid) FROM t3
   ORDER BY rowid;
  INSERT INTO t3 SELECT a_string(110+rowid), a_string(221+rowid) FROM t3
   ORDER BY rowid;
  INSERT INTO t3 SELECT a_string(110+rowid), a_string(221+rowid) FROM t3
   ORDER BY rowid;
  INSERT INTO t3 SELECT a_string(110+rowid), a_string(221+rowid) FROM t3
   ORDER BY rowid;
  INSERT INTO t3 SELECT a_string(110+rowid), a_string(221+rowid) FROM t3
   ORDER BY rowid;
  SELECT name, path, pageno, pagetype, ncell, payload, unused, mx_payload
    FROM stat WHERE name != 'sqlite_schema' ORDER BY name;

  SELECT * FROM dbstat WHERE aggregate=TRUE ORDER BY name;

  UPDATE t3 SET a=a||hex(randomblob(700));
  VACUUM;
  SELECT pageno FROM stat EXCEPT SELECT pageno-1 FROM stat;

  CREATE TABLE t4(x);
  CREATE INDEX i4 ON t4(x);
  INSERT INTO t4(rowid, x) VALUES(2, a_string(7777));
  SELECT name, path, pageno, pagetype, ncell, payload, unused, mx_payload
    FROM stat WHERE name != 'sqlite_schema' ORDER BY name;

  SELECT *, '|' FROM dbstat WHERE aggregate=TRUE ORDER BY name;

  CREATE TABLE t5(x);
  CREATE INDEX i5 ON t5(x);
  SELECT name, path, pageno, pagetype, ncell, payload, unused, mx_payload
    FROM stat WHERE name = 't5' OR name = 'i5';

  PRAGMA auto_vacuum = OFF;
  CREATE TABLE tx(y);
  ATTACH ':memory:' AS aux1;
  CREATE VIRTUAL TABLE temp.stat USING dbstat(aux1);
  CREATE TABLE aux1.t1(x);
  INSERT INTO t1 VALUES(zeroblob(1513));
  INSERT INTO t1 VALUES(zeroblob(1514));
  SELECT name, path, pageno, pagetype, ncell, payload, unused, mx_payload
    FROM stat WHERE name = 't1';

  SELECT name, quote(path), pageno, quote(pagetype), ncell, payload,
         unused, mx_payload, '|' FROM dbstat('main',1);

  SELECT name, quote(path), pageno, quote(pagetype), ncell, payload,
         unused, mx_payload, '|' FROM dbstat('aux1',1);

  ATTACH 'test.db2' AS '123';
  PRAGMA "123".auto_vacuum = OFF;
  CREATE TABLE "123".x1(a, b);
  INSERT INTO x1 VALUES(1, 2);

  SELECT * FROM dbstat('123');

  SELECT * FROM dbstat(123);

  CREATE VIRTUAL TABLE x2 USING dbstat('123');
  SELECT * FROM x2;

  CREATE VIRTUAL TABLE x3 USING dbstat(123);
  SELECT * FROM x3;

  DETACH 123;
  DROP TABLE x2;
  DROP TABLE x3;
  ATTACH 'test.db2' AS '123corp';

  SELECT * FROM dbstat('123corp');

  CREATE VIRTUAL TABLE x2 USING dbstat('123corp');
  SELECT * FROM x2;

  CREATE VIRTUAL TABLE st4 USING dbstat;

  SELECT * FROM st4 WHERE st4.aggregate = NULL;

  SELECT aggregate=1 FROM st4 WHERE aggregate = 5

  SELECT * FROM st4 WHERE name = NULL;

  SELECT * FROM st4 WHERE schema = NULL;
