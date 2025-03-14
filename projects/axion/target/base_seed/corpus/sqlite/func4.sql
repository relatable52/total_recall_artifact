
  SELECT tointeger(NULL);

  SELECT tointeger('');

  SELECT tointeger('   ');

  SELECT tointeger('1234');

  SELECT tointeger('   1234');

  SELECT tointeger('bad');

  SELECT tointeger('0xBAD');

  SELECT tointeger('123BAD');

  SELECT tointeger('0x123BAD');

  SELECT tointeger('123NO');

  SELECT tointeger('0x123NO');

  SELECT tointeger('-0x1');

  SELECT tointeger('-0x0');

  SELECT tointeger('0x0');

  SELECT tointeger('0x1');

  SELECT tointeger(-1);

  SELECT tointeger(-0);

  SELECT tointeger(0);

  SELECT tointeger(1);

  SELECT tointeger(-1.79769313486232e308 - 1);

  SELECT tointeger(-1.79769313486232e308);

  SELECT tointeger(-1.79769313486232e308 + 1);

  SELECT tointeger(-9223372036854775808 - 1);

  SELECT tointeger(-9223372036854775808);

  SELECT tointeger(-9223372036854775808 + 1);

  SELECT tointeger(-9223372036854775807 - 1);

  SELECT tointeger(-9223372036854775807);

  SELECT tointeger(-9223372036854775807 + 1);

  SELECT tointeger(-2147483648 - 1);

  SELECT tointeger(-2147483648);

  SELECT tointeger(-2147483648 + 1);

  SELECT tointeger(2147483647 - 1);

  SELECT tointeger(2147483647);

  SELECT tointeger(2147483647 + 1);

  SELECT tointeger(9223372036854775807 - 1);

  SELECT tointeger(9223372036854775807);

    SELECT tointeger(9223372036854775807 + 1);
  
  SELECT tointeger(1.79769313486232e308 - 1);

  SELECT tointeger(1.79769313486232e308);

  SELECT tointeger(1.79769313486232e308 + 1);

  SELECT tointeger(4503599627370496 - 1);

  SELECT tointeger(4503599627370496);

  SELECT tointeger(4503599627370496 + 1);

  SELECT tointeger(9007199254740992 - 1);

  SELECT tointeger(9007199254740992);

  SELECT tointeger(9007199254740992 + 1);

  SELECT tointeger(9223372036854775807 - 1);

  SELECT tointeger(9223372036854775807);

    SELECT tointeger(9223372036854775807 + 1);
  
    SELECT tointeger(9223372036854775808 - 1);
  
    SELECT tointeger(9223372036854775808);
  
    SELECT tointeger(9223372036854775808 + 1);
  
  SELECT tointeger(18446744073709551616 - 1);

  SELECT tointeger(18446744073709551616);

  SELECT tointeger(18446744073709551616 + 1);

    SELECT toreal(NULL);
  
    SELECT toreal('');
  
    SELECT toreal('   ');
  
    SELECT toreal('1234');
  
    SELECT toreal('   1234');
  
    SELECT toreal('bad');
  
    SELECT toreal('0xBAD');
  
    SELECT toreal('123BAD');
  
    SELECT toreal('0x123BAD');
  
    SELECT toreal('123NO');
  
    SELECT toreal('0x123NO');
  
    SELECT toreal('-0x1');
  
    SELECT toreal('-0x0');
  
    SELECT toreal('0x0');
  
    SELECT toreal('0x1');
  
    SELECT toreal(-1);
  
    SELECT toreal(-0);
  
    SELECT toreal(0);
  
    SELECT toreal(1);
  
    SELECT toreal(-1.79769313486232e308 - 1);
  
    SELECT toreal(-1.79769313486232e308);
  
    SELECT toreal(-1.79769313486232e308 + 1);
  
    SELECT toreal(-9223372036854775808 - 1);
  
    SELECT toreal(-9223372036854775808);
  
      SELECT toreal(-9223372036854775808 + 1);
    
    SELECT toreal(-9223372036854775807 - 1);
  
      SELECT toreal(-9223372036854775807);
    
      SELECT toreal(-9223372036854775807 + 1);
    
    SELECT toreal(-2147483648 - 1);
  
    SELECT toreal(-2147483648);
  
    SELECT toreal(-2147483648 + 1);
  
    SELECT toreal(2147483647 - 1);
  
    SELECT toreal(2147483647);
  
    SELECT toreal(2147483647 + 1);
  
      SELECT toreal(9223372036854775807 - 1);
    
        SELECT toreal(9223372036854775807);
      
    SELECT toreal(9223372036854775807 + 1);
  
    SELECT toreal(1.79769313486232e308 - 1);
  
    SELECT toreal(1.79769313486232e308);
  
    SELECT toreal(1.79769313486232e308 + 1);
  
    SELECT toreal(4503599627370496 - 1);
  
    SELECT toreal(4503599627370496);
  
    SELECT toreal(4503599627370496 + 1);
  
    SELECT toreal(9007199254740992 - 1);
  
    SELECT toreal(9007199254740992);
  
      SELECT toreal(9007199254740992 + 1);
    
    SELECT toreal(9007199254740992 + 2);
  
    SELECT toreal(tointeger(9223372036854775808) - 1);
  
      SELECT toreal(tointeger(9223372036854775808));
    
      SELECT toreal(tointeger(9223372036854775808) + 1);
    
    SELECT toreal(tointeger(18446744073709551616) - 1);
  
    SELECT toreal(tointeger(18446744073709551616));
  
    SELECT toreal(tointeger(18446744073709551616) + 1);
  
    CREATE TABLE t1(
      x INTEGER CHECK(tointeger(x) IS NOT NULL)
    );
  
    SELECT x FROM t1 WHERE x>0 ORDER BY x;
  
      CREATE TABLE t2(
        x REAL CHECK(toreal(x) IS NOT NULL)
      );
    
      SELECT x FROM t2 ORDER BY x;
    
    SELECT tointeger(toreal('1234'));
  
    SELECT tointeger(toreal(-1));
  
    SELECT tointeger(toreal(-0));
  
    SELECT tointeger(toreal(0));
  
    SELECT tointeger(toreal(1));
  
    SELECT tointeger(toreal(-9223372036854775808 - 1));
  
    SELECT tointeger(toreal(-9223372036854775808));
  
      SELECT tointeger(toreal(-9223372036854775808 + 1));
    
    SELECT tointeger(toreal(-2147483648 - 1));
  
    SELECT tointeger(toreal(-2147483648));
  
    SELECT tointeger(toreal(-2147483648 + 1));
  
    SELECT tointeger(toreal(2147483647 - 1));
  
    SELECT tointeger(toreal(2147483647));
  
    SELECT tointeger(toreal(2147483647 + 1));
  
    SELECT tointeger(toreal(9223372036854775807 - 1));
  
      SELECT tointeger(toreal(9223372036854775807));
    
      SELECT tointeger(toreal(9223372036854775807 + 1));
    
    SELECT tointeger(toreal(4503599627370496 - 1));
  
    SELECT tointeger(toreal(4503599627370496));
  
    SELECT tointeger(toreal(4503599627370496 + 1));
  
    SELECT tointeger(toreal(9007199254740992 - 1));
  
    SELECT tointeger(toreal(9007199254740992));
  
      SELECT tointeger(toreal(9007199254740992 + 1));
    
    SELECT tointeger(toreal(9007199254740992 + 2));
  
      SELECT tointeger(toreal(9223372036854775808 - 1));
    
      SELECT tointeger(toreal(9223372036854775808));
    
      SELECT tointeger(toreal(9223372036854775808 + 1));
    
    SELECT tointeger(toreal(18446744073709551616 - 1));
  
    SELECT tointeger(toreal(18446744073709551616));
  
    SELECT tointeger(toreal(18446744073709551616 + 1));
  
    SELECT tointeger(x'[string repeat 01 $i]');
  
      SELECT toreal(x'[string repeat 01 $i]');
    
  SELECT tointeger(x'0102030405060708');

  SELECT tointeger(x'0807060504030201');

    SELECT toreal(x'ffefffffffffffff');
  
    SELECT toreal(x'8010000000000000');
  
    SELECT toreal(x'c000000000000000');
  
    SELECT toreal(x'bff0000000000000');
  
    SELECT toreal(x'8000000000000000');
  
    SELECT toreal(x'0000000000000000');
  
    SELECT toreal(x'3ff0000000000000');
  
    SELECT toreal(x'4000000000000000');
  
    SELECT toreal(x'0010000000000000');
  
    SELECT toreal(x'7fefffffffffffff');
  
    SELECT toreal(x'8000000000000001');
  
    SELECT toreal(x'800fffffffffffff');
  
    SELECT toreal(x'0000000000000001');
  
    SELECT toreal(x'000fffffffffffff');
  
    SELECT toreal(x'fff0000000000000');
  
    SELECT toreal(x'7ff0000000000000');
  
    SELECT toreal(x'fff8000000000000');
  
    SELECT toreal(x'fff0000000000001');
  
    SELECT toreal(x'fff7ffffffffffff');
  
    SELECT toreal(x'7ff0000000000001');
  
    SELECT toreal(x'7ff7ffffffffffff');
  
    SELECT toreal(x'fff8000000000001');
  
    SELECT toreal(x'ffffffffffffffff');
  
    SELECT toreal(x'7ff8000000000000');
  
    SELECT toreal(x'7fffffffffffffff');
  