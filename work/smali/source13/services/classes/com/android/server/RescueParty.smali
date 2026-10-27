.class public Lcom/android/server/RescueParty;
.super Ljava/lang/Object;
.source "RescueParty.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/RescueParty$RescuePartyObserver;
    }
.end annotation


# static fields
.field static final DEFAULT_OBSERVING_DURATION_MS:J

.field static final DEVICE_CONFIG_RESET_MODE:I = 0x4

.field static final LEVEL_FACTORY_RESET:I = 0x5

.field static final LEVEL_NONE:I = 0x0

.field static final LEVEL_RESET_SETTINGS_TRUSTED_DEFAULTS:I = 0x3

.field static final LEVEL_RESET_SETTINGS_UNTRUSTED_CHANGES:I = 0x2

.field static final LEVEL_RESET_SETTINGS_UNTRUSTED_DEFAULTS:I = 0x1

.field static final LEVEL_WARM_REBOOT:I = 0x4

.field private static final NAME:Ljava/lang/String; = "rescue-party-observer"

.field static final NAMESPACE_CONFIGURATION:Ljava/lang/String; = "configuration"

.field static final NAMESPACE_TO_PACKAGE_MAPPING_FLAG:Ljava/lang/String; = "namespace_to_package_mapping"

.field private static final PERSISTENT_MASK:I = 0x9

.field static final PROP_ATTEMPTING_FACTORY_RESET:Ljava/lang/String; = "sys.attempting_factory_reset"

.field static final PROP_ATTEMPTING_REBOOT:Ljava/lang/String; = "sys.attempting_reboot"

.field private static final PROP_DEVICE_CONFIG_DISABLE_FLAG:Ljava/lang/String; = "persist.device_config.configuration.disable_rescue_party"

.field private static final PROP_DISABLE_FACTORY_RESET_FLAG:Ljava/lang/String; = "persist.device_config.configuration.disable_rescue_party_factory_reset"

.field private static final PROP_DISABLE_RESCUE:Ljava/lang/String; = "persist.sys.disable_rescue"

.field static final PROP_ENABLE_RESCUE:Ljava/lang/String; = "persist.sys.enable_rescue"

.field private static final PROP_FAILED_PACKAGE:Ljava/lang/String; = "sys.rescue_party_failed_package"

.field static final PROP_MAX_RESCUE_LEVEL_ATTEMPTED:Ljava/lang/String; = "sys.max_rescue_level_attempted"

.field static final PROP_RESCUE_BOOT_COUNT:Ljava/lang/String; = "sys.rescue_boot_count"

.field private static final PROP_VIRTUAL_DEVICE:Ljava/lang/String; = "ro.hardware.virtual_device"

.field static final TAG:Ljava/lang/String; = "RescueParty"


# direct methods
.method static bridge synthetic -$$Nest$smexecuteRescueLevel(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/RescueParty;->executeRescueLevel(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smgetRescueLevel(IZ)I
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/RescueParty;->getRescueLevel(IZ)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smisDisabled()Z
    .registers 1

    invoke-static {}, Lcom/android/server/RescueParty;->isDisabled()Z

    move-result v0

    return v0
.end method

.method static bridge synthetic -$$Nest$smlogRescueException(ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/RescueParty;->logRescueException(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smmapRescueLevelToUserImpact(I)I
    .registers 1

    invoke-static {p0}, Lcom/android/server/RescueParty;->mapRescueLevelToUserImpact(I)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 100
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/RescueParty;->DEFAULT_OBSERVING_DURATION_MS:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static executeRescueLevel(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "failedPackage"    # Ljava/lang/String;
    .param p2, "level"    # I

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempting rescue level "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/android/server/RescueParty;->levelToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RescueParty"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :try_start_1c
    invoke-static {p0, p2, p1}, Lcom/android/server/RescueParty;->executeRescueLevelInternal(Landroid/content/Context;ILjava/lang/String;)V

    .line 370
    invoke-static {p2}, Lcom/android/server/EventLogTags;->writeRescueSuccess(I)V

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Finished rescue level "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/android/server/RescueParty;->levelToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 372
    .local v0, "successMsg":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_57

    .line 373
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 375
    :cond_57
    const/4 v1, 0x3

    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V
    :try_end_5b
    .catchall {:try_start_1c .. :try_end_5b} :catchall_5c

    .line 378
    .end local v0    # "successMsg":Ljava/lang/String;
    goto :goto_60

    .line 376
    :catchall_5c
    move-exception v0

    .line 377
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {p2, p1, v0}, Lcom/android/server/RescueParty;->logRescueException(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 379
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_60
    return-void
.end method

.method private static executeRescueLevelInternal(Landroid/content/Context;ILjava/lang/String;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "level"    # I
    .param p2, "failedPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 383
    const/16 v0, 0x7a

    invoke-static {v0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    .line 386
    const/4 v0, 0x0

    .line 389
    .local v0, "res":Ljava/lang/Exception;
    const/4 v1, 0x1

    const-string/jumbo v2, "true"

    packed-switch p1, :pswitch_data_7e

    goto/16 :goto_79

    .line 447
    :pswitch_f
    const-string/jumbo v1, "sys.attempting_factory_reset"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 451
    const-string/jumbo v1, "sys.rescue_party_failed_package"

    invoke-static {v1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    :cond_21
    invoke-static {}, Lcom/android/server/RescuePartyStub;->getInstance()Lcom/android/server/RescuePartyStub;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/android/server/RescuePartyStub;->maybeDoResetConfig(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 455
    goto :goto_79

    .line 458
    :cond_2c
    new-instance v1, Lcom/android/server/RescueParty$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/RescueParty$1;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 468
    .local v1, "runnable":Ljava/lang/Runnable;
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 469
    .local v2, "thread":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_79

    .line 432
    .end local v1    # "runnable":Ljava/lang/Runnable;
    .end local v2    # "thread":Ljava/lang/Thread;
    :pswitch_3a
    const-string/jumbo v1, "sys.attempting_reboot"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    new-instance v1, Lcom/android/server/RescueParty$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/RescueParty$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 443
    .restart local v1    # "runnable":Ljava/lang/Runnable;
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 444
    .restart local v2    # "thread":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 445
    goto :goto_79

    .line 418
    .end local v1    # "runnable":Ljava/lang/Runnable;
    .end local v2    # "thread":Ljava/lang/Thread;
    :pswitch_4e
    const/4 v1, 0x4

    :try_start_4f
    invoke-static {p0, v1, p1}, Lcom/android/server/RescueParty;->resetAllSettingsIfNecessary(Landroid/content/Context;II)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_52} :catch_53

    .line 422
    goto :goto_55

    .line 420
    :catch_53
    move-exception v1

    .line 421
    .local v1, "e":Ljava/lang/Exception;
    move-object v0, v1

    .line 424
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_55
    const/4 v1, 0x0

    :try_start_56
    invoke-static {p0, v1, p2}, Lcom/android/server/RescueParty;->resetDeviceConfig(Landroid/content/Context;ZLjava/lang/String;)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_59} :catch_5a

    .line 427
    goto :goto_79

    .line 425
    :catch_5a
    move-exception v1

    .line 426
    .restart local v1    # "e":Ljava/lang/Exception;
    move-object v0, v1

    .line 428
    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_79

    .line 405
    :pswitch_5d
    const/4 v2, 0x3

    :try_start_5e
    invoke-static {p0, v2, p1}, Lcom/android/server/RescueParty;->resetAllSettingsIfNecessary(Landroid/content/Context;II)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_61} :catch_62

    .line 409
    goto :goto_64

    .line 407
    :catch_62
    move-exception v2

    .line 408
    .local v2, "e":Ljava/lang/Exception;
    move-object v0, v2

    .line 411
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_64
    :try_start_64
    invoke-static {p0, v1, p2}, Lcom/android/server/RescueParty;->resetDeviceConfig(Landroid/content/Context;ZLjava/lang/String;)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_67} :catch_68

    .line 414
    goto :goto_79

    .line 412
    :catch_68
    move-exception v1

    .line 413
    .restart local v1    # "e":Ljava/lang/Exception;
    move-object v0, v1

    .line 415
    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_79

    .line 392
    :pswitch_6b
    const/4 v2, 0x2

    :try_start_6c
    invoke-static {p0, v2, p1}, Lcom/android/server/RescueParty;->resetAllSettingsIfNecessary(Landroid/content/Context;II)V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_6f} :catch_70

    .line 396
    goto :goto_72

    .line 394
    :catch_70
    move-exception v2

    .line 395
    .restart local v2    # "e":Ljava/lang/Exception;
    move-object v0, v2

    .line 398
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_72
    :try_start_72
    invoke-static {p0, v1, p2}, Lcom/android/server/RescueParty;->resetDeviceConfig(Landroid/content/Context;ZLjava/lang/String;)V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_75} :catch_76

    .line 401
    goto :goto_79

    .line 399
    :catch_76
    move-exception v1

    .line 400
    .restart local v1    # "e":Ljava/lang/Exception;
    move-object v0, v1

    .line 402
    .end local v1    # "e":Ljava/lang/Exception;
    nop

    .line 473
    :goto_79
    if-nez v0, :cond_7c

    .line 476
    return-void

    .line 474
    :cond_7c
    throw v0

    nop

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_6b
        :pswitch_5d
        :pswitch_4e
        :pswitch_3a
        :pswitch_f
    .end packed-switch
.end method

.method private static getAllUserIds()[I
    .registers 7

    .line 763
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    .line 765
    .local v0, "userIds":[I
    :try_start_6
    invoke-static {}, Landroid/os/Environment;->getDataSystemDeDirectory()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;)[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    :goto_f
    if-ge v1, v3, :cond_27

    aget-object v4, v2, v1
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_28

    .line 767
    .local v4, "file":Ljava/io/File;
    :try_start_13
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 768
    .local v5, "userId":I
    if-eqz v5, :cond_22

    .line 769
    invoke-static {v0, v5}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v6
    :try_end_21
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_21} :catch_23
    .catchall {:try_start_13 .. :try_end_21} :catchall_28

    move-object v0, v6

    .line 772
    .end local v5    # "userId":I
    :cond_22
    goto :goto_24

    .line 771
    :catch_23
    move-exception v5

    .line 765
    .end local v4    # "file":Ljava/io/File;
    :goto_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 776
    :cond_27
    goto :goto_30

    .line 774
    :catchall_28
    move-exception v1

    .line 775
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "RescueParty"

    const-string v3, "Trouble discovering users"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 777
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_30
    return-object v0
.end method

.method static getElapsedRealtime()J
    .registers 2

    .line 275
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method private static getMaxRescueLevel(Z)I
    .registers 3
    .param p0, "mayPerformFactoryReset"    # Z

    .line 333
    if-eqz p0, :cond_f

    const/4 v0, 0x0

    .line 334
    const-string/jumbo v1, "persist.device_config.configuration.disable_rescue_party_factory_reset"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    .line 337
    :cond_d
    const/4 v0, 0x5

    return v0

    .line 335
    :cond_f
    :goto_f
    const/4 v0, 0x3

    return v0
.end method

.method private static getPresetNamespacesForPackages(Ljava/util/List;)Ljava/util/Set;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 245
    .local p0, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 247
    .local v0, "resultSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :try_start_5
    const-string v1, "configuration"

    const-string/jumbo v2, "namespace_to_package_mapping"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 249
    .local v1, "flagVal":Ljava/lang/String;
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 250
    .local v2, "mappingEntries":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_17
    array-length v4, v2

    if-ge v3, v4, :cond_5c

    .line 251
    aget-object v4, v2, v3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 252
    goto :goto_3e

    .line 254
    :cond_23
    aget-object v4, v2, v3

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 255
    .local v4, "splittedEntry":[Ljava/lang/String;
    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_41

    .line 258
    const/4 v5, 0x0

    aget-object v5, v4, v5

    .line 259
    .local v5, "namespace":Ljava/lang/String;
    const/4 v6, 0x1

    aget-object v6, v4, v6

    .line 261
    .local v6, "packageName":Ljava/lang/String;
    invoke-interface {p0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3e

    .line 262
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 250
    .end local v4    # "splittedEntry":[Ljava/lang/String;
    .end local v5    # "namespace":Ljava/lang/String;
    .end local v6    # "packageName":Ljava/lang/String;
    :cond_3e
    :goto_3e
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 256
    .restart local v4    # "splittedEntry":[Ljava/lang/String;
    :cond_41
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid mapping entry: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v2, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "resultSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local p0    # "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    throw v5
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5c} :catch_5f
    .catchall {:try_start_5 .. :try_end_5c} :catchall_5d

    .line 269
    .end local v1    # "flagVal":Ljava/lang/String;
    .end local v2    # "mappingEntries":[Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "splittedEntry":[Ljava/lang/String;
    .restart local v0    # "resultSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local p0    # "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5c
    return-object v0

    :catchall_5d
    move-exception v1

    goto :goto_6b

    .line 265
    :catch_5f
    move-exception v1

    .line 266
    .local v1, "e":Ljava/lang/Exception;
    :try_start_60
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 267
    const-string v2, "RescueParty"

    const-string v3, "Failed to read preset package to namespaces mapping."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6a
    .catchall {:try_start_60 .. :try_end_6a} :catchall_5d

    .line 269
    nop

    .end local v1    # "e":Ljava/lang/Exception;
    :goto_6b
    return-object v0
.end method

.method private static getRescueLevel(IZ)I
    .registers 4
    .param p0, "mitigationCount"    # I
    .param p1, "mayPerformFactoryReset"    # Z

    .line 349
    const/4 v0, 0x1

    if-ne p0, v0, :cond_4

    .line 350
    return v0

    .line 351
    :cond_4
    const/4 v0, 0x2

    if-ne p0, v0, :cond_8

    .line 352
    return v0

    .line 353
    :cond_8
    const/4 v0, 0x3

    if-ne p0, v0, :cond_c

    .line 354
    return v0

    .line 355
    :cond_c
    const/4 v0, 0x4

    if-ne p0, v0, :cond_18

    .line 356
    invoke-static {p1}, Lcom/android/server/RescueParty;->getMaxRescueLevel(Z)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    .line 357
    :cond_18
    const/4 v0, 0x5

    if-lt p0, v0, :cond_24

    .line 358
    invoke-static {p1}, Lcom/android/server/RescueParty;->getMaxRescueLevel(Z)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    .line 360
    :cond_24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected positive mitigation count, was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RescueParty"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    const/4 v0, 0x0

    return v0
.end method

.method private static handleMonitorCallback(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "result"    # Landroid/os/Bundle;

    .line 279
    const-string/jumbo v0, "monitor_callback_type"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, "callbackType":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_56

    :cond_10
    goto :goto_26

    :sswitch_11
    const-string v1, "access_callback"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    goto :goto_27

    :sswitch_1b
    const-string/jumbo v1, "namespace_updated_callback"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x0

    goto :goto_27

    :goto_26
    const/4 v1, -0x1

    :goto_27
    const-string/jumbo v2, "namespace"

    packed-switch v1, :pswitch_data_60

    .line 297
    const-string v1, "RescueParty"

    const-string v2, "Unrecognized DeviceConfig callback"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_55

    .line 288
    :pswitch_35
    const-string v1, "calling_package"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 289
    .local v1, "callingPackage":Ljava/lang/String;
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 290
    .local v2, "namespace":Ljava/lang/String;
    if-eqz v2, :cond_55

    if-eqz v1, :cond_55

    .line 291
    invoke-static {p0}, Lcom/android/server/RescueParty$RescuePartyObserver;->getInstance(Landroid/content/Context;)Lcom/android/server/RescueParty$RescuePartyObserver;

    move-result-object v3

    invoke-static {v3, v1, v2}, Lcom/android/server/RescueParty$RescuePartyObserver;->-$$Nest$mrecordDeviceConfigAccess(Lcom/android/server/RescueParty$RescuePartyObserver;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_55

    .line 282
    .end local v1    # "callingPackage":Ljava/lang/String;
    .end local v2    # "namespace":Ljava/lang/String;
    :pswitch_4c
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 283
    .local v1, "updatedNamespace":Ljava/lang/String;
    if-eqz v1, :cond_55

    .line 284
    invoke-static {p0, v1}, Lcom/android/server/RescueParty;->startObservingPackages(Landroid/content/Context;Ljava/lang/String;)V

    .line 300
    .end local v1    # "updatedNamespace":Ljava/lang/String;
    :cond_55
    :goto_55
    return-void

    :sswitch_data_56
    .sparse-switch
        -0x2ccdde53 -> :sswitch_1b
        0x45856cc0 -> :sswitch_11
    .end sparse-switch

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_4c
        :pswitch_35
    .end packed-switch
.end method

.method private static handleNativeRescuePartyResets()V
    .registers 4

    .line 319
    invoke-static {}, Lcom/android/server/am/SettingsToPropertiesMapper;->isNativeFlagsResetPerformed()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 320
    invoke-static {}, Lcom/android/server/am/SettingsToPropertiesMapper;->getResetNativeCategories()[Ljava/lang/String;

    move-result-object v0

    .line 321
    .local v0, "resetNativeCategories":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    array-length v2, v0

    if-ge v1, v2, :cond_22

    .line 323
    aget-object v2, v0, v1

    const-string v3, "configuration"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 324
    goto :goto_1f

    .line 326
    :cond_19
    const/4 v2, 0x4

    aget-object v3, v0, v1

    invoke-static {v2, v3}, Landroid/provider/DeviceConfig;->resetToDefaults(ILjava/lang/String;)V

    .line 321
    :goto_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 330
    .end local v0    # "resetNativeCategories":[Ljava/lang/String;
    .end local v1    # "i":I
    :cond_22
    return-void
.end method

.method public static isAttemptingFactoryReset()Z
    .registers 1

    .line 175
    invoke-static {}, Lcom/android/server/RescueParty;->isFactoryResetPropertySet()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {}, Lcom/android/server/RescueParty;->isRebootPropertySet()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method private static isDisabled()Z
    .registers 4

    .line 133
    const-string/jumbo v0, "persist.sys.enable_rescue"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 134
    return v1

    .line 139
    :cond_b
    const-string/jumbo v0, "persist.device_config.configuration.disable_rescue_party"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x1

    const-string v3, "RescueParty"

    if-eqz v0, :cond_1d

    .line 140
    const-string v0, "Disabled because of DeviceConfig flag"

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    return v2

    .line 145
    :cond_1d
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-eqz v0, :cond_27

    .line 146
    const-string v0, "Disabled because of eng build"

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return v2

    .line 153
    :cond_27
    sget-boolean v0, Landroid/os/Build;->IS_USERDEBUG:Z

    if-eqz v0, :cond_37

    invoke-static {}, Lcom/android/server/RescueParty;->isUsbActive()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 154
    const-string v0, "Disabled because of active USB connection"

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return v2

    .line 159
    :cond_37
    const-string/jumbo v0, "persist.sys.disable_rescue"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 160
    const-string v0, "Disabled because of manual property"

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    return v2

    .line 164
    :cond_46
    return v1
.end method

.method static isFactoryResetPropertySet()Z
    .registers 2

    .line 179
    const-string/jumbo v0, "sys.attempting_factory_reset"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static isRebootPropertySet()Z
    .registers 2

    .line 183
    const-string/jumbo v0, "sys.attempting_reboot"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static isUsbActive()Z
    .registers 5

    .line 785
    const-string/jumbo v0, "ro.hardware.virtual_device"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "RescueParty"

    if-eqz v0, :cond_13

    .line 786
    const-string v0, "Assuming virtual device is connected over USB"

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    const/4 v0, 0x1

    return v0

    .line 790
    :cond_13
    :try_start_13
    new-instance v0, Ljava/io/File;

    const-string v3, "/sys/class/android_usb/android0/state"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x80

    const-string v4, ""

    .line 791
    invoke-static {v0, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 792
    .local v0, "state":Ljava/lang/String;
    const-string v3, "CONFIGURED"

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_2c
    .catchall {:try_start_13 .. :try_end_2c} :catchall_2d

    return v1

    .line 793
    .end local v0    # "state":Ljava/lang/String;
    :catchall_2d
    move-exception v0

    .line 794
    .local v0, "t":Ljava/lang/Throwable;
    const-string v3, "Failed to determine if device was on USB"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 795
    return v1
.end method

.method static synthetic lambda$executeRescueLevelInternal$1(Landroid/content/Context;ILjava/lang/String;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "level"    # I
    .param p2, "failedPackage"    # Ljava/lang/String;

    .line 435
    :try_start_0
    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 436
    .local v0, "pm":Landroid/os/PowerManager;
    if-eqz v0, :cond_f

    .line 437
    const-string v1, "RescueParty"

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_10

    .line 441
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_f
    goto :goto_14

    .line 439
    :catchall_10
    move-exception v0

    .line 440
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {p1, p2, v0}, Lcom/android/server/RescueParty;->logRescueException(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 442
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_14
    return-void
.end method

.method static synthetic lambda$onSettingsProviderPublished$0(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "result"    # Landroid/os/Bundle;

    .line 194
    invoke-static {p0, p1}, Lcom/android/server/RescueParty;->handleMonitorCallback(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 195
    return-void
.end method

.method private static levelToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "level"    # I

    .line 800
    packed-switch p0, :pswitch_data_1a

    .line 807
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 806
    :pswitch_8
    const-string v0, "FACTORY_RESET"

    return-object v0

    .line 805
    :pswitch_b
    const-string v0, "WARM_REBOOT"

    return-object v0

    .line 804
    :pswitch_e
    const-string v0, "RESET_SETTINGS_TRUSTED_DEFAULTS"

    return-object v0

    .line 803
    :pswitch_11
    const-string v0, "RESET_SETTINGS_UNTRUSTED_CHANGES"

    return-object v0

    .line 802
    :pswitch_14
    const-string v0, "RESET_SETTINGS_UNTRUSTED_DEFAULTS"

    return-object v0

    .line 801
    :pswitch_17
    const-string v0, "NONE"

    return-object v0

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method private static logRescueException(ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 8
    .param p0, "level"    # I
    .param p1, "failedPackageName"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 480
    invoke-static {p2}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 481
    .local v0, "msg":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/android/server/EventLogTags;->writeRescueFailure(ILjava/lang/String;)V

    .line 482
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed rescue level "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/android/server/RescueParty;->levelToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 483
    .local v1, "failureMsg":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3b

    .line 484
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 486
    :cond_3b
    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 487
    return-void
.end method

.method private static mapRescueLevelToUserImpact(I)I
    .registers 2
    .param p0, "rescueLevel"    # I

    .line 490
    packed-switch p0, :pswitch_data_a

    .line 499
    const/4 v0, 0x0

    return v0

    .line 497
    :pswitch_5
    const/4 v0, 0x5

    return v0

    .line 493
    :pswitch_7
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public static onSettingsProviderPublished(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 191
    invoke-static {}, Lcom/android/server/RescueParty;->handleNativeRescuePartyResets()V

    .line 192
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 193
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    new-instance v1, Landroid/os/RemoteCallback;

    new-instance v2, Lcom/android/server/RescueParty$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/server/RescueParty$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    invoke-static {v0, v1}, Landroid/provider/Settings$Config;->registerMonitorCallback(Landroid/content/ContentResolver;Landroid/os/RemoteCallback;)V

    .line 196
    return-void
.end method

.method private static performScopedReset(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "failedPackage"    # Ljava/lang/String;

    .line 564
    invoke-static {p0}, Lcom/android/server/RescueParty$RescuePartyObserver;->getInstance(Landroid/content/Context;)Lcom/android/server/RescueParty$RescuePartyObserver;

    move-result-object v0

    .line 565
    .local v0, "rescuePartyObserver":Lcom/android/server/RescueParty$RescuePartyObserver;
    invoke-static {v0, p1}, Lcom/android/server/RescueParty$RescuePartyObserver;->-$$Nest$mgetAffectedNamespaceSet(Lcom/android/server/RescueParty$RescuePartyObserver;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 569
    .local v1, "affectedNamespaces":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v1, :cond_52

    .line 570
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Performing scoped reset for package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", affected namespaces: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 573
    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 570
    const-string v3, "RescueParty"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 575
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_38
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_52

    .line 576
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 578
    .local v3, "namespace":Ljava/lang/String;
    const-string v4, "configuration"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 579
    goto :goto_38

    .line 581
    :cond_4d
    const/4 v4, 0x4

    invoke-static {v4, v3}, Landroid/provider/DeviceConfig;->resetToDefaults(ILjava/lang/String;)V

    .line 582
    .end local v3    # "namespace":Ljava/lang/String;
    goto :goto_38

    .line 584
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_52
    return-void
.end method

.method public static registerHealthObserver(Landroid/content/Context;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 127
    invoke-static {p0}, Lcom/android/server/PackageWatchdog;->getInstance(Landroid/content/Context;)Lcom/android/server/PackageWatchdog;

    move-result-object v0

    .line 128
    invoke-static {p0}, Lcom/android/server/RescueParty$RescuePartyObserver;->getInstance(Landroid/content/Context;)Lcom/android/server/RescueParty$RescuePartyObserver;

    move-result-object v1

    .line 127
    invoke-virtual {v0, v1}, Lcom/android/server/PackageWatchdog;->registerHealthObserver(Lcom/android/server/PackageWatchdog$PackageHealthObserver;)V

    .line 129
    return-void
.end method

.method private static resetAllAffectedNamespaces(Landroid/content/Context;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .line 546
    invoke-static {p0}, Lcom/android/server/RescueParty$RescuePartyObserver;->getInstance(Landroid/content/Context;)Lcom/android/server/RescueParty$RescuePartyObserver;

    move-result-object v0

    .line 547
    .local v0, "rescuePartyObserver":Lcom/android/server/RescueParty$RescuePartyObserver;
    invoke-static {v0}, Lcom/android/server/RescueParty$RescuePartyObserver;->-$$Nest$mgetAllAffectedNamespaceSet(Lcom/android/server/RescueParty$RescuePartyObserver;)Ljava/util/Set;

    move-result-object v1

    .line 549
    .local v1, "allAffectedNamespaces":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Performing reset for all affected namespaces: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 551
    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 549
    const-string v3, "RescueParty"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 553
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_2c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_46

    .line 554
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 556
    .local v3, "namespace":Ljava/lang/String;
    const-string v4, "configuration"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 557
    goto :goto_2c

    .line 559
    :cond_41
    const/4 v4, 0x4

    invoke-static {v4, v3}, Landroid/provider/DeviceConfig;->resetToDefaults(ILjava/lang/String;)V

    .line 560
    .end local v3    # "namespace":Ljava/lang/String;
    goto :goto_2c

    .line 561
    :cond_46
    return-void
.end method

.method private static resetAllSettingsIfNecessary(Landroid/content/Context;II)V
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I
    .param p2, "level"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 506
    const-string/jumbo v0, "sys.max_rescue_level_attempted"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-lt v2, p2, :cond_b

    .line 507
    return-void

    .line 509
    :cond_b
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    const/4 v0, 0x0

    .line 513
    .local v0, "res":Ljava/lang/Exception;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 515
    .local v2, "resolver":Landroid/content/ContentResolver;
    const/4 v3, 0x0

    :try_start_18
    invoke-static {v2, v3, p1, v1}, Landroid/provider/Settings$Global;->resetToDefaultsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_1c

    .line 518
    goto :goto_25

    .line 516
    :catch_1c
    move-exception v4

    .line 517
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Failed to reset global settings"

    invoke-direct {v5, v6, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v5

    .line 519
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_25
    invoke-static {}, Lcom/android/server/RescueParty;->getAllUserIds()[I

    move-result-object v4

    array-length v5, v4

    :goto_2a
    if-ge v1, v5, :cond_4f

    aget v6, v4, v1

    .line 521
    .local v6, "userId":I
    :try_start_2e
    invoke-static {v2, v3, p1, v6}, Landroid/provider/Settings$Secure;->resetToDefaultsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_31} :catch_32

    .line 524
    goto :goto_4c

    .line 522
    :catch_32
    move-exception v7

    .line 523
    .local v7, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to reset secure settings for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v8

    .line 519
    .end local v6    # "userId":I
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_4c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 526
    :cond_4f
    if-nez v0, :cond_52

    .line 529
    return-void

    .line 527
    :cond_52
    throw v0
.end method

.method private static resetDeviceConfig(Landroid/content/Context;ZLjava/lang/String;)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isScoped"    # Z
    .param p2, "failedPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 533
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 535
    .local v0, "resolver":Landroid/content/ContentResolver;
    if-eqz p1, :cond_d

    if-nez p2, :cond_9

    goto :goto_d

    .line 538
    :cond_9
    :try_start_9
    invoke-static {p0, p2}, Lcom/android/server/RescueParty;->performScopedReset(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_10

    .line 536
    :cond_d
    :goto_d
    invoke-static {p0}, Lcom/android/server/RescueParty;->resetAllAffectedNamespaces(Landroid/content/Context;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_10} :catch_12

    .line 542
    :goto_10
    nop

    .line 543
    return-void

    .line 540
    :catch_12
    move-exception v1

    .line 541
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed to reset config settings"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static resetDeviceConfigForPackages(Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 205
    .local p0, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_3

    .line 206
    return-void

    .line 208
    :cond_3
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 209
    .local v0, "namespacesToReset":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 210
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/server/RescueParty$RescuePartyObserver;->getInstanceIfCreated()Lcom/android/server/RescueParty$RescuePartyObserver;

    move-result-object v2

    .line 212
    .local v2, "rescuePartyObserver":Lcom/android/server/RescueParty$RescuePartyObserver;
    if-eqz v2, :cond_29

    .line 213
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 214
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 215
    .local v3, "packageName":Ljava/lang/String;
    nop

    .line 216
    invoke-static {v2, v3}, Lcom/android/server/RescueParty$RescuePartyObserver;->-$$Nest$mgetAffectedNamespaceSet(Lcom/android/server/RescueParty$RescuePartyObserver;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    .line 217
    .local v4, "runtimeAffectedNamespaces":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v4, :cond_28

    .line 218
    invoke-interface {v0, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 220
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "runtimeAffectedNamespaces":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_28
    goto :goto_12

    .line 223
    :cond_29
    invoke-static {p0}, Lcom/android/server/RescueParty;->getPresetNamespacesForPackages(Ljava/util/List;)Ljava/util/Set;

    move-result-object v3

    .line 225
    .local v3, "presetAffectedNamespaces":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v3, :cond_32

    .line 226
    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 231
    :cond_32
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 232
    .local v4, "namespaceIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_36
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6f

    .line 233
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 234
    .local v5, "namespaceToReset":Ljava/lang/String;
    new-instance v6, Landroid/provider/DeviceConfig$Properties$Builder;

    invoke-direct {v6, v5}, Landroid/provider/DeviceConfig$Properties$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/provider/DeviceConfig$Properties$Builder;->build()Landroid/provider/DeviceConfig$Properties;

    move-result-object v6

    .line 236
    .local v6, "properties":Landroid/provider/DeviceConfig$Properties;
    :try_start_4b
    invoke-static {v6}, Landroid/provider/DeviceConfig;->setProperties(Landroid/provider/DeviceConfig$Properties;)Z
    :try_end_4e
    .catch Landroid/provider/DeviceConfig$BadConfigException; {:try_start_4b .. :try_end_4e} :catch_4f

    .line 240
    goto :goto_6e

    .line 237
    :catch_4f
    move-exception v7

    .line 238
    .local v7, "exception":Landroid/provider/DeviceConfig$BadConfigException;
    const/4 v8, 0x5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "namespace "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is already banned, skip reset."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 241
    .end local v5    # "namespaceToReset":Ljava/lang/String;
    .end local v6    # "properties":Landroid/provider/DeviceConfig$Properties;
    .end local v7    # "exception":Landroid/provider/DeviceConfig$BadConfigException;
    :goto_6e
    goto :goto_36

    .line 242
    :cond_6f
    return-void
.end method

.method private static startObservingPackages(Landroid/content/Context;Ljava/lang/String;)V
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "updatedNamespace"    # Ljava/lang/String;

    .line 303
    invoke-static {p0}, Lcom/android/server/RescueParty$RescuePartyObserver;->getInstance(Landroid/content/Context;)Lcom/android/server/RescueParty$RescuePartyObserver;

    move-result-object v0

    .line 304
    .local v0, "rescuePartyObserver":Lcom/android/server/RescueParty$RescuePartyObserver;
    invoke-static {v0, p1}, Lcom/android/server/RescueParty$RescuePartyObserver;->-$$Nest$mgetCallingPackagesSet(Lcom/android/server/RescueParty$RescuePartyObserver;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 305
    .local v1, "callingPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v1, :cond_b

    .line 306
    return-void

    .line 308
    :cond_b
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 309
    .local v2, "callingPackageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 310
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting to observe: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", updated namespace: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RescueParty"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    invoke-static {p0}, Lcom/android/server/PackageWatchdog;->getInstance(Landroid/content/Context;)Lcom/android/server/PackageWatchdog;

    move-result-object v3

    sget-wide v4, Lcom/android/server/RescueParty;->DEFAULT_OBSERVING_DURATION_MS:J

    invoke-virtual {v3, v0, v2, v4, v5}, Lcom/android/server/PackageWatchdog;->startObservingHealth(Lcom/android/server/PackageWatchdog$PackageHealthObserver;Ljava/util/List;J)V

    .line 316
    return-void
.end method
