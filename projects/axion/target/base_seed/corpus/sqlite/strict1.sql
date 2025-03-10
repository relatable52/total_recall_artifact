
  CREATE TABLE t1(
    a INT,
    b INTEGER,
    c BLOB,
    d TEXT,
    e REAL
  ) STRICT;

    SELECT strict FROM pragma_table_list('t1');
  
  INSERT INTO t1(a, b) VALUES(1,2),('3','4'),(5.0, 6.0),(null,null);
  SELECT a, b, '|' FROM t1;

  DELETE FROM t1;
  INSERT INTO t1(c) VALUES(x'313233'), (NULL);
  SELECT typeof(c), c FROM t1;

  DELETE FROM t1;
  INSERT INTO t1(d) VALUES('xyz'),(4),(5.5),(NULL);
  SELECT typeof(d), d FROM t1;

  DELETE FROM t1;
  INSERT INTO t1(e) VALUES(1),(2.5),('3'),('4.5'),(6.0),(NULL);
  SELECT typeof(e), e FROM t1;

    DROP TABLE IF EXISTS t4;
    CREATE TABLE t4(
      a INT AS (b*2) VIRTUAL,
      b INT AS (c*2) STORED,
      c INT PRIMARY KEY
    ) STRICT;
    INSERT INTO t4(c) VALUES(1);
    SELECT * FROM t4;
  
  CREATE TABLE csv_import_table (
    "debit" TEXT,
    "credit" TEXT
  );
  INSERT INTO csv_import_table VALUES ('', '250.00');
  CREATE TABLE IF NOT EXISTS transactions (
      debit REAL,
      credit REAL,
      amount REAL GENERATED ALWAYS AS (ifnull(credit, 0.0) - ifnull(debit, 0.0))
  ) STRICT;
  INSERT INTO transactions
  SELECT
      nullif(debit, '') AS debit,
      nullif(credit, '') AS credit
  FROM csv_import_table;
  SELECT * FROM transactions;

  CREATE TABLE t1(x REAL, y REAL AS (x)) STRICT;
  INSERT INTO t1 VALUES(5),(4611686018427387904);
  SELECT *, '|' FROM t1;
