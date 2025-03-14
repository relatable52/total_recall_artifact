
    INSERT INTO ft(a, b, c) VALUES('a', NULL, 'apple');
    INSERT INTO ft(a, b, c) VALUES('b', NULL, 'banana');
    INSERT INTO ft(a, b, c) VALUES('c', NULL, 'cherry');
    INSERT INTO ft(a, b, c) VALUES('d', NULL, 'damson plum');
  
    SELECT a, b, c FROM ft ORDER BY rowid;
  
    UPDATE ft SET b=o.c FROM ft AS o WHERE (ft.a == char(unicode(o.a)+1))
  
    SELECT a, b, c FROM ft ORDER BY rowid;
  
    create view changes(k, v) AS 
      VALUES( 'd', 'dewberry' ) UNION ALL
      VALUES( 'c', 'clementine' ) UNION ALL
      VALUES( 'b', 'blueberry' ) UNION ALL
      VALUES( 'a', 'apricot' ) 
    ;
  
    UPDATE ft SET c=v FROM changes WHERE a=k;
  
    SELECT rowid, a, b, c FROM ft ORDER BY rowid;
  