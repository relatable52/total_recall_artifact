
  CREATE TABLE t1(a,b,c);
  INSERT INTO t1 VALUES(111,222,333);
  CREATE INDEX i1 ON t1(b);
  CREATE VIEW v2 AS SELECT 15,22;
  CREATE TRIGGER r1 AFTER INSERT ON t1 BEGIN SELECT 5; END;
  SELECT type, name, tbl_name, '|' FROM sqlite_master;

  PRAGMA writable_schema=on;
  UPDATE sqlite_master SET tbl_name=NULL WHERE name='t1';
  SELECT type, name, tbl_name, '|' FROM sqlite_master;

  UPDATE sqlite_master SET tbl_name='tx' WHERE name='t1';
  SELECT type, name, tbl_name, '|' FROM sqlite_master;

  UPDATE sqlite_master SET tbl_name='t1', type='tabl' WHERE name='t1';
  SELECT type, name, tbl_name, '|' FROM sqlite_master;

  UPDATE sqlite_master SET tbl_name='t9',type='table',name='t9'WHERE name='t1';
  SELECT type, name, tbl_name, '|' FROM sqlite_master;

  UPDATE sqlite_master SET name='t1',tbl_name='T1' WHERE name='t9';
  SELECT type, name, tbl_name, '|' FROM sqlite_master;

  UPDATE sqlite_master SET type='view' WHERE name='t1';
  SELECT type, name, tbl_name, '|' FROM sqlite_master;

  UPDATE sqlite_master SET type='table', tbl_name='t1' WHERE name='t1';
  UPDATE sqlite_master SET tbl_name='tx' WHERE name='i1';
  SELECT type, name, tbl_name, '|' FROM sqlite_master;

  UPDATE sqlite_master SET type='table', tbl_name='t1' WHERE name='i1';
  SELECT type, name, tbl_name, '|' FROM sqlite_master;

  UPDATE sqlite_master SET type='view', tbl_name='t1' WHERE name='i1';
  SELECT type, name, tbl_name, '|' FROM sqlite_master;

  UPDATE sqlite_master SET type='index', tbl_name='t1' WHERE name='i1';
  UPDATE sqlite_master SET type='table', tbl_name='v2' WHERE name='v2';
  SELECT type, name, tbl_name, '|' FROM sqlite_master;

  UPDATE sqlite_master SET type='view',name='v3',tbl_name='v3' WHERE name='v2';
  SELECT type, name, tbl_name, '|' FROM sqlite_master;

  UPDATE sqlite_master SET type='view',name='v2',tbl_name='v2' WHERE name='v3';
  UPDATE sqlite_master SET type='view' WHERE name='r1';
  SELECT type, name, tbl_name, '|' FROM sqlite_master;

  UPDATE sqlite_master SET type='trigger',tbl_name='v2' WHERE name='r1';
  SELECT type, name, tbl_name, '|' FROM sqlite_master;
