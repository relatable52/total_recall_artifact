
  CREATE TABLE t1(a, b, c);

    SELECT sqlite_rename_quotefix('main', $before)
  
  CREATE TABLE x1(
      one, two, three, PRIMARY KEY(one), 
      CHECK (three!="xyz"), CHECK (two!="one")
  ) WITHOUT ROWID;
  CREATE INDEX x1i ON x1(one+"two"+"four") WHERE "five";
  CREATE TEMP TRIGGER AFTER INSERT ON x1 BEGIN
    UPDATE x1 SET two=new.three || "new" WHERE one=new.one||"";
  END;

  ALTER TABLE x1 RENAME two TO 'four';
  SELECT sql FROM sqlite_schema;
  SELECT sql FROM sqlite_temp_schema;
