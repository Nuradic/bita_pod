BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "user" (
    "id" serial PRIMARY KEY,
    "firstName" text NOT NULL,
    "lastName" text,
    "dateJoined" timestamp without time zone NOT NULL,
    "updatedAt" timestamp without time zone NOT NULL,
    "phoneNumber" text,
    "isPhoneVerified" boolean NOT NULL,
    "email" text
);


--
-- MIGRATION VERSION FOR bita_pod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('bita_pod', '20240308163803511', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240308163803511', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240115074235544', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240115074235544', "timestamp" = now();


COMMIT;
