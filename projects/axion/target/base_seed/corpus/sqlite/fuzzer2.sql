
  DROP TABLE IF EXISTS x1;
  DROP TABLE IF EXISTS x1_rules;
  CREATE TABLE x1_rules(ruleset, cFrom, cTo, cost);

  SELECT count(*) FROM x1_rules WHERE cTo!=cFrom;

  CREATE VIRTUAL TABLE x1 USING fuzzer(x1_rules);
  SELECT word FROM x1 WHERE word MATCH 'xx' LIMIT 10;

  SELECT cTo FROM x1_rules WHERE cFrom='xx' 
  ORDER BY cost asc, rowid asc LIMIT 9;
