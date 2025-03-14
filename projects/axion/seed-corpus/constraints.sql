CREATE TABLE t1 (x INTEGER, y STRING, z BOOLEAN);
ALTER TABLE t1 ADD CONSTRAINT x_is_primary_key PRIMARY KEY (x);
ALTER TABLE t1 ADD CONSTRAINT y_is_unique UNIQUE (y);
ALTER TABLE t1 ADD CONSTRAINT z_is_not_null NOT NULL (z);
ALTER TABLE t1 DROP CONSTRAINT x_is_primary_key;
ALTER TABLE t1 DROP CONSTRAINT y_is_unique;
ALTER TABLE t1 DROP CONSTRAINT z_is_not_null;
DROP TABLE t1;

