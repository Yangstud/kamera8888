-- ----------------------------
-- Table structure for kamera_config
-- ----------------------------
CREATE TABLE "public"."kamera_config" (
   "id" int8 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
    INCREMENT 1
    MINVALUE  1
    MAXVALUE 9223372036854775807
    START 1
    CACHE 1
),
  "config_key" varchar(32) NOT NULL,
  "config_value" varchar(255),
  "detail" varchar(255),
  "create_time" timestamp(6) DEFAULT now(),
  "update_time" timestamp(6)
);
COMMENT ON COLUMN "public"."kamera_config"."config_key" IS 'key';
COMMENT ON COLUMN "public"."kamera_config"."config_value" IS 'value';
COMMENT ON COLUMN "public"."kamera_config"."detail" IS '描述';
COMMENT ON COLUMN "public"."kamera_config"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."kamera_config"."update_time" IS '更新时间';

ALTER TABLE "public"."kamera_config" ADD CONSTRAINT "kamera_config_pkey" PRIMARY KEY ("id");
ALTER TABLE "public"."kamera_config" ADD CONSTRAINT "uk_config_key" UNIQUE ("config_key");

COMMENT ON CONSTRAINT "uk_config_key" ON "public"."kamera_config" IS 'key 唯一索引';

INSERT INTO "public"."kamera_config" VALUES (6, 'accesskey_id', '', '阿里 OSS / AWS S3 AccessKey_ID', '2023-12-25 16:45:54.284484', NULL);
INSERT INTO "public"."kamera_config" VALUES (7, 'accesskey_secret', '', '阿里 OSS / AWS S3 AccessKey_Secret', '2023-12-25 16:46:02.552455', NULL);
INSERT INTO "public"."kamera_config" VALUES (8, 'region', '', '阿里 OSS / AWS S3 Region 地域，如：oss-cn-hongkong', '2023-12-25 16:46:14.881791', NULL);
INSERT INTO "public"."kamera_config" VALUES (9, 'endpoint', '', '阿里 OSS / AWS S3 Endpoint 地域节点，如：oss-cn-hongkong.aliyuncs.com', '2023-12-25 16:46:26.247859', NULL);
INSERT INTO "public"."kamera_config" VALUES (10, 'bucket', '', '阿里 OSS / AWS S3 Bucket 存储桶名称，如：kamera', '2023-12-25 16:46:38.700241', NULL);
INSERT INTO "public"."kamera_config" VALUES (11, 'storage_folder', 'kamera', '存储文件夹(S3)，严格格式，如：kamera 或 kamera/images ，填 / 或者不填表示根路径', '2023-12-25 16:46:50.732653', NULL);
INSERT INTO "public"."kamera_config" VALUES (12, 'cdn_url', '', 'CDN 域名（仅 S3），请严格按照 example.com 格式，不需要添加 https:// 会自动补充，如：kamera-s3-cdn.heming.dev，CDN 以兼容阿里云 OSS 为主，理论上适配大多数存储。', '2023-12-25 16:49:10.434848', NULL);
INSERT INTO "public"."kamera_config" VALUES (5, 'auth_key', 'kamera', '权限 key，jwt 和 hash 都需要用到它。如果您更改了它，请自行生成新密码，默认值：kamera', '2023-12-25 16:45:46.12813', NULL);
INSERT INTO "public"."kamera_config" VALUES (4, 'alist_token', '', 'alist 令牌 ', '2023-12-25 16:45:08.661365', NULL);
INSERT INTO "public"."kamera_config" VALUES (3, 'alist_url', '', 'AList 地址，如：https://alist.besscroft.com', '2023-12-25 16:44:55.289006', NULL);
INSERT INTO "public"."kamera_config" VALUES (1, 'username', 'admin', '系统用户账号，默认值：admin，单次登录有效期 24 小时。', '2023-12-25 16:44:29.653008', NULL);
INSERT INTO "public"."kamera_config" VALUES (2, 'password', '2a2a3d2b5dcef92937839896bcf07dc62605ebe2ac428f57ea061c734d950d075667654a5e130a9fee5b85512a98eac8138100f32a40953b8678243dbfc97297', '系统用户密码，默认值(666666)在 `.env.local` 文件中可查，如果需要更改密码，可在登录后进入后台自行生成后替换。', '2023-12-25 16:44:43.899401', NULL);
