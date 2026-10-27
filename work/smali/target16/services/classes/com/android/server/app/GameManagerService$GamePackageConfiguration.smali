.class public Lcom/android/server/app/GameManagerService$GamePackageConfiguration;
.super Ljava/lang/Object;
.source "GameManagerService.java"


# instance fields
.field public mAllowAngle:Z

.field public mAllowDownscale:Z

.field public mAllowFpsOverride:Z

.field public mBatteryModeOverridden:Z

.field public final mModeConfigLock:Ljava/lang/Object;

.field public final mModeConfigs:Landroid/util/ArrayMap;

.field public final mPackageName:Ljava/lang/String;

.field public mPerfModeOverridden:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAllowAngle(Lcom/android/server/app/GameManagerService$GamePackageConfiguration;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mAllowAngle:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAllowDownscale(Lcom/android/server/app/GameManagerService$GamePackageConfiguration;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mAllowDownscale:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAllowFpsOverride(Lcom/android/server/app/GameManagerService$GamePackageConfiguration;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mAllowFpsOverride:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetAvailableGameModesBitfield(Lcom/android/server/app/GameManagerService$GamePackageConfiguration;)I
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getAvailableGameModesBitfield()I

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/pm/PackageManager;Ljava/lang/String;I)V
    .registers 8

    .line 561
    const-string v0, "GameManagerService_GamePackageConfiguration"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 546
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mModeConfigLock:Ljava/lang/Object;

    .line 547
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mModeConfigs:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    .line 551
    iput-boolean v1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mPerfModeOverridden:Z

    .line 552
    iput-boolean v1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mBatteryModeOverridden:Z

    const/4 v2, 0x1

    .line 553
    iput-boolean v2, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mAllowDownscale:Z

    .line 554
    iput-boolean v2, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mAllowAngle:Z

    .line 555
    iput-boolean v2, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mAllowFpsOverride:Z

    .line 562
    iput-object p2, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mPackageName:Ljava/lang/String;

    const/16 v3, 0x80

    .line 565
    :try_start_23
    invoke-virtual {p1, p2, v3, p3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p3

    .line 567
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->parseInterventionFromXml(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5d

    iget-object p1, p3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz p1, :cond_5d

    .line 569
    const-string v3, "com.android.app.gamemode.performance.enabled"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mPerfModeOverridden:Z

    .line 570
    iget-object p1, p3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "com.android.app.gamemode.battery.enabled"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mBatteryModeOverridden:Z

    .line 571
    iget-object p1, p3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "com.android.graphics.intervention.wm.allowDownscale"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mAllowDownscale:Z

    .line 572
    iget-object p1, p3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string p3, "com.android.graphics.intervention.angle.allowAngle"

    invoke-virtual {p1, p3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mAllowAngle:Z
    :try_end_57
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_23 .. :try_end_57} :catch_58

    goto :goto_5d

    .line 576
    :catch_58
    const-string p1, "Failed to get package metadata"

    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    :cond_5d
    :goto_5d
    const-string p1, "game_overlay"

    invoke-static {p1, p2}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8b

    .line 581
    const-string p2, ":"

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 582
    array-length p2, p1

    :goto_6c
    if-ge v1, p2, :cond_8b

    aget-object p3, p1, v1

    .line 584
    :try_start_70
    new-instance v2, Landroid/util/KeyValueListParser;

    const/16 v3, 0x2c

    invoke-direct {v2, v3}, Landroid/util/KeyValueListParser;-><init>(C)V

    .line 585
    invoke-virtual {v2, p3}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V

    .line 586
    new-instance p3, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;

    invoke-direct {p3, p0, v2}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;-><init>(Lcom/android/server/app/GameManagerService$GamePackageConfiguration;Landroid/util/KeyValueListParser;)V

    invoke-virtual {p0, p3}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->addModeConfig(Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;)V
    :try_end_82
    .catch Ljava/lang/IllegalArgumentException; {:try_start_70 .. :try_end_82} :catch_83

    goto :goto_88

    .line 588
    :catch_83
    const-string p3, "Invalid config string"

    invoke-static {v0, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_88
    add-int/lit8 v1, v1, 0x1

    goto :goto_6c

    :cond_8b
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 557
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 546
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mModeConfigLock:Ljava/lang/Object;

    .line 547
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mModeConfigs:Landroid/util/ArrayMap;

    const/4 v0, 0x0

    .line 551
    iput-boolean v0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mPerfModeOverridden:Z

    .line 552
    iput-boolean v0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mBatteryModeOverridden:Z

    const/4 v0, 0x1

    .line 553
    iput-boolean v0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mAllowDownscale:Z

    .line 554
    iput-boolean v0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mAllowAngle:Z

    .line 555
    iput-boolean v0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mAllowFpsOverride:Z

    .line 558
    iput-object p1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addModeConfig(Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;)V
    .registers 5

    .line 880
    invoke-virtual {p1}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 881
    iget-object v0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mModeConfigLock:Ljava/lang/Object;

    monitor-enter v0

    .line 882
    :try_start_9
    iget-object p0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mModeConfigs:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->getGameMode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    monitor-exit v0

    return-void

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_9 .. :try_end_1a} :catchall_18

    throw p0

    .line 885
    :cond_1b
    const-string v0, "GameManagerService_GamePackageConfiguration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempt to add inactive game mode config for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 886
    invoke-virtual {p1}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 885
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public copyAndApplyOverride(Lcom/android/server/app/GameManagerService$GamePackageConfiguration;)Lcom/android/server/app/GameManagerService$GamePackageConfiguration;
    .registers 8

    .line 906
    new-instance v0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    iget-object v1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mPackageName:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;-><init>(Ljava/lang/String;)V

    .line 909
    iget-boolean v1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mPerfModeOverridden:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_18

    if-eqz p1, :cond_16

    const/4 v1, 0x2

    .line 910
    invoke-virtual {p1, v1}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getGameModeConfiguration(I)Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;

    move-result-object v1

    if-nez v1, :cond_18

    :cond_16
    move v1, v3

    goto :goto_19

    :cond_18
    move v1, v2

    :goto_19
    iput-boolean v1, v0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mPerfModeOverridden:Z

    .line 912
    iget-boolean v1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mBatteryModeOverridden:Z

    if-eqz v1, :cond_2a

    if-eqz p1, :cond_28

    const/4 v1, 0x3

    .line 913
    invoke-virtual {p1, v1}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getGameModeConfiguration(I)Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;

    move-result-object v1

    if-nez v1, :cond_2a

    :cond_28
    move v1, v3

    goto :goto_2b

    :cond_2a
    move v1, v2

    :goto_2b
    iput-boolean v1, v0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mBatteryModeOverridden:Z

    .line 919
    iget-boolean v1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mAllowDownscale:Z

    if-nez v1, :cond_36

    if-eqz p1, :cond_34

    goto :goto_36

    :cond_34
    move v1, v2

    goto :goto_37

    :cond_36
    :goto_36
    move v1, v3

    :goto_37
    iput-boolean v1, v0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mAllowDownscale:Z

    .line 920
    iget-boolean v1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mAllowAngle:Z

    if-nez v1, :cond_42

    if-eqz p1, :cond_40

    goto :goto_42

    :cond_40
    move v1, v2

    goto :goto_43

    :cond_42
    :goto_42
    move v1, v3

    :goto_43
    iput-boolean v1, v0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mAllowAngle:Z

    .line 921
    iget-boolean v1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mAllowFpsOverride:Z

    if-nez v1, :cond_4b

    if-eqz p1, :cond_4c

    :cond_4b
    move v2, v3

    :cond_4c
    iput-boolean v2, v0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mAllowFpsOverride:Z

    if-eqz p1, :cond_b9

    .line 923
    iget-object v1, v0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mModeConfigLock:Ljava/lang/Object;

    monitor-enter v1

    .line 924
    :try_start_53
    iget-object v2, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mModeConfigLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_b1

    .line 926
    :try_start_56
    iget-object p0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mModeConfigs:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_60
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_80

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 927
    iget-object v4, v0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mModeConfigs:Landroid/util/ArrayMap;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;

    invoke-virtual {v4, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_60

    :catchall_7e
    move-exception p0

    goto :goto_b5

    .line 929
    :cond_80
    monitor-exit v2
    :try_end_81
    .catchall {:try_start_56 .. :try_end_81} :catchall_7e

    .line 930
    :try_start_81
    iget-object p0, p1, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mModeConfigLock:Ljava/lang/Object;

    monitor-enter p0
    :try_end_84
    .catchall {:try_start_81 .. :try_end_84} :catchall_b1

    .line 932
    :try_start_84
    iget-object p1, p1, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mModeConfigs:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ae

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 933
    iget-object v3, v0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mModeConfigs:Landroid/util/ArrayMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;

    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8e

    :catchall_ac
    move-exception p1

    goto :goto_b3

    .line 935
    :cond_ae
    monitor-exit p0
    :try_end_af
    .catchall {:try_start_84 .. :try_end_af} :catchall_ac

    .line 936
    :try_start_af
    monitor-exit v1
    :try_end_b0
    .catchall {:try_start_af .. :try_end_b0} :catchall_b1

    return-object v0

    :catchall_b1
    move-exception p0

    goto :goto_b7

    .line 935
    :goto_b3
    :try_start_b3
    monitor-exit p0
    :try_end_b4
    .catchall {:try_start_b3 .. :try_end_b4} :catchall_ac

    :try_start_b4
    throw p1
    :try_end_b5
    .catchall {:try_start_b4 .. :try_end_b5} :catchall_b1

    .line 929
    :goto_b5
    :try_start_b5
    monitor-exit v2
    :try_end_b6
    .catchall {:try_start_b5 .. :try_end_b6} :catchall_7e

    :try_start_b6
    throw p0

    .line 936
    :goto_b7
    monitor-exit v1
    :try_end_b8
    .catchall {:try_start_b6 .. :try_end_b8} :catchall_b1

    throw p0

    :cond_b9
    return-object v0
.end method

.method public getAvailableGameModes()[I
    .registers 6

    .line 837
    invoke-virtual {p0}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getAvailableGameModesBitfield()I

    move-result p0

    .line 838
    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    new-array v0, v0, [I

    .line 841
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_14
    if-gt v2, v1, :cond_24

    shr-int v4, p0, v2

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_21

    add-int/lit8 v4, v3, 0x1

    .line 844
    aput v2, v0, v3

    move v3, v4

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_24
    return-object v0
.end method

.method public final getAvailableGameModesBitfield()I
    .registers 5

    const/4 v0, 0x4

    .line 817
    invoke-static {v0}, Lcom/android/server/app/GameManagerService;->-$$Nest$smmodeToBitmask(I)I

    move-result v0

    const/4 v1, 0x1

    .line 818
    invoke-static {v1}, Lcom/android/server/app/GameManagerService;->-$$Nest$smmodeToBitmask(I)I

    move-result v1

    or-int/2addr v0, v1

    .line 819
    iget-object v1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mModeConfigLock:Ljava/lang/Object;

    monitor-enter v1

    .line 820
    :try_start_e
    iget-object v2, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mModeConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 821
    invoke-static {v3}, Lcom/android/server/app/GameManagerService;->-$$Nest$smmodeToBitmask(I)I

    move-result v3

    or-int/2addr v0, v3

    goto :goto_18

    :catchall_2e
    move-exception p0

    goto :goto_47

    .line 823
    :cond_30
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_e .. :try_end_31} :catchall_2e

    .line 824
    iget-boolean v1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mBatteryModeOverridden:Z

    if-eqz v1, :cond_3b

    const/4 v1, 0x3

    .line 825
    invoke-static {v1}, Lcom/android/server/app/GameManagerService;->-$$Nest$smmodeToBitmask(I)I

    move-result v1

    or-int/2addr v0, v1

    .line 827
    :cond_3b
    iget-boolean p0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mPerfModeOverridden:Z

    if-eqz p0, :cond_46

    const/4 p0, 0x2

    .line 828
    invoke-static {p0}, Lcom/android/server/app/GameManagerService;->-$$Nest$smmodeToBitmask(I)I

    move-result p0

    or-int/2addr p0, v0

    return p0

    :cond_46
    return v0

    .line 823
    :goto_47
    :try_start_47
    monitor-exit v1
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_2e

    throw p0
.end method

.method public getGameModeConfiguration(I)Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;
    .registers 3

    .line 871
    iget-object v0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mModeConfigLock:Ljava/lang/Object;

    monitor-enter v0

    .line 872
    :try_start_3
    iget-object p0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mModeConfigs:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;

    monitor-exit v0

    return-object p0

    :catchall_11
    move-exception p0

    .line 873
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public getOrAddDefaultGameModeConfiguration(I)Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;
    .registers 6

    .line 649
    iget-object v0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mModeConfigLock:Ljava/lang/Object;

    monitor-enter v0

    .line 650
    :try_start_3
    iget-object v1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mModeConfigs:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;

    invoke-direct {v3, p0, p1}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;-><init>(Lcom/android/server/app/GameManagerService$GamePackageConfiguration;I)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    iget-object p0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mModeConfigs:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;

    monitor-exit v0

    return-object p0

    :catchall_1f
    move-exception p0

    .line 652
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method public getOverriddenGameModes()[I
    .registers 5

    .line 854
    iget-boolean v0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mBatteryModeOverridden:Z

    const/4 v1, 0x2

    const/4 v2, 0x3

    if-eqz v0, :cond_f

    iget-boolean v3, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mPerfModeOverridden:Z

    if-eqz v3, :cond_f

    .line 855
    filled-new-array {v2, v1}, [I

    move-result-object p0

    return-object p0

    :cond_f
    if-eqz v0, :cond_16

    .line 857
    filled-new-array {v2}, [I

    move-result-object p0

    return-object p0

    .line 858
    :cond_16
    iget-boolean p0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mPerfModeOverridden:Z

    if-eqz p0, :cond_1f

    .line 859
    filled-new-array {v1}, [I

    move-result-object p0

    return-object p0

    :cond_1f
    const/4 p0, 0x0

    .line 861
    new-array p0, p0, [I

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 1

    .line 800
    iget-object p0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public hasActiveGameModeConfig()Z
    .registers 2

    .line 658
    iget-object v0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mModeConfigLock:Ljava/lang/Object;

    monitor-enter v0

    .line 659
    :try_start_3
    iget-object p0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mModeConfigs:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    monitor-exit v0

    return p0

    :catchall_d
    move-exception p0

    .line 660
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public isActive()Z
    .registers 3

    .line 900
    iget-object v0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mModeConfigLock:Ljava/lang/Object;

    monitor-enter v0

    .line 901
    :try_start_3
    iget-object v1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mModeConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-gtz v1, :cond_18

    iget-boolean v1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mBatteryModeOverridden:Z

    if-nez v1, :cond_18

    iget-boolean p0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mPerfModeOverridden:Z

    if-eqz p0, :cond_14

    goto :goto_18

    :cond_14
    const/4 p0, 0x0

    goto :goto_19

    :catchall_16
    move-exception p0

    goto :goto_1b

    :cond_18
    :goto_18
    const/4 p0, 0x1

    :goto_19
    monitor-exit v0

    return p0

    .line 902
    :goto_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_16

    throw p0
.end method

.method public final parseInterventionFromXml(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Z
    .registers 10

    .line 596
    const-string v0, "GameManagerService_GamePackageConfiguration"

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 597
    :try_start_4
    const-string v3, "android.game_mode_config"

    invoke-virtual {p2, p1, v3}, Landroid/content/pm/ApplicationInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object p2
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_a} :catch_8c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_a} :catch_8c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_a} :catch_8c

    if-nez p2, :cond_27

    .line 600
    :try_start_c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No android.game_mode_config meta-data found for package "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_24

    move p1, v2

    goto :goto_78

    :catchall_24
    move-exception p1

    move p3, v2

    goto :goto_7e

    .line 604
    :cond_27
    :try_start_27
    invoke-virtual {p1, p3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p1

    .line 606
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p3

    .line 608
    :goto_2f
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v1, :cond_39

    if-eq v3, v4, :cond_39

    goto :goto_2f

    .line 613
    :cond_39
    const-string v3, "game-mode-config"

    .line 614
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4e

    .line 616
    const-string p1, "Meta-data does not start with game-mode-config tag"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_77

    :catchall_4b
    move-exception p1

    move p3, v1

    goto :goto_7e

    .line 620
    :cond_4e
    sget-object v3, Lcom/android/internal/R$styleable;->GameModeConfig:[I

    invoke-virtual {p1, p3, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 622
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mPerfModeOverridden:Z

    .line 624
    invoke-virtual {p1, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mBatteryModeOverridden:Z

    const/4 p3, 0x3

    .line 627
    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mAllowDownscale:Z

    .line 629
    invoke-virtual {p1, v4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mAllowAngle:Z

    const/4 p3, 0x4

    .line 630
    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mAllowFpsOverride:Z

    .line 632
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_77
    .catchall {:try_start_27 .. :try_end_77} :catchall_4b

    :goto_77
    move p1, v1

    :goto_78
    if-eqz p2, :cond_7d

    .line 635
    :try_start_7a
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_7d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7a .. :try_end_7d} :catch_8d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7a .. :try_end_7d} :catch_8d
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_7d} :catch_8d

    :cond_7d
    return p1

    :goto_7e
    if-eqz p2, :cond_8b

    .line 597
    :try_start_80
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_83
    .catchall {:try_start_80 .. :try_end_83} :catchall_84

    goto :goto_8b

    :catchall_84
    move-exception p2

    :try_start_85
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_8b

    :catch_89
    move p1, p3

    goto :goto_8d

    :cond_8b
    :goto_8b
    throw p1
    :try_end_8c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_85 .. :try_end_8c} :catch_89
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_85 .. :try_end_8c} :catch_89
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_8c} :catch_89

    :catch_8c
    move p1, v2

    .line 637
    :catch_8d
    :goto_8d
    iput-boolean v2, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mPerfModeOverridden:Z

    .line 638
    iput-boolean v2, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mBatteryModeOverridden:Z

    .line 639
    iput-boolean v1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mAllowDownscale:Z

    .line 640
    iput-boolean v1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mAllowAngle:Z

    .line 641
    iput-boolean v1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mAllowFpsOverride:Z

    .line 642
    const-string p0, "Error while parsing XML meta-data for android.game_mode_config"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public removeModeConfig(I)V
    .registers 3

    .line 894
    iget-object v0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mModeConfigLock:Ljava/lang/Object;

    monitor-enter v0

    .line 895
    :try_start_3
    iget-object p0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mModeConfigs:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 896
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 942
    iget-object v0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mModeConfigLock:Ljava/lang/Object;

    monitor-enter v0

    .line 943
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Modes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mModeConfigs:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_2b
    move-exception p0

    .line 944
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw p0
.end method

.method public willGamePerformOptimizations(I)Z
    .registers 3

    .line 812
    iget-boolean v0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mBatteryModeOverridden:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    if-eq p1, v0, :cond_e

    :cond_7
    iget-boolean p0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mPerfModeOverridden:Z

    if-eqz p0, :cond_10

    const/4 p0, 0x2

    if-ne p1, p0, :cond_10

    :cond_e
    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method
