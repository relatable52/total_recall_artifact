
  SELECT rhs FROM qpvtab
   WHERE cn='a'
     AND a=12345

  SELECT rhs FROM qpvtab
   WHERE cn='a'
     AND a<>4.5

  SELECT rhs FROM qpvtab
   WHERE cn='a'
     AND 'quokka' < a

  SELECT rhs FROM qpvtab
   WHERE cn='a'
     AND a IS NULL

  SELECT rhs FROM qpvtab
   WHERE cn='a'
     AND a GLOB x'0123'

  SELECT typeof(rhs) FROM qpvtab WHERE cn='a' AND a=format('abc');

  SELECT typeof(rhs) FROM qpvtab WHERE cn='a' AND a=?2
