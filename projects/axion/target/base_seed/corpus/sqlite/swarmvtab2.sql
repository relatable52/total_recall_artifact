
  CREATE TABLE t1(filename, tablename, istart, iend);
  WITH RECURSIVE c(x) AS (VALUES(1) UNION ALL SELECT x+1 FROM c WHERE x<99)
  INSERT INTO t1 SELECT printf('test%03d.db',x),'t2',x*1000,x*1000+999 FROM c;
  CREATE VIRTUAL TABLE temp.v1 USING swarmvtab(
    'SELECT * FROM t1', 'create_database'
  );

  SELECT b FROM v1 WHERE a=3875;

  SELECT b FROM v1 WHERE a BETWEEN 3999 AND 4000 ORDER BY a;

  SELECT b FROM v1 WHERE a>=99998;
