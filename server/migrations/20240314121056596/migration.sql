BEGIN;

--
-- ACTION ALTER TABLE
--
ALTER TABLE "address" DROP COLUMN "sublocality";
ALTER TABLE "address" DROP COLUMN "admin1";
ALTER TABLE "address" DROP COLUMN "admin2";
ALTER TABLE "address" ADD COLUMN "name" text;
ALTER TABLE "address" ADD COLUMN "street" text;
ALTER TABLE "address" ADD COLUMN "isoCountryCode" text;
ALTER TABLE "address" ADD COLUMN "postalCode" text;
ALTER TABLE "address" ADD COLUMN "administrativeArea" text;
ALTER TABLE "address" ADD COLUMN "subAdministrativeArea" text;
ALTER TABLE "address" ADD COLUMN "subLocality" text;
ALTER TABLE "address" ADD COLUMN "thoroughfare" text;
ALTER TABLE "address" ADD COLUMN "subThoroughfare" text;
--
-- ACTION ALTER TABLE
--
ALTER TABLE "sign_up_request" DROP COLUMN "status";

--
-- MIGRATION VERSION FOR bita_pod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('bita_pod', '20240314121056596', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240314121056596', "timestamp" = now();

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
