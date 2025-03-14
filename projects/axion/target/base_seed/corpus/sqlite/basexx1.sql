
  SELECT base64(x'')||base85(x'');

  SELECT hex(x'01'||base64('')||base85('')||x'02');

  SELECT base64(x'000102030405');
  SELECT base64(x'0001020304');
  SELECT base64(x'00010203');

  SELECT hex(base64('AAECAwQF'));
  SELECT hex(base64('AAECAwQ='));
  SELECT hex(base64('AAECAw=='));

  SELECT hex(base64(' AAECAwQF '));
  SELECT hex(base64(' AAECAwQ'));
  SELECT hex(base64('AAECAw '));

  SELECT base85(x'000102030405');
  SELECT base85(x'0001020304');
  SELECT base85(x'00010203');

  SELECT hex(base85('##/2,#2/'));
  SELECT hex(base85('##/2,#*'));
  SELECT hex(base85('##/2,'));
  SELECT hex(base85(' ##/2,#2/ '));
  SELECT hex(base85(' ##/2,#*'));
  SELECT hex(base85('##/2, '));

  CREATE TEMP TABLE rb( len int, b blob ) STRICT;
  INSERT INTO rb(len) VALUES (1),(2),(3),(4),(5),(150),(151),(152),(153),(1054);
  UPDATE rb SET b = randomblob(len);
  SELECT len, base64(base64(b))=b, base85(base85(b))=b
  FROM rb ORDER BY len;

  CREATE TEMP TABLE junk(j text, rank int);
  INSERT INTO junk VALUES ('',0),(' ',1),('~',2);
  SELECT len, base64(j.j||base64(b)||j.j)=b, base85(j.j||base85(b)||j.j)=b
  FROM rb r, junk j WHERE j.rank=(r.len+r.len/25)%3 ORDER BY len;

  SELECT is_base85(' '||base85(x'123456')||char(10)),
  is_base85('#$%&*+,-./0123456789:;<=>?@'
   ||'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
   ||'[\]^_`'
   ||'abcdefghijklmnopqrstuvwxyz'),
  is_base85('!'), is_base85('"'), is_base85(''''), is_base85('('),
  is_base85(')'), is_base85(char(123)), is_base85('|'), is_base85(char(125)),
  is_base85('~'), is_base85(char(127));

  SELECT is_base85(NULL) IS NULL;

  CREATE TABLE bs(b blob, num);
  INSERT INTO bs SELECT randomblob(4000 + n%3), n 
   FROM ( 
     WITH RECURSIVE seq(n) AS (
      VALUES(1) UNION ALL SELECT n+1
      FROM seq WHERE n<100
     ) SELECT n FROM seq);
  SELECT num FROM bs WHERE base64(base64(b))!=b;
  SELECT num FROM bs WHERE base85(base85(b))!=b;
