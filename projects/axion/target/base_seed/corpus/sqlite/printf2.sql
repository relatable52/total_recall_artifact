
  SELECT quote(format()), quote(format(NULL,1,2,3));

  SELECT printf('hello');

  SELECT format('%d,%d,%d',55,-11,3421);

  SELECT printf('%d,%d,%d',55,'-11',3421);

  SELECT format('%d,%d,%d,%d',55,'-11',3421);

  SELECT printf('%.2f',3.141592653);

  SELECT format('%.*f',2,3.141592653);

  SELECT printf('%*.*f',5,2,3.141592653);

  SELECT format('%d',314159.2653);

  SELECT printf('%lld',314159.2653);

  SELECT format('%lld%n',314159.2653,'hi');

  SELECT printf('%n',0);

  SELECT format('%.*z',5,'abcdefghijklmnop');

  SELECT printf('%c','abcdefghijklmnop');

  CREATE TABLE t1(a,b,c);
  INSERT INTO t1 VALUES(1,2,3);
  INSERT INTO t1 VALUES(-1,-2,-3);
  INSERT INTO t1 VALUES('abc','def','ghi');
  INSERT INTO t1 VALUES(1.5,2.25,3.125);
  SELECT printf('(%s)-%n-(%s)',a,b,c) FROM t1 ORDER BY rowid;

  SELECT printf('%s=(%p)',a,a) FROM t1 ORDER BY a;

  SELECT printf('%s=(%d/%g/%s)',a) FROM t1 ORDER BY a;

  SELECT printf('|%110.100c|','*');

  SELECT printf('|%-110.100c|','*');

  SELECT printf('|%9.8c|%-9.8c|','*','*');

  SELECT printf('|%8.8c|%-8.8c|','*','*');

  SELECT printf('|%7.8c|%-7.8c|','*','*');

  SELECT printf('|%,d|%,d|',0,-1);

  SELECT printf('|%,d|%,d|',12,-12);

  SELECT printf('|%,d|%,d|',123,-123);

  SELECT printf('|%,d|%,d|',1234,-1234);

  SELECT printf('|%,d|%,d|',12345,-12345);

  SELECT printf('|%,d|%,d|',123456,-123456);

  SELECT printf('|%,d|%,d|',1234567,-1234567);

  SELECT printf('|%,d|%,d|',12345678,-12345678);

  SELECT printf('|%,d|%,d|',123456789,-123456789);

  SELECT printf('|%,d|%,d|',1234567890,-1234567890);

  SELECT printf('(%8c)',char(11106));

  SELECT printf('(%-8c)',char(11106));

  SELECT printf('(%5.3c)',char(1492));

  SELECT printf('(%-5.3c)',char(1492));

  SELECT printf('(%3.3c)',char(1492));

  SELECT printf('(%-3.3c)',char(1492));

  SELECT printf('(%2c)',char(1513));

  SELECT printf('(%-2c)',char(1513));

  SELECT printf('(%!.3s)','הנה מה־טוב ומה־נעים שבת אחים גם־יחד');

  SELECT printf('(%.6s)','הנה מה־טוב ומה־נעים שבת אחים גם־יחד');

  SELECT printf('(%!5.3s)','הנה מה־טוב ומה־נעים שבת אחים גם־יחד');

  SELECT printf('(%8.6s)','הנה מה־טוב ומה־נעים שבת אחים גם־יחד');

  SELECT printf('(%!-5.3s)','הנה מה־טוב ומה־נעים שבת אחים גם־יחד');

  SELECT printf('(%-8.6s)','הנה מה־טוב ומה־נעים שבת אחים גם־יחד');

  SELECT printf('(%!.3Q)','הנה מה־טוב ומה־נעים שבת אחים גם־יחד');

  SELECT printf('(%.6Q)','הנה מה־טוב ומה־נעים שבת אחים גם־יחד');

  SELECT printf('(%!7.3Q)','הנה מה־טוב ומה־נעים שבת אחים גם־יחד');

  SELECT printf('(%10.6Q)','הנה מה־טוב ומה־נעים שבת אחים גם־יחד');
