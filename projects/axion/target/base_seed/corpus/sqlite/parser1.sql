
  CREATE TABLE t1(
    a TEXT PRIMARY KEY,
    b TEXT,
    FOREIGN KEY(b) REFERENCES t1(a)
  );
  INSERT INTO t1 VALUES('abc',NULL),('xyz','abc');
  PRAGMA writable_schema=on;
  UPDATE sqlite_master SET sql='CREATE TABLE t1(
    a TEXT PRIMARY KEY,
    b TEXT,
    FOREIGN KEY(b COLLATE nocase) REFERENCES t1(a)
  )' WHERE name='t1';
  SELECT name FROM sqlite_master WHERE sql LIKE '%collate%';

  UPDATE sqlite_master SET sql='CREATE TABLE t1(
    a TEXT PRIMARY KEY,
    b TEXT,
    FOREIGN KEY(b ASC) REFERENCES t1(a)
  )' WHERE name='t1';
  SELECT name FROM sqlite_master WHERE sql LIKE '%ASC%';

  CREATE TABLE t300(id INTEGER PRIMARY KEY);
  CREATE TABLE t301(
    id INTEGER PRIMARY KEY,
    c1 INTEGER NOT NULL,
    c2 INTEGER NOT NULL,
    c3 BOOLEAN NOT NULL DEFAULT 0,
    FOREIGN KEY(c1) REFERENCES t300(id) ON DELETE CASCADE ON UPDATE RESTRICT
        /* no comma */
    FOREIGN KEY(c2) REFERENCES t300(id) ON DELETE CASCADE ON UPDATE RESTRICT
        /* no comma */
    UNIQUE(c1, c2)
  );
  PRAGMA foreign_key_list(t301);
