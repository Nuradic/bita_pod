BEGIN;

--
-- ACTION ALTER TABLE
--
ALTER TABLE "catagory" DROP CONSTRAINT "catagory_fk_0";
ALTER TABLE ONLY "catagory"
    ADD CONSTRAINT "catagory_fk_0"
    FOREIGN KEY("catagoryId")
    REFERENCES "catagory"("id")
    ON DELETE SET NULL
    ON UPDATE NO ACTION;

--
-- MIGRATION VERSION FOR bita_pod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('bita_pod', '20240314211947131', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240314211947131', "timestamp" = now();

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
