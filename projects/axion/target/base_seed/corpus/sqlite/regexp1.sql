
  SELECT regexpi('abc','ABC');

  SELECT regexpi('ABC','ABC');

  SELECT regexpi('ABC','abc');

  SELECT regexpi('ABC.','ABC');

  SELECT x FROM t1 WHERE y REGEXP 'by|in' ORDER BY x;

  SELECT x FROM t1 WHERE y REGEXP 'by|Christ' ORDER BY x;

  SELECT x FROM t1 WHERE regexp('by|christ',y) ORDER BY x;

  SELECT x FROM t1 WHERE regexpi('by|christ',y) ORDER BY x;

  SELECT x FROM t1 WHERE regexpi('BY|CHRIST',y) ORDER BY x;

  SELECT x FROM t1 WHERE y REGEXP 'shal+ al+' ORDER BY x;

  SELECT x FROM t1 WHERE y REGEXP 'shall x*y*z*all' ORDER BY x;

  SELECT x FROM t1 WHERE regexp('shall x*y*z*all',y) ORDER BY x;

  SELECT x FROM t1 WHERE regexp('SHALL x*y*z*all',y) ORDER BY x;

  SELECT x FROM t1 WHERE regexpi('SHALL x*y*z*all',y) ORDER BY x;

  SELECT x FROM t1 WHERE y REGEXP 'shallx?y? ?z?all' ORDER BY x;

  SELECT x FROM t1 WHERE y REGEXP 'r{2
  SELECT x FROM t1 WHERE y REGEXP 'r{3
  SELECT x FROM t1 WHERE y REGEXP 'r{1
  SELECT x FROM t1 WHERE y REGEXP 'ur{2,10
  SELECT x FROM t1 WHERE y REGEXP '[Aa]dam' ORDER BY x;

  SELECT x FROM t1 WHERE y REGEXP '[^Aa]dam' ORDER BY x;

  SELECT x FROM t1 WHERE y REGEXP '[^b-zB-Z]dam' ORDER BY x;

  SELECT x FROM t1 WHERE y REGEXP 'alive' ORDER BY x;

  SELECT x FROM t1 WHERE y REGEXP '^alive' ORDER BY x;

  SELECT x FROM t1 WHERE y REGEXP 'alive$' ORDER BY x;

  SELECT x FROM t1 WHERE y REGEXP 'alive.$' ORDER BY x;

  SELECT x FROM t1 WHERE y REGEXP 'alive\.$' ORDER BY x;

  SELECT x FROM t1 WHERE y REGEXP 'ma[nd]' ORDER BY x;

  SELECT x FROM t1 WHERE y REGEXP '\bma[nd]' ORDER BY x;

  SELECT x FROM t1 WHERE y REGEXP 'ma[nd]\b' ORDER BY x;

  SELECT x FROM t1 WHERE y REGEXP 'ma\w' ORDER BY x;

  SELECT x FROM t1 WHERE y REGEXP 'ma\W' ORDER BY x;

  SELECT x FROM t1 WHERE y REGEXP '\sma\w' ORDER BY x;

  SELECT x FROM t1 WHERE y REGEXP '\Sma\w' ORDER BY x;

  SELECT x FROM t1 WHERE y REGEXP 'alive\S$' ORDER BY x;

  SELECT x FROM t1 WHERE y REGEXP
          '\b(unto|us|son|given|his|name|called|' ||
          'wonderful|councelor|mighty|god|everlasting|father|' ||
          'prince|peace|alive)\b';

  SELECT 'aaaabbbbcccc' REGEXP 'ab*c', 
         'aaaacccc' REGEXP 'ab*c';

  SELECT 'aaaabbbbcccc' REGEXP 'ab+c',
         'aaaacccc' REGEXP 'ab+c';

  SELECT 'aaaabbbbcccc' REGEXP 'ab?c',
         'aaaacccc' REGEXP 'ab?c';

  SELECT 'aaaabbbbbbcccc' REGEXP 'ab{3,5
  SELECT 'aaaabbbbcccc' REGEXP 'a(a|b|c)+c',
         'aaaabbbbcccc' REGEXP '^a(a|b|c){11
  SELECT 'aaaabbbbcccc' REGEXP '^a(a|bb|c)+c$',
         'aaaabbbbcccc' REGEXP '^a(a|bbb|c)+c$',
         'aaaabbbbcccc' REGEXP '^a(a|bbbb|c)+c$'

  SELECT 'aaaabbbbcccc' REGEXP '^a([ac]+|bb){3
  SELECT 'abc*def+ghi.jkl[mno]pqr' REGEXP 'c.d',
         'abc*def+ghi.jkl[mno]pqr' REGEXP 'c\*d',
         'abc*def+ghi.jkl[mno]pqr' REGEXP 'f\+g',
         'abc*def+ghi.jkl[mno]pqr' REGEXP 'i\.j',
         'abc*def+ghi.jkl[mno]pqr' REGEXP 'l\[mno\]p'

  SELECT 'abc\def' REGEXP '^abc\\def',
         'abc(def' REGEXP '^abc\(def',
         'abc)def' REGEXP '^abc\)def',
         'abc*def' REGEXP '^abc\*def',
         'abc.def' REGEXP '^abc\.def',
         'abc+def' REGEXP '^abc\+def',
         'abc?def' REGEXP '^abc\?def',
         'abc[def' REGEXP '^abc\[def',
         'abc$def' REGEXP '^abc\$',
         '^def'    REGEXP '\^def',
         'abc{4
  SELECT 'abc$¢€xyz' REGEXP '^abc\u0024\u00a2\u20acxyz$',
         'abc$¢€xyz' REGEXP '^abc\u0024\u00A2\u20ACxyz$',
         'abc$¢€xyz' REGEXP '^abc\x24\xa2\u20acxyz$'

  SELECT 'abc$¢€xyz' REGEXP '^abc[\u0024][\u00a2][\u20ac]xyz$',
         'abc$¢€xyz' REGEXP '^abc[\u0024\u00A2\u20AC]{3
  SELECT 'abc$¢€xyz' REGEXP '^abc[^\u0025-X][^ -\u007f][^\u20ab]xyz$'

  CREATE TABLE t1(id INTEGER PRIMARY KEY, a TEXT);
  INSERT INTO t1(id, a) VALUES(1, '日本語');
  SELECT a, hex(a), length(a) FROM t1;

  SELECT * FROM t1 WHERE a='日本語';

  SELECT * FROM t1 WHERE a LIKE '日本語';

  SELECT * FROM t1 wHERE a REGEXP '日本語';
110111011101101101111111011
  SELECT char(0x61,0x7ff,0x62) REGEXP char(0x7ff);

  SELECT char(0x61,0x800,0x62) REGEXP char(0x800);

  SELECT char(0x61,0xabc,0x62) REGEXP char(0xabc);

  SELECT char(0x61,0xfff,0x62) REGEXP char(0xfff);

  SELECT char(0x61,0x1000,0x62) REGEXP char(0x1000);

  SELECT char(0x61,0xffff,0x62) REGEXP char(0xffff);

  SELECT char(0x61,0x10000,0x62) REGEXP char(0x10000);

  SELECT char(0x61,0x10ffff,0x62) REGEXP char(0x10ffff);
