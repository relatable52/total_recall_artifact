
  CREATE VIRTUAL TABLE t1 USING fts3;
  INSERT INTO t1 VALUES('hello');
 
  DROP TABLE t1;

  CREATE VIRTUAL TABLE t1 USING fts3;
  BEGIN;
    INSERT INTO t1 VALUES('hello');
    INSERT INTO t1 VALUES('hello');
    INSERT INTO t1 VALUES('hello');
    INSERT INTO t1 VALUES('hello');
    INSERT INTO t1 VALUES('hello');
  COMMIT;

  DROP TABLE t1;
  CREATE VIRTUAL TABLE t1 USING fts3;
  BEGIN;
    INSERT INTO t1 VALUES('hello');
    INSERT INTO t1 VALUES('world');
  COMMIT;

  DROP TABLE t1;
  CREATE VIRTUAL TABLE t1 USING fts3;
  INSERT INTO t1(t1) VALUES('nodesize=24');

  DROP TABLE t1;
  CREATE VIRTUAL TABLE t1 USING fts4;

  CREATE VIRTUAL TABLE f USING fts3(a);
  INSERT INTO f(f) VALUES('nodesize=24');
  BEGIN;
    INSERT INTO f VALUES('abcdefghijklmnopqrstuvwxyz0123456789');
    INSERT INTO f VALUES('abcdefghijklmnopqrstuvwxyz0123456789');
    INSERT INTO f VALUES('abcdefghijklmnopqrstuvwxyz0123456789');

    INSERT INTO f VALUES('abcdefghijklmnopqrstuvwxyz012345678X');
    INSERT INTO f VALUES('abcdefghijklmnopqrstuvwxyz012345678X');
    INSERT INTO f VALUES('abcdefghijklmnopqrstuvwxyz012345678X');
  COMMIT;
  BEGIN;
    INSERT INTO f VALUES('abcdefghijklmnopqrstuvwxyz0123456789');
    INSERT INTO f VALUES('abcdefghijklmnopqrstuvwxyz0123456789');
    INSERT INTO f VALUES('abcdefghijklmnopqrstuvwxyz0123456789');

    INSERT INTO f VALUES('abcdefghijklmnopqrstuvwxyz012345678X');
    INSERT INTO f VALUES('abcdefghijklmnopqrstuvwxyz012345678X');
    INSERT INTO f VALUES('abcdefghijklmnopqrstuvwxyz012345678X');
  COMMIT;

  SELECT count(*) FROM f_segments;

  UPDATE f_segments SET block = (
    SELECT block FROM f_segments WHERE blockid=1
  ) WHERE blockid=2
