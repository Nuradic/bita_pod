BEGIN;

--
-- ACTION ALTER TABLE
--
ALTER TABLE "background_info" ALTER COLUMN "userId" DROP NOT NULL;
CREATE UNIQUE INDEX "user_phone_idx" ON "background_info" USING btree ("phoneNumber");
CREATE UNIQUE INDEX "bg_info_user" ON "background_info" USING btree ("userId");

--
-- MIGRATION VERSION FOR bita_pod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('bita_pod', '20240309114708447', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240309114708447', "timestamp" = now();

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
