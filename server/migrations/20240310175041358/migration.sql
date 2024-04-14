BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "address" (
    "id" serial PRIMARY KEY,
    "lat" double precision,
    "lng" double precision,
    "plusCode" text,
    "sublocality" text,
    "locality" text,
    "admin1" text,
    "admin2" text,
    "country" text
);

--
-- ACTION ALTER TABLE
--
ALTER TABLE "shop" ADD COLUMN "addressId" integer;
ALTER TABLE ONLY "shop"
    ADD CONSTRAINT "shop_fk_2"
    FOREIGN KEY("addressId")
    REFERENCES "address"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;

--
-- MIGRATION VERSION FOR bita_pod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('bita_pod', '20240310175041358', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240310175041358', "timestamp" = now();

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
