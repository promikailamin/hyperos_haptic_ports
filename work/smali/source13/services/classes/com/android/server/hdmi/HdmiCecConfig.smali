.class public Lcom/android/server/hdmi/HdmiCecConfig;
.super Ljava/lang/Object;
.source "HdmiCecConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/hdmi/HdmiCecConfig$Setting;,
        Lcom/android/server/hdmi/HdmiCecConfig$Value;,
        Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;,
        Lcom/android/server/hdmi/HdmiCecConfig$SettingChangeListener;,
        Lcom/android/server/hdmi/HdmiCecConfig$VerificationException;,
        Lcom/android/server/hdmi/HdmiCecConfig$ValueType;,
        Lcom/android/server/hdmi/HdmiCecConfig$Storage;
    }
.end annotation


# static fields
.field private static final CONFIG_FILE:Ljava/lang/String; = "cec_config.xml"

.field private static final ETC_DIR:Ljava/lang/String; = "etc"

.field private static final SHARED_PREFS_DIR:Ljava/lang/String; = "shared_prefs"

.field private static final SHARED_PREFS_NAME:Ljava/lang/String; = "cec_config.xml"

.field private static final STORAGE_GLOBAL_SETTINGS:I = 0x1

.field private static final STORAGE_SHARED_PREFS:I = 0x2

.field private static final STORAGE_SYSPROPS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "HdmiCecConfig"

.field private static final VALUE_TYPE_INT:Ljava/lang/String; = "int"

.field private static final VALUE_TYPE_STRING:Ljava/lang/String; = "string"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private final mSettingChangeListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/hdmi/HdmiCecConfig$Setting;",
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/hdmi/HdmiCecConfig$SettingChangeListener;",
            "Ljava/util/concurrent/Executor;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSettings:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/hdmi/HdmiCecConfig$Setting;",
            ">;"
        }
    .end annotation
.end field

.field private final mStorageAdapter:Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 670
    new-instance v0, Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;

    invoke-direct {v0, p1}, Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecConfig;-><init>(Landroid/content/Context;Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;)V

    .line 671
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;)V
    .registers 38
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "storageAdapter"    # Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;

    .line 279
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/android/server/hdmi/HdmiCecConfig;->mLock:Ljava/lang/Object;

    .line 83
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, v0, Lcom/android/server/hdmi/HdmiCecConfig;->mSettingChangeListeners:Landroid/util/ArrayMap;

    .line 87
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, v0, Lcom/android/server/hdmi/HdmiCecConfig;->mSettings:Ljava/util/LinkedHashMap;

    .line 280
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/server/hdmi/HdmiCecConfig;->mContext:Landroid/content/Context;

    .line 281
    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/android/server/hdmi/HdmiCecConfig;->mStorageAdapter:Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;

    .line 288
    const-string/jumbo v3, "hdmi_cec_enabled"

    const v4, 0x1110054

    invoke-direct {v0, v3, v4}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object v3

    .line 291
    .local v3, "hdmiCecEnabled":Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    const/4 v4, 0x1

    const v5, 0x1110052

    const v6, 0x1110053

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 294
    const/4 v5, 0x0

    const v6, 0x1110050

    const v7, 0x1110051

    invoke-virtual {v3, v5, v6, v7}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 298
    const-string/jumbo v6, "hdmi_cec_version"

    const v7, 0x1110059

    invoke-direct {v0, v6, v7}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object v6

    .line 301
    .local v6, "hdmiCecVersion":Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    const/4 v7, 0x5

    const v8, 0x1110055

    const v9, 0x1110056

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 304
    const/4 v7, 0x6

    const v8, 0x1110057

    const v9, 0x1110058

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 308
    const-string/jumbo v8, "routing_control"

    const v9, 0x11100db

    invoke-direct {v0, v8, v9}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object v8

    .line 311
    .local v8, "routingControlControl":Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    const v9, 0x11100d9

    const v10, 0x11100da

    invoke-virtual {v8, v4, v9, v10}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 314
    const v9, 0x11100d7

    const v10, 0x11100d8

    invoke-virtual {v8, v5, v9, v10}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 318
    const-string/jumbo v9, "power_control_mode"

    const v10, 0x1110062

    invoke-direct {v0, v9, v10}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object v9

    .line 321
    .local v9, "powerControlMode":Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    const-string/jumbo v10, "to_tv"

    const v11, 0x1110060

    const v12, 0x1110061

    invoke-virtual {v9, v10, v11, v12}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(Ljava/lang/String;II)V

    .line 324
    const-string v10, "broadcast"

    const v11, 0x111005a

    const v12, 0x111005b

    invoke-virtual {v9, v10, v11, v12}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(Ljava/lang/String;II)V

    .line 327
    const-string/jumbo v10, "none"

    const v11, 0x111005c

    const v12, 0x111005d

    invoke-virtual {v9, v10, v11, v12}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(Ljava/lang/String;II)V

    .line 330
    const-string/jumbo v11, "to_tv_and_audio_system"

    const v12, 0x111005e

    const v13, 0x111005f

    invoke-virtual {v9, v11, v12, v13}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(Ljava/lang/String;II)V

    .line 334
    const-string/jumbo v11, "power_state_change_on_active_source_lost"

    const v12, 0x1110067

    invoke-direct {v0, v11, v12}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object v11

    .line 337
    .local v11, "powerStateChangeOnActiveSourceLost":Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    const v12, 0x1110063

    const v13, 0x1110064

    invoke-virtual {v11, v10, v12, v13}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(Ljava/lang/String;II)V

    .line 341
    const-string/jumbo v10, "standby_now"

    const v12, 0x1110065

    const v13, 0x1110066

    invoke-virtual {v11, v10, v12, v13}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(Ljava/lang/String;II)V

    .line 346
    const-string/jumbo v10, "system_audio_control"

    const v12, 0x11100e5

    invoke-direct {v0, v10, v12}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object v10

    .line 349
    .local v10, "systemAudioControl":Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    const v12, 0x11100e3

    const v13, 0x11100e4

    invoke-virtual {v10, v4, v12, v13}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 352
    const v12, 0x11100e1

    const v13, 0x11100e2

    invoke-virtual {v10, v5, v12, v13}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 356
    const-string/jumbo v12, "system_audio_mode_muting"

    const v13, 0x11100ea

    invoke-direct {v0, v12, v13}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object v12

    .line 359
    .local v12, "systemAudioModeMuting":Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    const v13, 0x11100e8

    const v14, 0x11100e9

    invoke-virtual {v12, v4, v13, v14}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 362
    const v13, 0x11100e6

    const v14, 0x11100e7

    invoke-virtual {v12, v5, v13, v14}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 366
    const-string/jumbo v13, "volume_control_enabled"

    const v14, 0x11100f9

    invoke-direct {v0, v13, v14}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object v13

    .line 369
    .local v13, "volumeControlMode":Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    const v14, 0x11100f7

    const v15, 0x11100f8

    invoke-virtual {v13, v4, v14, v15}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 372
    const v14, 0x11100f5

    const v15, 0x11100f6

    invoke-virtual {v13, v5, v14, v15}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 376
    const-string/jumbo v14, "tv_wake_on_one_touch_play"

    const v15, 0x11100f4

    invoke-direct {v0, v14, v15}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object v14

    .line 379
    .local v14, "tvWakeOnOneTouchPlay":Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    const v15, 0x11100f2

    const v7, 0x11100f3

    invoke-virtual {v14, v4, v15, v7}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 382
    const v7, 0x11100f0

    const v15, 0x11100f1

    invoke-virtual {v14, v5, v7, v15}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 386
    const-string/jumbo v7, "tv_send_standby_on_sleep"

    const v15, 0x11100ef

    invoke-direct {v0, v7, v15}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object v7

    .line 389
    .local v7, "tvSendStandbyOnSleep":Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    const v15, 0x11100ed

    const v5, 0x11100ee

    invoke-virtual {v7, v4, v15, v5}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 392
    const v5, 0x11100eb

    const v15, 0x11100ec

    const/4 v4, 0x0

    invoke-virtual {v7, v4, v5, v15}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 396
    const-string/jumbo v4, "set_menu_language"

    const v5, 0x11100e0

    invoke-direct {v0, v4, v5}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object v4

    .line 399
    .local v4, "setMenuLanguage":Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    const v5, 0x11100de

    const v15, 0x11100df

    const/4 v1, 0x1

    invoke-virtual {v4, v1, v5, v15}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 402
    const v1, 0x11100dc

    const v5, 0x11100dd

    const/4 v15, 0x0

    invoke-virtual {v4, v15, v1, v5}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 406
    const-string/jumbo v1, "rc_profile_tv"

    const v5, 0x11100d6

    invoke-direct {v0, v1, v5}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object v1

    .line 409
    .local v1, "rcProfileTv":Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    const v5, 0x11100ce

    const v2, 0x11100cf

    invoke-virtual {v1, v15, v5, v2}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 412
    const/4 v2, 0x2

    const v5, 0x11100d0

    const v15, 0x11100d1

    invoke-virtual {v1, v2, v5, v15}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 415
    const v2, 0x11100d4

    const v5, 0x11100d5

    const/4 v15, 0x6

    invoke-virtual {v1, v15, v2, v5}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 418
    const/16 v2, 0xa

    const v5, 0x11100d2

    const v15, 0x11100d3

    invoke-virtual {v1, v2, v5, v15}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 421
    const/16 v2, 0xe

    const v5, 0x11100cc

    const v15, 0x11100cd

    invoke-virtual {v1, v2, v5, v15}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 425
    const-string/jumbo v2, "rc_profile_source_handles_root_menu"

    const v5, 0x11100c1

    invoke-direct {v0, v2, v5}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object v2

    .line 428
    .local v2, "rcProfileSourceRootMenu":Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    const v5, 0x11100bd

    const v15, 0x11100be

    move-object/from16 v16, v1

    const/4 v1, 0x1

    .end local v1    # "rcProfileTv":Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    .local v16, "rcProfileTv":Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    invoke-virtual {v2, v1, v5, v15}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 432
    const v1, 0x11100bf

    const v5, 0x11100c0

    const/4 v15, 0x0

    invoke-virtual {v2, v15, v1, v5}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 437
    const-string/jumbo v1, "rc_profile_source_handles_setup_menu"

    const v5, 0x11100c6

    invoke-direct {v0, v1, v5}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object v1

    .line 440
    .local v1, "rcProfileSourceSetupMenu":Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    const v5, 0x11100c2

    const v15, 0x11100c3

    move-object/from16 v17, v2

    const/4 v2, 0x1

    .end local v2    # "rcProfileSourceRootMenu":Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    .local v17, "rcProfileSourceRootMenu":Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    invoke-virtual {v1, v2, v5, v15}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 444
    const v2, 0x11100c4

    const v5, 0x11100c5

    const/4 v15, 0x0

    invoke-virtual {v1, v15, v2, v5}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 449
    const-string/jumbo v2, "rc_profile_source_handles_contents_menu"

    const v5, 0x11100b7

    invoke-direct {v0, v2, v5}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object v2

    .line 452
    .local v2, "rcProfileSourceContentsMenu":Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    const v5, 0x11100b3

    const v15, 0x11100b4

    move-object/from16 v18, v1

    const/4 v1, 0x1

    .end local v1    # "rcProfileSourceSetupMenu":Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    .local v18, "rcProfileSourceSetupMenu":Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    invoke-virtual {v2, v1, v5, v15}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 456
    const v1, 0x11100b5

    const v5, 0x11100b6

    const/4 v15, 0x0

    invoke-virtual {v2, v15, v1, v5}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 461
    const-string/jumbo v1, "rc_profile_source_handles_top_menu"

    const v5, 0x11100cb

    invoke-direct {v0, v1, v5}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object v1

    .line 464
    .local v1, "rcProfileSourceTopMenu":Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    const v5, 0x11100c7

    const v15, 0x11100c8

    move-object/from16 v19, v2

    const/4 v2, 0x1

    .end local v2    # "rcProfileSourceContentsMenu":Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    .local v19, "rcProfileSourceContentsMenu":Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    invoke-virtual {v1, v2, v5, v15}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 468
    const v2, 0x11100c9

    const v5, 0x11100ca

    const/4 v15, 0x0

    invoke-virtual {v1, v15, v2, v5}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 473
    const-string/jumbo v2, "rc_profile_source_handles_media_context_sensitive_menu"

    const v5, 0x11100bc

    invoke-direct {v0, v2, v5}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object v2

    .line 477
    .local v2, "rcProfileSourceMediaContextSensitiveMenu":Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    const v5, 0x11100b8

    const v15, 0x11100b9

    move-object/from16 v20, v1

    const/4 v1, 0x1

    .end local v1    # "rcProfileSourceTopMenu":Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    .local v20, "rcProfileSourceTopMenu":Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    invoke-virtual {v2, v1, v5, v15}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 481
    const v1, 0x11100ba

    const v5, 0x11100bb

    const/4 v15, 0x0

    invoke-virtual {v2, v15, v1, v5}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 486
    const-string/jumbo v1, "query_sad_lpcm"

    const v5, 0x111008f

    invoke-direct {v0, v1, v5}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object v1

    .line 489
    .local v1, "querySadLpcm":Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    const v5, 0x111008d

    const v15, 0x111008e

    move-object/from16 v21, v2

    const/4 v2, 0x1

    .end local v2    # "rcProfileSourceMediaContextSensitiveMenu":Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    .local v21, "rcProfileSourceMediaContextSensitiveMenu":Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    invoke-virtual {v1, v2, v5, v15}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 493
    const v2, 0x111008b

    const v5, 0x111008c

    const/4 v15, 0x0

    invoke-virtual {v1, v15, v2, v5}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 498
    const-string/jumbo v2, "query_sad_dd"

    const v5, 0x1110076

    invoke-direct {v0, v2, v5}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object v2

    .line 501
    .local v2, "querySadDd":Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    const v5, 0x1110074

    const v15, 0x1110075

    move-object/from16 v22, v1

    const/4 v1, 0x1

    .end local v1    # "querySadLpcm":Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    .local v22, "querySadLpcm":Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    invoke-virtual {v2, v1, v5, v15}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 505
    const v1, 0x1110072

    const v5, 0x1110073

    const/4 v15, 0x0

    invoke-virtual {v2, v15, v1, v5}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 510
    const-string/jumbo v1, "query_sad_mpeg1"

    const v5, 0x111009e

    invoke-direct {v0, v1, v5}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object v1

    .line 513
    .local v1, "querySadMpeg1":Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    const v5, 0x111009c

    const v15, 0x111009d

    move-object/from16 v23, v2

    const/4 v2, 0x1

    .end local v2    # "querySadDd":Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    .local v23, "querySadDd":Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    invoke-virtual {v1, v2, v5, v15}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 517
    const v2, 0x111009a

    const v5, 0x111009b

    const/4 v15, 0x0

    invoke-virtual {v1, v15, v2, v5}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 522
    const-string/jumbo v2, "query_sad_mp3"

    const v5, 0x1110099

    invoke-direct {v0, v2, v5}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object v2

    .line 525
    .local v2, "querySadMp3":Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    const v5, 0x1110097

    const v15, 0x1110098

    move-object/from16 v24, v1

    const/4 v1, 0x1

    .end local v1    # "querySadMpeg1":Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    .local v24, "querySadMpeg1":Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    invoke-virtual {v2, v1, v5, v15}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 529
    const v1, 0x1110095

    const v5, 0x1110096

    const/4 v15, 0x0

    invoke-virtual {v2, v15, v1, v5}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 534
    const-string/jumbo v1, "query_sad_mpeg2"

    const v5, 0x11100a3

    invoke-direct {v0, v1, v5}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object v1

    .line 537
    .local v1, "querySadMpeg2":Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    const v5, 0x11100a1

    const v15, 0x11100a2

    move-object/from16 v25, v2

    const/4 v2, 0x1

    .end local v2    # "querySadMp3":Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    .local v25, "querySadMp3":Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    invoke-virtual {v1, v2, v5, v15}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 541
    const v2, 0x111009f

    const v5, 0x11100a0

    const/4 v15, 0x0

    invoke-virtual {v1, v15, v2, v5}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 546
    const-string/jumbo v2, "query_sad_aac"

    const v5, 0x111006c

    invoke-direct {v0, v2, v5}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object v2

    .line 549
    .local v2, "querySadAac":Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    const v5, 0x111006a

    const v15, 0x111006b

    move-object/from16 v26, v1

    const/4 v1, 0x1

    .end local v1    # "querySadMpeg2":Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    .local v26, "querySadMpeg2":Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    invoke-virtual {v2, v1, v5, v15}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 553
    const v1, 0x1110068

    const v5, 0x1110069

    const/4 v15, 0x0

    invoke-virtual {v2, v15, v1, v5}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 558
    const-string/jumbo v1, "query_sad_dts"

    const v5, 0x1110085

    invoke-direct {v0, v1, v5}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object v1

    .line 561
    .local v1, "querySadDts":Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    const v5, 0x1110083

    const v15, 0x1110084

    move-object/from16 v27, v2

    const/4 v2, 0x1

    .end local v2    # "querySadAac":Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    .local v27, "querySadAac":Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    invoke-virtual {v1, v2, v5, v15}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 565
    const v2, 0x1110081

    const v5, 0x1110082

    const/4 v15, 0x0

    invoke-virtual {v1, v15, v2, v5}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 570
    const-string/jumbo v2, "query_sad_atrac"

    const v5, 0x1110071

    invoke-direct {v0, v2, v5}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object v2

    .line 573
    .local v2, "querySadAtrac":Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    const v5, 0x111006f

    const v15, 0x1110070

    move-object/from16 v28, v1

    const/4 v1, 0x1

    .end local v1    # "querySadDts":Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    .local v28, "querySadDts":Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    invoke-virtual {v2, v1, v5, v15}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 577
    const v1, 0x111006d

    const v5, 0x111006e

    const/4 v15, 0x0

    invoke-virtual {v2, v15, v1, v5}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 582
    const-string/jumbo v1, "query_sad_onebitaudio"

    const v5, 0x11100a8

    invoke-direct {v0, v1, v5}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object v1

    .line 585
    .local v1, "querySadOnebitaudio":Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    const v5, 0x11100a6

    const v15, 0x11100a7

    move-object/from16 v29, v2

    const/4 v2, 0x1

    .end local v2    # "querySadAtrac":Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    .local v29, "querySadAtrac":Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    invoke-virtual {v1, v2, v5, v15}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 589
    const v2, 0x11100a4

    const v5, 0x11100a5

    const/4 v15, 0x0

    invoke-virtual {v1, v15, v2, v5}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 594
    const-string/jumbo v2, "query_sad_ddp"

    const v5, 0x111007b

    invoke-direct {v0, v2, v5}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object v2

    .line 597
    .local v2, "querySadDdp":Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    const v5, 0x1110079

    const v15, 0x111007a

    move-object/from16 v30, v1

    const/4 v1, 0x1

    .end local v1    # "querySadOnebitaudio":Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    .local v30, "querySadOnebitaudio":Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    invoke-virtual {v2, v1, v5, v15}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 601
    const v1, 0x1110077

    const v5, 0x1110078

    const/4 v15, 0x0

    invoke-virtual {v2, v15, v1, v5}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 606
    const-string/jumbo v1, "query_sad_dtshd"

    const v5, 0x111008a

    invoke-direct {v0, v1, v5}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object v1

    .line 609
    .local v1, "querySadDtshd":Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    const v5, 0x1110088

    const v15, 0x1110089

    move-object/from16 v31, v2

    const/4 v2, 0x1

    .end local v2    # "querySadDdp":Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    .local v31, "querySadDdp":Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    invoke-virtual {v1, v2, v5, v15}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 613
    const v2, 0x1110086

    const v5, 0x1110087

    const/4 v15, 0x0

    invoke-virtual {v1, v15, v2, v5}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 618
    const-string/jumbo v2, "query_sad_truehd"

    const v5, 0x11100ad

    invoke-direct {v0, v2, v5}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object v2

    .line 621
    .local v2, "querySadTruehd":Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    const v5, 0x11100ab

    const v15, 0x11100ac

    move-object/from16 v32, v1

    const/4 v1, 0x1

    .end local v1    # "querySadDtshd":Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    .local v32, "querySadDtshd":Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    invoke-virtual {v2, v1, v5, v15}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 625
    const v1, 0x11100a9

    const v5, 0x11100aa

    const/4 v15, 0x0

    invoke-virtual {v2, v15, v1, v5}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 630
    const-string/jumbo v1, "query_sad_dst"

    const v5, 0x1110080

    invoke-direct {v0, v1, v5}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object v1

    .line 633
    .local v1, "querySadDst":Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    const v5, 0x111007e

    const v15, 0x111007f

    move-object/from16 v33, v2

    const/4 v2, 0x1

    .end local v2    # "querySadTruehd":Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    .local v33, "querySadTruehd":Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    invoke-virtual {v1, v2, v5, v15}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 637
    const v2, 0x111007c

    const v5, 0x111007d

    const/4 v15, 0x0

    invoke-virtual {v1, v15, v2, v5}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 642
    const-string/jumbo v2, "query_sad_wmapro"

    const v5, 0x11100b2

    invoke-direct {v0, v2, v5}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object v2

    .line 645
    .local v2, "querySadWmapro":Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    const v5, 0x11100b0

    const v15, 0x11100b1

    move-object/from16 v34, v1

    const/4 v1, 0x1

    .end local v1    # "querySadDst":Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    .local v34, "querySadDst":Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    invoke-virtual {v2, v1, v5, v15}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 649
    const v1, 0x11100ae

    const v5, 0x11100af

    const/4 v15, 0x0

    invoke-virtual {v2, v15, v1, v5}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 654
    const-string/jumbo v1, "query_sad_max"

    const v5, 0x1110094

    invoke-direct {v0, v1, v5}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object v1

    .line 657
    .local v1, "querySadMax":Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    const v5, 0x1110092

    const v15, 0x1110093

    const/4 v0, 0x1

    invoke-virtual {v1, v0, v5, v15}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 661
    const v0, 0x1110090

    const v5, 0x1110091

    const/4 v15, 0x0

    invoke-virtual {v1, v15, v0, v5}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 666
    invoke-direct/range {p0 .. p0}, Lcom/android/server/hdmi/HdmiCecConfig;->verifySettings()V

    .line 667
    return-void
.end method

.method private getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 692
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mSettings:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mSettings:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return-object v0
.end method

.method private getStorage(Lcom/android/server/hdmi/HdmiCecConfig$Setting;)I
    .registers 5
    .param p1, "setting"    # Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    .line 697
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x2

    sparse-switch v1, :sswitch_data_1e4

    :cond_c
    goto/16 :goto_19d

    :sswitch_e
    const-string/jumbo v1, "system_audio_control"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x6

    goto/16 :goto_19e

    :sswitch_1a
    const-string/jumbo v1, "tv_send_standby_on_sleep"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0x9

    goto/16 :goto_19e

    :sswitch_27
    const-string/jumbo v1, "query_sad_mp3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0x14

    goto/16 :goto_19e

    :sswitch_34
    const-string/jumbo v1, "query_sad_max"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0x1f

    goto/16 :goto_19e

    :sswitch_41
    const-string/jumbo v1, "query_sad_dts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0x17

    goto/16 :goto_19e

    :sswitch_4e
    const-string/jumbo v1, "query_sad_dst"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0x1d

    goto/16 :goto_19e

    :sswitch_5b
    const-string/jumbo v1, "query_sad_ddp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0x1a

    goto/16 :goto_19e

    :sswitch_68
    const-string/jumbo v1, "query_sad_aac"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0x16

    goto/16 :goto_19e

    :sswitch_75
    const-string/jumbo v1, "tv_wake_on_one_touch_play"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0x8

    goto/16 :goto_19e

    :sswitch_82
    const-string/jumbo v1, "query_sad_dd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0x12

    goto/16 :goto_19e

    :sswitch_8f
    const-string/jumbo v1, "query_sad_onebitaudio"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0x19

    goto/16 :goto_19e

    :sswitch_9c
    const-string/jumbo v1, "rc_profile_tv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0xb

    goto/16 :goto_19e

    :sswitch_a9
    const-string/jumbo v1, "hdmi_cec_enabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    goto/16 :goto_19e

    :sswitch_b5
    const-string/jumbo v1, "volume_control_enabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x4

    goto/16 :goto_19e

    :sswitch_c1
    const-string/jumbo v1, "power_control_mode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x3

    goto/16 :goto_19e

    :sswitch_cd
    const-string/jumbo v1, "power_state_change_on_active_source_lost"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x5

    goto/16 :goto_19e

    :sswitch_d9
    const-string/jumbo v1, "rc_profile_source_handles_setup_menu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0xd

    goto/16 :goto_19e

    :sswitch_e6
    const-string/jumbo v1, "query_sad_lpcm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0x11

    goto/16 :goto_19e

    :sswitch_f3
    const-string/jumbo v1, "routing_control"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v2

    goto/16 :goto_19e

    :sswitch_ff
    const-string/jumbo v1, "query_sad_wmapro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0x1e

    goto/16 :goto_19e

    :sswitch_10c
    const-string/jumbo v1, "rc_profile_source_handles_contents_menu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0xe

    goto/16 :goto_19e

    :sswitch_119
    const-string/jumbo v1, "query_sad_truehd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0x1c

    goto/16 :goto_19e

    :sswitch_126
    const-string/jumbo v1, "query_sad_mpeg2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0x15

    goto/16 :goto_19e

    :sswitch_133
    const-string/jumbo v1, "query_sad_mpeg1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0x13

    goto :goto_19e

    :sswitch_13f
    const-string/jumbo v1, "query_sad_dtshd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0x1b

    goto :goto_19e

    :sswitch_14b
    const-string/jumbo v1, "query_sad_atrac"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0x18

    goto :goto_19e

    :sswitch_157
    const-string/jumbo v1, "rc_profile_source_handles_root_menu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0xc

    goto :goto_19e

    :sswitch_163
    const-string/jumbo v1, "rc_profile_source_handles_top_menu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0xf

    goto :goto_19e

    :sswitch_16f
    const-string/jumbo v1, "rc_profile_source_handles_media_context_sensitive_menu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0x10

    goto :goto_19e

    :sswitch_17b
    const-string/jumbo v1, "set_menu_language"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0xa

    goto :goto_19e

    :sswitch_187
    const-string/jumbo v1, "system_audio_mode_muting"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x7

    goto :goto_19e

    :sswitch_192
    const-string/jumbo v1, "hdmi_cec_version"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_19e

    :goto_19d
    const/4 v0, -0x1

    :goto_19e
    packed-switch v0, :pswitch_data_266

    .line 764
    new-instance v0, Lcom/android/server/hdmi/HdmiCecConfig$VerificationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid CEC setting \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' storage."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/hdmi/HdmiCecConfig$VerificationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 762
    :pswitch_1c4
    return v2

    .line 760
    :pswitch_1c5
    return v2

    .line 758
    :pswitch_1c6
    return v2

    .line 756
    :pswitch_1c7
    return v2

    .line 754
    :pswitch_1c8
    return v2

    .line 752
    :pswitch_1c9
    return v2

    .line 750
    :pswitch_1ca
    return v2

    .line 748
    :pswitch_1cb
    return v2

    .line 746
    :pswitch_1cc
    return v2

    .line 744
    :pswitch_1cd
    return v2

    .line 742
    :pswitch_1ce
    return v2

    .line 740
    :pswitch_1cf
    return v2

    .line 738
    :pswitch_1d0
    return v2

    .line 736
    :pswitch_1d1
    return v2

    .line 734
    :pswitch_1d2
    return v2

    .line 732
    :pswitch_1d3
    return v2

    .line 729
    :pswitch_1d4
    return v2

    .line 727
    :pswitch_1d5
    return v2

    .line 725
    :pswitch_1d6
    return v2

    .line 723
    :pswitch_1d7
    return v2

    .line 721
    :pswitch_1d8
    return v2

    .line 719
    :pswitch_1d9
    return v2

    .line 717
    :pswitch_1da
    return v2

    .line 715
    :pswitch_1db
    return v2

    .line 713
    :pswitch_1dc
    return v2

    .line 711
    :pswitch_1dd
    return v2

    .line 709
    :pswitch_1de
    return v2

    .line 707
    :pswitch_1df
    return v2

    .line 705
    :pswitch_1e0
    return v2

    .line 703
    :pswitch_1e1
    return v2

    .line 701
    :pswitch_1e2
    return v2

    .line 699
    :pswitch_1e3
    return v2

    :sswitch_data_1e4
    .sparse-switch
        -0x7b89074d -> :sswitch_192
        -0x6a9ec647 -> :sswitch_187
        -0x607d7ae5 -> :sswitch_17b
        -0x4c082dd9 -> :sswitch_16f
        -0x4ab99283 -> :sswitch_163
        -0x46d3da58 -> :sswitch_157
        -0x44f9855f -> :sswitch_14b
        -0x44cf3a41 -> :sswitch_13f
        -0x44526d14 -> :sswitch_133
        -0x44526d13 -> :sswitch_126
        -0x39e5d496 -> :sswitch_119
        -0x36427790 -> :sswitch_10c
        -0x3516ad1e -> :sswitch_ff
        -0x1893b91c -> :sswitch_f3
        -0x12b8cab2 -> :sswitch_e6
        -0x117d9fab -> :sswitch_d9
        -0xd196d78 -> :sswitch_cd
        -0x1832fc1 -> :sswitch_c1
        0x45cb33a -> :sswitch_b5
        0xf91671c -> :sswitch_a9
        0x2f314ba6 -> :sswitch_9c
        0x2fa40eef -> :sswitch_8f
        0x5e0410e0 -> :sswitch_82
        0x611b5e8f -> :sswitch_75
        0x627dffe3 -> :sswitch_68
        0x627e0b90 -> :sswitch_5b
        0x627e0d65 -> :sswitch_4e
        0x627e0d83 -> :sswitch_41
        0x627e2d04 -> :sswitch_34
        0x627e2e90 -> :sswitch_27
        0x7a8663a3 -> :sswitch_1a
        0x7e41b7e4 -> :sswitch_e
    .end sparse-switch

    :pswitch_data_266
    .packed-switch 0x0
        :pswitch_1e3
        :pswitch_1e2
        :pswitch_1e1
        :pswitch_1e0
        :pswitch_1df
        :pswitch_1de
        :pswitch_1dd
        :pswitch_1dc
        :pswitch_1db
        :pswitch_1da
        :pswitch_1d9
        :pswitch_1d8
        :pswitch_1d7
        :pswitch_1d6
        :pswitch_1d5
        :pswitch_1d4
        :pswitch_1d3
        :pswitch_1d2
        :pswitch_1d1
        :pswitch_1d0
        :pswitch_1cf
        :pswitch_1ce
        :pswitch_1cd
        :pswitch_1cc
        :pswitch_1cb
        :pswitch_1ca
        :pswitch_1c9
        :pswitch_1c8
        :pswitch_1c7
        :pswitch_1c6
        :pswitch_1c5
        :pswitch_1c4
    .end packed-switch
.end method

.method private getStorageKey(Lcom/android/server/hdmi/HdmiCecConfig$Setting;)Ljava/lang/String;
    .registers 5
    .param p1, "setting"    # Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    .line 770
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_264

    :cond_b
    goto/16 :goto_19c

    :sswitch_d
    const-string/jumbo v1, "system_audio_control"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x6

    goto/16 :goto_19d

    :sswitch_19
    const-string/jumbo v1, "tv_send_standby_on_sleep"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0x9

    goto/16 :goto_19d

    :sswitch_26
    const-string/jumbo v1, "query_sad_mp3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0x14

    goto/16 :goto_19d

    :sswitch_33
    const-string/jumbo v1, "query_sad_max"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0x1f

    goto/16 :goto_19d

    :sswitch_40
    const-string/jumbo v1, "query_sad_dts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0x17

    goto/16 :goto_19d

    :sswitch_4d
    const-string/jumbo v1, "query_sad_dst"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0x1d

    goto/16 :goto_19d

    :sswitch_5a
    const-string/jumbo v1, "query_sad_ddp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0x1a

    goto/16 :goto_19d

    :sswitch_67
    const-string/jumbo v1, "query_sad_aac"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0x16

    goto/16 :goto_19d

    :sswitch_74
    const-string/jumbo v1, "tv_wake_on_one_touch_play"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0x8

    goto/16 :goto_19d

    :sswitch_81
    const-string/jumbo v1, "query_sad_dd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0x12

    goto/16 :goto_19d

    :sswitch_8e
    const-string/jumbo v1, "query_sad_onebitaudio"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0x19

    goto/16 :goto_19d

    :sswitch_9b
    const-string/jumbo v1, "rc_profile_tv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0xb

    goto/16 :goto_19d

    :sswitch_a8
    const-string/jumbo v1, "hdmi_cec_enabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    goto/16 :goto_19d

    :sswitch_b4
    const-string/jumbo v1, "volume_control_enabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x4

    goto/16 :goto_19d

    :sswitch_c0
    const-string/jumbo v1, "power_control_mode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x3

    goto/16 :goto_19d

    :sswitch_cc
    const-string/jumbo v1, "power_state_change_on_active_source_lost"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x5

    goto/16 :goto_19d

    :sswitch_d8
    const-string/jumbo v1, "rc_profile_source_handles_setup_menu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0xd

    goto/16 :goto_19d

    :sswitch_e5
    const-string/jumbo v1, "query_sad_lpcm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0x11

    goto/16 :goto_19d

    :sswitch_f2
    const-string/jumbo v1, "routing_control"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x2

    goto/16 :goto_19d

    :sswitch_fe
    const-string/jumbo v1, "query_sad_wmapro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0x1e

    goto/16 :goto_19d

    :sswitch_10b
    const-string/jumbo v1, "rc_profile_source_handles_contents_menu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0xe

    goto/16 :goto_19d

    :sswitch_118
    const-string/jumbo v1, "query_sad_truehd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0x1c

    goto/16 :goto_19d

    :sswitch_125
    const-string/jumbo v1, "query_sad_mpeg2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0x15

    goto/16 :goto_19d

    :sswitch_132
    const-string/jumbo v1, "query_sad_mpeg1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0x13

    goto :goto_19d

    :sswitch_13e
    const-string/jumbo v1, "query_sad_dtshd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0x1b

    goto :goto_19d

    :sswitch_14a
    const-string/jumbo v1, "query_sad_atrac"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0x18

    goto :goto_19d

    :sswitch_156
    const-string/jumbo v1, "rc_profile_source_handles_root_menu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0xc

    goto :goto_19d

    :sswitch_162
    const-string/jumbo v1, "rc_profile_source_handles_top_menu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0xf

    goto :goto_19d

    :sswitch_16e
    const-string/jumbo v1, "rc_profile_source_handles_media_context_sensitive_menu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0x10

    goto :goto_19d

    :sswitch_17a
    const-string/jumbo v1, "set_menu_language"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0xa

    goto :goto_19d

    :sswitch_186
    const-string/jumbo v1, "system_audio_mode_muting"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x7

    goto :goto_19d

    :sswitch_191
    const-string/jumbo v1, "hdmi_cec_version"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_19d

    :goto_19c
    const/4 v0, -0x1

    :goto_19d
    packed-switch v0, :pswitch_data_2e6

    .line 837
    new-instance v0, Lcom/android/server/hdmi/HdmiCecConfig$VerificationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid CEC setting \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' storage key."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/hdmi/HdmiCecConfig$VerificationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 835
    :pswitch_1c3
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 833
    :pswitch_1c8
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 831
    :pswitch_1cd
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 829
    :pswitch_1d2
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 827
    :pswitch_1d7
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 825
    :pswitch_1dc
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 823
    :pswitch_1e1
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 821
    :pswitch_1e6
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 819
    :pswitch_1eb
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 817
    :pswitch_1f0
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 815
    :pswitch_1f5
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 813
    :pswitch_1fa
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 811
    :pswitch_1ff
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 809
    :pswitch_204
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 807
    :pswitch_209
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 805
    :pswitch_20e
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 802
    :pswitch_213
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 800
    :pswitch_218
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 798
    :pswitch_21d
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 796
    :pswitch_222
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 794
    :pswitch_227
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 792
    :pswitch_22c
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 790
    :pswitch_231
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 788
    :pswitch_236
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 786
    :pswitch_23b
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 784
    :pswitch_240
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 782
    :pswitch_245
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 780
    :pswitch_24a
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 778
    :pswitch_24f
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 776
    :pswitch_254
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 774
    :pswitch_259
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 772
    :pswitch_25e
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_264
    .sparse-switch
        -0x7b89074d -> :sswitch_191
        -0x6a9ec647 -> :sswitch_186
        -0x607d7ae5 -> :sswitch_17a
        -0x4c082dd9 -> :sswitch_16e
        -0x4ab99283 -> :sswitch_162
        -0x46d3da58 -> :sswitch_156
        -0x44f9855f -> :sswitch_14a
        -0x44cf3a41 -> :sswitch_13e
        -0x44526d14 -> :sswitch_132
        -0x44526d13 -> :sswitch_125
        -0x39e5d496 -> :sswitch_118
        -0x36427790 -> :sswitch_10b
        -0x3516ad1e -> :sswitch_fe
        -0x1893b91c -> :sswitch_f2
        -0x12b8cab2 -> :sswitch_e5
        -0x117d9fab -> :sswitch_d8
        -0xd196d78 -> :sswitch_cc
        -0x1832fc1 -> :sswitch_c0
        0x45cb33a -> :sswitch_b4
        0xf91671c -> :sswitch_a8
        0x2f314ba6 -> :sswitch_9b
        0x2fa40eef -> :sswitch_8e
        0x5e0410e0 -> :sswitch_81
        0x611b5e8f -> :sswitch_74
        0x627dffe3 -> :sswitch_67
        0x627e0b90 -> :sswitch_5a
        0x627e0d65 -> :sswitch_4d
        0x627e0d83 -> :sswitch_40
        0x627e2d04 -> :sswitch_33
        0x627e2e90 -> :sswitch_26
        0x7a8663a3 -> :sswitch_19
        0x7e41b7e4 -> :sswitch_d
    .end sparse-switch

    :pswitch_data_2e6
    .packed-switch 0x0
        :pswitch_25e
        :pswitch_259
        :pswitch_254
        :pswitch_24f
        :pswitch_24a
        :pswitch_245
        :pswitch_240
        :pswitch_23b
        :pswitch_236
        :pswitch_231
        :pswitch_22c
        :pswitch_227
        :pswitch_222
        :pswitch_21d
        :pswitch_218
        :pswitch_213
        :pswitch_20e
        :pswitch_209
        :pswitch_204
        :pswitch_1ff
        :pswitch_1fa
        :pswitch_1f5
        :pswitch_1f0
        :pswitch_1eb
        :pswitch_1e6
        :pswitch_1e1
        :pswitch_1dc
        :pswitch_1d7
        :pswitch_1d2
        :pswitch_1cd
        :pswitch_1c8
        :pswitch_1c3
    .end packed-switch
.end method

.method private notifySettingChanged(Ljava/lang/String;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;

    .line 875
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object v0

    .line 876
    .local v0, "setting":Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    if-eqz v0, :cond_a

    .line 879
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecConfig;->notifySettingChanged(Lcom/android/server/hdmi/HdmiCecConfig$Setting;)V

    .line 880
    return-void

    .line 877
    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' does not exist."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userConfResId"    # I

    .line 675
    new-instance v0, Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;-><init>(Lcom/android/server/hdmi/HdmiCecConfig;Landroid/content/Context;Ljava/lang/String;I)V

    .line 676
    .local v0, "setting":Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mSettings:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    return-object v0
.end method

.method private verifySettings()V
    .registers 3

    .line 681
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mSettings:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    .line 684
    .local v1, "setting":Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getDefaultValue()Lcom/android/server/hdmi/HdmiCecConfig$Value;

    .line 685
    invoke-direct {p0, v1}, Lcom/android/server/hdmi/HdmiCecConfig;->getStorage(Lcom/android/server/hdmi/HdmiCecConfig$Setting;)I

    .line 686
    invoke-direct {p0, v1}, Lcom/android/server/hdmi/HdmiCecConfig;->getStorageKey(Lcom/android/server/hdmi/HdmiCecConfig$Setting;)Ljava/lang/String;

    .line 687
    .end local v1    # "setting":Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    goto :goto_a

    .line 688
    :cond_20
    return-void
.end method


# virtual methods
.method public getAllSettings()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 958
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mSettings:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getAllowedIntValues(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1021
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object v0

    .line 1022
    .local v0, "setting":Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    const-string v1, "Setting \'"

    if-eqz v0, :cond_54

    .line 1025
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getValueType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "int"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 1029
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1030
    .local v1, "allowedValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getAllowedValues()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/hdmi/HdmiCecConfig$Value;

    .line 1031
    .local v3, "allowedValue":Lcom/android/server/hdmi/HdmiCecConfig$Value;
    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiCecConfig$Value;->getIntValue()Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1032
    .end local v3    # "allowedValue":Lcom/android/server/hdmi/HdmiCecConfig$Value;
    goto :goto_22

    .line 1033
    :cond_36
    return-object v1

    .line 1026
    .end local v1    # "allowedValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_37
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' is not a string-type setting."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1023
    :cond_54
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' does not exist."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getAllowedStringValues(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1002
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object v0

    .line 1003
    .local v0, "setting":Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    const-string v1, "Setting \'"

    if-eqz v0, :cond_54

    .line 1006
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getValueType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "string"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 1010
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1011
    .local v1, "allowedValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getAllowedValues()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/hdmi/HdmiCecConfig$Value;

    .line 1012
    .local v3, "allowedValue":Lcom/android/server/hdmi/HdmiCecConfig$Value;
    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiCecConfig$Value;->getStringValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1013
    .end local v3    # "allowedValue":Lcom/android/server/hdmi/HdmiCecConfig$Value;
    goto :goto_22

    .line 1014
    :cond_36
    return-object v1

    .line 1007
    .end local v1    # "allowedValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_37
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' is not a string-type setting."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1004
    :cond_54
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' does not exist."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getDefaultIntValue(Ljava/lang/String;)I
    .registers 6
    .param p1, "name"    # Ljava/lang/String;

    .line 1055
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object v0

    .line 1056
    .local v0, "setting":Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    const-string v1, "Setting \'"

    if-eqz v0, :cond_43

    .line 1059
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getValueType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "int"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1063
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getDefaultValue()Lcom/android/server/hdmi/HdmiCecConfig$Value;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecConfig$Value;->getIntValue()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 1060
    :cond_26
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' is not a string-type setting."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1057
    :cond_43
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' does not exist."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getDefaultStringValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;

    .line 1040
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object v0

    .line 1041
    .local v0, "setting":Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    const-string v1, "Setting \'"

    if-eqz v0, :cond_3f

    .line 1044
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getValueType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "string"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1048
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getDefaultValue()Lcom/android/server/hdmi/HdmiCecConfig$Value;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecConfig$Value;->getStringValue()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1045
    :cond_22
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' is not a string-type setting."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1042
    :cond_3f
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' does not exist."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getIntValue(Ljava/lang/String;)I
    .registers 6
    .param p1, "name"    # Ljava/lang/String;

    .line 1086
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object v0

    .line 1087
    .local v0, "setting":Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    const-string v1, "Setting \'"

    if-eqz v0, :cond_6a

    .line 1090
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getValueType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "int"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 1094
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Getting CEC setting value \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1095
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getDefaultValue()Lcom/android/server/hdmi/HdmiCecConfig$Value;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecConfig$Value;->getIntValue()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 1096
    .local v1, "defaultValue":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecConfig;->retrieveValue(Lcom/android/server/hdmi/HdmiCecConfig$Setting;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1097
    .local v2, "value":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    return v3

    .line 1091
    .end local v1    # "defaultValue":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :cond_4d
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' is not a int-type setting."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1088
    :cond_6a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' does not exist."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getStringValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;

    .line 1070
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object v0

    .line 1071
    .local v0, "setting":Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    const-string v1, "Setting \'"

    if-eqz v0, :cond_5e

    .line 1074
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getValueType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "string"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 1078
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Getting CEC setting value \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1079
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getDefaultValue()Lcom/android/server/hdmi/HdmiCecConfig$Value;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecConfig$Value;->getStringValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecConfig;->retrieveValue(Lcom/android/server/hdmi/HdmiCecConfig$Setting;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1075
    :cond_41
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' is not a string-type setting."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1072
    :cond_5e
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' does not exist."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getUserSettings()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 965
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 966
    .local v0, "settings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mSettings:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    .line 967
    .local v2, "setting":Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getUserConfigurable()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 968
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 970
    .end local v2    # "setting":Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    :cond_28
    goto :goto_f

    .line 971
    :cond_29
    return-object v0
.end method

.method public isIntValueType(Ljava/lang/String;)Z
    .registers 6
    .param p1, "name"    # Ljava/lang/String;

    .line 991
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object v0

    .line 992
    .local v0, "setting":Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    if-eqz v0, :cond_16

    .line 995
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getValueType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "int"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 993
    :cond_16
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' does not exist."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isStringValueType(Ljava/lang/String;)Z
    .registers 6
    .param p1, "name"    # Ljava/lang/String;

    .line 979
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object v0

    .line 980
    .local v0, "setting":Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    if-eqz v0, :cond_16

    .line 983
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getValueType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "string"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 981
    :cond_16
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' does not exist."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected notifySettingChanged(Lcom/android/server/hdmi/HdmiCecConfig$Setting;)V
    .registers 9
    .param p1, "setting"    # Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    .line 883
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 884
    :try_start_3
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mSettingChangeListeners:Landroid/util/ArrayMap;

    .line 885
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 886
    .local v1, "listeners":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/hdmi/HdmiCecConfig$SettingChangeListener;Ljava/util/concurrent/Executor;>;"
    if-nez v1, :cond_f

    .line 887
    monitor-exit v0

    return-void

    .line 889
    :cond_f
    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 890
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/hdmi/HdmiCecConfig$SettingChangeListener;Ljava/util/concurrent/Executor;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/hdmi/HdmiCecConfig$SettingChangeListener;

    .line 891
    .local v4, "listener":Lcom/android/server/hdmi/HdmiCecConfig$SettingChangeListener;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/Executor;

    .line 892
    .local v5, "executor":Ljava/util/concurrent/Executor;
    new-instance v6, Lcom/android/server/hdmi/HdmiCecConfig$1;

    invoke-direct {v6, p0, v4, p1}, Lcom/android/server/hdmi/HdmiCecConfig$1;-><init>(Lcom/android/server/hdmi/HdmiCecConfig;Lcom/android/server/hdmi/HdmiCecConfig$SettingChangeListener;Lcom/android/server/hdmi/HdmiCecConfig$Setting;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 898
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/hdmi/HdmiCecConfig$SettingChangeListener;Ljava/util/concurrent/Executor;>;"
    .end local v4    # "listener":Lcom/android/server/hdmi/HdmiCecConfig$SettingChangeListener;
    .end local v5    # "executor":Ljava/util/concurrent/Executor;
    goto :goto_17

    .line 899
    .end local v1    # "listeners":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/hdmi/HdmiCecConfig$SettingChangeListener;Ljava/util/concurrent/Executor;>;"
    :cond_38
    monitor-exit v0

    .line 900
    return-void

    .line 899
    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method public registerChangeListener(Ljava/lang/String;Lcom/android/server/hdmi/HdmiCecConfig$SettingChangeListener;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/android/server/hdmi/HdmiCecConfig$SettingChangeListener;

    .line 907
    sget-object v0, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig;->registerChangeListener(Ljava/lang/String;Lcom/android/server/hdmi/HdmiCecConfig$SettingChangeListener;Ljava/util/concurrent/Executor;)V

    .line 908
    return-void
.end method

.method public registerChangeListener(Ljava/lang/String;Lcom/android/server/hdmi/HdmiCecConfig$SettingChangeListener;Ljava/util/concurrent/Executor;)V
    .registers 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/android/server/hdmi/HdmiCecConfig$SettingChangeListener;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;

    .line 916
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object v0

    .line 917
    .local v0, "setting":Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    if-eqz v0, :cond_55

    .line 920
    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiCecConfig;->getStorage(Lcom/android/server/hdmi/HdmiCecConfig$Setting;)I

    move-result v1

    .line 921
    .local v1, "storage":I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_30

    const/4 v2, 0x2

    if-ne v1, v2, :cond_11

    goto :goto_30

    .line 922
    :cond_11
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Change listeners for setting \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' not supported."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 925
    :cond_30
    :goto_30
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 926
    :try_start_33
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mSettingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_45

    .line 927
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mSettingChangeListeners:Landroid/util/ArrayMap;

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v3, v0, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 929
    :cond_45
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mSettingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    invoke-virtual {v3, p2, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 930
    monitor-exit v2

    .line 931
    return-void

    .line 930
    :catchall_52
    move-exception v3

    monitor-exit v2
    :try_end_54
    .catchall {:try_start_33 .. :try_end_54} :catchall_52

    throw v3

    .line 918
    .end local v1    # "storage":I
    :cond_55
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' does not exist."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public removeChangeListener(Ljava/lang/String;Lcom/android/server/hdmi/HdmiCecConfig$SettingChangeListener;)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/android/server/hdmi/HdmiCecConfig$SettingChangeListener;

    .line 938
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object v0

    .line 939
    .local v0, "setting":Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    if-eqz v0, :cond_2c

    .line 942
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 943
    :try_start_9
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mSettingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 944
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mSettingChangeListeners:Landroid/util/ArrayMap;

    .line 945
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .line 946
    .local v2, "listeners":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/hdmi/HdmiCecConfig$SettingChangeListener;Ljava/util/concurrent/Executor;>;"
    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 947
    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 948
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mSettingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 951
    .end local v2    # "listeners":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/hdmi/HdmiCecConfig$SettingChangeListener;Ljava/util/concurrent/Executor;>;"
    :cond_27
    monitor-exit v1

    .line 952
    return-void

    .line 951
    :catchall_29
    move-exception v2

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_9 .. :try_end_2b} :catchall_29

    throw v2

    .line 940
    :cond_2c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' does not exist."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected retrieveValue(Lcom/android/server/hdmi/HdmiCecConfig$Setting;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "setting"    # Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 843
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getStorage(Lcom/android/server/hdmi/HdmiCecConfig$Setting;)I

    move-result v0

    .line 844
    .local v0, "storage":I
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getStorageKey(Lcom/android/server/hdmi/HdmiCecConfig$Setting;)Ljava/lang/String;

    move-result-object v1

    .line 845
    .local v1, "storageKey":Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "Reading \'"

    if-nez v0, :cond_30

    .line 846
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' sysprop."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v2}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 847
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mStorageAdapter:Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;

    invoke-virtual {v2, v1, p2}, Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;->retrieveSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 848
    :cond_30
    const/4 v4, 0x1

    if-ne v0, v4, :cond_56

    .line 849
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' global setting."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v2}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 850
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mStorageAdapter:Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;

    invoke-virtual {v2, v1, p2}, Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;->retrieveGlobalSetting(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 851
    :cond_56
    const/4 v4, 0x2

    if-ne v0, v4, :cond_7c

    .line 852
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' shared preference."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v2}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 853
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mStorageAdapter:Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;

    invoke-virtual {v2, v1, p2}, Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;->retrieveSharedPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 855
    :cond_7c
    const/4 v2, 0x0

    return-object v2
.end method

.method public setIntValue(Ljava/lang/String;I)V
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 1127
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object v0

    .line 1128
    .local v0, "setting":Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    const-string v1, "Setting \'"

    if-eqz v0, :cond_bb

    .line 1131
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getUserConfigurable()Z

    move-result v2

    const-string v3, "Updating CEC setting \'"

    if-eqz v2, :cond_9e

    .line 1134
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getValueType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "int"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_81

    .line 1138
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getAllowedIntValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "\'."

    if-eqz v1, :cond_5a

    .line 1142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' to \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1143
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecConfig;->storeValue(Lcom/android/server/hdmi/HdmiCecConfig$Setting;Ljava/lang/String;)V

    .line 1144
    return-void

    .line 1139
    :cond_5a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid CEC setting \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' value: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1135
    :cond_81
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' is not a int-type setting."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1132
    :cond_9e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' prohibited."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1129
    :cond_bb
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' does not exist."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setStringValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 1104
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object v0

    .line 1105
    .local v0, "setting":Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    const-string v1, "Setting \'"

    if-eqz v0, :cond_b3

    .line 1108
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getUserConfigurable()Z

    move-result v2

    const-string v3, "Updating CEC setting \'"

    if-eqz v2, :cond_96

    .line 1111
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getValueType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "string"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_79

    .line 1115
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getAllowedStringValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "\'."

    if-eqz v1, :cond_52

    .line 1119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' to \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1120
    invoke-virtual {p0, v0, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->storeValue(Lcom/android/server/hdmi/HdmiCecConfig$Setting;Ljava/lang/String;)V

    .line 1121
    return-void

    .line 1116
    :cond_52
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid CEC setting \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' value: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1112
    :cond_79
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' is not a string-type setting."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1109
    :cond_96
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' prohibited."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1106
    :cond_b3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' does not exist."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected storeValue(Lcom/android/server/hdmi/HdmiCecConfig$Setting;Ljava/lang/String;)V
    .registers 8
    .param p1, "setting"    # Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    .param p2, "value"    # Ljava/lang/String;

    .line 859
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getStorage(Lcom/android/server/hdmi/HdmiCecConfig$Setting;)I

    move-result v0

    .line 860
    .local v0, "storage":I
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getStorageKey(Lcom/android/server/hdmi/HdmiCecConfig$Setting;)Ljava/lang/String;

    move-result-object v1

    .line 861
    .local v1, "storageKey":Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "Setting \'"

    if-nez v0, :cond_2f

    .line 862
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' sysprop."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v2}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 863
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mStorageAdapter:Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;

    invoke-virtual {v2, v1, p2}, Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;->storeSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7b

    .line 864
    :cond_2f
    const/4 v4, 0x1

    if-ne v0, v4, :cond_54

    .line 865
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' global setting."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v2}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 866
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mStorageAdapter:Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;

    invoke-virtual {v2, v1, p2}, Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;->storeGlobalSetting(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7b

    .line 867
    :cond_54
    const/4 v4, 0x2

    if-ne v0, v4, :cond_7b

    .line 868
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' shared pref."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v2}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 869
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mStorageAdapter:Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;

    invoke-virtual {v2, v1, p2}, Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;->storeSharedPref(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->notifySettingChanged(Lcom/android/server/hdmi/HdmiCecConfig$Setting;)V

    .line 872
    :cond_7b
    :goto_7b
    return-void
.end method
