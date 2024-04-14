BEGIN;

--
-- ACTION ALTER TABLE
--
ALTER TABLE "sign_up_request" ADD COLUMN "status" text;

--
-- MIGRATION VERSION FOR bita_pod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('bita_pod', '20240313113740783', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240313113740783', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240115074235544', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240115074235544', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod_auth
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod_auth', '20240115074239642', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240115074239642', "timestamp" = now();


COMMIT;
