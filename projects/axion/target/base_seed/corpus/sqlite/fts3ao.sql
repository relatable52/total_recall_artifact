
  SELECT snippet(t5, '[', ']') FROM t5 WHERE t5 MATCH 'the'

  CREATE VIRTUAL TABLE t7 USING FTS4;
  INSERT INTO t7 VALUES('coined by a German clinician');
  SELECT count(*) FROM sqlite_master WHERE name LIKE 't7%';
  SELECT count(*) FROM sqlite_master WHERE name LIKE 't8%';

  ALTER TABLE t7 RENAME TO t8;
  SELECT count(*) FROM sqlite_master WHERE name LIKE 't7%';
  SELECT count(*) FROM sqlite_master WHERE name LIKE 't8%';
