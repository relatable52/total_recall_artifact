
  PRAGMA recursive_triggers = ON;
  CREATE TABLE t12(a, b);
  INSERT INTO t12 VALUES(1, 2);
  CREATE TRIGGER tr12 AFTER UPDATE ON t12 BEGIN
    UPDATE t12 SET a=new.a+1, b=new.b+1;
  END;
1 2 31 2 3
  PRAGMA recursive_triggers = 1;
  CREATE TABLE node(
      id int not null primary key, 
      pid int not null default 0 references node,
      key varchar not null, 
      path varchar default '',
      unique(pid, key)
      );
  CREATE TRIGGER node_delete_referencing AFTER DELETE ON "node"
    BEGIN
    DELETE FROM "node" WHERE pid = old."id";
  END;

  INSERT INTO node(id, pid, key) VALUES(9, 0, 'test');
  INSERT INTO node(id, pid, key) VALUES(90, 9, 'test1');
  INSERT INTO node(id, pid, key) VALUES(900, 90, 'test2');
  DELETE FROM node WHERE id=9;
  SELECT * FROM node;

  CREATE TABLE   x1  (x);

  CREATE TABLE   x2  (a, b);
  CREATE TABLE '"x2"'(a, b);

  INSERT INTO x2 VALUES(1, 2);
  INSERT INTO x2 VALUES(3, 4);
  INSERT INTO '"x2"' SELECT * FROM x2;

  CREATE TRIGGER x1ai AFTER INSERT ON x1 BEGIN
    INSERT INTO """x2""" VALUES('x', 'y');
    DELETE FROM """x2""" WHERE a=1;
    UPDATE """x2""" SET b = 11 WHERE a = 3;
  END;

  INSERT INTO x1 VALUES('go!');
1 2 3 43 11 x y
  CREATE TABLE xyz(x INTEGER PRIMARY KEY, y, z);
  CREATE TRIGGER xyz_tr BEFORE INSERT ON xyz BEGIN
    SELECT new.x;
  END;
