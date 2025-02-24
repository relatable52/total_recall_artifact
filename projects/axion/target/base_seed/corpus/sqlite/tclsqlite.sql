
  CREATE TABLE t6(x);
  INSERT INTO t6 VALUES(1);

  CREATE TABLE t1(a,b);
  INSERT INTO t1 VALUES(1,2),(2,NULL),(3,'xyz');

  SELECT quote( add_i(2, 3) );
  SELECT quote( add_r(2, 3) ); 
  SELECT quote( add_t(2, 3) ); 
  SELECT quote( add_b(2, 3) ); 
  SELECT quote( add_a(2, 3) ); 

  SELECT quote( add_i(2.2, 3.3) );
  SELECT quote( add_r(2.2, 3.3) ); 
  SELECT quote( add_t(2.2, 3.3) ); 
  SELECT quote( add_b(2.2, 3.3) ); 
  SELECT quote( add_a(2.2, 3.3) ); 

  SELECT quote( ret_i(2.5) );
  SELECT quote( ret_r(2.5) ); 
  SELECT quote( ret_t(2.5) ); 
  SELECT quote( ret_b(2.5) ); 
  SELECT quote( ret_a(2.5) ); 

  SELECT quote( ret_i('2.5') );
  SELECT quote( ret_r('2.5') ); 
  SELECT quote( ret_t('2.5') ); 
  SELECT quote( ret_b('2.5') ); 
  SELECT quote( ret_a('2.5') ); 

  SELECT quote( ret_i('abc') );
  SELECT quote( ret_r('abc') ); 
  SELECT quote( ret_t('abc') ); 
  SELECT quote( ret_b('abc') ); 
  SELECT quote( ret_a('abc') ); 

  SELECT quote( ret_i(X'616263') );
  SELECT quote( ret_r(X'616263') ); 
  SELECT quote( ret_t(X'616263') ); 
  SELECT quote( ret_b(X'616263') ); 
  SELECT quote( ret_a(X'616263') ); 

  SELECT typeof($mno);
