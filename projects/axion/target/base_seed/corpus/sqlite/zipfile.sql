
  CREATE VIRTUAL TABLE temp.zz USING zipfile('test.zip');
  PRAGMA table_info(zz);

  INSERT INTO zz(name, mode, mtime, data, method) 
  VALUES('f.txt', '-rw-r--r--', 1000000000, 'abcde', 0);

  INSERT INTO zz(name, mode, mtime, data, method) 
  VALUES('g.txt', NULL, 1000000002, '12345', 0);

  SELECT name, mtime, data FROM zipfile('test.zip')

  INSERT INTO zz(name, mode, mtime, data) VALUES('h.txt', 
    '-rw-r--r--', 1000000004, 'aaaaaaaaaabbbbbbbbbb'
  );

  SELECT name, mtime, data, method FROM zipfile('test.zip');

    SELECT name, json_extract( zipfile_cds(z) , '$.crc32')!=0
    FROM zipfile('test.zip');
  
  BEGIN;
    INSERT INTO zz(name, mode, mtime, data, method)
    VALUES('i.txt', '-rw-r--r--', 1000000006, 'zxcvb', 0);
    SELECT name FROM zz;
  COMMIT;

  SELECT name FROM zz;

  SELECT data FROM zz WHERE name='i.txt';

  DELETE FROM zz WHERE name='g.txt';
  SELECT name FROM zz;

  SELECT name, mode, mtime, data, method FROM zipfile('test.zip');

  UPDATE zz SET mtime=4 WHERE name='i.txt';
  SELECT name, mode, mtime, data, method FROM zipfile('test.zip');

  UPDATE zz SET mode=$modes WHERE name='h.txt';
  SELECT name, mode, mtime, data, method FROM zipfile('test.zip');

  UPDATE zz SET name = 'blue.txt' WHERE name='f.txt';
  SELECT name, mode, mtime, data, method FROM zipfile('test.zip');

  UPDATE zz SET data = 'edcba' WHERE name='blue.txt';
  SELECT name, mode, mtime, data, method FROM zipfile('test.zip');

  UPDATE zz SET mode=NULL, data = NULL WHERE name='blue.txt';
  SELECT name, mode, mtime, data, method FROM zipfile('test.zip');

  SELECT name, mode, mtime, data, method FROM zipfile('test.zip');

  UPDATE zz SET data = '' WHERE name='i.txt';
  SELECT name,mode,mtime,data,method from zipfile('test.zip');

  SELECT a.name, a.data 
  FROM zz AS a, zz AS b 
  WHERE a.name=+b.name AND +a.mode=b.mode

  SELECT name, data FROM zz WHERE name LIKE '%txt'

  DELETE FROM zz;
  SELECT * FROM zz;

  CREATE VIRTUAL TABLE zzz USING zipfile('test.zip');
  INSERT INTO zzz(name, mode) VALUES('dirname', 'drwxr-xr-x');
  SELECT name, mode, data FROM zzz;

  INSERT INTO zzz(name, data) VALUES('dirname2', NULL);
  INSERT INTO zzz(name, data) VALUES('dirname2/file1.txt', 'abcdefghijklmnop');
  SELECT name, mode, data FROM zzz;

  SELECT name, mode, data FROM zzz;

  CREATE VIRTUAL TABLE temp.x1 USING zipfile('test.zip');
  INSERT INTO x1(name, data) VALUES('dir1/', NULL);
  INSERT INTO x1(name, data) VALUES('file1', '1234');
  INSERT INTO x1(name, data) VALUES('dir1/file2', '5678');

  WITH c(name,mtime,data) AS (
    SELECT 'a.txt', 946684800, 'abc'
  )
  SELECT name,mtime,data FROM zipfile(
    ( SELECT rt( zipfile(name,NULL,mtime,data,NULL) ) FROM c )
  )

    SELECT name, mtime, data FROM zipfile('test1.zip')
  
    SELECT name, mtime, sz, rawdata, data FROM zipfile('test2.zip')
  
  CREATE VIRTUAL TABLE zz USING zipfile('test.zip');
  BEGIN;
    INSERT INTO zz(name, data) VALUES('a.txt', '1');
    INSERT INTO zz(name, data) VALUES('b.txt', '2');
    INSERT INTO zz(name, data) VALUES('c.txt', '1');
    INSERT INTO zz(name, data) VALUES('d.txt', '2');
    SELECT name, data FROM zz;

  CREATE VIRTUAL TABLE nogood USING zipfile('test_unzip');

  DROP TABLE nogood;
  BEGIN;
    CREATE VIRTUAL TABLE nogood USING zipfile('test_unzip');

  COMMIT;

  BEGIN;
    CREATE VIRTUAL TABLE ok USING zipfile('test.zip');
    INSERT INTO ok(name, data) VALUES ('sqlite3', 'elf');
  COMMIT;

  WITH src(nm) AS (
    VALUES('dir1') UNION ALL
    VALUES('dir2/') UNION ALL
    VALUES('dir3//') UNION ALL
    VALUES('dir4///') UNION ALL
    VALUES('/') 
  )
  SELECT name FROM zipfile((SELECT zipfile(nm, NULL) FROM src))

  CREATE VIRTUAL TABLE z USING zipfile('test.zip');

  SELECT name, data FROM z;

  REPLACE INTO z(name,data) VALUES('a0','three'),('a0','four');

  SELECT name, data FROM z;

  INSERT OR IGNORE INTO z(name,data) VALUES('a0','five'),('a0','six');

  SELECT name, data FROM z;

  DELETE FROM z;

  SELECT name, data FROM z;

  INSERT INTO z (name,data) VALUES ('b0','one');
  SELECT name, data FROM z;

  UPDATE z SET name = 'b1' WHERE name = 'b0';
  SELECT name, data FROM z;

  INSERT INTO z (name,data) VALUES ('b0','one');
  SELECT name, data FROM z ORDER BY name;

  UPDATE z SET data = 'two' WHERE name = 'b0';
  SELECT name, data FROM z ORDER BY name;

  UPDATE z SET name = name;
  SELECT name, data FROM z ORDER BY name;

  UPDATE z SET name = name || 'suffix';
  SELECT name, data FROM z ORDER BY name;

    SELECT name FROM fsdir('subdir') ORDER BY 1;
  
    CREATE TABLE d AS SELECT 'subdir' d;
    CREATE TABLE x AS SELECT 1 x;
  
    SELECT name FROM d JOIN x JOIN fsdir(d) ORDER BY 1;
  
    SELECT name FROM d JOIN x JOIN fsdir('.', d) ORDER BY 1;
  
  DROP TABLE IF EXISTS t0;
  DROP TABLE IF EXISTS t1;
  CREATE TABLE t0(a,b,c,d,e,f,g);
  REPLACE INTO t0(c,b,f) VALUES(10,10,10);
  CREATE VIRTUAL TABLE t1 USING zipfile('h.zip');
  REPLACE INTO t1 SELECT * FROM t0;
  SELECT quote(name),quote(mode),quote(mtime),quote(sz),quote(rawdata),
         quote(data),quote(method) FROM t1;

  DROP TABLE t1;
  CREATE TABLE t1(x char);
  INSERT INTO t1(x) VALUES('1');
  INSERT INTO t1(x) SELECT zipfile(x, 'xyz') FROM t1;
  INSERT INTO t1(x) SELECT zipfile(x, 'uvw') FROM t1;
  SELECT count(*) FROM t1;
  PRAGMA integrity_check;

  DROP TABLE IF EXISTS t1;
  CREATE VIRTUAL TABLE t1 USING zipfile(null);
  REPLACE INTO t1 VALUES(null,null,0,null,null,null,null);

  DROP TABLE IF EXISTS t2;
  CREATE VIRTUAL TABLE t2 USING zipfile(null);
  REPLACE INTO t2 values(null,null,null,null,null,10,null);

  WITH vlist(x) AS (
     VALUES(9223372036854775807),
           (-9223372036854775808),
           (9223372036854775806),
           (-9223372036854775807)
  )
  SELECT DISTINCT typeof(zipfile(0,0,x,0)) FROM vlist;
