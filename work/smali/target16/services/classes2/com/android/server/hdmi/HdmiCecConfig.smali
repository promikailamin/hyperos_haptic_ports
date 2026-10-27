.class public Lcom/android/server/hdmi/HdmiCecConfig;
.super Ljava/lang/Object;
.source "HdmiCecConfig.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mLock:Ljava/lang/Object;

.field public final mSettingChangeListeners:Landroid/util/ArrayMap;

.field public mSettings:Ljava/util/LinkedHashMap;

.field public final mStorageAdapter:Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 736
    new-instance v0, Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;

    invoke-direct {v0, p1}, Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecConfig;-><init>(Landroid/content/Context;Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;)V

    .line 737
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecConfig;->migrateSettingsIfNeeded()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;)V
    .registers 9

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mLock:Ljava/lang/Object;

    .line 107
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mSettingChangeListeners:Landroid/util/ArrayMap;

    .line 111
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mSettings:Ljava/util/LinkedHashMap;

    .line 314
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mContext:Landroid/content/Context;

    .line 315
    iput-object p2, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mStorageAdapter:Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;

    .line 322
    const-string p1, "hdmi_cec_enabled"

    const p2, 0x1110076

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const p2, 0x1110074

    const v0, 0x1110075

    const/4 v1, 0x1

    .line 325
    invoke-virtual {p1, v1, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const p2, 0x1110072

    const v0, 0x1110073

    const/4 v2, 0x0

    .line 328
    invoke-virtual {p1, v2, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 332
    const-string p1, "hdmi_cec_version"

    const p2, 0x111007b

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const p2, 0x1110077

    const v0, 0x1110078

    const/4 v3, 0x5

    .line 335
    invoke-virtual {p1, v3, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const p2, 0x1110079

    const v0, 0x111007a

    const/4 v3, 0x6

    .line 338
    invoke-virtual {p1, v3, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 342
    const-string/jumbo p1, "routing_control"

    const p2, 0x11100fd

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const p2, 0x11100fb

    const v0, 0x11100fc

    .line 345
    invoke-virtual {p1, v1, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const p2, 0x11100f9

    const v0, 0x11100fa

    .line 348
    invoke-virtual {p1, v2, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 352
    const-string/jumbo p1, "soundbar_mode"

    const p2, 0x1110107

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const p2, 0x1110105

    const v0, 0x1110106

    .line 355
    invoke-virtual {p1, v1, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const p2, 0x1110103

    const v0, 0x1110104

    .line 358
    invoke-virtual {p1, v2, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 362
    const-string/jumbo p1, "power_control_mode"

    const p2, 0x1110084

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const p2, 0x1110082

    const v0, 0x1110083

    .line 365
    const-string/jumbo v4, "to_tv"

    invoke-virtual {p1, v4, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(Ljava/lang/String;II)V

    const p2, 0x111007c

    const v0, 0x111007d

    .line 368
    const-string v4, "broadcast"

    invoke-virtual {p1, v4, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(Ljava/lang/String;II)V

    const p2, 0x111007e

    const v0, 0x111007f

    .line 371
    const-string/jumbo v4, "none"

    invoke-virtual {p1, v4, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(Ljava/lang/String;II)V

    const p2, 0x1110080

    const v0, 0x1110081

    .line 374
    const-string/jumbo v5, "to_tv_and_audio_system"

    invoke-virtual {p1, v5, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(Ljava/lang/String;II)V

    .line 378
    const-string/jumbo p1, "power_state_change_on_active_source_lost"

    const p2, 0x1110089

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const p2, 0x1110085

    const v0, 0x1110086

    .line 381
    invoke-virtual {p1, v4, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(Ljava/lang/String;II)V

    const p2, 0x1110087

    const v0, 0x1110088

    .line 385
    const-string/jumbo v4, "standby_now"

    invoke-virtual {p1, v4, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(Ljava/lang/String;II)V

    .line 390
    const-string/jumbo p1, "system_audio_control"

    const p2, 0x111010c

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const p2, 0x111010a

    const v0, 0x111010b

    .line 393
    invoke-virtual {p1, v1, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const p2, 0x1110108

    const v0, 0x1110109

    .line 396
    invoke-virtual {p1, v2, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 400
    const-string/jumbo p1, "system_audio_mode_muting"

    const p2, 0x1110111

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const p2, 0x111010f

    const v0, 0x1110110

    .line 403
    invoke-virtual {p1, v1, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const p2, 0x111010d

    const v0, 0x111010e

    .line 406
    invoke-virtual {p1, v2, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 410
    const-string/jumbo p1, "volume_control_enabled"

    const p2, 0x1110125

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const p2, 0x1110123

    const v0, 0x1110124

    .line 413
    invoke-virtual {p1, v1, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const p2, 0x1110121

    const v0, 0x1110122

    .line 416
    invoke-virtual {p1, v2, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 420
    const-string/jumbo p1, "tv_wake_on_one_touch_play"

    const p2, 0x1110120

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const p2, 0x111011e

    const v0, 0x111011f

    .line 423
    invoke-virtual {p1, v1, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const p2, 0x111011c

    const v0, 0x111011d

    .line 426
    invoke-virtual {p1, v2, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 430
    const-string/jumbo p1, "tv_send_standby_on_sleep"

    const p2, 0x111011b

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const p2, 0x1110119

    const v0, 0x111011a

    .line 433
    invoke-virtual {p1, v1, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const p2, 0x1110117

    const v0, 0x1110118

    .line 436
    invoke-virtual {p1, v2, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 440
    const-string/jumbo p1, "set_menu_language"

    const p2, 0x1110102

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const p2, 0x1110100

    const v0, 0x1110101

    .line 443
    invoke-virtual {p1, v1, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const p2, 0x11100fe

    const v0, 0x11100ff

    .line 446
    invoke-virtual {p1, v2, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 450
    const-string/jumbo p1, "rc_profile_tv"

    const p2, 0x11100f8

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const p2, 0x11100f0

    const v0, 0x11100f1

    .line 453
    invoke-virtual {p1, v2, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const p2, 0x11100f2

    const v0, 0x11100f3

    const/4 v4, 0x2

    .line 456
    invoke-virtual {p1, v4, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const p2, 0x11100f6

    const v0, 0x11100f7

    .line 459
    invoke-virtual {p1, v3, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const p2, 0x11100f4

    const v0, 0x11100f5

    const/16 v3, 0xa

    .line 462
    invoke-virtual {p1, v3, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const p2, 0x11100ee

    const v0, 0x11100ef

    const/16 v3, 0xe

    .line 465
    invoke-virtual {p1, v3, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 469
    const-string/jumbo p1, "rc_profile_source_handles_root_menu"

    const p2, 0x11100e3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const p2, 0x11100df

    const v0, 0x11100e0

    .line 472
    invoke-virtual {p1, v1, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const p2, 0x11100e1

    const v0, 0x11100e2

    .line 476
    invoke-virtual {p1, v2, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 481
    const-string/jumbo p1, "rc_profile_source_handles_setup_menu"

    const p2, 0x11100e8

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const p2, 0x11100e4

    const v0, 0x11100e5

    .line 484
    invoke-virtual {p1, v1, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const p2, 0x11100e6

    const v0, 0x11100e7

    .line 488
    invoke-virtual {p1, v2, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 493
    const-string/jumbo p1, "rc_profile_source_handles_contents_menu"

    const p2, 0x11100d9

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const p2, 0x11100d5

    const v0, 0x11100d6

    .line 496
    invoke-virtual {p1, v1, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const p2, 0x11100d7

    const v0, 0x11100d8

    .line 500
    invoke-virtual {p1, v2, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 505
    const-string/jumbo p1, "rc_profile_source_handles_top_menu"

    const p2, 0x11100ed

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const p2, 0x11100e9

    const v0, 0x11100ea

    .line 508
    invoke-virtual {p1, v1, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const p2, 0x11100eb

    const v0, 0x11100ec

    .line 512
    invoke-virtual {p1, v2, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 517
    const-string/jumbo p1, "rc_profile_source_handles_media_context_sensitive_menu"

    const p2, 0x11100de

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const p2, 0x11100da

    const v0, 0x11100db

    .line 521
    invoke-virtual {p1, v1, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const p2, 0x11100dc

    const v0, 0x11100dd

    .line 525
    invoke-virtual {p1, v2, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 530
    const-string/jumbo p1, "query_sad_lpcm"

    const p2, 0x11100b1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const p2, 0x11100af

    const v0, 0x11100b0

    .line 533
    invoke-virtual {p1, v1, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const p2, 0x11100ad

    const v0, 0x11100ae

    .line 537
    invoke-virtual {p1, v2, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 542
    const-string/jumbo p1, "query_sad_dd"

    const p2, 0x1110098

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const p2, 0x1110096

    const v0, 0x1110097

    .line 545
    invoke-virtual {p1, v1, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const p2, 0x1110094

    const v0, 0x1110095

    .line 549
    invoke-virtual {p1, v2, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 554
    const-string/jumbo p1, "query_sad_mpeg1"

    const p2, 0x11100c0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const p2, 0x11100be

    const v0, 0x11100bf

    .line 557
    invoke-virtual {p1, v1, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const p2, 0x11100bc

    const v0, 0x11100bd

    .line 561
    invoke-virtual {p1, v2, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 566
    const-string/jumbo p1, "query_sad_mp3"

    const p2, 0x11100bb

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const p2, 0x11100b9

    const v0, 0x11100ba

    .line 569
    invoke-virtual {p1, v1, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const p2, 0x11100b7

    const v0, 0x11100b8

    .line 573
    invoke-virtual {p1, v2, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 578
    const-string/jumbo p1, "query_sad_mpeg2"

    const p2, 0x11100c5

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const p2, 0x11100c3

    const v0, 0x11100c4

    .line 581
    invoke-virtual {p1, v1, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const p2, 0x11100c1

    const v0, 0x11100c2

    .line 585
    invoke-virtual {p1, v2, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 590
    const-string/jumbo p1, "query_sad_aac"

    const p2, 0x111008e

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const p2, 0x111008c

    const v0, 0x111008d

    .line 593
    invoke-virtual {p1, v1, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const p2, 0x111008a

    const v0, 0x111008b

    .line 597
    invoke-virtual {p1, v2, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 602
    const-string/jumbo p1, "query_sad_dts"

    const p2, 0x11100a7

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const p2, 0x11100a5

    const v0, 0x11100a6

    .line 605
    invoke-virtual {p1, v1, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const p2, 0x11100a3

    const v0, 0x11100a4

    .line 609
    invoke-virtual {p1, v2, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 614
    const-string/jumbo p1, "query_sad_atrac"

    const p2, 0x1110093

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const p2, 0x1110091

    const v0, 0x1110092

    .line 617
    invoke-virtual {p1, v1, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const p2, 0x111008f

    const v0, 0x1110090

    .line 621
    invoke-virtual {p1, v2, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 626
    const-string/jumbo p1, "query_sad_onebitaudio"

    const p2, 0x11100ca

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const p2, 0x11100c8

    const v0, 0x11100c9

    .line 629
    invoke-virtual {p1, v1, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const p2, 0x11100c6

    const v0, 0x11100c7

    .line 633
    invoke-virtual {p1, v2, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 638
    const-string/jumbo p1, "query_sad_ddp"

    const p2, 0x111009d

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const p2, 0x111009b

    const v0, 0x111009c

    .line 641
    invoke-virtual {p1, v1, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const p2, 0x1110099

    const v0, 0x111009a

    .line 645
    invoke-virtual {p1, v2, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 650
    const-string/jumbo p1, "query_sad_dtshd"

    const p2, 0x11100ac

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const p2, 0x11100aa

    const v0, 0x11100ab

    .line 653
    invoke-virtual {p1, v1, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const p2, 0x11100a8

    const v0, 0x11100a9

    .line 657
    invoke-virtual {p1, v2, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 662
    const-string/jumbo p1, "query_sad_truehd"

    const p2, 0x11100cf

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const p2, 0x11100cd

    const v0, 0x11100ce

    .line 665
    invoke-virtual {p1, v1, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const p2, 0x11100cb

    const v0, 0x11100cc

    .line 669
    invoke-virtual {p1, v2, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 674
    const-string/jumbo p1, "query_sad_dst"

    const p2, 0x11100a2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const p2, 0x11100a0

    const v0, 0x11100a1

    .line 677
    invoke-virtual {p1, v1, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const p2, 0x111009e

    const v0, 0x111009f

    .line 681
    invoke-virtual {p1, v2, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 686
    const-string/jumbo p1, "query_sad_wmapro"

    const p2, 0x11100d4

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const p2, 0x11100d2

    const v0, 0x11100d3

    .line 689
    invoke-virtual {p1, v1, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const p2, 0x11100d0

    const v0, 0x11100d1

    .line 693
    invoke-virtual {p1, v2, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 698
    const-string/jumbo p1, "query_sad_max"

    const p2, 0x11100b6

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const p2, 0x11100b4

    const v0, 0x11100b5

    .line 701
    invoke-virtual {p1, v1, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const p2, 0x11100b2

    const v0, 0x11100b3

    .line 705
    invoke-virtual {p1, v2, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 710
    const-string/jumbo p1, "tv_behavior_on_standby_message"

    const p2, 0x1110116

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const p2, 0x1110114

    const v0, 0x1110115

    .line 713
    invoke-virtual {p1, v2, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const p2, 0x1110112

    const v0, 0x1110113

    .line 717
    invoke-virtual {p1, v1, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 722
    const-string p1, "earc_enabled"

    const p2, 0x1110176

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const p2, 0x1110179

    const v0, 0x111017a

    .line 725
    invoke-virtual {p1, v1, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const p2, 0x1110177

    const v0, 0x1110178

    .line 728
    invoke-virtual {p1, v2, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 732
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecConfig;->verifySettings()V

    return-void
.end method


# virtual methods
.method public getAllSettings()Ljava/util/List;
    .registers 2

    .line 1163
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mSettings:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getAllowedIntValues(Ljava/lang/String;)Ljava/util/List;
    .registers 5

    .line 1226
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p0

    .line 1227
    const-string v0, "Setting \'"

    if-eqz p0, :cond_50

    .line 1230
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getValueType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "int"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 1234
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1235
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getAllowedValues()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_21
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiCecConfig$Value;

    .line 1236
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecConfig$Value;->getIntValue()Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_35
    return-object p1

    .line 1231
    :cond_36
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' is not a string-type setting."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1228
    :cond_50
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' does not exist."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAllowedStringValues(Ljava/lang/String;)Ljava/util/List;
    .registers 5

    .line 1207
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p0

    .line 1208
    const-string v0, "Setting \'"

    if-eqz p0, :cond_51

    .line 1211
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getValueType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "string"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 1215
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1216
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getAllowedValues()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_22
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiCecConfig$Value;

    .line 1217
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecConfig$Value;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_36
    return-object p1

    .line 1212
    :cond_37
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' is not a string-type setting."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1209
    :cond_51
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' does not exist."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getDefaultIntValue(Ljava/lang/String;)I
    .registers 5

    .line 1260
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object v0

    .line 1261
    const-string v1, "Setting \'"

    if-eqz v0, :cond_3f

    .line 1264
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getValueType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "int"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1268
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getDefaultValue()Lcom/android/server/hdmi/HdmiCecConfig$Value;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecConfig$Value;->getIntValue()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 1265
    :cond_25
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' is not a string-type setting."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1262
    :cond_3f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' does not exist."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getDefaultStringValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1245
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object v0

    .line 1246
    const-string v1, "Setting \'"

    if-eqz v0, :cond_3c

    .line 1249
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getValueType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "string"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1253
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getDefaultValue()Lcom/android/server/hdmi/HdmiCecConfig$Value;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecConfig$Value;->getStringValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1250
    :cond_22
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' is not a string-type setting."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1247
    :cond_3c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' does not exist."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getIntValue(Ljava/lang/String;)I
    .registers 6

    .line 1291
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object v0

    .line 1292
    const-string v1, "Setting \'"

    if-eqz v0, :cond_63

    .line 1295
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getValueType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "int"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 1299
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Getting CEC setting value \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1300
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getDefaultValue()Lcom/android/server/hdmi/HdmiCecConfig$Value;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Value;->getIntValue()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    .line 1301
    invoke-virtual {p0, v0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->retrieveValue(Lcom/android/server/hdmi/HdmiCecConfig$Setting;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1302
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 1296
    :cond_49
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' is not a int-type setting."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1293
    :cond_63
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' does not exist."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getMigrationPrefs()Landroid/content/SharedPreferences;
    .registers 5

    .line 745
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p0

    .line 747
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "shared_prefs"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "hdmi_migration_prefs.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 749
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public final getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    .registers 3

    .line 893
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mSettings:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mSettings:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    return-object p0

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getStorage(Lcom/android/server/hdmi/HdmiCecConfig$Setting;)I
    .registers 5

    .line 898
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_228

    goto/16 :goto_203

    :sswitch_12
    const-string/jumbo v0, "system_audio_control"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1d

    goto/16 :goto_203

    :cond_1d
    const/16 v2, 0x22

    goto/16 :goto_203

    :sswitch_21
    const-string/jumbo v0, "tv_send_standby_on_sleep"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2c

    goto/16 :goto_203

    :cond_2c
    const/16 v2, 0x21

    goto/16 :goto_203

    :sswitch_30
    const-string/jumbo v0, "tv_behavior_on_standby_message"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3b

    goto/16 :goto_203

    :cond_3b
    const/16 v2, 0x20

    goto/16 :goto_203

    :sswitch_3f
    const-string/jumbo v0, "query_sad_mp3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4a

    goto/16 :goto_203

    :cond_4a
    const/16 v2, 0x1f

    goto/16 :goto_203

    :sswitch_4e
    const-string/jumbo v0, "query_sad_max"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_59

    goto/16 :goto_203

    :cond_59
    const/16 v2, 0x1e

    goto/16 :goto_203

    :sswitch_5d
    const-string/jumbo v0, "query_sad_dts"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_68

    goto/16 :goto_203

    :cond_68
    const/16 v2, 0x1d

    goto/16 :goto_203

    :sswitch_6c
    const-string/jumbo v0, "query_sad_dst"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_77

    goto/16 :goto_203

    :cond_77
    const/16 v2, 0x1c

    goto/16 :goto_203

    :sswitch_7b
    const-string/jumbo v0, "query_sad_ddp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_86

    goto/16 :goto_203

    :cond_86
    const/16 v2, 0x1b

    goto/16 :goto_203

    :sswitch_8a
    const-string/jumbo v0, "query_sad_aac"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_95

    goto/16 :goto_203

    :cond_95
    const/16 v2, 0x1a

    goto/16 :goto_203

    :sswitch_99
    const-string/jumbo v0, "tv_wake_on_one_touch_play"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a4

    goto/16 :goto_203

    :cond_a4
    const/16 v2, 0x19

    goto/16 :goto_203

    :sswitch_a8
    const-string/jumbo v0, "query_sad_dd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b3

    goto/16 :goto_203

    :cond_b3
    const/16 v2, 0x18

    goto/16 :goto_203

    :sswitch_b7
    const-string/jumbo v0, "query_sad_onebitaudio"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c2

    goto/16 :goto_203

    :cond_c2
    const/16 v2, 0x17

    goto/16 :goto_203

    :sswitch_c6
    const-string/jumbo v0, "rc_profile_tv"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d1

    goto/16 :goto_203

    :cond_d1
    const/16 v2, 0x16

    goto/16 :goto_203

    :sswitch_d5
    const-string v0, "hdmi_cec_enabled"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_df

    goto/16 :goto_203

    :cond_df
    const/16 v2, 0x15

    goto/16 :goto_203

    :sswitch_e3
    const-string/jumbo v0, "volume_control_enabled"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_ee

    goto/16 :goto_203

    :cond_ee
    const/16 v2, 0x14

    goto/16 :goto_203

    :sswitch_f2
    const-string/jumbo v0, "soundbar_mode"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_fd

    goto/16 :goto_203

    :cond_fd
    const/16 v2, 0x13

    goto/16 :goto_203

    :sswitch_101
    const-string/jumbo v0, "power_control_mode"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10c

    goto/16 :goto_203

    :cond_10c
    const/16 v2, 0x12

    goto/16 :goto_203

    :sswitch_110
    const-string/jumbo v0, "power_state_change_on_active_source_lost"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11b

    goto/16 :goto_203

    :cond_11b
    const/16 v2, 0x11

    goto/16 :goto_203

    :sswitch_11f
    const-string/jumbo v0, "rc_profile_source_handles_setup_menu"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12a

    goto/16 :goto_203

    :cond_12a
    const/16 v2, 0x10

    goto/16 :goto_203

    :sswitch_12e
    const-string/jumbo v0, "query_sad_lpcm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_139

    goto/16 :goto_203

    :cond_139
    const/16 v2, 0xf

    goto/16 :goto_203

    :sswitch_13d
    const-string/jumbo v0, "routing_control"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_148

    goto/16 :goto_203

    :cond_148
    const/16 v2, 0xe

    goto/16 :goto_203

    :sswitch_14c
    const-string/jumbo v0, "query_sad_wmapro"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_157

    goto/16 :goto_203

    :cond_157
    const/16 v2, 0xd

    goto/16 :goto_203

    :sswitch_15b
    const-string/jumbo v0, "rc_profile_source_handles_contents_menu"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_166

    goto/16 :goto_203

    :cond_166
    const/16 v2, 0xc

    goto/16 :goto_203

    :sswitch_16a
    const-string/jumbo v0, "query_sad_truehd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_175

    goto/16 :goto_203

    :cond_175
    const/16 v2, 0xb

    goto/16 :goto_203

    :sswitch_179
    const-string v0, "earc_enabled"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_183

    goto/16 :goto_203

    :cond_183
    const/16 v2, 0xa

    goto/16 :goto_203

    :sswitch_187
    const-string/jumbo v0, "query_sad_mpeg2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_192

    goto/16 :goto_203

    :cond_192
    const/16 v2, 0x9

    goto/16 :goto_203

    :sswitch_196
    const-string/jumbo v0, "query_sad_mpeg1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1a1

    goto/16 :goto_203

    :cond_1a1
    const/16 v2, 0x8

    goto/16 :goto_203

    :sswitch_1a5
    const-string/jumbo v0, "query_sad_dtshd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1af

    goto :goto_203

    :cond_1af
    const/4 v2, 0x7

    goto :goto_203

    :sswitch_1b1
    const-string/jumbo v0, "query_sad_atrac"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1bb

    goto :goto_203

    :cond_1bb
    const/4 v2, 0x6

    goto :goto_203

    :sswitch_1bd
    const-string/jumbo v0, "rc_profile_source_handles_root_menu"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1c7

    goto :goto_203

    :cond_1c7
    const/4 v2, 0x5

    goto :goto_203

    :sswitch_1c9
    const-string/jumbo v0, "rc_profile_source_handles_top_menu"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1d3

    goto :goto_203

    :cond_1d3
    const/4 v2, 0x4

    goto :goto_203

    :sswitch_1d5
    const-string/jumbo v0, "rc_profile_source_handles_media_context_sensitive_menu"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1df

    goto :goto_203

    :cond_1df
    const/4 v2, 0x3

    goto :goto_203

    :sswitch_1e1
    const-string/jumbo v0, "set_menu_language"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1eb

    goto :goto_203

    :cond_1eb
    move v2, v1

    goto :goto_203

    :sswitch_1ed
    const-string/jumbo v0, "system_audio_mode_muting"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1f7

    goto :goto_203

    :cond_1f7
    const/4 v2, 0x1

    goto :goto_203

    :sswitch_1f9
    const-string v0, "hdmi_cec_version"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_202

    goto :goto_203

    :cond_202
    const/4 v2, 0x0

    :goto_203
    packed-switch v2, :pswitch_data_2b6

    .line 971
    new-instance p0, Lcom/android/server/hdmi/HdmiCecConfig$VerificationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid CEC setting \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' storage."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig$VerificationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_226
    return v1

    nop

    :sswitch_data_228
    .sparse-switch
        -0x7b89074d -> :sswitch_1f9
        -0x6a9ec647 -> :sswitch_1ed
        -0x607d7ae5 -> :sswitch_1e1
        -0x4c082dd9 -> :sswitch_1d5
        -0x4ab99283 -> :sswitch_1c9
        -0x46d3da58 -> :sswitch_1bd
        -0x44f9855f -> :sswitch_1b1
        -0x44cf3a41 -> :sswitch_1a5
        -0x44526d14 -> :sswitch_196
        -0x44526d13 -> :sswitch_187
        -0x40778731 -> :sswitch_179
        -0x39e5d496 -> :sswitch_16a
        -0x36427790 -> :sswitch_15b
        -0x3516ad1e -> :sswitch_14c
        -0x1893b91c -> :sswitch_13d
        -0x12b8cab2 -> :sswitch_12e
        -0x117d9fab -> :sswitch_11f
        -0xd196d78 -> :sswitch_110
        -0x1832fc1 -> :sswitch_101
        0x118545e -> :sswitch_f2
        0x45cb33a -> :sswitch_e3
        0xf91671c -> :sswitch_d5
        0x2f314ba6 -> :sswitch_c6
        0x2fa40eef -> :sswitch_b7
        0x5e0410e0 -> :sswitch_a8
        0x611b5e8f -> :sswitch_99
        0x627dffe3 -> :sswitch_8a
        0x627e0b90 -> :sswitch_7b
        0x627e0d65 -> :sswitch_6c
        0x627e0d83 -> :sswitch_5d
        0x627e2d04 -> :sswitch_4e
        0x627e2e90 -> :sswitch_3f
        0x65a474e5 -> :sswitch_30
        0x7a8663a3 -> :sswitch_21
        0x7e41b7e4 -> :sswitch_12
    .end sparse-switch

    :pswitch_data_2b6
    .packed-switch 0x0
        :pswitch_226
        :pswitch_226
        :pswitch_226
        :pswitch_226
        :pswitch_226
        :pswitch_226
        :pswitch_226
        :pswitch_226
        :pswitch_226
        :pswitch_226
        :pswitch_226
        :pswitch_226
        :pswitch_226
        :pswitch_226
        :pswitch_226
        :pswitch_226
        :pswitch_226
        :pswitch_226
        :pswitch_226
        :pswitch_226
        :pswitch_226
        :pswitch_226
        :pswitch_226
        :pswitch_226
        :pswitch_226
        :pswitch_226
        :pswitch_226
        :pswitch_226
        :pswitch_226
        :pswitch_226
        :pswitch_226
        :pswitch_226
        :pswitch_226
        :pswitch_226
        :pswitch_226
    .end packed-switch
.end method

.method public final getStorageKey(Lcom/android/server/hdmi/HdmiCecConfig$Setting;)Ljava/lang/String;
    .registers 4

    .line 977
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_2d4

    goto/16 :goto_202

    :sswitch_11
    const-string/jumbo v0, "system_audio_control"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1c

    goto/16 :goto_202

    :cond_1c
    const/16 v1, 0x22

    goto/16 :goto_202

    :sswitch_20
    const-string/jumbo v0, "tv_send_standby_on_sleep"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2b

    goto/16 :goto_202

    :cond_2b
    const/16 v1, 0x21

    goto/16 :goto_202

    :sswitch_2f
    const-string/jumbo v0, "tv_behavior_on_standby_message"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3a

    goto/16 :goto_202

    :cond_3a
    const/16 v1, 0x20

    goto/16 :goto_202

    :sswitch_3e
    const-string/jumbo v0, "query_sad_mp3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_49

    goto/16 :goto_202

    :cond_49
    const/16 v1, 0x1f

    goto/16 :goto_202

    :sswitch_4d
    const-string/jumbo v0, "query_sad_max"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_58

    goto/16 :goto_202

    :cond_58
    const/16 v1, 0x1e

    goto/16 :goto_202

    :sswitch_5c
    const-string/jumbo v0, "query_sad_dts"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_67

    goto/16 :goto_202

    :cond_67
    const/16 v1, 0x1d

    goto/16 :goto_202

    :sswitch_6b
    const-string/jumbo v0, "query_sad_dst"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_76

    goto/16 :goto_202

    :cond_76
    const/16 v1, 0x1c

    goto/16 :goto_202

    :sswitch_7a
    const-string/jumbo v0, "query_sad_ddp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_85

    goto/16 :goto_202

    :cond_85
    const/16 v1, 0x1b

    goto/16 :goto_202

    :sswitch_89
    const-string/jumbo v0, "query_sad_aac"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_94

    goto/16 :goto_202

    :cond_94
    const/16 v1, 0x1a

    goto/16 :goto_202

    :sswitch_98
    const-string/jumbo v0, "tv_wake_on_one_touch_play"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a3

    goto/16 :goto_202

    :cond_a3
    const/16 v1, 0x19

    goto/16 :goto_202

    :sswitch_a7
    const-string/jumbo v0, "query_sad_dd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b2

    goto/16 :goto_202

    :cond_b2
    const/16 v1, 0x18

    goto/16 :goto_202

    :sswitch_b6
    const-string/jumbo v0, "query_sad_onebitaudio"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c1

    goto/16 :goto_202

    :cond_c1
    const/16 v1, 0x17

    goto/16 :goto_202

    :sswitch_c5
    const-string/jumbo v0, "rc_profile_tv"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d0

    goto/16 :goto_202

    :cond_d0
    const/16 v1, 0x16

    goto/16 :goto_202

    :sswitch_d4
    const-string v0, "hdmi_cec_enabled"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_de

    goto/16 :goto_202

    :cond_de
    const/16 v1, 0x15

    goto/16 :goto_202

    :sswitch_e2
    const-string/jumbo v0, "volume_control_enabled"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_ed

    goto/16 :goto_202

    :cond_ed
    const/16 v1, 0x14

    goto/16 :goto_202

    :sswitch_f1
    const-string/jumbo v0, "soundbar_mode"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_fc

    goto/16 :goto_202

    :cond_fc
    const/16 v1, 0x13

    goto/16 :goto_202

    :sswitch_100
    const-string/jumbo v0, "power_control_mode"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10b

    goto/16 :goto_202

    :cond_10b
    const/16 v1, 0x12

    goto/16 :goto_202

    :sswitch_10f
    const-string/jumbo v0, "power_state_change_on_active_source_lost"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11a

    goto/16 :goto_202

    :cond_11a
    const/16 v1, 0x11

    goto/16 :goto_202

    :sswitch_11e
    const-string/jumbo v0, "rc_profile_source_handles_setup_menu"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_129

    goto/16 :goto_202

    :cond_129
    const/16 v1, 0x10

    goto/16 :goto_202

    :sswitch_12d
    const-string/jumbo v0, "query_sad_lpcm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_138

    goto/16 :goto_202

    :cond_138
    const/16 v1, 0xf

    goto/16 :goto_202

    :sswitch_13c
    const-string/jumbo v0, "routing_control"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_147

    goto/16 :goto_202

    :cond_147
    const/16 v1, 0xe

    goto/16 :goto_202

    :sswitch_14b
    const-string/jumbo v0, "query_sad_wmapro"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_156

    goto/16 :goto_202

    :cond_156
    const/16 v1, 0xd

    goto/16 :goto_202

    :sswitch_15a
    const-string/jumbo v0, "rc_profile_source_handles_contents_menu"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_165

    goto/16 :goto_202

    :cond_165
    const/16 v1, 0xc

    goto/16 :goto_202

    :sswitch_169
    const-string/jumbo v0, "query_sad_truehd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_174

    goto/16 :goto_202

    :cond_174
    const/16 v1, 0xb

    goto/16 :goto_202

    :sswitch_178
    const-string v0, "earc_enabled"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_182

    goto/16 :goto_202

    :cond_182
    const/16 v1, 0xa

    goto/16 :goto_202

    :sswitch_186
    const-string/jumbo v0, "query_sad_mpeg2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_191

    goto/16 :goto_202

    :cond_191
    const/16 v1, 0x9

    goto/16 :goto_202

    :sswitch_195
    const-string/jumbo v0, "query_sad_mpeg1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1a0

    goto/16 :goto_202

    :cond_1a0
    const/16 v1, 0x8

    goto/16 :goto_202

    :sswitch_1a4
    const-string/jumbo v0, "query_sad_dtshd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1ae

    goto :goto_202

    :cond_1ae
    const/4 v1, 0x7

    goto :goto_202

    :sswitch_1b0
    const-string/jumbo v0, "query_sad_atrac"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1ba

    goto :goto_202

    :cond_1ba
    const/4 v1, 0x6

    goto :goto_202

    :sswitch_1bc
    const-string/jumbo v0, "rc_profile_source_handles_root_menu"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1c6

    goto :goto_202

    :cond_1c6
    const/4 v1, 0x5

    goto :goto_202

    :sswitch_1c8
    const-string/jumbo v0, "rc_profile_source_handles_top_menu"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1d2

    goto :goto_202

    :cond_1d2
    const/4 v1, 0x4

    goto :goto_202

    :sswitch_1d4
    const-string/jumbo v0, "rc_profile_source_handles_media_context_sensitive_menu"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1de

    goto :goto_202

    :cond_1de
    const/4 v1, 0x3

    goto :goto_202

    :sswitch_1e0
    const-string/jumbo v0, "set_menu_language"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1ea

    goto :goto_202

    :cond_1ea
    const/4 v1, 0x2

    goto :goto_202

    :sswitch_1ec
    const-string/jumbo v0, "system_audio_mode_muting"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1f6

    goto :goto_202

    :cond_1f6
    const/4 v1, 0x1

    goto :goto_202

    :sswitch_1f8
    const-string v0, "hdmi_cec_version"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_201

    goto :goto_202

    :cond_201
    const/4 v1, 0x0

    :goto_202
    packed-switch v1, :pswitch_data_362

    .line 1050
    new-instance p0, Lcom/android/server/hdmi/HdmiCecConfig$VerificationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid CEC setting \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' storage key."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig$VerificationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 993
    :pswitch_225
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 999
    :pswitch_22a
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1046
    :pswitch_22f
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1022
    :pswitch_234
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1044
    :pswitch_239
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1028
    :pswitch_23e
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1040
    :pswitch_243
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1034
    :pswitch_248
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1026
    :pswitch_24d
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 997
    :pswitch_252
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1018
    :pswitch_257
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1032
    :pswitch_25c
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1003
    :pswitch_261
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 979
    :pswitch_266
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 989
    :pswitch_26b
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 985
    :pswitch_270
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 987
    :pswitch_275
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 991
    :pswitch_27a
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1007
    :pswitch_27f
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1016
    :pswitch_284
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 983
    :pswitch_289
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1042
    :pswitch_28e
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1009
    :pswitch_293
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1038
    :pswitch_298
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1048
    :pswitch_29d
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1024
    :pswitch_2a2
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1020
    :pswitch_2a7
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1036
    :pswitch_2ac
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1030
    :pswitch_2b1
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1005
    :pswitch_2b6
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1011
    :pswitch_2bb
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1014
    :pswitch_2c0
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1001
    :pswitch_2c5
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 995
    :pswitch_2ca
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 981
    :pswitch_2cf
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_data_2d4
    .sparse-switch
        -0x7b89074d -> :sswitch_1f8
        -0x6a9ec647 -> :sswitch_1ec
        -0x607d7ae5 -> :sswitch_1e0
        -0x4c082dd9 -> :sswitch_1d4
        -0x4ab99283 -> :sswitch_1c8
        -0x46d3da58 -> :sswitch_1bc
        -0x44f9855f -> :sswitch_1b0
        -0x44cf3a41 -> :sswitch_1a4
        -0x44526d14 -> :sswitch_195
        -0x44526d13 -> :sswitch_186
        -0x40778731 -> :sswitch_178
        -0x39e5d496 -> :sswitch_169
        -0x36427790 -> :sswitch_15a
        -0x3516ad1e -> :sswitch_14b
        -0x1893b91c -> :sswitch_13c
        -0x12b8cab2 -> :sswitch_12d
        -0x117d9fab -> :sswitch_11e
        -0xd196d78 -> :sswitch_10f
        -0x1832fc1 -> :sswitch_100
        0x118545e -> :sswitch_f1
        0x45cb33a -> :sswitch_e2
        0xf91671c -> :sswitch_d4
        0x2f314ba6 -> :sswitch_c5
        0x2fa40eef -> :sswitch_b6
        0x5e0410e0 -> :sswitch_a7
        0x611b5e8f -> :sswitch_98
        0x627dffe3 -> :sswitch_89
        0x627e0b90 -> :sswitch_7a
        0x627e0d65 -> :sswitch_6b
        0x627e0d83 -> :sswitch_5c
        0x627e2d04 -> :sswitch_4d
        0x627e2e90 -> :sswitch_3e
        0x65a474e5 -> :sswitch_2f
        0x7a8663a3 -> :sswitch_20
        0x7e41b7e4 -> :sswitch_11
    .end sparse-switch

    :pswitch_data_362
    .packed-switch 0x0
        :pswitch_2cf
        :pswitch_2ca
        :pswitch_2c5
        :pswitch_2c0
        :pswitch_2bb
        :pswitch_2b6
        :pswitch_2b1
        :pswitch_2ac
        :pswitch_2a7
        :pswitch_2a2
        :pswitch_29d
        :pswitch_298
        :pswitch_293
        :pswitch_28e
        :pswitch_289
        :pswitch_284
        :pswitch_27f
        :pswitch_27a
        :pswitch_275
        :pswitch_270
        :pswitch_26b
        :pswitch_266
        :pswitch_261
        :pswitch_25c
        :pswitch_257
        :pswitch_252
        :pswitch_24d
        :pswitch_248
        :pswitch_243
        :pswitch_23e
        :pswitch_239
        :pswitch_234
        :pswitch_22f
        :pswitch_22a
        :pswitch_225
    .end packed-switch
.end method

.method public getStringValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 1275
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object v0

    .line 1276
    const-string v1, "Setting \'"

    if-eqz v0, :cond_58

    .line 1279
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getValueType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "string"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 1283
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Getting CEC setting value \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1284
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getDefaultValue()Lcom/android/server/hdmi/HdmiCecConfig$Value;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Value;->getStringValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->retrieveValue(Lcom/android/server/hdmi/HdmiCecConfig$Setting;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1280
    :cond_3e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' is not a string-type setting."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1277
    :cond_58
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' does not exist."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getUserSettings()Ljava/util/List;
    .registers 4

    .line 1170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1171
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mSettings:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_f
    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    .line 1172
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getUserConfigurable()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1173
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_29
    return-object v0
.end method

.method public hasSettingValue(Ljava/lang/String;)Z
    .registers 5

    .line 1362
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_23

    .line 1364
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "hasSettingValue: Setting "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HdmiCecConfig"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1367
    :cond_23
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecConfig;->getStorage(Lcom/android/server/hdmi/HdmiCecConfig$Setting;)I

    move-result p1

    .line 1368
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecConfig;->getStorageKey(Lcom/android/server/hdmi/HdmiCecConfig$Setting;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    if-ne p1, v2, :cond_35

    .line 1371
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mStorageAdapter:Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;->containsSharedPref(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_35
    return v1
.end method

.method public isIntValueType(Ljava/lang/String;)Z
    .registers 4

    .line 1196
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 1200
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getValueType()Ljava/lang/String;

    move-result-object p0

    const-string p1, "int"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 1198
    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' does not exist."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isStringValueType(Ljava/lang/String;)Z
    .registers 4

    .line 1184
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 1188
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getValueType()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "string"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 1186
    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' does not exist."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final migrateIntSetting(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 11

    .line 759
    const-string v0, ")"

    const-string v1, " ("

    invoke-virtual {p0, p3}, Lcom/android/server/hdmi/HdmiCecConfig;->hasSettingValue(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "HdmiCecConfig"

    if-eqz v2, :cond_26

    .line 760
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Setting "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " already in SharedPreferences. Skipping migration."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 765
    :cond_26
    invoke-static {p1, p2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_e8

    .line 767
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Migrating setting: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " -> "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    :try_start_48
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_50

    goto :goto_51

    :cond_50
    move p4, p5

    .line 772
    :goto_51
    invoke-virtual {p0, p3, p4}, Lcom/android/server/hdmi/HdmiCecConfig;->setIntValue(Ljava/lang/String;I)V

    .line 773
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Migrated "

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ") to "

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, " ( "

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_81
    .catch Ljava/lang/NumberFormatException; {:try_start_48 .. :try_end_81} :catch_86
    .catch Ljava/lang/IllegalArgumentException; {:try_start_48 .. :try_end_81} :catch_84
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_81} :catch_82

    return-void

    :catch_82
    move-exception p0

    goto :goto_88

    :catch_84
    move-exception p0

    goto :goto_a5

    :catch_86
    move-exception p0

    goto :goto_cb

    .line 781
    :goto_88
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unexpected error migrating setting "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e7

    .line 778
    :goto_a5
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Failed to migrate setting "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", value from "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e7

    .line 776
    :goto_cb
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed to parse Global setting "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e7
    return-void

    .line 785
    :cond_e8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No value found for "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in Global.Settings."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final migrateSettingsIfNeeded()V
    .registers 11

    .line 801
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecConfig;->getMigrationPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v0, 0x0

    .line 802
    const-string v2, "global_to_shared_migrated"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v3, "HdmiCecConfig"

    if-eqz v0, :cond_15

    .line 803
    const-string p0, "Settings migration already performed."

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 806
    :cond_15
    const-string v0, "Starting settings migration from Global.Settings to SharedPreferences."

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 810
    const-string v6, "hdmi_control_enabled"

    const-string v7, "hdmi_cec_enabled"

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/hdmi/HdmiCecConfig;->migrateIntSetting(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;II)V

    .line 815
    const-string v6, "hdmi_control_auto_wakeup_enabled"

    const-string/jumbo v7, "tv_wake_on_one_touch_play"

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/hdmi/HdmiCecConfig;->migrateIntSetting(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;II)V

    .line 820
    const-string v6, "hdmi_control_auto_device_off_enabled"

    const-string/jumbo v7, "tv_send_standby_on_sleep"

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/hdmi/HdmiCecConfig;->migrateIntSetting(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;II)V

    .line 825
    const-string v6, "hdmi_control_volume_control_enabled"

    const-string/jumbo v7, "volume_control_enabled"

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/hdmi/HdmiCecConfig;->migrateIntSetting(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;II)V

    .line 830
    const-string v6, "hdmi_system_audio_control_enabled"

    const-string/jumbo v7, "system_audio_control"

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/hdmi/HdmiCecConfig;->migrateIntSetting(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;II)V

    .line 835
    const-string v6, "hdmi_cec_switch_enabled"

    const-string/jumbo v7, "routing_control"

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/hdmi/HdmiCecConfig;->migrateIntSetting(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;II)V

    .line 841
    invoke-virtual {v4}, Lcom/android/server/hdmi/HdmiCecConfig;->getAllSettings()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5a
    :goto_5a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_112

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    .line 844
    invoke-virtual {v4, v6}, Lcom/android/server/hdmi/HdmiCecConfig;->hasSettingValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6e

    goto :goto_5a

    .line 848
    :cond_6e
    invoke-static {v5, v6}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5a

    .line 850
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Migrating setting (same key): "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    :try_start_88
    invoke-virtual {v4, v6}, Lcom/android/server/hdmi/HdmiCecConfig;->isIntValueType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 853
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v6, v0}, Lcom/android/server/hdmi/HdmiCecConfig;->setIntValue(Ljava/lang/String;I)V

    goto :goto_9f

    :catch_96
    move-exception v0

    goto :goto_bc

    :catch_98
    move-exception v0

    goto :goto_d1

    :catch_9a
    move-exception v0

    goto :goto_f4

    .line 855
    :cond_9c
    invoke-virtual {v4, v6, v7}, Lcom/android/server/hdmi/HdmiCecConfig;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    :goto_9f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Migrated "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bb
    .catch Ljava/lang/NumberFormatException; {:try_start_88 .. :try_end_bb} :catch_9a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_88 .. :try_end_bb} :catch_98
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_bb} :catch_96

    goto :goto_5a

    .line 864
    :goto_bc
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected error migrating setting "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5a

    .line 861
    :goto_d1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to migrate setting "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", value "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " likely not allowed."

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5a

    .line 859
    :goto_f4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to parse Global setting "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5a

    .line 870
    :cond_112
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 871
    const-string p0, "Settings migration from Global.Settings to SharedPreferences complete."

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public notifySettingChanged(Lcom/android/server/hdmi/HdmiCecConfig$Setting;)V
    .registers 7

    .line 1088
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1089
    :try_start_3
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mSettingChangeListeners:Landroid/util/ArrayMap;

    .line 1090
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    if-nez v1, :cond_11

    .line 1092
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    goto :goto_3c

    .line 1094
    :cond_11
    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1095
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/hdmi/HdmiCecConfig$SettingChangeListener;

    .line 1096
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Executor;

    .line 1097
    new-instance v4, Lcom/android/server/hdmi/HdmiCecConfig$1;

    invoke-direct {v4, p0, v3, p1}, Lcom/android/server/hdmi/HdmiCecConfig$1;-><init>(Lcom/android/server/hdmi/HdmiCecConfig;Lcom/android/server/hdmi/HdmiCecConfig$SettingChangeListener;Lcom/android/server/hdmi/HdmiCecConfig$Setting;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_19

    .line 1104
    :cond_3a
    monitor-exit v0

    return-void

    :goto_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_f

    throw p0
.end method

.method public registerChangeListener(Ljava/lang/String;Lcom/android/server/hdmi/HdmiCecConfig$SettingChangeListener;)V
    .registers 4

    .line 1112
    sget-object v0, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig;->registerChangeListener(Ljava/lang/String;Lcom/android/server/hdmi/HdmiCecConfig$SettingChangeListener;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public registerChangeListener(Ljava/lang/String;Lcom/android/server/hdmi/HdmiCecConfig$SettingChangeListener;Ljava/util/concurrent/Executor;)V
    .registers 7

    .line 1121
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object v0

    if-eqz v0, :cond_54

    .line 1125
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecConfig;->getStorage(Lcom/android/server/hdmi/HdmiCecConfig$Setting;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2d

    const/4 v2, 0x2

    if-ne v1, v2, :cond_11

    goto :goto_2d

    .line 1127
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Change listeners for setting \'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' not supported."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1130
    :cond_2d
    :goto_2d
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1131
    :try_start_30
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mSettingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_45

    .line 1132
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mSettingChangeListeners:Landroid/util/ArrayMap;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {p1, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_45

    :catchall_43
    move-exception p0

    goto :goto_52

    .line 1134
    :cond_45
    :goto_45
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mSettingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    invoke-virtual {p0, p2, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1135
    monitor-exit v1

    return-void

    :goto_52
    monitor-exit v1
    :try_end_53
    .catchall {:try_start_30 .. :try_end_53} :catchall_43

    throw p0

    .line 1123
    :cond_54
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Setting \'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' does not exist."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    .registers 5

    .line 876
    new-instance v0, Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;-><init>(Lcom/android/server/hdmi/HdmiCecConfig;Landroid/content/Context;Ljava/lang/String;I)V

    .line 877
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mSettings:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public removeChangeListener(Ljava/lang/String;Lcom/android/server/hdmi/HdmiCecConfig$SettingChangeListener;)V
    .registers 5

    .line 1143
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 1147
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1148
    :try_start_9
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mSettingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 1149
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mSettingChangeListeners:Landroid/util/ArrayMap;

    .line 1150
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArrayMap;

    .line 1151
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1152
    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 1153
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mSettingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a

    :catchall_28
    move-exception p0

    goto :goto_2c

    .line 1156
    :cond_2a
    :goto_2a
    monitor-exit v1

    return-void

    :goto_2c
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_9 .. :try_end_2d} :catchall_28

    throw p0

    .line 1145
    :cond_2e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Setting \'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' does not exist."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public retrieveValue(Lcom/android/server/hdmi/HdmiCecConfig$Setting;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 1056
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getStorage(Lcom/android/server/hdmi/HdmiCecConfig$Setting;)I

    move-result v0

    .line 1057
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getStorageKey(Lcom/android/server/hdmi/HdmiCecConfig$Setting;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 1058
    const-string v2, "Reading \'"

    if-nez v0, :cond_2d

    .line 1059
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' sysprop."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1060
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mStorageAdapter:Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;->retrieveSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2d
    const/4 v3, 0x1

    if-ne v0, v3, :cond_50

    .line 1062
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' global setting."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1063
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mStorageAdapter:Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;->retrieveGlobalSetting(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_50
    const/4 v3, 0x2

    if-ne v0, v3, :cond_73

    .line 1065
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' shared preference."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1066
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mStorageAdapter:Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;->retrieveSharedPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_73
    const/4 p0, 0x0

    return-object p0
.end method

.method public setIntValue(Ljava/lang/String;I)V
    .registers 8

    .line 1332
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object v0

    .line 1333
    const-string v1, "Setting \'"

    if-eqz v0, :cond_aa

    .line 1336
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getUserConfigurable()Z

    move-result v2

    const-string v3, "Updating CEC setting \'"

    if-eqz v2, :cond_90

    .line 1339
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getValueType()Ljava/lang/String;

    move-result-object v2

    const-string v4, "int"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_76

    .line 1343
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getAllowedIntValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "\'."

    if-eqz v1, :cond_54

    .line 1347
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' to \'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1348
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->storeValue(Lcom/android/server/hdmi/HdmiCecConfig$Setting;Ljava/lang/String;)V

    return-void

    .line 1344
    :cond_54
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid CEC setting \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' value: \'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1340
    :cond_76
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' is not a int-type setting."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1337
    :cond_90
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' prohibited."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1334
    :cond_aa
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' does not exist."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setStringValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 1309
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object v0

    .line 1310
    const-string v1, "Setting \'"

    if-eqz v0, :cond_a3

    .line 1313
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getUserConfigurable()Z

    move-result v2

    const-string v3, "Updating CEC setting \'"

    if-eqz v2, :cond_89

    .line 1316
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getValueType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "string"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 1320
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getAllowedStringValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "\'."

    if-eqz v1, :cond_4d

    .line 1324
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' to \'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1325
    invoke-virtual {p0, v0, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->storeValue(Lcom/android/server/hdmi/HdmiCecConfig$Setting;Ljava/lang/String;)V

    return-void

    .line 1321
    :cond_4d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid CEC setting \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' value: \'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1317
    :cond_6f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' is not a string-type setting."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1314
    :cond_89
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' prohibited."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1311
    :cond_a3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' does not exist."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public storeValue(Lcom/android/server/hdmi/HdmiCecConfig$Setting;Ljava/lang/String;)V
    .registers 8

    .line 1072
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getStorage(Lcom/android/server/hdmi/HdmiCecConfig$Setting;)I

    move-result v0

    .line 1073
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getStorageKey(Lcom/android/server/hdmi/HdmiCecConfig$Setting;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 1074
    const-string v3, "Setting \'"

    if-nez v0, :cond_2c

    .line 1075
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' sysprop."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1076
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mStorageAdapter:Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;

    invoke-virtual {p0, v1, p2}, Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;->storeSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2c
    const/4 v4, 0x1

    if-ne v0, v4, :cond_4e

    .line 1078
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' global setting."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1079
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mStorageAdapter:Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;

    invoke-virtual {p0, v1, p2}, Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;->storeGlobalSetting(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4e
    const/4 v4, 0x2

    if-ne v0, v4, :cond_72

    .line 1081
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' shared pref."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1082
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mStorageAdapter:Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;

    invoke-virtual {v0, v1, p2}, Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;->storeSharedPref(Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->notifySettingChanged(Lcom/android/server/hdmi/HdmiCecConfig$Setting;)V

    :cond_72
    return-void
.end method

.method public final verifySettings()V
    .registers 3

    .line 882
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

    .line 885
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getDefaultValue()Lcom/android/server/hdmi/HdmiCecConfig$Value;

    .line 886
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecConfig;->getStorage(Lcom/android/server/hdmi/HdmiCecConfig$Setting;)I

    .line 887
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecConfig;->getStorageKey(Lcom/android/server/hdmi/HdmiCecConfig$Setting;)Ljava/lang/String;

    goto :goto_a

    :cond_20
    return-void
.end method
