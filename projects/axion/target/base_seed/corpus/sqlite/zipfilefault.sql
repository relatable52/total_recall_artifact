
  CREATE VIRTUAL TABLE setup USING zipfile('test.zip');
  INSERT INTO setup(name, data) VALUES('a.txt', '1234567890');

  CREATE VIRTUAL TABLE setup USING zipfile('test.zip');
  INSERT INTO setup(name, data) VALUES('a.txt', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaa');

  CREATE VIRTUAL TABLE setup USING zipfile('test.zip') 
