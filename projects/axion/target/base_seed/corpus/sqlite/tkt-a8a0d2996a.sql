
  CREATE TABLE t(x,y);
  INSERT INTO t VALUES('1','1');
  SELECT typeof(x), typeof(y) FROM t WHERE 1=x+0 AND y=='1';

  SELECT typeof(x), typeof(y) FROM t WHERE 1=x-0 AND y=='1';

  SELECT typeof(x), typeof(y) FROM t WHERE 1=x*1 AND y=='1';

  SELECT typeof(x), typeof(y) FROM t WHERE 1=x/1 AND y=='1';

  SELECT typeof(x), typeof(y) FROM t WHERE 1=x%4 AND y=='1';

  UPDATE t SET x='1xyzzy';
  SELECT typeof(x), typeof(y) FROM t WHERE 1=x+0 AND y=='1';

  SELECT typeof(x), typeof(y) FROM t WHERE 1=x-0 AND y=='1';

  SELECT typeof(x), typeof(y) FROM t WHERE 1=x*1 AND y=='1';

  SELECT typeof(x), typeof(y) FROM t WHERE 1=x/1 AND y=='1';

  SELECT typeof(x), typeof(y) FROM t WHERE 1=x%4 AND y=='1';

  UPDATE t SET x='1.0';
  SELECT typeof(x), typeof(y) FROM t WHERE 1=x+0 AND y=='1';

  SELECT typeof(x), typeof(y) FROM t WHERE 1=x-0 AND y=='1';

  SELECT typeof(x), typeof(y) FROM t WHERE 1=x*1 AND y=='1';

  SELECT typeof(x), typeof(y) FROM t WHERE 1=x/1 AND y=='1';

  SELECT typeof(x), typeof(y) FROM t WHERE 1=x%4 AND y=='1';

  SELECT 1+1.;

  SELECT '1.23e64'/'1.0000e+62';

  SELECT '100x'+'-2y';

  SELECT '100x'+'4.5y';

  SELECT '-9223372036854775807x'-'1x';

  SELECT '9223372036854775806x'+'1x';

  SELECT '1234x'/'10y', '1234x'/'10.y', '1234x'/'1e1y';
