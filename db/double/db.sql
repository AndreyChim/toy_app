PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "schema_migrations" ("version" varchar NOT NULL PRIMARY KEY);
INSERT INTO schema_migrations VALUES('20210717064757');
INSERT INTO schema_migrations VALUES('20210717084134');
CREATE TABLE IF NOT EXISTS "ar_internal_metadata" ("key" varchar NOT NULL PRIMARY KEY, "value" varchar, "created_at" timestamp(6) NOT NULL, "updated_at" timestamp(6) NOT NULL);
INSERT INTO ar_internal_metadata VALUES('environment','development','2021-08-08 02:07:37.337740','2021-08-08 02:07:37.337740');
CREATE TABLE IF NOT EXISTS "users" ("id" integer PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar, "email" varchar, "created_at" timestamp(6) NOT NULL, "updated_at" timestamp(6) NOT NULL);
INSERT INTO users VALUES(1,'Mike','mike@pike.com','2021-08-08 02:08:11.426541','2021-08-08 02:08:11.426541');
INSERT INTO users VALUES(2,'Foo','aa2@bb.com','2021-08-08 02:08:51.387661','2021-08-08 02:08:51.387661');
CREATE TABLE IF NOT EXISTS "microposts" ("id" integer PRIMARY KEY AUTOINCREMENT NOT NULL, "content" text, "user_id" integer, "created_at" timestamp(6) NOT NULL, "updated_at" timestamp(6) NOT NULL);
INSERT INTO microposts VALUES(1,'test',1,'2021-08-08 02:20:05.805562','2021-08-08 02:20:05.805562');
INSERT INTO microposts VALUES(2,'test2',2,'2021-08-08 02:20:36.789031','2021-08-08 02:20:36.789031');
DELETE FROM sqlite_sequence;
INSERT INTO sqlite_sequence VALUES('users',2);
INSERT INTO sqlite_sequence VALUES('microposts',2);
COMMIT;
