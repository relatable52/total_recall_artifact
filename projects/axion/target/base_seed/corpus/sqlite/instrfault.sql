
    CREATE TABLE t1(n, h);
    INSERT INTO t1 VALUES($::NEEDLE, $::HAYSTACK);
  
    CREATE TABLE h1(a, b);
    INSERT INTO h1 VALUES('abcdefg%200hijkl', randomblob(200));
    INSERT INTO h1 SELECT b, a FROM h1;
  