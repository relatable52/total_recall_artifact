
  SELECT pgno, quote(substr(data,1,5)) FROM sqlite_dbpage('main') ORDER BY pgno;

  SELECT pgno, quote(substr(data,1,5)) FROM sqlite_dbpage WHERE pgno=2;

  SELECT pgno, quote(substr(data,1,5)) FROM sqlite_dbpage WHERE pgno=4;

  SELECT pgno, quote(substr(data,1,5)) FROM sqlite_dbpage WHERE pgno=5;

  SELECT pgno, quote(substr(data,1,5)) FROM sqlite_dbpage WHERE pgno=0;

  ATTACH ':memory:' AS aux1;
  PRAGMA aux1.page_size=4096;
  CREATE TABLE aux1.t2(a,b,c);
  INSERT INTO t2 VALUES(11,12,13);
  SELECT pgno, quote(substr(data,1,5)) FROM sqlite_dbpage('aux1');

  CREATE TABLE aux1.x3(x,y,z);
  INSERT INTO x3(x,y,z) VALUES(1,'main',1),(2,'aux1',1);
  SELECT pgno, schema, substr(data,1,6)
    FROM sqlite_dbpage, x3
   WHERE sqlite_dbpage.schema=x3.y AND sqlite_dbpage.pgno=x3.z
   ORDER BY x3.x;

  CREATE TEMP TABLE saved_content(x);
  INSERT INTO saved_content(x) SELECT data FROM sqlite_dbpage WHERE pgno=4;
  UPDATE sqlite_dbpage SET data=zeroblob(4096) WHERE pgno=4;

  SELECT pgno, quote(substr(data,1,5)) FROM sqlite_dbpage('main') ORDER BY pgno;

  UPDATE sqlite_dbpage SET data=(SELECT x FROM saved_content) WHERE pgno=4;

  DELETE FROM saved_content;
  INSERT INTO saved_content(x) 
     SELECT data FROM sqlite_dbpage WHERE schema='aux1' AND pgno=2;

  UPDATE sqlite_dbpage SET data=zeroblob(4096) WHERE pgno=2 AND schema='aux1';

  UPDATE sqlite_dbpage SET data=(SELECT x FROM saved_content)
   WHERE pgno=2 AND schema='aux1';

  SELECT * FROM sqlite_temp_schema, sqlite_dbpage;
