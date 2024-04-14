BEGIN;

--
-- ACTION ALTER TABLE
--
ALTER TABLE "background_info" ALTER COLUMN "firstName" DROP NOT NULL;
--
-- ACTION CREATE TABLE
--
CREATE TABLE "blocked" (
    "id" serial PRIMARY KEY,
    "shopId" integer,
    "userId" integer,
    "productId" integer,
    "endDate" timestamp without time zone
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "employe" (
    "id" serial PRIMARY KEY,
    "userId" integer NOT NULL,
    "shopId" integer NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "follow" (
    "id" serial PRIMARY KEY,
    "shopId" integer NOT NULL,
    "userId" integer NOT NULL,
    "createdAt" timestamp without time zone NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "gift_card" (
    "id" serial PRIMARY KEY,
    "ownerId" integer NOT NULL,
    "createdById" integer,
    "reedemed" boolean NOT NULL,
    "expireDate" timestamp without time zone,
    "createdAt" timestamp without time zone NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "in_active_product" (
    "id" serial PRIMARY KEY,
    "productId" integer NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "item" (
    "id" serial PRIMARY KEY,
    "productId" integer NOT NULL,
    "quantity" integer NOT NULL,
    "orderId" integer,
    "createdAt" timestamp without time zone NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "like" (
    "id" serial PRIMARY KEY,
    "productId" integer NOT NULL,
    "userId" integer NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "product_user_like_idx" ON "like" USING btree ("productId", "userId");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "notification" (
    "id" serial PRIMARY KEY,
    "userId" integer NOT NULL,
    "title" text NOT NULL,
    "type" text NOT NULL,
    "content" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "order" (
    "id" serial PRIMARY KEY,
    "status" text NOT NULL,
    "soldById" integer,
    "message" text NOT NULL,
    "shopId" integer NOT NULL,
    "userId" integer
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "policy" (
    "id" serial PRIMARY KEY,
    "number" integer NOT NULL,
    "detail" text NOT NULL,
    "createdAt" timestamp without time zone NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "product" (
    "id" serial PRIMARY KEY,
    "name" text NOT NULL,
    "image" text,
    "buyingPrice" double precision NOT NULL,
    "sellingPrice" double precision NOT NULL,
    "brandId" integer,
    "catagoryId" integer,
    "shopId" integer NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "report" (
    "id" serial PRIMARY KEY,
    "status" text NOT NULL,
    "shopId" integer,
    "reporterId" integer,
    "phoneNum" text,
    "email" text,
    "violatorId" integer
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "sale" (
    "id" serial PRIMARY KEY,
    "discount" double precision,
    "price" integer NOT NULL,
    "orderId" integer NOT NULL,
    "desc" text
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "shop" (
    "id" serial PRIMARY KEY,
    "name" text NOT NULL,
    "logo" text,
    "bgImage" text,
    "ownerId" integer NOT NULL,
    "catagoryId" integer,
    "createdAt" timestamp without time zone NOT NULL,
    "updatedAt" timestamp without time zone NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "shop_activity" (
    "id" serial PRIMARY KEY,
    "employeId" integer,
    "shopId" integer NOT NULL,
    "desc" text,
    "action" text,
    "timestamp" timestamp without time zone NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "shop_preference" (
    "id" serial PRIMARY KEY,
    "shopId" integer NOT NULL,
    "isAvailableOnline" boolean NOT NULL,
    "notifyNewProductComing" boolean NOT NULL,
    "acceptOrders" boolean NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "shop_review" (
    "id" serial PRIMARY KEY,
    "userId" integer,
    "shopId" integer NOT NULL,
    "content" text,
    "rate" integer NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "user_interest" (
    "id" serial PRIMARY KEY,
    "catagoryId" integer NOT NULL,
    "userId" integer NOT NULL
);

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "blocked"
    ADD CONSTRAINT "blocked_fk_0"
    FOREIGN KEY("shopId")
    REFERENCES "shop"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "blocked"
    ADD CONSTRAINT "blocked_fk_1"
    FOREIGN KEY("userId")
    REFERENCES "serverpod_user_info"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "blocked"
    ADD CONSTRAINT "blocked_fk_2"
    FOREIGN KEY("productId")
    REFERENCES "product"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "employe"
    ADD CONSTRAINT "employe_fk_0"
    FOREIGN KEY("userId")
    REFERENCES "serverpod_user_info"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "employe"
    ADD CONSTRAINT "employe_fk_1"
    FOREIGN KEY("shopId")
    REFERENCES "shop"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "follow"
    ADD CONSTRAINT "follow_fk_0"
    FOREIGN KEY("shopId")
    REFERENCES "shop"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "follow"
    ADD CONSTRAINT "follow_fk_1"
    FOREIGN KEY("userId")
    REFERENCES "serverpod_user_info"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "gift_card"
    ADD CONSTRAINT "gift_card_fk_0"
    FOREIGN KEY("ownerId")
    REFERENCES "serverpod_user_info"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "gift_card"
    ADD CONSTRAINT "gift_card_fk_1"
    FOREIGN KEY("createdById")
    REFERENCES "serverpod_user_info"("id")
    ON DELETE SET NULL
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "in_active_product"
    ADD CONSTRAINT "in_active_product_fk_0"
    FOREIGN KEY("productId")
    REFERENCES "product"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "item"
    ADD CONSTRAINT "item_fk_0"
    FOREIGN KEY("productId")
    REFERENCES "product"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "item"
    ADD CONSTRAINT "item_fk_1"
    FOREIGN KEY("orderId")
    REFERENCES "order"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "like"
    ADD CONSTRAINT "like_fk_0"
    FOREIGN KEY("productId")
    REFERENCES "product"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "like"
    ADD CONSTRAINT "like_fk_1"
    FOREIGN KEY("userId")
    REFERENCES "serverpod_user_info"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "notification"
    ADD CONSTRAINT "notification_fk_0"
    FOREIGN KEY("userId")
    REFERENCES "serverpod_user_info"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "order"
    ADD CONSTRAINT "order_fk_0"
    FOREIGN KEY("soldById")
    REFERENCES "serverpod_user_info"("id")
    ON DELETE SET NULL
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "order"
    ADD CONSTRAINT "order_fk_1"
    FOREIGN KEY("shopId")
    REFERENCES "shop"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "order"
    ADD CONSTRAINT "order_fk_2"
    FOREIGN KEY("userId")
    REFERENCES "serverpod_user_info"("id")
    ON DELETE SET NULL
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "product"
    ADD CONSTRAINT "product_fk_0"
    FOREIGN KEY("brandId")
    REFERENCES "brand"("id")
    ON DELETE SET NULL
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "product"
    ADD CONSTRAINT "product_fk_1"
    FOREIGN KEY("catagoryId")
    REFERENCES "catagory"("id")
    ON DELETE SET NULL
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "product"
    ADD CONSTRAINT "product_fk_2"
    FOREIGN KEY("shopId")
    REFERENCES "shop"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "report"
    ADD CONSTRAINT "report_fk_0"
    FOREIGN KEY("shopId")
    REFERENCES "shop"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "report"
    ADD CONSTRAINT "report_fk_1"
    FOREIGN KEY("reporterId")
    REFERENCES "serverpod_user_info"("id")
    ON DELETE SET NULL
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "report"
    ADD CONSTRAINT "report_fk_2"
    FOREIGN KEY("violatorId")
    REFERENCES "serverpod_user_info"("id")
    ON DELETE SET NULL
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "sale"
    ADD CONSTRAINT "sale_fk_0"
    FOREIGN KEY("orderId")
    REFERENCES "order"("id")
    ON DELETE RESTRICT
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "shop"
    ADD CONSTRAINT "shop_fk_0"
    FOREIGN KEY("ownerId")
    REFERENCES "serverpod_user_info"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "shop"
    ADD CONSTRAINT "shop_fk_1"
    FOREIGN KEY("catagoryId")
    REFERENCES "catagory"("id")
    ON DELETE SET NULL
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "shop_activity"
    ADD CONSTRAINT "shop_activity_fk_0"
    FOREIGN KEY("employeId")
    REFERENCES "serverpod_user_info"("id")
    ON DELETE SET NULL
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "shop_activity"
    ADD CONSTRAINT "shop_activity_fk_1"
    FOREIGN KEY("shopId")
    REFERENCES "shop"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "shop_preference"
    ADD CONSTRAINT "shop_preference_fk_0"
    FOREIGN KEY("shopId")
    REFERENCES "shop"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "shop_review"
    ADD CONSTRAINT "shop_review_fk_0"
    FOREIGN KEY("userId")
    REFERENCES "serverpod_user_info"("id")
    ON DELETE SET NULL
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "shop_review"
    ADD CONSTRAINT "shop_review_fk_1"
    FOREIGN KEY("shopId")
    REFERENCES "shop"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "user_interest"
    ADD CONSTRAINT "user_interest_fk_0"
    FOREIGN KEY("catagoryId")
    REFERENCES "catagory"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "user_interest"
    ADD CONSTRAINT "user_interest_fk_1"
    FOREIGN KEY("userId")
    REFERENCES "serverpod_user_info"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;


--
-- MIGRATION VERSION FOR bita_pod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('bita_pod', '20240310140144121', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240310140144121', "timestamp" = now();

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
