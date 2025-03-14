
  CREATE TABLE t1(id int, value text);
  CREATE TABLE t2(ctx int, id int, value text); 

  INSERT INTO t1 VALUES(1,'try');
  INSERT INTO t2 VALUES(1,1,'good');
  INSERT INTO t2 VALUES(2,2,'evil');

  CREATE VIRTUAL TABLE vt1 USING tcl(vtab_command t1);
  CREATE VIRTUAL TABLE vt2 USING tcl(vtab_command t2);

  select * from t2 left join t1 on t1.id=t2.ctx where t1.value is null;

  select * from vt2 left join vt1 on vt1.id=vt2.ctx where vt1.value is null; 

  select * from vt2 left join vt1 on vt1.id=vt2.ctx where vt1.value is $xxx; 

  select * from t2 left join vt1 on vt1.id=t2.ctx where vt1.value = 3
