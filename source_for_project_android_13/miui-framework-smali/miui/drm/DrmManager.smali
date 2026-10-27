.class public Lmiui/drm/DrmManager;
.super Ljava/lang/Object;
.source "DrmManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/drm/DrmManager$DrmNSContext;,
        Lmiui/drm/DrmManager$TrialLimits;,
        Lmiui/drm/DrmManager$RightObject;,
        Lmiui/drm/DrmManager$RightObjectCache;,
        Lmiui/drm/DrmManager$DrmResult;
    }
.end annotation


# static fields
.field private static final blacklist ASSET_XPATH:Ljava/lang/String; = "/o-ex:rights/o-ex:agreement/o-ex:asset/o-ex:context/o-dd:uid"

.field private static final blacklist DISPLAY_COUNT_XPATH:Ljava/lang/String; = "/o-ex:rights/o-ex:agreement/o-ex:permission/o-dd:display/o-ex:constraint/o-dd:count"

.field private static final blacklist IMEI_EVERYONE:Ljava/lang/String; = "-1"

.field private static final blacklist IMEI_PREFIX:Ljava/lang/String; = "d"

.field private static final blacklist INDIVIDUAL_XPATH:Ljava/lang/String; = "/o-ex:rights/o-ex:agreement/o-ex:permission/o-dd:execute/o-ex:constraint/oma-dd:individual/o-ex:context/o-dd:uid"

.field private static final blacklist ITEM_SEPARATOR:Ljava/lang/String; = ","

.field private static final blacklist O_EX_ID_CATEGORY:Ljava/lang/String; = "o-ex:id"

.field private static final blacklist PAIR_SEPARATOR:Ljava/lang/String; = ":"

.field private static final blacklist PUBLIC_KEY_E:Ljava/lang/String; = "10001"

.field private static final blacklist PUBLIC_KEY_M:Ljava/lang/String; = "a2ebd07cfae9a72345fc3c95d80cf5a21a55bf553fbab3025c82747ba4d53d1f9b02f46c20b5520585a910732698b165f0ecf7bd9ce5402e27c646cd0c5d34cff92b184d6a477e156a7d3503b756cc3e8531fb26c0da0ca051ab531c7f9f2a040a06642cadb698882c048630030b73edbbd62da73f7027065443c6e2558edfbd"

.field private static final blacklist SUPPORT_AD:Ljava/lang/String; = "support_ad"

.field public static final whitelist TAG:Ljava/lang/String; = "drm"

.field private static final blacklist TIME_END_XPATH:Ljava/lang/String; = "/o-ex:rights/o-ex:agreement/o-ex:permission/o-dd:execute/o-ex:constraint/o-dd:datetime/o-dd:end"

.field private static final blacklist TIME_START_XPATH:Ljava/lang/String; = "/o-ex:rights/o-ex:agreement/o-ex:permission/o-dd:execute/o-ex:constraint/o-dd:datetime/o-dd:start"

.field private static final blacklist USER_EVERYONE:Ljava/lang/String; = "-1"

.field private static final blacklist USER_PREFIX:Ljava/lang/String; = "m"

.field private static blacklist mRightsCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lmiui/drm/DrmManager$RightObjectCache;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 102
    new-instance v0, Lmiui/drm/DrmManager$1;

    const/4 v1, 0x0

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lmiui/drm/DrmManager$1;-><init>(IFZ)V

    sput-object v0, Lmiui/drm/DrmManager;->mRightsCache:Ljava/util/Map;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist convertHexStringToBytes(Ljava/lang/String;)[B
    .registers 6
    .param p0, "hex"    # Ljava/lang/String;

    .line 444
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 445
    .local v0, "data":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_23

    .line 446
    div-int/lit8 v2, v1, 0x2

    add-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 445
    add-int/lit8 v1, v1, 0x2

    goto :goto_9

    .line 448
    .end local v1    # "i":I
    :cond_23
    return-object v0
.end method

.method public static whitelist exportFatalLog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .line 452
    const-string v0, " "

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    const/4 v1, 0x0

    .line 455
    .local v1, "writer":Ljava/io/BufferedWriter;
    :try_start_6
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/system/theme_magic/drm.log"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 456
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/32 v5, 0x19000

    cmp-long v3, v3, v5

    if-lez v3, :cond_35

    .line 457
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "recreate log file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 460
    :cond_35
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_58

    .line 461
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "create log file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 464
    :cond_58
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "export error message into "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    const/4 v5, 0x1

    invoke-direct {v4, v2, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v1, v3

    .line 466
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmiui/drm/DrmManager;->getContextInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 467
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_b1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b1} :catch_bd
    .catchall {:try_start_6 .. :try_end_b1} :catchall_bb

    .line 471
    .end local v2    # "file":Ljava/io/File;
    nop

    .line 473
    :try_start_b2
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_b5
    .catch Ljava/io/IOException; {:try_start_b2 .. :try_end_b5} :catch_b6

    .line 476
    :goto_b5
    goto :goto_c7

    .line 474
    :catch_b6
    move-exception v0

    .line 475
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_b5

    .line 471
    :catchall_bb
    move-exception v0

    goto :goto_c8

    .line 468
    :catch_bd
    move-exception v0

    .line 469
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_be
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c1
    .catchall {:try_start_be .. :try_end_c1} :catchall_bb

    .line 471
    .end local v0    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_c7

    .line 473
    :try_start_c3
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_c6
    .catch Ljava/io/IOException; {:try_start_c3 .. :try_end_c6} :catch_b6

    goto :goto_b5

    .line 479
    :cond_c7
    :goto_c7
    return-void

    .line 471
    :goto_c8
    if-eqz v1, :cond_d2

    .line 473
    :try_start_ca
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_cd
    .catch Ljava/io/IOException; {:try_start_ca .. :try_end_cd} :catch_ce

    .line 476
    goto :goto_d2

    .line 474
    :catch_ce
    move-exception v2

    .line 475
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 478
    .end local v2    # "e":Ljava/io/IOException;
    :cond_d2
    :goto_d2
    throw v0
.end method

.method private static blacklist getContextInfo()Ljava/lang/String;
    .registers 4

    .line 482
    const-string v0, "%s %s_%s %s"

    .line 483
    .local v0, "info":Ljava/lang/String;
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 484
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 483
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist getEncodedImei(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .param p0, "c"    # Landroid/content/Context;

    .line 488
    invoke-static {p0}, Lmiui/drm/DrmManager;->getOriginImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 489
    .local v0, "imei":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 490
    const-string v1, ""

    return-object v1

    .line 492
    :cond_d
    invoke-static {v0}, Lmiui/util/HashUtilsCompat;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 493
    return-object v0
.end method

.method public static whitelist getMorePreciseDrmResult(Lmiui/drm/DrmManager$DrmResult;Lmiui/drm/DrmManager$DrmResult;)Lmiui/drm/DrmManager$DrmResult;
    .registers 3
    .param p0, "r1"    # Lmiui/drm/DrmManager$DrmResult;
    .param p1, "r2"    # Lmiui/drm/DrmManager$DrmResult;

    .line 182
    sget-object v0, Lmiui/drm/DrmManager$DrmResult;->DRM_ERROR_TIME_NOT_MATCH:Lmiui/drm/DrmManager$DrmResult;

    if-ne p0, v0, :cond_8

    sget-object v0, Lmiui/drm/DrmManager$DrmResult;->DRM_SUCCESS:Lmiui/drm/DrmManager$DrmResult;

    if-ne p1, v0, :cond_10

    :cond_8
    sget-object v0, Lmiui/drm/DrmManager$DrmResult;->DRM_SUCCESS:Lmiui/drm/DrmManager$DrmResult;

    if-eq p0, v0, :cond_13

    sget-object v0, Lmiui/drm/DrmManager$DrmResult;->DRM_ERROR_TIME_NOT_MATCH:Lmiui/drm/DrmManager$DrmResult;

    if-ne p1, v0, :cond_13

    .line 184
    :cond_10
    sget-object v0, Lmiui/drm/DrmManager$DrmResult;->DRM_ERROR_TIME_NOT_MATCH:Lmiui/drm/DrmManager$DrmResult;

    return-object v0

    .line 186
    :cond_13
    invoke-virtual {p0, p1}, Lmiui/drm/DrmManager$DrmResult;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_1b

    move-object v0, p0

    goto :goto_1c

    :cond_1b
    move-object v0, p1

    :goto_1c
    return-object v0
.end method

.method private static blacklist getOriginImei(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .param p0, "c"    # Landroid/content/Context;

    .line 497
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManager;->getMiuiDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 498
    .local v0, "imei":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 499
    const-string v1, ""

    return-object v1

    .line 501
    :cond_11
    return-object v0
.end method

.method private static blacklist getTime(Ljava/lang/String;)J
    .registers 5
    .param p0, "rfc822"    # Ljava/lang/String;

    .line 377
    const-wide/16 v0, 0x0

    .line 379
    .local v0, "time":J
    :try_start_2
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2
    :try_end_11
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_11} :catch_13

    move-wide v0, v2

    .line 383
    goto :goto_19

    .line 380
    :catch_13
    move-exception v2

    .line 381
    .local v2, "e":Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    .line 382
    const-wide/16 v0, -0x1

    .line 384
    .end local v2    # "e":Ljava/text/ParseException;
    :goto_19
    return-wide v0
.end method

.method public static whitelist getTrialLimits(Ljava/io/File;)Lmiui/drm/DrmManager$TrialLimits;
    .registers 7
    .param p0, "rightsFile"    # Ljava/io/File;

    .line 369
    invoke-static {p0}, Lmiui/drm/DrmManager;->parseRightsFile(Ljava/io/File;)Lmiui/drm/DrmManager$RightObject;

    move-result-object v0

    .line 370
    .local v0, "ro":Lmiui/drm/DrmManager$RightObject;
    if-eqz v0, :cond_10

    .line 371
    new-instance v1, Lmiui/drm/DrmManager$TrialLimits;

    iget-wide v2, v0, Lmiui/drm/DrmManager$RightObject;->startTime:J

    iget-wide v4, v0, Lmiui/drm/DrmManager$RightObject;->endTime:J

    invoke-direct {v1, v2, v3, v4, v5}, Lmiui/drm/DrmManager$TrialLimits;-><init>(JJ)V

    return-object v1

    .line 373
    :cond_10
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist getVAID(Landroid/content/Context;)Ljava/lang/String;
    .registers 10
    .param p0, "c"    # Landroid/content/Context;

    .line 508
    const-string v0, "drm"

    const/4 v1, 0x0

    .line 509
    .local v1, "vaid":Ljava/lang/String;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-gt v2, v3, :cond_a

    .line 510
    return-object v1

    .line 513
    :cond_a
    :try_start_a
    const-string v2, "com.android.id.IdentifierManager"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 514
    .local v2, "identifierManagerClass":Ljava/lang/Class;
    const-string v3, "getVAID"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 515
    .local v3, "getVaidMethod":Ljava/lang/reflect/Method;
    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v7

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 516
    .local v4, "originVaid":Ljava/lang/String;
    if-nez v4, :cond_4b

    .line 518
    const-string v6, "fail get vaid, try again!"

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    const-string v6, "security"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 520
    .local v6, "manager":Ljava/lang/Object;
    const-string v8, "getPlatformVAID"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v8, v5, v7}, Landroid/media/ReflectUtil;->callObjectMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v4, v5

    .line 521
    if-nez v4, :cond_4b

    .line 522
    const-string v5, "finaly fail get vaid."

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    const-string v0, "-1"

    return-object v0

    .line 526
    .end local v6    # "manager":Ljava/lang/Object;
    :cond_4b
    invoke-static {v4}, Lmiui/util/HashUtilsCompat;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_4f} :catch_51

    move-object v1, v0

    .line 529
    .end local v2    # "identifierManagerClass":Ljava/lang/Class;
    .end local v3    # "getVaidMethod":Ljava/lang/reflect/Method;
    .end local v4    # "originVaid":Ljava/lang/String;
    goto :goto_68

    .line 527
    :catch_51
    move-exception v2

    .line 528
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVAID hanppens exception e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_68
    return-object v1
.end method

.method public static whitelist isLegal(Landroid/content/Context;Ljava/io/File;Ljava/io/File;)Lmiui/drm/DrmManager$DrmResult;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contentFile"    # Ljava/io/File;
    .param p2, "rightsFile"    # Ljava/io/File;

    .line 206
    invoke-static {p1}, Lmiui/util/HashUtilsCompat;->getSHA1(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "hash":Ljava/lang/String;
    invoke-static {p0, v0, p2}, Lmiui/drm/DrmManager;->isLegal(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Lmiui/drm/DrmManager$DrmResult;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist isLegal(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Lmiui/drm/DrmManager$DrmResult;
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hash"    # Ljava/lang/String;
    .param p2, "rightsFile"    # Ljava/io/File;

    .line 211
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8c

    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_14

    goto/16 :goto_8c

    .line 214
    :cond_14
    sget-object v0, Lmiui/drm/DrmManager$DrmResult;->DRM_ERROR_UNKNOWN:Lmiui/drm/DrmManager$DrmResult;

    .line 215
    .local v0, "ret":Lmiui/drm/DrmManager$DrmResult;
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    const-string v2, " with "

    const-string v3, "checking asset "

    const-string v4, "drm"

    if-eqz v1, :cond_63

    .line 216
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v5, v1

    const/4 v6, 0x0

    :goto_28
    if-ge v6, v5, :cond_62

    aget-object v7, v1, v6

    .line 217
    .local v7, "file":Ljava/io/File;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-static {v7}, Lmiui/drm/DrmManager;->parseRightsFile(Ljava/io/File;)Lmiui/drm/DrmManager$RightObject;

    move-result-object v8

    .line 219
    .local v8, "ro":Lmiui/drm/DrmManager$RightObject;
    invoke-static {p0, p1, v8}, Lmiui/drm/DrmManager;->isLegal(Landroid/content/Context;Ljava/lang/String;Lmiui/drm/DrmManager$RightObject;)Lmiui/drm/DrmManager$DrmResult;

    move-result-object v9

    .line 220
    .local v9, "tempRet":Lmiui/drm/DrmManager$DrmResult;
    sget-object v10, Lmiui/drm/DrmManager$DrmResult;->DRM_SUCCESS:Lmiui/drm/DrmManager$DrmResult;

    if-ne v9, v10, :cond_5b

    .line 221
    sget-object v1, Lmiui/drm/DrmManager$DrmResult;->DRM_SUCCESS:Lmiui/drm/DrmManager$DrmResult;

    return-object v1

    .line 223
    :cond_5b
    invoke-static {v0, v9}, Lmiui/drm/DrmManager;->getMorePreciseDrmResult(Lmiui/drm/DrmManager$DrmResult;Lmiui/drm/DrmManager$DrmResult;)Lmiui/drm/DrmManager$DrmResult;

    move-result-object v0

    .line 216
    .end local v7    # "file":Ljava/io/File;
    .end local v8    # "ro":Lmiui/drm/DrmManager$RightObject;
    .end local v9    # "tempRet":Lmiui/drm/DrmManager$DrmResult;
    add-int/lit8 v6, v6, 0x1

    goto :goto_28

    .line 225
    :cond_62
    return-object v0

    .line 227
    :cond_63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-static {p2}, Lmiui/drm/DrmManager;->parseRightsFile(Ljava/io/File;)Lmiui/drm/DrmManager$RightObject;

    move-result-object v1

    .line 229
    .local v1, "ro":Lmiui/drm/DrmManager$RightObject;
    invoke-static {p0, p1, v1}, Lmiui/drm/DrmManager;->isLegal(Landroid/content/Context;Ljava/lang/String;Lmiui/drm/DrmManager$RightObject;)Lmiui/drm/DrmManager$DrmResult;

    move-result-object v2

    return-object v2

    .line 212
    .end local v0    # "ret":Lmiui/drm/DrmManager$DrmResult;
    .end local v1    # "ro":Lmiui/drm/DrmManager$RightObject;
    :cond_8c
    :goto_8c
    sget-object v0, Lmiui/drm/DrmManager$DrmResult;->DRM_ERROR_RIGHT_FILE_NOT_EXISTS:Lmiui/drm/DrmManager$DrmResult;

    return-object v0
.end method

.method private static blacklist isLegal(Landroid/content/Context;Ljava/lang/String;Lmiui/drm/DrmManager$RightObject;)Lmiui/drm/DrmManager$DrmResult;
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "targetAsset"    # Ljava/lang/String;
    .param p2, "ro"    # Lmiui/drm/DrmManager$RightObject;

    .line 234
    if-nez p2, :cond_5

    .line 235
    sget-object v0, Lmiui/drm/DrmManager$DrmResult;->DRM_ERROR_RIGHT_OBJECT_IS_NULL:Lmiui/drm/DrmManager$DrmResult;

    return-object v0

    .line 238
    :cond_5
    const/4 v0, 0x0

    .line 239
    .local v0, "match":Z
    iget-object v1, p2, Lmiui/drm/DrmManager$RightObject;->assets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 240
    .local v2, "asset":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 241
    const/4 v0, 0x1

    .line 242
    goto :goto_21

    .line 244
    .end local v2    # "asset":Ljava/lang/String;
    :cond_20
    goto :goto_c

    .line 245
    :cond_21
    :goto_21
    const-string v1, "drm"

    if-nez v0, :cond_3e

    .line 246
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "right object has no definition for asset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/drm/DrmManager;->exportFatalLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    sget-object v1, Lmiui/drm/DrmManager$DrmResult;->DRM_ERROR_ASSET_NOT_MATCH:Lmiui/drm/DrmManager$DrmResult;

    return-object v1

    .line 250
    :cond_3e
    iget-object v2, p2, Lmiui/drm/DrmManager$RightObject;->imeis:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_4c

    .line 251
    const-string v2, "right object does not have any imeis"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a0

    .line 253
    :cond_4c
    const/4 v2, 0x0

    .line 254
    .local v2, "targetOriginImei":Ljava/lang/String;
    const/4 v3, 0x0

    .line 255
    .local v3, "targetEncodedImei":Ljava/lang/String;
    invoke-static {p0}, Lmiui/drm/DrmManager;->getVAID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 256
    .local v4, "targetEncodedVaid":Ljava/lang/String;
    const-string v5, "-1"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_62

    .line 257
    const-string v5, "can not get VAID, ignore"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    sget-object v1, Lmiui/drm/DrmManager$DrmResult;->DRM_SUCCESS:Lmiui/drm/DrmManager$DrmResult;

    return-object v1

    .line 260
    :cond_62
    const/4 v6, 0x0

    .line 261
    .local v6, "isFound":Z
    iget-object v7, p2, Lmiui/drm/DrmManager$RightObject;->imeis:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_69
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_96

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 262
    .local v8, "imei":Ljava/lang/String;
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8f

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8f

    .line 263
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8f

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8e

    goto :goto_8f

    .line 268
    .end local v8    # "imei":Ljava/lang/String;
    :cond_8e
    goto :goto_69

    .line 264
    .restart local v8    # "imei":Ljava/lang/String;
    :cond_8f
    :goto_8f
    const-string v5, "right object has matched imei"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const/4 v6, 0x1

    .line 266
    nop

    .line 269
    .end local v8    # "imei":Ljava/lang/String;
    :cond_96
    if-nez v6, :cond_a0

    .line 270
    const-string v5, "right object does not have matched imei"

    invoke-static {v1, v5}, Lmiui/drm/DrmManager;->exportFatalLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    sget-object v1, Lmiui/drm/DrmManager$DrmResult;->DRM_ERROR_IMEI_NOT_MATCH:Lmiui/drm/DrmManager$DrmResult;

    return-object v1

    .line 274
    .end local v2    # "targetOriginImei":Ljava/lang/String;
    .end local v3    # "targetEncodedImei":Ljava/lang/String;
    .end local v4    # "targetEncodedVaid":Ljava/lang/String;
    .end local v6    # "isFound":Z
    :cond_a0
    :goto_a0
    iget-wide v1, p2, Lmiui/drm/DrmManager$RightObject;->startTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_cb

    iget-wide v1, p2, Lmiui/drm/DrmManager$RightObject;->endTime:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_af

    goto :goto_cb

    .line 276
    :cond_af
    iget-wide v1, p2, Lmiui/drm/DrmManager$RightObject;->endTime:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_c8

    .line 277
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 278
    .local v1, "current":J
    iget-wide v3, p2, Lmiui/drm/DrmManager$RightObject;->startTime:J

    cmp-long v3, v1, v3

    if-ltz v3, :cond_c5

    iget-wide v3, p2, Lmiui/drm/DrmManager$RightObject;->endTime:J

    cmp-long v3, v1, v3

    if-lez v3, :cond_c8

    .line 279
    :cond_c5
    sget-object v3, Lmiui/drm/DrmManager$DrmResult;->DRM_ERROR_TIME_NOT_MATCH:Lmiui/drm/DrmManager$DrmResult;

    return-object v3

    .line 282
    .end local v1    # "current":J
    :cond_c8
    sget-object v1, Lmiui/drm/DrmManager$DrmResult;->DRM_SUCCESS:Lmiui/drm/DrmManager$DrmResult;

    return-object v1

    .line 275
    :cond_cb
    :goto_cb
    sget-object v1, Lmiui/drm/DrmManager$DrmResult;->DRM_ERROR_TIME_NOT_MATCH:Lmiui/drm/DrmManager$DrmResult;

    return-object v1
.end method

.method public static whitelist isPermanentRights(Ljava/io/File;)Z
    .registers 2
    .param p0, "rightsFile"    # Ljava/io/File;

    .line 286
    invoke-static {p0}, Lmiui/drm/DrmManager;->parseRightsFile(Ljava/io/File;)Lmiui/drm/DrmManager$RightObject;

    move-result-object v0

    invoke-static {v0}, Lmiui/drm/DrmManager;->isPermanentRights(Lmiui/drm/DrmManager$RightObject;)Z

    move-result v0

    return v0
.end method

.method private static blacklist isPermanentRights(Lmiui/drm/DrmManager$RightObject;)Z
    .registers 5
    .param p0, "ro"    # Lmiui/drm/DrmManager$RightObject;

    .line 290
    if-eqz p0, :cond_12

    iget-wide v0, p0, Lmiui/drm/DrmManager$RightObject;->startTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_12

    iget-wide v0, p0, Lmiui/drm/DrmManager$RightObject;->endTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method private static blacklist isRightsFileLegal(Ljava/io/File;)Z
    .registers 16
    .param p0, "file"    # Ljava/io/File;

    .line 389
    const-string v0, "10001"

    const-string v1, "a2ebd07cfae9a72345fc3c95d80cf5a21a55bf553fbab3025c82747ba4d53d1f9b02f46c20b5520585a910732698b165f0ecf7bd9ce5402e27c646cd0c5d34cff92b184d6a477e156a7d3503b756cc3e8531fb26c0da0ca051ab531c7f9f2a040a06642cadb698882c048630030b73edbbd62da73f7027065443c6e2558edfbd"

    :try_start_4
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    .line 390
    .local v2, "domfac":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    .line 391
    .local v3, "dombuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v3, p0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v4

    .line 392
    .local v4, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v5

    .line 393
    .local v5, "root":Lorg/w3c/dom/Element;
    const-string v6, "o-ex:id"

    invoke-interface {v5, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 394
    .local v6, "signaturePart":Ljava/lang/String;
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 395
    .local v7, "nodes":Lorg/w3c/dom/NodeList;
    const-string v8, ""

    .line 396
    .local v8, "contentPart":Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_21
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-ge v9, v10, :cond_44

    .line 397
    invoke-interface {v7, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    .line 398
    .local v10, "node":Lorg/w3c/dom/Node;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v10}, Lmiui/drm/DrmManager;->nodeToString(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v8, v11

    .line 396
    .end local v10    # "node":Lorg/w3c/dom/Node;
    add-int/lit8 v9, v9, 0x1

    goto :goto_21

    .line 401
    .end local v9    # "i":I
    :cond_44
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_b4

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_b4

    .line 402
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    .line 403
    .local v9, "contentBytes":[B
    invoke-static {v6}, Lmiui/drm/DrmManager;->convertHexStringToBytes(Ljava/lang/String;)[B

    move-result-object v10

    .line 404
    .local v10, "signatureBytes":[B
    invoke-static {v1, v0}, Lmiui/util/RSAUtilsCompat;->getPublicKey(Ljava/lang/String;Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v11

    invoke-static {v9, v11, v10}, Lmiui/util/RSAUtilsCompat;->verify([BLjava/security/PublicKey;[B)Z

    move-result v11
    :try_end_60
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4 .. :try_end_60} :catch_b0
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_60} :catch_ab
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_60} :catch_a6
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_4 .. :try_end_60} :catch_a1
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_60} :catch_9c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_60} :catch_97

    .line 405
    .local v11, "isLegal":Z
    const-string v12, "drm"

    if-eqz v11, :cond_6b

    .line 406
    :try_start_64
    const-string v0, "standard format rights file verify is legal"

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    const/4 v0, 0x1

    return v0

    .line 410
    :cond_6b
    const-string v13, "/>"

    const-string v14, " />"

    invoke-virtual {v8, v13, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    move-object v9, v13

    .line 411
    invoke-static {v1, v0}, Lmiui/util/RSAUtilsCompat;->getPublicKey(Ljava/lang/String;Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v0

    invoke-static {v9, v0, v10}, Lmiui/util/RSAUtilsCompat;->verify([BLjava/security/PublicKey;[B)Z

    move-result v0

    .line 412
    .end local v11    # "isLegal":Z
    .local v0, "isLegal":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "old format rights file verify result : "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_96
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_64 .. :try_end_96} :catch_b0
    .catch Lorg/xml/sax/SAXException; {:try_start_64 .. :try_end_96} :catch_ab
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_96} :catch_a6
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_64 .. :try_end_96} :catch_a1
    .catch Ljava/lang/NumberFormatException; {:try_start_64 .. :try_end_96} :catch_9c
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_96} :catch_97

    .line 413
    return v0

    .line 425
    .end local v0    # "isLegal":Z
    .end local v2    # "domfac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v3    # "dombuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v4    # "doc":Lorg/w3c/dom/Document;
    .end local v5    # "root":Lorg/w3c/dom/Element;
    .end local v6    # "signaturePart":Ljava/lang/String;
    .end local v7    # "nodes":Lorg/w3c/dom/NodeList;
    .end local v8    # "contentPart":Ljava/lang/String;
    .end local v9    # "contentBytes":[B
    .end local v10    # "signatureBytes":[B
    :catch_97
    move-exception v0

    .line 426
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b5

    .line 423
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_9c
    move-exception v0

    .line 424
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    goto :goto_b4

    .line 421
    :catch_a1
    move-exception v0

    .line 422
    .local v0, "e":Ljavax/xml/xpath/XPathExpressionException;
    invoke-virtual {v0}, Ljavax/xml/xpath/XPathExpressionException;->printStackTrace()V

    .end local v0    # "e":Ljavax/xml/xpath/XPathExpressionException;
    goto :goto_b4

    .line 419
    :catch_a6
    move-exception v0

    .line 420
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_b4

    .line 417
    :catch_ab
    move-exception v0

    .line 418
    .local v0, "e":Lorg/xml/sax/SAXException;
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V

    .end local v0    # "e":Lorg/xml/sax/SAXException;
    goto :goto_b4

    .line 415
    :catch_b0
    move-exception v0

    .line 416
    .local v0, "e":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    .line 427
    .end local v0    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :cond_b4
    :goto_b4
    nop

    .line 428
    :goto_b5
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist isSupportAd(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 190
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "support_ad"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_e

    const/4 v2, 0x1

    :cond_e
    return v2
.end method

.method public static whitelist isSupportAd(Ljava/io/File;)Z
    .registers 3
    .param p0, "rightsFile"    # Ljava/io/File;

    .line 198
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 199
    invoke-static {p0}, Lmiui/drm/DrmManager;->parseRightsFile(Ljava/io/File;)Lmiui/drm/DrmManager$RightObject;

    move-result-object v0

    .line 200
    .local v0, "ro":Lmiui/drm/DrmManager$RightObject;
    iget-boolean v1, v0, Lmiui/drm/DrmManager$RightObject;->adSupport:Z

    return v1

    .line 202
    .end local v0    # "ro":Lmiui/drm/DrmManager$RightObject;
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist nodeToString(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .registers 5
    .param p0, "node"    # Lorg/w3c/dom/Node;

    .line 432
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 434
    .local v0, "sw":Ljava/io/StringWriter;
    :try_start_5
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v1

    .line 435
    .local v1, "t":Ljavax/xml/transform/Transformer;
    const-string v2, "omit-xml-declaration"

    const-string v3, "yes"

    invoke-virtual {v1, v2, v3}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    new-instance v2, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v2, p0}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    new-instance v3, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v3, v0}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v1, v2, v3}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_21
    .catch Ljavax/xml/transform/TransformerException; {:try_start_5 .. :try_end_21} :catch_22

    .line 439
    .end local v1    # "t":Ljavax/xml/transform/Transformer;
    goto :goto_26

    .line 437
    :catch_22
    move-exception v1

    .line 438
    .local v1, "e":Ljavax/xml/transform/TransformerException;
    invoke-virtual {v1}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    .line 440
    .end local v1    # "e":Ljavax/xml/transform/TransformerException;
    :goto_26
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist parseRightsFile(Ljava/io/File;)Lmiui/drm/DrmManager$RightObject;
    .registers 20
    .param p0, "file"    # Ljava/io/File;

    .line 294
    const-string v0, "m"

    const-string v1, "d"

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 295
    .local v2, "path":Ljava/lang/String;
    sget-object v3, Lmiui/drm/DrmManager;->mRightsCache:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/drm/DrmManager$RightObjectCache;

    .line 296
    .local v3, "cache":Lmiui/drm/DrmManager$RightObjectCache;
    if-eqz v3, :cond_1f

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    iget-wide v6, v3, Lmiui/drm/DrmManager$RightObjectCache;->lastModified:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_1f

    .line 297
    iget-object v0, v3, Lmiui/drm/DrmManager$RightObjectCache;->ro:Lmiui/drm/DrmManager$RightObject;

    return-object v0

    .line 299
    :cond_1f
    invoke-static/range {p0 .. p0}, Lmiui/drm/DrmManager;->isRightsFileLegal(Ljava/io/File;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_27

    .line 300
    return-object v5

    .line 302
    :cond_27
    new-instance v4, Lmiui/drm/DrmManager$RightObject;

    invoke-direct {v4, v5}, Lmiui/drm/DrmManager$RightObject;-><init>(Lmiui/drm/DrmManager$RightObject-IA;)V

    .line 303
    .local v4, "ro":Lmiui/drm/DrmManager$RightObject;
    new-instance v6, Lmiui/drm/DrmManager$RightObjectCache;

    invoke-direct {v6, v5}, Lmiui/drm/DrmManager$RightObjectCache;-><init>(Lmiui/drm/DrmManager$RightObjectCache-IA;)V

    move-object v3, v6

    .line 304
    iput-object v4, v3, Lmiui/drm/DrmManager$RightObjectCache;->ro:Lmiui/drm/DrmManager$RightObject;

    .line 305
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    iput-wide v6, v3, Lmiui/drm/DrmManager$RightObjectCache;->lastModified:J

    .line 306
    sget-object v6, Lmiui/drm/DrmManager;->mRightsCache:Ljava/util/Map;

    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    :try_start_3f
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v6

    .line 309
    .local v6, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 310
    invoke-virtual {v6}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v8
    :try_end_4b
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3f .. :try_end_4b} :catch_1df
    .catch Lorg/xml/sax/SAXException; {:try_start_3f .. :try_end_4b} :catch_1d4
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_4b} :catch_1c9
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_3f .. :try_end_4b} :catch_1be
    .catch Ljava/lang/NumberFormatException; {:try_start_3f .. :try_end_4b} :catch_1b3

    .line 311
    .local v8, "builder":Ljavax/xml/parsers/DocumentBuilder;
    move-object/from16 v9, p0

    :try_start_4d
    invoke-virtual {v8, v9}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v10

    .line 312
    .local v10, "document":Lorg/w3c/dom/Document;
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v11

    .line 313
    .local v11, "xpathFactory":Ljavax/xml/xpath/XPathFactory;
    invoke-virtual {v11}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v12

    .line 314
    .local v12, "xPath":Ljavax/xml/xpath/XPath;
    new-instance v13, Lmiui/drm/DrmManager$DrmNSContext;

    invoke-direct {v13, v5}, Lmiui/drm/DrmManager$DrmNSContext;-><init>(Lmiui/drm/DrmManager$DrmNSContext-IA;)V

    invoke-interface {v12, v13}, Ljavax/xml/xpath/XPath;->setNamespaceContext(Ljavax/xml/namespace/NamespaceContext;)V

    .line 315
    const-string v5, "/o-ex:rights/o-ex:agreement/o-ex:asset/o-ex:context/o-dd:uid"

    sget-object v13, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {v12, v5, v10, v13}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/NodeList;

    .line 316
    .local v5, "assetList":Lorg/w3c/dom/NodeList;
    if-eqz v5, :cond_da

    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v14

    if-lez v14, :cond_da

    .line 317
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_74
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v15

    if-ge v14, v15, :cond_d2

    .line 318
    invoke-interface {v5, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v15

    check-cast v15, Lorg/w3c/dom/Element;

    invoke-interface {v15}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v15

    .line 319
    .local v15, "content":Ljava/lang/String;
    const-string v13, ":"

    invoke-virtual {v15, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 320
    .local v13, "pair":[Ljava/lang/String;
    array-length v7, v13
    :try_end_8b
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4d .. :try_end_8b} :catch_1b1
    .catch Lorg/xml/sax/SAXException; {:try_start_4d .. :try_end_8b} :catch_1af
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_8b} :catch_1ad
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_4d .. :try_end_8b} :catch_1ab
    .catch Ljava/lang/NumberFormatException; {:try_start_4d .. :try_end_8b} :catch_1a9

    move-object/from16 v16, v2

    .end local v2    # "path":Ljava/lang/String;
    .local v16, "path":Ljava/lang/String;
    const-string v2, ","

    move-object/from16 v17, v3

    const/4 v3, 0x1

    .end local v3    # "cache":Lmiui/drm/DrmManager$RightObjectCache;
    .local v17, "cache":Lmiui/drm/DrmManager$RightObjectCache;
    if-ne v7, v3, :cond_a8

    .line 321
    :try_start_94
    iget-object v3, v4, Lmiui/drm/DrmManager$RightObject;->assets:Ljava/util/List;

    move-object/from16 v18, v5

    const/4 v7, 0x0

    .end local v5    # "assetList":Lorg/w3c/dom/NodeList;
    .local v18, "assetList":Lorg/w3c/dom/NodeList;
    aget-object v5, v13, v7

    invoke-virtual {v5, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v5, 0x1

    goto :goto_c8

    .line 322
    .end local v18    # "assetList":Lorg/w3c/dom/NodeList;
    .restart local v5    # "assetList":Lorg/w3c/dom/NodeList;
    :cond_a8
    move-object/from16 v18, v5

    .end local v5    # "assetList":Lorg/w3c/dom/NodeList;
    .restart local v18    # "assetList":Lorg/w3c/dom/NodeList;
    array-length v3, v13

    const/4 v5, 0x2

    if-ne v3, v5, :cond_c7

    .line 323
    iget-object v3, v4, Lmiui/drm/DrmManager$RightObject;->assets:Ljava/util/List;

    const/4 v5, 0x0

    aget-object v7, v13, v5

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    iget-object v3, v4, Lmiui/drm/DrmManager$RightObject;->assets:Ljava/util/List;

    const/4 v5, 0x1

    aget-object v7, v13, v5

    invoke-virtual {v7, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_c8

    .line 322
    :cond_c7
    const/4 v5, 0x1

    .line 317
    .end local v13    # "pair":[Ljava/lang/String;
    .end local v15    # "content":Ljava/lang/String;
    :goto_c8
    add-int/lit8 v14, v14, 0x1

    move v7, v5

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v5, v18

    goto :goto_74

    .end local v16    # "path":Ljava/lang/String;
    .end local v17    # "cache":Lmiui/drm/DrmManager$RightObjectCache;
    .end local v18    # "assetList":Lorg/w3c/dom/NodeList;
    .restart local v2    # "path":Ljava/lang/String;
    .restart local v3    # "cache":Lmiui/drm/DrmManager$RightObjectCache;
    .restart local v5    # "assetList":Lorg/w3c/dom/NodeList;
    :cond_d2
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v5

    move v5, v7

    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "cache":Lmiui/drm/DrmManager$RightObjectCache;
    .end local v5    # "assetList":Lorg/w3c/dom/NodeList;
    .restart local v16    # "path":Ljava/lang/String;
    .restart local v17    # "cache":Lmiui/drm/DrmManager$RightObjectCache;
    .restart local v18    # "assetList":Lorg/w3c/dom/NodeList;
    goto :goto_e1

    .line 316
    .end local v14    # "i":I
    .end local v16    # "path":Ljava/lang/String;
    .end local v17    # "cache":Lmiui/drm/DrmManager$RightObjectCache;
    .end local v18    # "assetList":Lorg/w3c/dom/NodeList;
    .restart local v2    # "path":Ljava/lang/String;
    .restart local v3    # "cache":Lmiui/drm/DrmManager$RightObjectCache;
    .restart local v5    # "assetList":Lorg/w3c/dom/NodeList;
    :cond_da
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v5

    move v5, v7

    .line 328
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "cache":Lmiui/drm/DrmManager$RightObjectCache;
    .end local v5    # "assetList":Lorg/w3c/dom/NodeList;
    .restart local v16    # "path":Ljava/lang/String;
    .restart local v17    # "cache":Lmiui/drm/DrmManager$RightObjectCache;
    .restart local v18    # "assetList":Lorg/w3c/dom/NodeList;
    :goto_e1
    const-string v2, "/o-ex:rights/o-ex:agreement/o-ex:permission/o-dd:execute/o-ex:constraint/oma-dd:individual/o-ex:context/o-dd:uid"

    sget-object v3, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {v12, v2, v10, v3}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/NodeList;

    .line 329
    .local v2, "individualList":Lorg/w3c/dom/NodeList;
    if-eqz v2, :cond_12e

    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-lez v3, :cond_12e

    .line 330
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f4
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v3, v7, :cond_12e

    .line 331
    invoke-interface {v2, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Element;

    invoke-interface {v7}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v7

    .line 332
    .local v7, "content":Ljava/lang/String;
    invoke-virtual {v7, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_118

    .line 333
    iget-object v13, v4, Lmiui/drm/DrmManager$RightObject;->imeis:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v7, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12b

    .line 334
    :cond_118
    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_12b

    .line 335
    iget-object v13, v4, Lmiui/drm/DrmManager$RightObject;->users:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v7, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    .end local v7    # "content":Ljava/lang/String;
    :cond_12b
    :goto_12b
    add-int/lit8 v3, v3, 0x1

    goto :goto_f4

    .line 339
    .end local v3    # "i":I
    :cond_12e
    const-string v0, "/o-ex:rights/o-ex:agreement/o-ex:permission/o-dd:execute/o-ex:constraint/o-dd:datetime/o-dd:start"

    sget-object v1, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {v12, v0, v10, v1}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/NodeList;

    .line 340
    .local v0, "timeStartList":Lorg/w3c/dom/NodeList;
    if-eqz v0, :cond_151

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_151

    .line 341
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    invoke-interface {v3}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v1

    .line 342
    .local v1, "content":Ljava/lang/String;
    invoke-static {v1}, Lmiui/drm/DrmManager;->getTime(Ljava/lang/String;)J

    move-result-wide v13

    iput-wide v13, v4, Lmiui/drm/DrmManager$RightObject;->startTime:J

    .line 344
    .end local v1    # "content":Ljava/lang/String;
    :cond_151
    const-string v1, "/o-ex:rights/o-ex:agreement/o-ex:permission/o-dd:execute/o-ex:constraint/o-dd:datetime/o-dd:end"

    sget-object v3, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {v12, v1, v10, v3}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/NodeList;

    .line 345
    .local v1, "timeEndList":Lorg/w3c/dom/NodeList;
    if-eqz v1, :cond_174

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-lez v3, :cond_174

    .line 346
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Element;

    invoke-interface {v7}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v3

    .line 347
    .local v3, "content":Ljava/lang/String;
    invoke-static {v3}, Lmiui/drm/DrmManager;->getTime(Ljava/lang/String;)J

    move-result-wide v13

    iput-wide v13, v4, Lmiui/drm/DrmManager$RightObject;->endTime:J

    .line 349
    .end local v3    # "content":Ljava/lang/String;
    :cond_174
    const-string v3, "/o-ex:rights/o-ex:agreement/o-ex:permission/o-dd:display/o-ex:constraint/o-dd:count"

    sget-object v7, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {v12, v3, v10, v7}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/NodeList;

    .line 350
    .local v3, "displayCountList":Lorg/w3c/dom/NodeList;
    if-eqz v3, :cond_1e9

    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-lez v7, :cond_1e9

    .line 351
    const/4 v7, 0x0

    invoke-interface {v3, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v13

    check-cast v13, Lorg/w3c/dom/Element;

    invoke-interface {v13}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v13

    .line 352
    .local v13, "content":Ljava/lang/String;
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-lez v14, :cond_19c

    move v7, v5

    :cond_19c
    iput-boolean v7, v4, Lmiui/drm/DrmManager$RightObject;->adSupport:Z
    :try_end_19e
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_94 .. :try_end_19e} :catch_1a7
    .catch Lorg/xml/sax/SAXException; {:try_start_94 .. :try_end_19e} :catch_1a5
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_19e} :catch_1a3
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_94 .. :try_end_19e} :catch_1a1
    .catch Ljava/lang/NumberFormatException; {:try_start_94 .. :try_end_19e} :catch_19f

    goto :goto_1e9

    .line 362
    .end local v0    # "timeStartList":Lorg/w3c/dom/NodeList;
    .end local v1    # "timeEndList":Lorg/w3c/dom/NodeList;
    .end local v2    # "individualList":Lorg/w3c/dom/NodeList;
    .end local v3    # "displayCountList":Lorg/w3c/dom/NodeList;
    .end local v6    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v8    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v10    # "document":Lorg/w3c/dom/Document;
    .end local v11    # "xpathFactory":Ljavax/xml/xpath/XPathFactory;
    .end local v12    # "xPath":Ljavax/xml/xpath/XPath;
    .end local v13    # "content":Ljava/lang/String;
    .end local v18    # "assetList":Lorg/w3c/dom/NodeList;
    :catch_19f
    move-exception v0

    goto :goto_1ba

    .line 360
    :catch_1a1
    move-exception v0

    goto :goto_1c5

    .line 358
    :catch_1a3
    move-exception v0

    goto :goto_1d0

    .line 356
    :catch_1a5
    move-exception v0

    goto :goto_1db

    .line 354
    :catch_1a7
    move-exception v0

    goto :goto_1e6

    .line 362
    .end local v16    # "path":Ljava/lang/String;
    .end local v17    # "cache":Lmiui/drm/DrmManager$RightObjectCache;
    .local v2, "path":Ljava/lang/String;
    .local v3, "cache":Lmiui/drm/DrmManager$RightObjectCache;
    :catch_1a9
    move-exception v0

    goto :goto_1b6

    .line 360
    :catch_1ab
    move-exception v0

    goto :goto_1c1

    .line 358
    :catch_1ad
    move-exception v0

    goto :goto_1cc

    .line 356
    :catch_1af
    move-exception v0

    goto :goto_1d7

    .line 354
    :catch_1b1
    move-exception v0

    goto :goto_1e2

    .line 362
    :catch_1b3
    move-exception v0

    move-object/from16 v9, p0

    :goto_1b6
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    .line 363
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "cache":Lmiui/drm/DrmManager$RightObjectCache;
    .local v0, "e":Ljava/lang/NumberFormatException;
    .restart local v16    # "path":Ljava/lang/String;
    .restart local v17    # "cache":Lmiui/drm/DrmManager$RightObjectCache;
    :goto_1ba
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1ea

    .line 360
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v16    # "path":Ljava/lang/String;
    .end local v17    # "cache":Lmiui/drm/DrmManager$RightObjectCache;
    .restart local v2    # "path":Ljava/lang/String;
    .restart local v3    # "cache":Lmiui/drm/DrmManager$RightObjectCache;
    :catch_1be
    move-exception v0

    move-object/from16 v9, p0

    :goto_1c1
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    .line 361
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "cache":Lmiui/drm/DrmManager$RightObjectCache;
    .local v0, "e":Ljavax/xml/xpath/XPathExpressionException;
    .restart local v16    # "path":Ljava/lang/String;
    .restart local v17    # "cache":Lmiui/drm/DrmManager$RightObjectCache;
    :goto_1c5
    invoke-virtual {v0}, Ljavax/xml/xpath/XPathExpressionException;->printStackTrace()V

    .end local v0    # "e":Ljavax/xml/xpath/XPathExpressionException;
    goto :goto_1e9

    .line 358
    .end local v16    # "path":Ljava/lang/String;
    .end local v17    # "cache":Lmiui/drm/DrmManager$RightObjectCache;
    .restart local v2    # "path":Ljava/lang/String;
    .restart local v3    # "cache":Lmiui/drm/DrmManager$RightObjectCache;
    :catch_1c9
    move-exception v0

    move-object/from16 v9, p0

    :goto_1cc
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    .line 359
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "cache":Lmiui/drm/DrmManager$RightObjectCache;
    .local v0, "e":Ljava/io/IOException;
    .restart local v16    # "path":Ljava/lang/String;
    .restart local v17    # "cache":Lmiui/drm/DrmManager$RightObjectCache;
    :goto_1d0
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_1e9

    .line 356
    .end local v16    # "path":Ljava/lang/String;
    .end local v17    # "cache":Lmiui/drm/DrmManager$RightObjectCache;
    .restart local v2    # "path":Ljava/lang/String;
    .restart local v3    # "cache":Lmiui/drm/DrmManager$RightObjectCache;
    :catch_1d4
    move-exception v0

    move-object/from16 v9, p0

    :goto_1d7
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    .line 357
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "cache":Lmiui/drm/DrmManager$RightObjectCache;
    .local v0, "e":Lorg/xml/sax/SAXException;
    .restart local v16    # "path":Ljava/lang/String;
    .restart local v17    # "cache":Lmiui/drm/DrmManager$RightObjectCache;
    :goto_1db
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V

    .end local v0    # "e":Lorg/xml/sax/SAXException;
    goto :goto_1e9

    .line 354
    .end local v16    # "path":Ljava/lang/String;
    .end local v17    # "cache":Lmiui/drm/DrmManager$RightObjectCache;
    .restart local v2    # "path":Ljava/lang/String;
    .restart local v3    # "cache":Lmiui/drm/DrmManager$RightObjectCache;
    :catch_1df
    move-exception v0

    move-object/from16 v9, p0

    :goto_1e2
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    .line 355
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "cache":Lmiui/drm/DrmManager$RightObjectCache;
    .local v0, "e":Ljavax/xml/parsers/ParserConfigurationException;
    .restart local v16    # "path":Ljava/lang/String;
    .restart local v17    # "cache":Lmiui/drm/DrmManager$RightObjectCache;
    :goto_1e6
    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    .line 364
    .end local v0    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :cond_1e9
    :goto_1e9
    nop

    .line 365
    :goto_1ea
    return-object v4
.end method

.method public static whitelist setSupportAd(Landroid/content/Context;Z)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "support"    # Z

    .line 194
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "support_ad"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 195
    return-void
.end method
