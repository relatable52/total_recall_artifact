
  WITH c(x) AS (VALUES('{a:5,b:6
  SELECT '[7,null,{a:5,b:6
  SELECT '{ $123 : 789 
  SELECT '{ _123$xyz : 789 
  SELECT '{ MNO_123$xyz : 789 
  SELECT json('{ MNO_123$xyz : 789 
  SELECT '{ MNO_123æxyz : 789 
  WITH c(x) AS (VALUES('{"a":5, "b":6, 
  SELECT '{a:5, b:6 , 
  WITH c(x) AS (VALUES('[5, 6,]'))
  SELECT x->>1, json(x), json_valid(x), NOT json_error_position(x) FROM c;

  SELECT '[5, 6 , ]'->>1;

  WITH c(x) AS (VALUES('{"a": ''abcd''
  SELECT '{b: 123, ''a'': ''ab\''cd''
  WITH c(x) AS (VALUES('{a: "abc'||char(0x5c,0x0a)||'xyz"
  SELECT ('{a: "abc'||char(0x5c,0x0d)||'xyz"
  SELECT ('{a: "abc'||char(0x5c,0x0d,0x0a)||'xyz"
  SELECT ('{a: "abc'||char(0x5c,0x2028)||'xyz"
  SELECT ('{a: "abc'||char(0x5c,0x2029)||'xyz"
  SELECT ('{a: "abc'||char(0x5c,0x27)||'xyz"
  SELECT ('{a: "abc'||char(0x5c,0x22)||'xyz"
  SELECT ('{a: "abc'||char(0x5c,0x5c)||'xyz"
  SELECT hex(('{a: "abc\bxyz"
  SELECT hex(('{a: "abc\f\n\r\t\vxyz"
  SELECT hex(('{a: "abc\0xyz"
  SELECT '{a: "abc\x35\x4f\x6Exyz"
  SELECT '{a: "\x6a\x6A\x6b\x6B\x6c\x6C\x6d\x6D\x6e\x6E\x6f\x6F"
  SELECT '{a: 0x0
  SELECT '{a: -0x0
  SELECT '{a: +0x0
  SELECT '{a: 0xabcdef
  SELECT '{a: -0xaBcDeF
  SELECT '{a: +0xABCDEF
  WITH c(x) AS (VALUES('{x: 4.
  WITH c(x) AS (VALUES('{x: +4.
  WITH c(x) AS (VALUES('{x: -4.
  WITH c(x) AS (VALUES('{x: .5
  WITH c(x) AS (VALUES('{x: -.5
  WITH c(x) AS (VALUES('{x: +.5
  WITH c(x) AS (VALUES('{x: 4.e0
  WITH c(x) AS (VALUES('{x: +4.e1
  WITH c(x) AS (VALUES('{x: -4.e2
  WITH c(x) AS (VALUES('{x: .5e3
  WITH c(x) AS (VALUES('{x: -.5e-1
  WITH c(x) AS (VALUES('{x: +.5e-2
  WITH c(x) AS (VALUES('{x: +Infinity
  WITH c(x) AS (VALUES('{x: -Infinity
  WITH c(x) AS (VALUES('{x: Infinity
  WITH c(x) AS (VALUES('{x: NaN
  SELECT '{a: +123
  SELECT ' /* abc */ { /*def*/ aaa /* xyz */ : // to the end of line
          123 /* xyz */ , /* 123 */ 
  SELECT (char(0x09,0x0a,0x0b,0x0c,0x0d,0x20,0xa0,0x2028,0x2029)
          || '{a: "xyz"
  SELECT ('{a:' || char(0x09,0x0a,0x0b,0x0c,0x0d,0x20,0xa0,0x2028,0x2029)
          || '"xyz"
  SELECT (char(0x1680,0x2000,0x2001,0x2002,0x2003,0x2004,0x2005,
               0x2006,0x2007,0x2008,0x2009,0x200a,0x3000,0xfeff)
          || '{a: "xyz"
  SELECT ('{a: ' ||char(0x1680,0x2000,0x2001,0x2002,0x2003,0x2004,0x2005,
                        0x2006,0x2007,0x2008,0x2009,0x200a,0x3000,0xfeff)
          || ' "xyz"