
  CREATE TABLE t1(a,b,c,d,e, PRIMARY KEY(a,b,c,d,e));
  SELECT * FROM t1 WHERE a=? AND b=? AND c=? AND d=? AND e=?;

  CREATE TABLE "a" (
      "b" integer NOT NULL,
      "c" integer NOT NULL,
      PRIMARY KEY ("b", "c")
      );

  CREATE TABLE "d" (
      "e" integer NOT NULL,
      "g" integer NOT NULL,
      "f" integer NOT NULL,
      "h" integer NOT NULL,
      "i" character(10) NOT NULL,
      "j" int,
      PRIMARY KEY ("e", "g", "f", "h")
      );

  CREATE TABLE "d_to_a" (
      "f_e" integer NOT NULL,
      "f_g" integer NOT NULL,
      "f_f" integer NOT NULL,
      "f_h" integer NOT NULL,
      "t_b" integer NOT NULL,
      "t_c" integer NOT NULL,
      "r" character NOT NULL,
      "s" integer,
      PRIMARY KEY ("f_e", "f_g", "f_f", "f_h", "t_b", "t_c")
      );

  INSERT INTO d (g, e, h, f, j, i) VALUES ( 1, 1, 1, 1, 1, 1 );
  INSERT INTO a (b, c) VALUES ( 1, 1 );
  INSERT INTO d_to_a VALUES (1, 1, 1, 1, 1, 1, 1, 1);

  DELETE FROM d_to_a 
  WHERE f_g = 1 AND f_e = 1 AND f_h = 1 AND f_f = 1 AND t_b = 1 AND t_c = 1;

  SELECT * FROM d_to_a;
 CREATE TABLE t1(a,b,c,d,e, PRIMARY KEY(a,b,c,d,e))  CREATE TABLE t2(x) 