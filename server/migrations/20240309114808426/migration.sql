BEGIN;

--
-- ACTION ALTER TABLE
--
ALTER TABLE "background_info" ALTER COLUMN "firstName" SET NOT NULL;

--
-- MIGRATION VERSION FOR bita_pod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('bita_pod', '20240309114808426', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240309114808426', "timestamp" = now();

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