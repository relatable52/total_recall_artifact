
    CREATE TEMPORARY TABLE TempTable (
        key TEXT NOT NULL ON CONFLICT FAIL UNIQUE ON CONFLICT REPLACE,
        value TEXT NOT NULL ON CONFLICT FAIL);
    ALTER TABLE TempTable RENAME TO DoNotRead;
    SELECT name FROM temp.sqlite_master;
  