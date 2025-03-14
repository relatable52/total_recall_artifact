
  CREATE TABLE customer (id INT PRIMARY KEY);
  CREATE TABLE apr (id INT PRIMARY KEY, apr REAL);
  
  CREATE VIEW v1 AS
  SELECT c.id, i.apr
  FROM customer c
  LEFT JOIN apr i ON i.id=c.id;
  
  CREATE VIEW v1rj AS
  SELECT c.id, i.apr
  FROM apr i
  RIGHT JOIN customer c ON i.id=c.id;
  
  CREATE VIEW v2 AS
  SELECT c.id, v1.apr
  FROM customer c
  LEFT JOIN v1 ON v1.id=c.id;
  
  CREATE VIEW v2rj AS
  SELECT c.id, v1.apr
  FROM v1 RIGHT JOIN customer c ON v1.id=c.id;
  
  CREATE VIEW v2rjrj AS
  SELECT c.id, v1rj.apr
  FROM v1rj RIGHT JOIN customer c ON v1rj.id=c.id;
  
  INSERT INTO customer (id) VALUES (1);
  INSERT INTO apr (id, apr) VALUES (1, 12);
  INSERT INTO customer (id) VALUES (2);
  INSERT INTO apr (id, apr) VALUES (2, 12.01);

  PRAGMA automatic_index=ON;
  SELECT id, (apr / 100), typeof(apr) apr_type  FROM v1;

  PRAGMA automatic_index=ON;
  SELECT id, (apr / 100), typeof(apr) apr_type  FROM v1rj;

  SELECT id, (apr / 100), typeof(apr) apr_type  FROM v2;

  SELECT id, (apr / 100), typeof(apr) apr_type  FROM v2rj;

  SELECT id, (apr / 100), typeof(apr) apr_type  FROM v2rjrj;

  PRAGMA automatic_index=OFF;
  SELECT id, (apr / 100), typeof(apr) apr_type  FROM v1;

  SELECT id, (apr / 100), typeof(apr) apr_type  FROM v1rj;

  SELECT id, (apr / 100), typeof(apr) apr_type  FROM v2;

  SELECT id, (apr / 100), typeof(apr) apr_type  FROM v2rj;

  SELECT id, (apr / 100), typeof(apr) apr_type  FROM v2rjrj;

  CREATE TABLE map_integer (id INT, name);
  INSERT INTO map_integer VALUES(1,'a');
  CREATE TABLE map_text (id TEXT, name);
  INSERT INTO map_text VALUES('4','e');
  CREATE TABLE data (id TEXT, name);
  INSERT INTO data VALUES(1,'abc');
  INSERT INTO data VALUES('4','xyz');
  CREATE VIEW idmap as
      SELECT * FROM map_integer
      UNION SELECT * FROM map_text;
  CREATE TABLE mzed AS SELECT * FROM idmap;

  PRAGMA automatic_index=ON;
  SELECT * FROM data JOIN idmap USING(id);

  SELECT * FROM data JOIN mzed USING(id);

  PRAGMA automatic_index=OFF;
  SELECT * FROM data JOIN idmap USING(id);

  SELECT * FROM data JOIN mzed USING(id);
