
  CREATE TABLE t1(x JSON);
  INSERT INTO t1(x) VALUES('{a:{b:{c:"hello",
  SELECT json_error_position('{a:null,{"h":[1,[1,2,3]],"j":"abc"