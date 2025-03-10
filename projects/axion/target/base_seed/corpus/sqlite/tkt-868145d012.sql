
  CREATE TABLE p (
    id INTEGER PRIMARY KEY,
    uid VARCHAR(36),
    t INTEGER
  );
  
  CREATE TABLE pa (
    id INTEGER PRIMARY KEY,
    a_uid VARCHAR(36)
  );
  
  CREATE TABLE a (
    id INTEGER PRIMARY KEY,
    uid VARCHAR(36),
    t INTEGER
  );
  
  INSERT INTO pa VALUES(1,'1234');
  INSERT INTO pa VALUES(2,'2345');
  INSERT INTO p VALUES(3,'1234',97);
  INSERT INTO p VALUES(4,'1234',98);
  INSERT INTO a VALUES(5,'1234',98);
  INSERT INTO a VALUES(6,'1234',99);

  SELECT DISTINCT pa.id, p.id, a.id
  FROM
    pa
    LEFT JOIN p ON p.uid='1234'
    LEFT JOIN a ON a.uid=pa.a_uid
  WHERE
    a.t=p.t
  ;

  SELECT DISTINCT pa.id, p.id, a.id
  FROM
    pa
    LEFT JOIN p ON p.uid='1234'
    LEFT JOIN a ON a.uid=pa.a_uid AND a.t=p.t
  ORDER BY 1, 2, 3
  ;
