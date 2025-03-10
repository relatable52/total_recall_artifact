
  CREATE TABLE cross(cross,full,inner,left,natural,outer,right);
  CREATE TABLE full(cross,full,inner,left,natural,outer,right);
  CREATE TABLE inner(cross,full,inner,left,natural,outer,right);
  CREATE TABLE left(cross,full,inner,left,natural,outer,right);
  CREATE TABLE natural(cross,full,inner,left,natural,outer,right);
  CREATE TABLE outer(cross,full,inner,left,natural,outer,right);
  CREATE TABLE right(cross,full,inner,left,natural,outer,right);
  INSERT INTO cross VALUES(1,2,3,4,5,6,7);
  INSERT INTO full VALUES(1,2,3,4,5,6,7);
  INSERT INTO inner VALUES(1,2,3,4,5,6,7);
  INSERT INTO left VALUES(1,2,3,4,5,6,7);
  INSERT INTO natural VALUES(1,2,3,4,5,6,7);
  INSERT INTO outer VALUES(1,2,3,4,5,6,7);
  INSERT INTO right VALUES(1,2,3,4,5,6,7);

  SELECT cross(cross,full,inner,left,natural,outer,right) FROM cross;

  SELECT full(cross,full,inner,left,natural,outer,right) FROM full;

  SELECT inner(cross,full,inner,left,natural,outer,right) FROM inner;

  SELECT left(cross,full,inner,left,natural,outer,right) FROM left;

  SELECT natural(cross,full,inner,left,natural,outer,right) FROM natural;

  SELECT outer(cross,full,inner,left,natural,outer,right) FROM outer;

  SELECT right(cross,full,inner,left,natural,outer,right) FROM right;
