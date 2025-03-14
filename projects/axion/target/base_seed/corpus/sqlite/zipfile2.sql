
  CREATE VIRTUAL TABLE aaa USING zipfile('testzip');
  CREATE VIRTUAL TABLE bbb USING zipfile("testzip");
  CREATE VIRTUAL TABLE ccc USING zipfile(`testzip`);
  CREATE VIRTUAL TABLE ddd USING zipfile([testzip]);
  CREATE VIRTUAL TABLE eee USING zipfile(testzip);
  CREATE VIRTUAL TABLE fff USING zipfile('test''zip');

    WITH contents(name,mtime,data) AS (
        VALUES('a.txt', 1000000, 'contents of a.txt') UNION ALL
        VALUES('b.txt', 1000000, 'contents of b.txt')
    ) SELECT quote( zipfile(name,NULL,mtime,data) ) FROM contents;
  
  SELECT name,mtime,data FROM zipfile($blob)

    SELECT name,data FROM zipfile($blob)
  
    SELECT name,data FROM zipfile($blob)
  
  SELECT name,mtime,data,method FROM zipfile($blob)

  SELECT name,mtime,data IS NULL,method FROM zipfile($blob)

  CREATE VIRTUAL TABLE temp.zip USING zipfile('test.zip'); 
  INSERT INTO temp.zip (name,data) VALUES ('test1','test'); 
  INSERT INTO temp.zip (name,data) VALUES ('test2','test'); 

  INSERT INTO temp.zip (name,data) VALUES ('test1','test'); 
  INSERT INTO temp.zip (name,data) VALUES ('test2','test'); 
  UPDATE OR REPLACE zip SET name='test2' WHERE name='test1';
  SELECT name FROM zip;
