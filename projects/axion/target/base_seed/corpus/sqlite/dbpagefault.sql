
  CREATE TABLE x1(z, b);
  CREATE TRIGGER BEFORE INSERT ON x1 BEGIN
    DELETE FROM sqlite_dbpage WHERE pgno=100;
    UPDATE sqlite_dbpage SET data=null WHERE pgno=100;
  END;

  PRAGMA trusted_schema = 1;
