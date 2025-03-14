
  SELECT ceil(99.9), ceiling(-99.01), floor(17), floor(-17.99);

  SELECT quote(ceil(NULL)), ceil('-99.99');

  SELECT round(ln(5),2), log(100.0), log(100), log(2,'256');

  SELECT ln(-5), log(-5,100.0);

  SELECT abs(-17.4)

  SELECT ceil(42.2)

  SELECT ceil(-42.2)

  SELECT round(exp(1.0),7)

  SELECT floor(42.8)

  SELECT floor(-42.8)

  SELECT round(ln(2.0),7)

  SELECT log(100.0)

  SELECT log10(1000.0)

  SELECT format('%.30f', log10(100.0) );

  SELECT format('%.30f', ln(exp(2.0)) );

  SELECT log(2.0, 64.0)

   SELECT mod(9,4);

   SELECT round(pi(),7);

   SELECT power(9,3);

   SELECT round(radians(45.0),7);

   SELECT round(42.4);

   SELECT round(42.4382,2);

   SELECT sign(-8.4);

   SELECT round( sqrt(2), 7);

   SELECT trunc(42.8), trunc(-42.8);

   SELECT acos(1);

   SELECT degrees(acos(0.5));

   SELECT round( asin(1), 7);

   SELECT degrees( asin(0.5) );

   SELECT round( atan(1), 7);

   SELECT degrees( atan(1) );

   SELECT round( atan2(1,0), 7);

   SELECT degrees( atan2(1,0) );

   SELECT cos(0);

   SELECT cos( radians(60.0) );

   SELECT cos(0);

   SELECT round( sin(1), 7);

   SELECT sin( radians(30) );

   SELECT round( tan(1), 7);

   SELECT tan( radians(45) );

   SELECT round( sinh(1), 7);

   SELECT round( cosh(0), 7);

   SELECT round( tanh(1), 7);

   SELECT round( asinh(1), 7);

   SELECT round( acosh(1), 7);

   SELECT round( atanh(0.5), 7);

   SELECT acos(1);

   SELECT acos(1.0001);

   SELECT round( acos(0.0), 7);

   SELECT round( asin(0.2), 7);

   SELECT asin('foo');

   SELECT round( atan(2), 7), round( atan(-2), 7);

   SELECT round( atan2(-2,2), 7), round( atan2(pi(),0), 7);

   SELECT ceiling(1.23), ceiling(-1.23);

   SELECT cos(pi());

   SELECT degrees(pi()), degrees(pi()/2);

   SELECT round( exp(2), 7), round( exp(-2), 7), exp(0);

   SELECT floor(1.23), floor(-1.23);

   SELECT round(ln(2),7), quote(ln(-2));

#   SELECT round(log(2),7), log(-2);
#
   SELECT log(2,65536), log(10,100), quote(log(1,100)), quote(log(0,100));

   SELECT log2(65536), quote(log2(-100)), quote(log2(0));

   SELECT round(log10(2),7), log10(100), quote(log10(-100));

   SELECT mod(234,10), 253%7, mod(29,9), 29%9;

   SELECT mod(34.5,3);

   SELECT pow(2,2), pow(2,-2);

   SELECT power(2,2), power(2,-2);

   SELECT round(radians(90),7);

   SELECT sign(-32), sign(0), sign(234);

   SELECT sin(pi()) BETWEEN -1.0e-15 AND 1.0e-15;

   SELECT sqrt(4), round(sqrt(20),7), quote(sqrt(-16));

   SELECT tan(pi()) BETWEEN -1.0e-15 AND 1.0e-15;

   SELECT round(tan(pi()+1),7);
