
  PRAGMA default_cache_size = 0;

  PRAGMA default_cache_size;

  PRAGMA default_cache_size = -500;

  PRAGMA default_cache_size;

  PRAGMA default_cache_size = 500;

  PRAGMA default_cache_size;

  PRAGMA default_cache_size;

      PRAGMA t2.integrity_check=t2;
    
      PRAGMA t2.integrity_check=sqlite_schema;
    
      CREATE TABLE t1(a,b);
      CREATE INDEX t1a ON t1(a);
      INSERT INTO t1 VALUES(1,1),(2,2),(3,3),(2,4),(NULL,5),(NULL,6);
      PRAGMA writable_schema=ON;
      UPDATE sqlite_master SET sql='CREATE UNIQUE INDEX t1a ON t1(a)'
        WHERE name='t1a';
      UPDATE sqlite_master SET sql='CREATE TABLE t1(a NOT NULL,b)'
        WHERE name='t1';
      PRAGMA writable_schema=OFF;
      ALTER TABLE t1 RENAME TO t1x;
      PRAGMA integrity_check;
    
    PRAGMA integrity_check(3);
  
    PRAGMA integrity_check(2);
  
    PRAGMA integrity_check(1);
  
  CREATE TABLE t1(
    a INTEGER PRIMARY KEY,
    b TEXT COLLATE nocase,
    c INT COLLATE nocase,
    d TEXT
  );
  INSERT INTO t1(a,b,c,d) VALUES
    (1, 'one','one','one'),
    (2, 'two','two','two'),
    (3, 'three','three','three'),
    (4, 'four','four','four'),
    (5, 'five','five','five');
  CREATE INDEX t1bcd ON t1(b,c,d);
  CREATE TABLE t2(
    a INTEGER PRIMARY KEY,
    b TEXT COLLATE nocase,
    c INT COLLATE nocase,
    d TEXT
  );
  INSERT INTO t2(a,b,c,d) VALUES
    (1, 'one','one','one'),
    (2, 'two','two','TWO'),
    (3, 'three','THREE','three'),
    (4, 'FOUR','four','four'),
    (5, 'FIVE','FIVE','five');
  CREATE INDEX t2bcd ON t2(b,c,d);
  CREATE TEMP TABLE saved_schema AS SELECT name, rootpage FROM sqlite_schema;
  PRAGMA writable_schema=ON;
  UPDATE sqlite_schema
     SET rootpage=(SELECT rootpage FROM saved_schema WHERE name='t2bcd')
   WHERE name='t1bcd';
  UPDATE sqlite_schema
     SET rootpage=(SELECT rootpage FROM saved_schema WHERE name='t1bcd')
   WHERE name='t2bcd';
  PRAGMA Writable_schema=RESET;

    SELECT integrity_check AS x FROM pragma_integrity_check ORDER BY 1;
  
  CREATE INDEX t3i2 ON t3(b,a);
  PRAGMA index_info='t3i2';
  DROP INDEX t3i2;

  PRAGMA schema_version = 106;
  PRAGMA schema_version;

  PRAGMA schema_version = 106;
  PRAGMA schema_version;

    PRAGMA page_size = 1024;
    CREATE TABLE t1(a, b, c);
    CREATE INDEX i1 ON t1(b);
    INSERT INTO t1 VALUES('a', 'b', 'c');
    PRAGMA integrity_check;
  
  CREATE TABLE t1(a INT, b AS (a*2) NOT NULL);
  CREATE TEMP TABLE t2(a PRIMARY KEY, b, c UNIQUE) WITHOUT ROWID;
  CREATE UNIQUE INDEX t2x ON t2(c,b);
  PRAGMA integrity_check;
