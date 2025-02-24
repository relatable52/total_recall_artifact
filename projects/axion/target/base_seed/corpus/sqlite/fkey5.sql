
  PRAGMA foreign_key_list(c5);

  CREATE TABLE k1(x REFERENCES s1);
  PRAGMA foreign_key_check(k1);

  INSERT INTO k1 VALUES(NULL);
  PRAGMA foreign_key_check(k1);

  INSERT INTO k1 VALUES(1);
  PRAGMA foreign_key_check(k1);

  CREATE TABLE k2(x, y, FOREIGN KEY(x, y) REFERENCES s1(a, b));
  PRAGMA foreign_key_check(k2);

  INSERT INTO k2 VALUES(NULL, 'five');
  PRAGMA foreign_key_check(k2);

  INSERT INTO k2 VALUES('one', NULL);
  PRAGMA foreign_key_check(k2);

  INSERT INTO k2 VALUES('six', 'seven');
  PRAGMA foreign_key_check(k2);

  CREATE TABLE p30 (id INTEGER PRIMARY KEY);
  CREATE TABLE IF NOT EXISTS c30 (
      line INTEGER, 
      master REFERENCES p30(id), 
      PRIMARY KEY(master)
  ) WITHOUT ROWID;

  INSERT INTO p30 (id) VALUES (1);
  INSERT INTO c30 (master, line)  VALUES (1, 999);

  PRAGMA foreign_key_check;

  INSERT INTO c30 VALUES(45, 45);
  PRAGMA foreign_key_check;

  CREATE TABLE tt(y);
  CREATE TABLE c11(x REFERENCES tt(y));

  ATTACH ':memory:' as aux;
  CREATE TABLE aux.t1(a INTEGER PRIMARY KEY, b TEXT REFERENCES t2);
  CREATE TABLE main.t2(x TEXT PRIMARY KEY, y INT);
  INSERT INTO main.t2 VALUES('abc',11),('def',22),('xyz',99);
  INSERT INTO aux.t1 VALUES(5,'abc'),(7,'xyz'),(9,'oops');
  PRAGMA foreign_key_check=t1;

  CREATE TABLE aux.t2(x TEXT PRIMARY KEY, y INT);
  INSERT INTO aux.t2 VALUES('abc',11),('def',22),('xyz',99);
  PRAGMA foreign_key_check=t1;

    SELECT *, 'x' FROM pragma_foreign_key_check('t1');
  
    SELECT *, 'x' FROM pragma_foreign_key_check('t1','aux');
  
      PRAGMA foreign_keys=OFF;
      CREATE TABLE t1(a INTEGER PRIMARY KEY, b TEXT REFERENCES t2);
      CREATE TABLE t2(x TEXT PRIMARY KEY, y INT);
      CREATE TABLE t3(w TEXT, z INT REFERENCES t1);
      INSERT INTO t2 VALUES('abc',11),('def',22),('xyz',99);
      INSERT INTO t1 VALUES(5,'abc'),(7,'xyz'),(9,'oops');
      INSERT INTO t3 VALUES(11,7),(22,19);
    
    SELECT x.*, '|'
      FROM sqlite_schema, pragma_foreign_key_check(name) AS x
      WHERE type='table'
      ORDER BY x."table";
  
    SELECT *, '|'
      FROM pragma_foreign_key_check AS x
      ORDER BY x."table";
  