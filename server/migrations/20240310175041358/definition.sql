BEGIN;

--
-- Class Address as table address
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
-- Class BackgroundInfo as table background_info
--
CREATE TABLE "background_info" (
    "id" serial PRIMARY KEY,
    "phoneNumber" text,
    "email" text,
    "password" text,
    "firstName" text,
    "lastName" text,
    "userId" integer
);

-- Indexes
CREATE UNIQUE INDEX "user_phone_idx" ON "background_info" USING btree ("phoneNumber");
CREATE UNIQUE INDEX "bg_info_user" ON "background_info" USING btree ("userId");

--
-- Class Blocked as table blocked
--
CREATE TABLE "blocked" (
    "id" serial PRIMARY KEY,
    "shopId" integer,
    "userId" integer,
    "productId" integer,
    "endDate" timestamp without time zone
);

--
-- Class Brand as table brand
--
CREATE TABLE "brand" (
    "id" serial PRIMARY KEY,
    "name" text NOT NULL,
    "desc" text NOT NULL,
    "catagoryId" integer NOT NULL
);

--
-- Class Catagory as table catagory
--
CREATE TABLE "catagory" (
    "id" serial PRIMARY KEY,
    "name" text NOT NULL,
    "desc" text NOT NULL
);

--
-- Class Employe as table employe
--
CREATE TABLE "employe" (
    "id" serial PRIMARY KEY,
    "userId" integer NOT NULL,
    "shopId" integer NOT NULL
);

--
-- Class Follow as table follow
--
CREATE TABLE "follow" (
    "id" serial PRIMARY KEY,
    "shopId" integer NOT NULL,
    "userId" integer NOT NULL,
    "createdAt" timestamp without time zone NOT NULL
);

--
-- Class GiftCard as table gift_card
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
-- Class InActiveProduct as table in_active_product
--
CREATE TABLE "in_active_product" (
    "id" serial PRIMARY KEY,
    "productId" integer NOT NULL
);

--
-- Class Item as table item
--
CREATE TABLE "item" (
    "id" serial PRIMARY KEY,
    "productId" integer NOT NULL,
    "quantity" integer NOT NULL,
    "orderId" integer,
    "createdAt" timestamp without time zone NOT NULL
);

--
-- Class Like as table like
--
CREATE TABLE "like" (
    "id" serial PRIMARY KEY,
    "productId" integer NOT NULL,
    "userId" integer NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "product_user_like_idx" ON "like" USING btree ("productId", "userId");

--
-- Class Notification as table notification
--
CREATE TABLE "notification" (
    "id" serial PRIMARY KEY,
    "userId" integer NOT NULL,
    "title" text NOT NULL,
    "type" text NOT NULL,
    "content" text NOT NULL
);

--
-- Class Order as table order
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
-- Class Policy as table policy
--
CREATE TABLE "policy" (
    "id" serial PRIMARY KEY,
    "number" integer NOT NULL,
    "detail" text NOT NULL,
    "createdAt" timestamp without time zone NOT NULL
);

--
-- Class Product as table product
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
-- Class Report as table report
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
-- Class Sale as table sale
--
CREATE TABLE "sale" (
    "id" serial PRIMARY KEY,
    "discount" double precision,
    "price" integer NOT NULL,
    "orderId" integer NOT NULL,
    "desc" text
);

--
-- Class Shop as table shop
--
CREATE TABLE "shop" (
    "id" serial PRIMARY KEY,
    "name" text NOT NULL,
    "logo" text,
    "bgImage" text,
    "ownerId" integer NOT NULL,
    "catagoryId" integer,
    "addressId" integer,
    "createdAt" timestamp without time zone NOT NULL,
    "updatedAt" timestamp without time zone NOT NULL
);

--
-- Class ShopActivity as table shop_activity
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
-- Class ShopPreference as table shop_preference
--
CREATE TABLE "shop_preference" (
    "id" serial PRIMARY KEY,
    "shopId" integer NOT NULL,
    "isAvailableOnline" boolean NOT NULL,
    "notifyNewProductComing" boolean NOT NULL,
    "acceptOrders" boolean NOT NULL
);

--
-- Class ShopReview as table shop_review
--
CREATE TABLE "shop_review" (
    "id" serial PRIMARY KEY,
    "userId" integer,
    "shopId" integer NOT NULL,
    "content" text,
    "rate" integer NOT NULL
);

--
-- Class UserInterest as table user_interest
--
CREATE TABLE "user_interest" (
    "id" serial PRIMARY KEY,
    "catagoryId" integer NOT NULL,
    "userId" integer NOT NULL
);

--
-- Class AuthKey as table serverpod_auth_key
--
CREATE TABLE "serverpod_auth_key" (
    "id" serial PRIMARY KEY,
    "userId" integer NOT NULL,
    "hash" text NOT NULL,
    "scopeNames" json NOT NULL,
    "method" text NOT NULL
);

-- Indexes
CREATE INDEX "serverpod_auth_key_userId_idx" ON "serverpod_auth_key" USING btree ("userId");

--
-- Class CloudStorageEntry as table serverpod_cloud_storage
--
CREATE TABLE "serverpod_cloud_storage" (
    "id" serial PRIMARY KEY,
    "storageId" text NOT NULL,
    "path" text NOT NULL,
    "addedTime" timestamp without time zone NOT NULL,
    "expiration" timestamp without time zone,
    "byteData" bytea NOT NULL,
    "verified" boolean NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_cloud_storage_path_idx" ON "serverpod_cloud_storage" USING btree ("storageId", "path");
CREATE INDEX "serverpod_cloud_storage_expiration" ON "serverpod_cloud_storage" USING btree ("expiration");

--
-- Class CloudStorageDirectUploadEntry as table serverpod_cloud_storage_direct_upload
--
CREATE TABLE "serverpod_cloud_storage_direct_upload" (
    "id" serial PRIMARY KEY,
    "storageId" text NOT NULL,
    "path" text NOT NULL,
    "expiration" timestamp without time zone NOT NULL,
    "authKey" text NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_cloud_storage_direct_upload_storage_path" ON "serverpod_cloud_storage_direct_upload" USING btree ("storageId", "path");

--
-- Class FutureCallEntry as table serverpod_future_call
--
CREATE TABLE "serverpod_future_call" (
    "id" serial PRIMARY KEY,
    "name" text NOT NULL,
    "time" timestamp without time zone NOT NULL,
    "serializedObject" text,
    "serverId" text NOT NULL,
    "identifier" text
);

-- Indexes
CREATE INDEX "serverpod_future_call_time_idx" ON "serverpod_future_call" USING btree ("time");
CREATE INDEX "serverpod_future_call_serverId_idx" ON "serverpod_future_call" USING btree ("serverId");
CREATE INDEX "serverpod_future_call_identifier_idx" ON "serverpod_future_call" USING btree ("identifier");

--
-- Class ServerHealthConnectionInfo as table serverpod_health_connection_info
--
CREATE TABLE "serverpod_health_connection_info" (
    "id" serial PRIMARY KEY,
    "serverId" text NOT NULL,
    "timestamp" timestamp without time zone NOT NULL,
    "active" integer NOT NULL,
    "closing" integer NOT NULL,
    "idle" integer NOT NULL,
    "granularity" integer NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_health_connection_info_timestamp_idx" ON "serverpod_health_connection_info" USING btree ("timestamp", "serverId", "granularity");

--
-- Class ServerHealthMetric as table serverpod_health_metric
--
CREATE TABLE "serverpod_health_metric" (
    "id" serial PRIMARY KEY,
    "name" text NOT NULL,
    "serverId" text NOT NULL,
    "timestamp" timestamp without time zone NOT NULL,
    "isHealthy" boolean NOT NULL,
    "value" double precision NOT NULL,
    "granularity" integer NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_health_metric_timestamp_idx" ON "serverpod_health_metric" USING btree ("timestamp", "serverId", "name", "granularity");

--
-- Class LogEntry as table serverpod_log
--
CREATE TABLE "serverpod_log" (
    "id" serial PRIMARY KEY,
    "sessionLogId" integer NOT NULL,
    "messageId" integer,
    "reference" text,
    "serverId" text NOT NULL,
    "time" timestamp without time zone NOT NULL,
    "logLevel" integer NOT NULL,
    "message" text NOT NULL,
    "error" text,
    "stackTrace" text,
    "order" integer NOT NULL
);

-- Indexes
CREATE INDEX "serverpod_log_sessionLogId_idx" ON "serverpod_log" USING btree ("sessionLogId");

--
-- Class MessageLogEntry as table serverpod_message_log
--
CREATE TABLE "serverpod_message_log" (
    "id" serial PRIMARY KEY,
    "sessionLogId" integer NOT NULL,
    "serverId" text NOT NULL,
    "messageId" integer NOT NULL,
    "endpoint" text NOT NULL,
    "messageName" text NOT NULL,
    "duration" double precision NOT NULL,
    "error" text,
    "stackTrace" text,
    "slow" boolean NOT NULL,
    "order" integer NOT NULL
);

--
-- Class MethodInfo as table serverpod_method
--
CREATE TABLE "serverpod_method" (
    "id" serial PRIMARY KEY,
    "endpoint" text NOT NULL,
    "method" text NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_method_endpoint_method_idx" ON "serverpod_method" USING btree ("endpoint", "method");

--
-- Class DatabaseMigrationVersion as table serverpod_migrations
--
CREATE TABLE "serverpod_migrations" (
    "id" serial PRIMARY KEY,
    "module" text NOT NULL,
    "version" text NOT NULL,
    "timestamp" timestamp without time zone
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_migrations_ids" ON "serverpod_migrations" USING btree ("module");

--
-- Class QueryLogEntry as table serverpod_query_log
--
CREATE TABLE "serverpod_query_log" (
    "id" serial PRIMARY KEY,
    "serverId" text NOT NULL,
    "sessionLogId" integer NOT NULL,
    "messageId" integer,
    "query" text NOT NULL,
    "duration" double precision NOT NULL,
    "numRows" integer,
    "error" text,
    "stackTrace" text,
    "slow" boolean NOT NULL,
    "order" integer NOT NULL
);

-- Indexes
CREATE INDEX "serverpod_query_log_sessionLogId_idx" ON "serverpod_query_log" USING btree ("sessionLogId");

--
-- Class ReadWriteTestEntry as table serverpod_readwrite_test
--
CREATE TABLE "serverpod_readwrite_test" (
    "id" serial PRIMARY KEY,
    "number" integer NOT NULL
);

--
-- Class RuntimeSettings as table serverpod_runtime_settings
--
CREATE TABLE "serverpod_runtime_settings" (
    "id" serial PRIMARY KEY,
    "logSettings" json NOT NULL,
    "logSettingsOverrides" json NOT NULL,
    "logServiceCalls" boolean NOT NULL,
    "logMalformedCalls" boolean NOT NULL
);

--
-- Class SessionLogEntry as table serverpod_session_log
--
CREATE TABLE "serverpod_session_log" (
    "id" serial PRIMARY KEY,
    "serverId" text NOT NULL,
    "time" timestamp without time zone NOT NULL,
    "module" text,
    "endpoint" text,
    "method" text,
    "duration" double precision,
    "numQueries" integer,
    "slow" boolean,
    "error" text,
    "stackTrace" text,
    "authenticatedUserId" integer,
    "isOpen" boolean,
    "touched" timestamp without time zone NOT NULL
);

-- Indexes
CREATE INDEX "serverpod_session_log_serverid_idx" ON "serverpod_session_log" USING btree ("serverId");
CREATE INDEX "serverpod_session_log_touched_idx" ON "serverpod_session_log" USING btree ("touched");
CREATE INDEX "serverpod_session_log_isopen_idx" ON "serverpod_session_log" USING btree ("isOpen");

--
-- Class EmailAuth as table serverpod_email_auth
--
CREATE TABLE "serverpod_email_auth" (
    "id" serial PRIMARY KEY,
    "userId" integer NOT NULL,
    "email" text NOT NULL,
    "hash" text NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_email_auth_email" ON "serverpod_email_auth" USING btree ("email");

--
-- Class EmailCreateAccountRequest as table serverpod_email_create_request
--
CREATE TABLE "serverpod_email_create_request" (
    "id" serial PRIMARY KEY,
    "userName" text NOT NULL,
    "email" text NOT NULL,
    "hash" text NOT NULL,
    "verificationCode" text NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_email_auth_create_account_request_idx" ON "serverpod_email_create_request" USING btree ("email");

--
-- Class EmailFailedSignIn as table serverpod_email_failed_sign_in
--
CREATE TABLE "serverpod_email_failed_sign_in" (
    "id" serial PRIMARY KEY,
    "email" text NOT NULL,
    "time" timestamp without time zone NOT NULL,
    "ipAddress" text NOT NULL
);

-- Indexes
CREATE INDEX "serverpod_email_failed_sign_in_email_idx" ON "serverpod_email_failed_sign_in" USING btree ("email");
CREATE INDEX "serverpod_email_failed_sign_in_time_idx" ON "serverpod_email_failed_sign_in" USING btree ("time");

--
-- Class EmailReset as table serverpod_email_reset
--
CREATE TABLE "serverpod_email_reset" (
    "id" serial PRIMARY KEY,
    "userId" integer NOT NULL,
    "verificationCode" text NOT NULL,
    "expiration" timestamp without time zone NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_email_reset_verification_idx" ON "serverpod_email_reset" USING btree ("verificationCode");

--
-- Class GoogleRefreshToken as table serverpod_google_refresh_token
--
CREATE TABLE "serverpod_google_refresh_token" (
    "id" serial PRIMARY KEY,
    "userId" integer NOT NULL,
    "refreshToken" text NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_google_refresh_token_userId_idx" ON "serverpod_google_refresh_token" USING btree ("userId");

--
-- Class UserImage as table serverpod_user_image
--
CREATE TABLE "serverpod_user_image" (
    "id" serial PRIMARY KEY,
    "userId" integer NOT NULL,
    "version" integer NOT NULL,
    "url" text NOT NULL
);

-- Indexes
CREATE INDEX "serverpod_user_image_user_id" ON "serverpod_user_image" USING btree ("userId", "version");

--
-- Class UserInfo as table serverpod_user_info
--
CREATE TABLE "serverpod_user_info" (
    "id" serial PRIMARY KEY,
    "userIdentifier" text NOT NULL,
    "userName" text NOT NULL,
    "fullName" text,
    "email" text,
    "created" timestamp without time zone NOT NULL,
    "imageUrl" text,
    "scopeNames" json NOT NULL,
    "blocked" boolean NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_user_info_user_identifier" ON "serverpod_user_info" USING btree ("userIdentifier");
CREATE INDEX "serverpod_user_info_email" ON "serverpod_user_info" USING btree ("email");

--
-- Foreign relations for "background_info" table
--
ALTER TABLE ONLY "background_info"
    ADD CONSTRAINT "background_info_fk_0"
    FOREIGN KEY("userId")
    REFERENCES "serverpod_user_info"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- Foreign relations for "blocked" table
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
-- Foreign relations for "brand" table
--
ALTER TABLE ONLY "brand"
    ADD CONSTRAINT "brand_fk_0"
    FOREIGN KEY("catagoryId")
    REFERENCES "catagory"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- Foreign relations for "employe" table
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
-- Foreign relations for "follow" table
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
-- Foreign relations for "gift_card" table
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
-- Foreign relations for "in_active_product" table
--
ALTER TABLE ONLY "in_active_product"
    ADD CONSTRAINT "in_active_product_fk_0"
    FOREIGN KEY("productId")
    REFERENCES "product"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;

--
-- Foreign relations for "item" table
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
-- Foreign relations for "like" table
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
-- Foreign relations for "notification" table
--
ALTER TABLE ONLY "notification"
    ADD CONSTRAINT "notification_fk_0"
    FOREIGN KEY("userId")
    REFERENCES "serverpod_user_info"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;

--
-- Foreign relations for "order" table
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
-- Foreign relations for "product" table
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
-- Foreign relations for "report" table
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
-- Foreign relations for "sale" table
--
ALTER TABLE ONLY "sale"
    ADD CONSTRAINT "sale_fk_0"
    FOREIGN KEY("orderId")
    REFERENCES "order"("id")
    ON DELETE RESTRICT
    ON UPDATE NO ACTION;

--
-- Foreign relations for "shop" table
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
ALTER TABLE ONLY "shop"
    ADD CONSTRAINT "shop_fk_2"
    FOREIGN KEY("addressId")
    REFERENCES "address"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;

--
-- Foreign relations for "shop_activity" table
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
-- Foreign relations for "shop_preference" table
--
ALTER TABLE ONLY "shop_preference"
    ADD CONSTRAINT "shop_preference_fk_0"
    FOREIGN KEY("shopId")
    REFERENCES "shop"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;

--
-- Foreign relations for "shop_review" table
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
-- Foreign relations for "user_interest" table
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
-- Foreign relations for "serverpod_log" table
--
ALTER TABLE ONLY "serverpod_log"
    ADD CONSTRAINT "serverpod_log_fk_0"
    FOREIGN KEY("sessionLogId")
    REFERENCES "serverpod_session_log"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;

--
-- Foreign relations for "serverpod_message_log" table
--
ALTER TABLE ONLY "serverpod_message_log"
    ADD CONSTRAINT "serverpod_message_log_fk_0"
    FOREIGN KEY("sessionLogId")
    REFERENCES "serverpod_session_log"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;

--
-- Foreign relations for "serverpod_query_log" table
--
ALTER TABLE ONLY "serverpod_query_log"
    ADD CONSTRAINT "serverpod_query_log_fk_0"
    FOREIGN KEY("sessionLogId")
    REFERENCES "serverpod_session_log"("id")
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
