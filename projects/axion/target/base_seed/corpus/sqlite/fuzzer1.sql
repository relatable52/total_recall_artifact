
  CREATE TABLE f1_rules(ruleset DEFAULT 0, cfrom, cto, cost);
  INSERT INTO f1_rules(cfrom, cto, cost) VALUES('e','a',1);
  INSERT INTO f1_rules(cfrom, cto, cost) VALUES('a','e',10);
  INSERT INTO f1_rules(cfrom, cto, cost) VALUES('e','o',100);

  CREATE VIRTUAL TABLE f1 USING fuzzer(f1_rules);

    SELECT word, distance FROM f1 WHERE word MATCH 'abcde'

  INSERT INTO f1_rules(ruleset, cfrom, cto, cost) VALUES(1,'b','x',1);
  INSERT INTO f1_rules(ruleset, cfrom, cto, cost) VALUES(1,'d','y',10);
  INSERT INTO f1_rules(ruleset, cfrom, cto, cost) VALUES(1,'y','z',100);

  DROP TABLE f1;
  CREATE VIRTUAL TABLE f1 USING fuzzer(f1_rules);

  SELECT word, distance FROM f1 WHERE word MATCH 'abcde'

  SELECT word, distance FROM f1 WHERE word MATCH 'abcde' AND ruleset=0

  SELECT word, distance FROM f1 WHERE word MATCH 'abcde' AND ruleset=1

  ATTACH 'test.db2' AS aux;
  CREATE TABLE aux.f3_rules(ruleset, cfrom, cto, cost);
  INSERT INTO f3_rules(ruleset, cfrom, cto, cost) VALUES(0, 'x','y', 10);
  INSERT INTO f3_rules(ruleset, cfrom, cto, cost) VALUES(1, 'a','b', 10);
  CREATE VIRTUAL TABLE aux.f3 USING fuzzer(f3_rules);
  SELECT word FROM f3 WHERE word MATCH 'ax'

  CREATE TABLE "fuzzer [x] rules table"(a, b, c, d);
  INSERT INTO "fuzzer [x] rules table" VALUES(0, NULL, 'abc', 10);
  CREATE VIRTUAL TABLE x USING fuzzer('fuzzer [x] rules table');
  SELECT word, distance FROM x WHERE word MATCH '123' LIMIT 4;

  DELETE FROM "fuzzer [x] rules table";
  INSERT INTO "fuzzer [x] rules table" VALUES(0, 'x', NULL, 20);
  INSERT INTO "fuzzer [x] rules table" VALUES(0, NULL, NULL, 10);
  INSERT INTO "fuzzer [x] rules table" VALUES(0, 'x', 'x', 10);

  DROP TABLE x;
  CREATE VIRTUAL TABLE x USING fuzzer('fuzzer [x] rules table');

  SELECT word, distance FROM x WHERE word MATCH 'xx';

  DROP TABLE IF EXISTS x;
  INSERT INTO "fuzzer [x] rules table" VALUES(0, 'c', 'd', 1001);

  DROP TABLE IF EXISTS x;
  DELETE FROM "fuzzer [x] rules table";
  INSERT INTO "fuzzer [x] rules table" VALUES(0, 'd', 'c', 0);

  DROP TABLE IF EXISTS x;
  DELETE FROM "fuzzer [x] rules table";
  INSERT INTO "fuzzer [x] rules table" VALUES(0, 'd', 'c', -20);

  DROP TABLE IF EXISTS x;
  DELETE FROM "fuzzer [x] rules table";
  INSERT INTO "fuzzer [x] rules table" VALUES(
    0, 'x', '12345678901234567890123456789012345678901234567890', 2
  );
  CREATE VIRTUAL TABLE x USING fuzzer('fuzzer [x] rules table');
  SELECT word FROM x WHERE word MATCH 'x';

  DROP TABLE IF EXISTS x;
  DELETE FROM "fuzzer [x] rules table";
  INSERT INTO "fuzzer [x] rules table" VALUES(
    0, 'x', '123456789012345678901234567890123456789012345678901', 2
  );

  DROP TABLE IF EXISTS x;
  DELETE FROM "fuzzer [x] rules table";
  INSERT INTO "fuzzer [x] rules table" VALUES(
    0, '123456789012345678901234567890123456789012345678901', 'x', 2
  );

  DROP TABLE IF EXISTS x;
  DELETE FROM "fuzzer [x] rules table";
  INSERT INTO "fuzzer [x] rules table" VALUES(-1, 'x', 'y', 2);

  DROP TABLE IF EXISTS x;
  DELETE FROM "fuzzer [x] rules table";
  INSERT INTO "fuzzer [x] rules table" VALUES((1<<32)+100, 'x', 'y', 2);

  CREATE TABLE [x2 "rules] (a, b, c, d);
  INSERT INTO [x2 "rules] VALUES(0, 'a', 'b', 5);
 DROP TABLE IF EXISTS x2  
    SELECT word FROM x2 WHERE word MATCH 'aaa' 
  
  CREATE TABLE x3_rules(rule_set, cFrom, cTo, cost);
  INSERT INTO x3_rules VALUES(2, 'a', 'x', 10);
  INSERT INTO x3_rules VALUES(2, 'a', 'y',  9);
  INSERT INTO x3_rules VALUES(2, 'a', 'z',  8);
  CREATE VIRTUAL TABLE x3 USING fuzzer(x3_rules);

  SELECT cFrom, cTo, word 
    FROM x3_rules CROSS JOIN x3 
    WHERE word MATCH 'a' AND cost=distance AND ruleset=2
    ORDER BY +cTo;

  SELECT cFrom, cTo, word 
    FROM x3 CROSS JOIN x3_rules
    WHERE word MATCH 'a' AND cost=distance AND ruleset=2
    ORDER BY +cTo DESC

  SELECT cFrom, cTo, word 
    FROM x3_rules, x3 
    WHERE word MATCH 'a' AND cost=distance AND ruleset=2
    ORDER BY +cTo DESC;

  SELECT cFrom, cTo, word 
    FROM x3, x3_rules
    WHERE word MATCH 'a' AND cost=distance AND ruleset=2
    ORDER BY +cTo DESC;

  CREATE INDEX i1 ON x3_rules(cost);
  SELECT cFrom, cTo, word 
    FROM x3_rules, x3 
    WHERE word MATCH 'a' AND cost=distance AND ruleset=2
    ORDER BY +cTo DESC;

  SELECT word FROM x3_rules, x3 WHERE word MATCH x3_rules.cFrom AND ruleset=2

  SELECT word FROM x3_rules, x3 
  WHERE word MATCH x3_rules.cFrom 
    AND ruleset=2 
    AND x3_rules.cost=8;

  CREATE TABLE t1(a, b);
  CREATE INDEX i2 ON t1(b);
  SELECT word, distance FROM x3, t1 
    WHERE x3.word MATCH t1.a AND ruleset=2 AND distance=t1.b;

  INSERT INTO x3_rules VALUES(1, 'a', 't',  5);
  INSERT INTO x3_rules VALUES(1, 'a', 'u',  4);
  INSERT INTO x3_rules VALUES(1, 'a', 'v',  3);
  DROP TABLE x3;
  CREATE VIRTUAL TABLE x3 USING fuzzer(x3_rules);
  SELECT * FROM x3_rules;

  SELECT word FROM x3 WHERE ruleset=1 AND word MATCH 'a'

  SELECT word FROM x3 WHERE ruleset<=1 AND word MATCH 'a'

  SELECT word FROM x3 WHERE ruleset=1 AND word MATCH 'a' ORDER BY distance ASC;

  SELECT word FROM x3 WHERE ruleset=1 AND word MATCH 'a' ORDER BY distance DESC;

  SELECT word FROM x3 WHERE ruleset=1 AND word MATCH 'a' ORDER BY word ASC;

  SELECT word FROM x3 WHERE ruleset=1 AND word MATCH 'a' ORDER BY word DESC;

  CREATE TABLE x4_rules(a, b, c, d);
  INSERT INTO x4_rules VALUES(0, 'a', 'b', 10);
  INSERT INTO x4_rules VALUES(0, 'a', 'c', 11);
  INSERT INTO x4_rules VALUES(0, 'bx', 'zz', 20);
  INSERT INTO x4_rules VALUES(0, 'cx', 'yy', 15);
  INSERT INTO x4_rules VALUES(0, 'zz', '!!', 50);
  CREATE VIRTUAL TABLE x4 USING fuzzer(x4_rules);

  SELECT word, distance FROM x4 WHERE word MATCH 'ax';

  CREATE TABLE x5_rules(a, b, c, d);
  CREATE VIRTUAL TABLE x5 USING fuzzer(x5_rules);

  SELECT word, distance FROM x5 WHERE word MATCH 
    'aaaaaaaaaXaaaaaaaaaXaaaaaaaaaXaaaaaaaaaXaaaaaaaaa' || 
    'aaaaaaaaaXaaaaaaaaaXaaaaaaaaaXaaaaaaaaaXaaaaaaaaa' || 
    'aaaaaaaaaXaaaaaaaaaXaaaaaaaaaXaaaaaaaaaXaaaaaaaaa'

  INSERT INTO x5_rules VALUES(0, 'a', '0.1.2.3.4.5.6.7.8.9.a', 1);
  DROP TABLE x5;
  CREATE VIRTUAL TABLE x5 USING fuzzer(x5_rules);
  SELECT length(word) FROM x5 WHERE word MATCH 'a' LIMIT 50;
