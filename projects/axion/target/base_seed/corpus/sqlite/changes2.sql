
  CREATE TABLE some_table ( 
    id INTEGER NOT NULL, value VARCHAR(40) NOT NULL, PRIMARY KEY (id)
  );
  INSERT INTO some_table (id, value) VALUES (1, 'v1');

  DROP TABLE some_table;
  CREATE TABLE some_table ( 
    id INTEGER NOT NULL, value VARCHAR(40) NOT NULL, PRIMARY KEY (id)
  );
  INSERT INTO some_table (id, value) VALUES (1, 'v1');

  CREATE TABLE t1(a, b);
  CREATE TABLE log(t);

  INSERT INTO t1 VALUES (1, 'v1'), (2, 'v2');

  CREATE TABLE t3(x);

  INSERT INTO t1 VALUES (3, 'v1'), (4, 'v2');

  SELECT * FROM log;
