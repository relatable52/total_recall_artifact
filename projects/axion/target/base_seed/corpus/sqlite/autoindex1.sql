
  UPDATE sqlite_stat1 SET stat='10000' WHERE tbl='t2';
  ANALYZE sqlite_master;
  EXPLAIN QUERY PLAN
  SELECT b, d FROM t1 CROSS JOIN t2 ON (c=a);

  CREATE TABLE t501(a INTEGER PRIMARY KEY, b);
  CREATE TABLE t502(x INTEGER PRIMARY KEY, y);
  INSERT INTO sqlite_stat1(tbl,idx,stat) VALUES('t501',null,'1000000');
  INSERT INTO sqlite_stat1(tbl,idx,stat) VALUES('t502',null,'1000');
  ANALYZE sqlite_master;

  CREATE TABLE flock_owner(
    owner_rec_id INTEGER CONSTRAINT flock_owner_key PRIMARY KEY,
    flock_no VARCHAR(6) NOT NULL REFERENCES flock (flock_no),
    owner_person_id INTEGER NOT NULL REFERENCES person (person_id),
    owner_change_date TEXT, last_changed TEXT NOT NULL,
    CONSTRAINT fo_owner_date UNIQUE (flock_no, owner_change_date)
  );
  CREATE TABLE sheep (
    Sheep_No char(7) NOT NULL,
    Date_of_Birth char(8),
    Sort_DoB text,
    Flock_Book_Vol char(2),
    Breeder_No char(6),
    Breeder_Person integer,
    Originating_Flock char(6),
    Registering_Flock char(6),
    Tag_Prefix char(9),
    Tag_No char(15),
    Sort_Tag_No integer,
    Breeders_Temp_Tag char(15),
    Sex char(1),
    Sheep_Name char(32),
    Sire_No char(7),
    Dam_No char(7),
    Register_Code char(1),
    Colour char(48),
    Colour_Code char(2),
    Pattern_Code char(8),
    Horns char(1),
    Litter_Size char(1),
    Coeff_of_Inbreeding real,
    Date_of_Registration text,
    Date_Last_Changed text,
    UNIQUE(Sheep_No));
  CREATE INDEX fo_flock_no_index  
              ON flock_owner (flock_no);
  CREATE INDEX fo_owner_change_date_index  
              ON flock_owner (owner_change_date);
  CREATE INDEX fo_owner_person_id_index  
              ON flock_owner (owner_person_id);
  CREATE INDEX sheep_org_flock_index  
           ON sheep (originating_flock);
  CREATE INDEX sheep_reg_flock_index  
           ON sheep (registering_flock);

  CREATE TABLE t5(a, b, c);

  CREATE TABLE accounts(
    _id INTEGER PRIMARY KEY AUTOINCREMENT,
    account_name TEXT,
    account_type TEXT,
    data_set TEXT
  );
  CREATE TABLE data(
    _id INTEGER PRIMARY KEY AUTOINCREMENT,
    package_id INTEGER REFERENCES package(_id),
    mimetype_id INTEGER REFERENCES mimetype(_id) NOT NULL,
    raw_contact_id INTEGER REFERENCES raw_contacts(_id) NOT NULL,
    is_read_only INTEGER NOT NULL DEFAULT 0,
    is_primary INTEGER NOT NULL DEFAULT 0,
    is_super_primary INTEGER NOT NULL DEFAULT 0,
    data_version INTEGER NOT NULL DEFAULT 0,
    data1 TEXT,
    data2 TEXT,
    data3 TEXT,
    data4 TEXT,
    data5 TEXT,
    data6 TEXT,
    data7 TEXT,
    data8 TEXT,
    data9 TEXT,
    data10 TEXT,
    data11 TEXT,
    data12 TEXT,
    data13 TEXT,
    data14 TEXT,
    data15 TEXT,
    data_sync1 TEXT,
    data_sync2 TEXT,
    data_sync3 TEXT,
    data_sync4 TEXT 
  );
  CREATE TABLE mimetypes(
    _id INTEGER PRIMARY KEY AUTOINCREMENT,
    mimetype TEXT NOT NULL
  );
  CREATE TABLE raw_contacts(
    _id INTEGER PRIMARY KEY AUTOINCREMENT,
    account_id INTEGER REFERENCES accounts(_id),
    sourceid TEXT,
    raw_contact_is_read_only INTEGER NOT NULL DEFAULT 0,
    version INTEGER NOT NULL DEFAULT 1,
    dirty INTEGER NOT NULL DEFAULT 0,
    deleted INTEGER NOT NULL DEFAULT 0,
    contact_id INTEGER REFERENCES contacts(_id),
    aggregation_mode INTEGER NOT NULL DEFAULT 0,
    aggregation_needed INTEGER NOT NULL DEFAULT 1,
    custom_ringtone TEXT,
    send_to_voicemail INTEGER NOT NULL DEFAULT 0,
    times_contacted INTEGER NOT NULL DEFAULT 0,
    last_time_contacted INTEGER,
    starred INTEGER NOT NULL DEFAULT 0,
    display_name TEXT,
    display_name_alt TEXT,
    display_name_source INTEGER NOT NULL DEFAULT 0,
    phonetic_name TEXT,
    phonetic_name_style TEXT,
    sort_key TEXT,
    sort_key_alt TEXT,
    name_verified INTEGER NOT NULL DEFAULT 0,
    sync1 TEXT,
    sync2 TEXT,
    sync3 TEXT,
    sync4 TEXT,
    sync_uid TEXT,
    sync_version INTEGER NOT NULL DEFAULT 1,
    has_calendar_event INTEGER NOT NULL DEFAULT 0,
    modified_time INTEGER,
    is_restricted INTEGER DEFAULT 0,
    yp_source TEXT,
    method_selected INTEGER DEFAULT 0,
    custom_vibration_type INTEGER DEFAULT 0,
    custom_ringtone_path TEXT,
    message_notification TEXT,
    message_notification_path TEXT
  );
  CREATE INDEX data_mimetype_data1_index ON data (mimetype_id,data1);
  CREATE INDEX data_raw_contact_id ON data (raw_contact_id);
  CREATE UNIQUE INDEX mime_type ON mimetypes (mimetype);
  CREATE INDEX raw_contact_sort_key1_index ON raw_contacts (sort_key);
  CREATE INDEX raw_contact_sort_key2_index ON raw_contacts (sort_key_alt);
  CREATE INDEX raw_contacts_contact_id_index ON raw_contacts (contact_id);
  CREATE INDEX raw_contacts_source_id_account_id_index
      ON raw_contacts (sourceid, account_id);
  ANALYZE sqlite_master;
  INSERT INTO sqlite_stat1
     VALUES('raw_contacts','raw_contact_sort_key2_index','1600 4');
  INSERT INTO sqlite_stat1
     VALUES('raw_contacts','raw_contact_sort_key1_index','1600 4');
  INSERT INTO sqlite_stat1
     VALUES('raw_contacts','raw_contacts_source_id_account_id_index',
            '1600 1600 1600');
  INSERT INTO sqlite_stat1
     VALUES('raw_contacts','raw_contacts_contact_id_index','1600 1');
  INSERT INTO sqlite_stat1 VALUES('mimetypes','mime_type','12 1');
  INSERT INTO sqlite_stat1
     VALUES('data','data_mimetype_data1_index','9819 2455 3');
  INSERT INTO sqlite_stat1 VALUES('data','data_raw_contact_id','9819 7');
  INSERT INTO sqlite_stat1 VALUES('accounts',NULL,'1');
  DROP TABLE IF EXISTS sqlite_stat3;
  ANALYZE sqlite_master;
  
  EXPLAIN QUERY PLAN
  SELECT * FROM 
        data JOIN mimetypes ON (data.mimetype_id=mimetypes._id) 
             JOIN raw_contacts ON (data.raw_contact_id=raw_contacts._id) 
             JOIN accounts ON (raw_contacts.account_id=accounts._id)
   WHERE mimetype_id=10 AND data14 IS NOT NULL;

  EXPLAIN QUERY PLAN
  SELECT * FROM 
        data JOIN mimetypes ON (data.mimetype_id=mimetypes._id) 
             JOIN raw_contacts ON (data.raw_contact_id=raw_contacts._id) 
             JOIN accounts ON (raw_contacts.account_id=accounts._id)
   WHERE mimetypes._id=10 AND data14 IS NOT NULL;

  CREATE TABLE messages (ROWID INTEGER PRIMARY KEY AUTOINCREMENT, message_id, document_id BLOB, in_reply_to, remote_id INTEGER, sender INTEGER, subject_prefix, subject INTEGER, date_sent INTEGER, date_received INTEGER, date_created INTEGER, date_last_viewed INTEGER, mailbox INTEGER, remote_mailbox INTEGER, original_mailbox INTEGER, flags INTEGER, read, flagged, size INTEGER, color, encoding, type INTEGER, pad, conversation_id INTEGER DEFAULT -1, snippet TEXT DEFAULT NULL, fuzzy_ancestor INTEGER DEFAULT NULL, automated_conversation INTEGER DEFAULT 0, root_status INTEGER DEFAULT -1, conversation_position INTEGER DEFAULT -1);
  CREATE INDEX date_index ON messages(date_received);
  CREATE INDEX date_last_viewed_index ON messages(date_last_viewed);
  CREATE INDEX date_created_index ON messages(date_created);
  CREATE INDEX message_message_id_mailbox_index ON messages(message_id, mailbox);
  CREATE INDEX message_document_id_index ON messages(document_id);
  CREATE INDEX message_read_index ON messages(read);
  CREATE INDEX message_flagged_index ON messages(flagged);
  CREATE INDEX message_mailbox_index ON messages(mailbox, date_received);
  CREATE INDEX message_remote_mailbox_index ON messages(remote_mailbox, remote_id);
  CREATE INDEX message_type_index ON messages(type);
  CREATE INDEX message_conversation_id_conversation_position_index ON messages(conversation_id, conversation_position);
  CREATE INDEX message_fuzzy_ancestor_index ON messages(fuzzy_ancestor);
  CREATE INDEX message_subject_fuzzy_ancestor_index ON messages(subject, fuzzy_ancestor);
  CREATE INDEX message_sender_subject_automated_conversation_index ON messages(sender, subject, automated_conversation);
  CREATE INDEX message_sender_index ON messages(sender);
  CREATE INDEX message_root_status ON messages(root_status);
  CREATE TABLE subjects (ROWID INTEGER PRIMARY KEY, subject COLLATE RTRIM, normalized_subject COLLATE RTRIM);
  CREATE INDEX subject_subject_index ON subjects(subject);
  CREATE INDEX subject_normalized_subject_index ON subjects(normalized_subject);
  CREATE TABLE addresses (ROWID INTEGER PRIMARY KEY, address COLLATE NOCASE, comment, UNIQUE(address, comment));
  CREATE INDEX addresses_address_index ON addresses(address);
  CREATE TABLE mailboxes (ROWID INTEGER PRIMARY KEY, url UNIQUE, total_count INTEGER DEFAULT 0, unread_count INTEGER DEFAULT 0, unseen_count INTEGER DEFAULT 0, deleted_count INTEGER DEFAULT 0, unread_count_adjusted_for_duplicates INTEGER DEFAULT 0, change_identifier, source INTEGER, alleged_change_identifier);
  CREATE INDEX mailboxes_source_index ON mailboxes(source);
  CREATE TABLE labels (ROWID INTEGER PRIMARY KEY, message_id INTEGER NOT NULL, mailbox_id INTEGER NOT NULL, UNIQUE(message_id, mailbox_id));
  CREATE INDEX labels_message_id_mailbox_id_index ON labels(message_id, mailbox_id);
  CREATE INDEX labels_mailbox_id_index ON labels(mailbox_id);
  
  explain query plan
  SELECT messages.ROWID,
         messages.message_id,
         messages.remote_id,
         messages.date_received,
         messages.date_sent,
         messages.flags,
         messages.size,
         messages.color,
         messages.date_last_viewed,
         messages.subject_prefix,
         subjects.subject,
         sender.comment,
         sender.address,
         NULL,
         messages.mailbox,
         messages.original_mailbox,
         NULL,
         NULL,
         messages.type,
         messages.document_id,
         sender,
         NULL,
         messages.conversation_id,
         messages.conversation_position,
         agglabels.labels
   FROM mailboxes AS mailbox
        JOIN messages ON mailbox.ROWID = messages.mailbox
        LEFT OUTER JOIN subjects ON messages.subject = subjects.ROWID
        LEFT OUTER JOIN addresses AS sender ON messages.sender = sender.ROWID
        LEFT OUTER JOIN (
               SELECT message_id, group_concat(mailbox_id) as labels
               FROM labels GROUP BY message_id
             ) AS agglabels ON messages.ROWID = agglabels.message_id
  WHERE (mailbox.url = 'imap://email.app@imap.gmail.com/%5BGmail%5D/All%20Mail')
    AND (messages.ROWID IN (
            SELECT labels.message_id
              FROM labels JOIN mailboxes ON labels.mailbox_id = mailboxes.ROWID
             WHERE mailboxes.url = 'imap://email.app@imap.gmail.com/INBOX'))
    AND messages.mailbox in (6,12,18,24,30,36,42,1,7,13,19,25,31,37,43,2,8,
                             14,20,26,32,38,3,9,15,21,27,33,39,4,10,16,22,28,
                             34,40,5,11,17,23,35,41)
   ORDER BY date_received DESC;

  CREATE TABLE t1(x INTEGER PRIMARY KEY, y, z);
  CREATE TABLE t2(a, b);
  CREATE VIEW agg2 AS SELECT a, sum(b) AS m FROM t2 GROUP BY a;
  EXPLAIN QUERY PLAN
  SELECT t1.z, agg2.m
    FROM t1 JOIN agg2 ON t1.y=agg2.m
   WHERE t1.x IN (1,2,3);

  CREATE TABLE t920(x);
  INSERT INTO t920 VALUES(3),(4),(5);
  SELECT * FROM t920,(SELECT 0 FROM t920),(VALUES(9)) WHERE 5 IN (x);

  CREATE TABLE t11(w);
  CREATE TABLE t12(y);
  INSERT INTO t11 VALUES(NULL);
  INSERT INTO t12 VALUES('notnull');

  SELECT count(*) FROM t11 LEFT JOIN t12 WHERE t12.y IS t11.w;

  CREATE TABLE t1(a INT, b INT);
  CREATE TABLE t2(c INT, d INT);
  CREATE TABLE t3(e TEXT, f TEXT);
  INSERT INTO t1 VALUES(1, 1);
  INSERT INTO t2 VALUES(1, 2);
  INSERT INTO t3 VALUES('abc', 'def');

  SELECT * FROM t1, t2 LEFT JOIN t3 ON (t2.d=1) WHERE t2.c = +t1.a;

  SELECT * FROM t1 LEFT JOIN t2 ON (t2.c=+t1.a) LEFT JOIN t3 ON (t2.d IS NULL);
