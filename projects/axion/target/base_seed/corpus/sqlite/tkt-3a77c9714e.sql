
  CREATE TABLE t1(t1_id INTEGER PRIMARY KEY, t1_title TEXT);
  CREATE TABLE t2(t2_id INTEGER PRIMARY KEY, t2_title TEXT);
  CREATE TABLE t3(t3_id INTEGER PRIMARY KEY, t3_title TEXT);

  INSERT INTO t1 (t1_id, t1_title) VALUES (888, 'ABCDEF');
  INSERT INTO t2 (t2_id, t2_title) VALUES (999, 'ABCDEF');
  INSERT INTO t3 (t3_id, t3_title) VALUES (999, 'ABCDEF');

  SELECT t1_title, t2_title
  FROM t1 LEFT JOIN t2
  WHERE
    t2_id = (SELECT t3_id FROM
     ( SELECT t3_id FROM t3 WHERE t3_title=t1_title LIMIT 500 )
  )

  CREATE TABLE [Beginnings] (
    [Id] INTEGER PRIMARY KEY AUTOINCREMENT,[Title] TEXT, [EndingId] INTEGER
  );
  CREATE TABLE [Endings] (Id INT,Title TEXT,EndingId INT);
  INSERT INTO Beginnings (Id, Title, EndingId) VALUES (1, 'FACTOR', 18);
  INSERT INTO Beginnings (Id, Title, EndingId) VALUES (2, 'SWIMM', 18);
  INSERT INTO Endings (Id, Title, EndingId) VALUES (1, 'ING', 18);

  SELECT
    SrcWord, Beginnings.Title
    FROM 
      (SELECT 'FACTORING' AS SrcWord UNION SELECT 'SWIMMING' AS SrcWord )
    LEFT JOIN 
      Beginnings
    WHERE Beginnings.Id= (
      SELECT BeginningId FROM (
        SELECT SrcWord, B.Id as BeginningId, B.Title || E.Title As Connected
        FROM Beginnings B LEFT JOIN Endings E ON B.EndingId=E.EndingId
        WHERE Connected=SrcWord LIMIT 1
      )
    )

  DROP TABLE IF EXISTS t1;
  CREATE TABLE t1(i INT PRIMARY KEY, a, b);
  INSERT INTO t1 VALUES(NULL,'one','i');
  CREATE INDEX i1a ON t1(a);
  CREATE INDEX i1b ON t1(b);
  SELECT (SELECT 1
            FROM (SELECT 1 FROM t1 WHERE a=1 OR b='i')
           WHERE a='o'
              OR b IN (SELECT a=('b' IN (SELECT 'a'))))
    FROM t1;
