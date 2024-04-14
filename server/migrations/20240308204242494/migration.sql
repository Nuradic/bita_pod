BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE
    "brand" (
        "id" serial PRIMARY KEY,
        "name" text NOT NULL,
        "desc" text NOT NULL,
        "catagoryId" integer NOT NULL
    );

--
-- ACTION CREATE TABLE
--
CREATE TABLE
    "catagory" (
        "id" serial PRIMARY KEY,
        "name" text NOT NULL,
        "desc" text NOT NULL
    );

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "brand" ADD CONSTRAINT "brand_fk_0" FOREIGN KEY ("catagoryId") REFERENCES "catagory" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- MIGRATION VERSION FOR bita_pod
--
INSERT INTO
    "serverpod_migrations" ("module", "version", "timestamp")
VALUES
    ('bita_pod', '20240308204242494', now ()) ON CONFLICT ("module") DO
UPDATE
SET
    "version" = '20240308204242494',
    "timestamp" = now ();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO
    "serverpod_migrations" ("module", "version", "timestamp")
VALUES
    ('serverpod', '20240115074235544', now ()) ON CONFLICT ("module") DO
UPDATE
SET
    "version" = '20240115074235544',
    "timestamp" = now ();

COMMIT;