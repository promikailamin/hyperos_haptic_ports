.class public Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;
.super Ljava/lang/Object;
.source "AppsFilterImpl.java"

# interfaces
.implements Lcom/android/server/pm/FeatureConfig;
.implements Lcom/android/server/compat/CompatChange$ChangeListener;


# instance fields
.field public mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

.field public final mDisabledPackages:Landroid/util/ArraySet;

.field public volatile mFeatureEnabled:Z

.field public final mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

.field public mLoggingEnabled:Landroid/util/SparseBooleanArray;

.field public final mPmInternal:Landroid/content/pm/PackageManagerInternal;


# direct methods
.method public static synthetic $r8$lambda$nEuQ-D-WL9NkIzaT2rbijpElj8Q(Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->lambda$onSystemReady$0(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageManagerInternal;Lcom/android/server/pm/PackageManagerServiceInjector;)V
    .registers 4

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 267
    iput-boolean v0, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mFeatureEnabled:Z

    .line 269
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mDisabledPackages:Landroid/util/ArraySet;

    const/4 v0, 0x0

    .line 272
    iput-object v0, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mLoggingEnabled:Landroid/util/SparseBooleanArray;

    .line 278
    iput-object p1, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 279
    iput-object p2, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/pm/PackageManagerInternal;Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/AppsFilterImpl-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;-><init>(Landroid/content/pm/PackageManagerInternal;Lcom/android/server/pm/PackageManagerServiceInjector;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;)V
    .registers 5

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 267
    iput-boolean v0, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mFeatureEnabled:Z

    .line 269
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mDisabledPackages:Landroid/util/ArraySet;

    const/4 v1, 0x0

    .line 272
    iput-object v1, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mLoggingEnabled:Landroid/util/SparseBooleanArray;

    .line 283
    iput-object v1, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 284
    iput-object v1, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 285
    iget-boolean v1, p1, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mFeatureEnabled:Z

    iput-boolean v1, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mFeatureEnabled:Z

    .line 286
    iget-object v1, p1, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mDisabledPackages:Landroid/util/ArraySet;

    monitor-enter v1

    .line 287
    :try_start_1b
    iget-object v2, p1, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mDisabledPackages:Landroid/util/ArraySet;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 288
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_1b .. :try_end_21} :catchall_26

    .line 289
    iget-object p1, p1, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mLoggingEnabled:Landroid/util/SparseBooleanArray;

    iput-object p1, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mLoggingEnabled:Landroid/util/SparseBooleanArray;

    return-void

    :catchall_26
    move-exception p0

    .line 288
    :try_start_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw p0
.end method


# virtual methods
.method public enableLogging(IZ)V
    .registers 3

    if-eqz p2, :cond_14

    .line 353
    iget-object p2, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mLoggingEnabled:Landroid/util/SparseBooleanArray;

    if-nez p2, :cond_d

    .line 354
    new-instance p2, Landroid/util/SparseBooleanArray;

    invoke-direct {p2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p2, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mLoggingEnabled:Landroid/util/SparseBooleanArray;

    .line 356
    :cond_d
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mLoggingEnabled:Landroid/util/SparseBooleanArray;

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-void

    .line 358
    :cond_14
    iget-object p2, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mLoggingEnabled:Landroid/util/SparseBooleanArray;

    if-eqz p2, :cond_2e

    .line 359
    invoke-virtual {p2, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result p1

    if-ltz p1, :cond_2e

    .line 361
    iget-object p2, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mLoggingEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseBooleanArray;->removeAt(I)V

    .line 362
    iget-object p1, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mLoggingEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result p1

    if-nez p1, :cond_2e

    const/4 p1, 0x0

    .line 363
    iput-object p1, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mLoggingEnabled:Landroid/util/SparseBooleanArray;

    :cond_2e
    return-void
.end method

.method public isGloballyEnabled()Z
    .registers 1

    .line 321
    iget-boolean p0, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mFeatureEnabled:Z

    return p0
.end method

.method public isLoggingEnabled(I)Z
    .registers 2

    .line 347
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mLoggingEnabled:Landroid/util/SparseBooleanArray;

    if-eqz p0, :cond_c

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result p0

    if-ltz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$onSystemReady$0(Landroid/provider/DeviceConfig$Properties;)V
    .registers 4

    .line 304
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    const-string/jumbo v1, "package_query_filtering_enabled"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 305
    monitor-enter p0

    .line 306
    :try_start_e
    const-string/jumbo v0, "package_query_filtering_enabled"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mFeatureEnabled:Z

    .line 308
    monitor-exit p0

    return-void

    :catchall_1a
    move-exception p1

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_1a

    throw p1

    :cond_1d
    return-void
.end method

.method public onCompatChange(Ljava/lang/String;)V
    .registers 14

    .line 372
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0}, Landroid/content/pm/PackageManagerInternal;->snapshot()Lcom/android/server/pm/snapshot/PackageDataSnapshot;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/Computer;

    .line 373
    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v1

    if-nez v1, :cond_f

    return-void

    .line 377
    :cond_f
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v2

    .line 378
    invoke-virtual {p0, v1}, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->updateEnabledState(Lcom/android/server/pm/pkg/AndroidPackage;)V

    .line 379
    iget-object v4, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    invoke-static {v4, v0, p1}, Lcom/android/server/pm/AppsFilterImpl;->-$$Nest$mupdateShouldFilterCacheForPackage(Lcom/android/server/pm/AppsFilterImpl;Lcom/android/server/pm/Computer;Ljava/lang/String;)V

    .line 380
    iget-object v5, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    .line 382
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide p0

    sub-long v7, p0, v2

    .line 383
    invoke-interface {v0}, Lcom/android/server/pm/Computer;->getUserInfos()[Landroid/content/pm/UserInfo;

    move-result-object p0

    array-length v9, p0

    .line 384
    invoke-interface {v0}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v10

    .line 385
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v11

    const/4 v6, 0x4

    .line 380
    invoke-static/range {v5 .. v11}, Lcom/android/server/pm/AppsFilterImpl;->-$$Nest$mlogCacheUpdated(Lcom/android/server/pm/AppsFilterImpl;IJIII)V

    return-void
.end method

.method public onSystemReady()V
    .registers 4

    .line 298
    const-string/jumbo v0, "package_query_filtering_enabled"

    const/4 v1, 0x1

    const-string/jumbo v2, "package_manager_service"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mFeatureEnabled:Z

    .line 302
    invoke-static {}, Lcom/android/server/FgThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;)V

    .line 301
    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 311
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getCompatibility()Lcom/android/server/compat/PlatformCompat;

    move-result-object v0

    const-wide/32 v1, 0x81452eb

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/compat/PlatformCompat;->registerListener(JLcom/android/server/compat/CompatChange$ChangeListener;)Z

    return-void
.end method

.method public packageIsEnabled(Lcom/android/server/pm/pkg/AndroidPackage;)Z
    .registers 3

    .line 335
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mDisabledPackages:Landroid/util/ArraySet;

    monitor-enter v0

    .line 336
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mDisabledPackages:Landroid/util/ArraySet;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    monitor-exit v0

    return p0

    :catchall_11
    move-exception p0

    .line 337
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public setAppsFilter(Lcom/android/server/pm/AppsFilterImpl;)V
    .registers 2

    .line 293
    iput-object p1, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    return-void
.end method

.method public snapshot()Lcom/android/server/pm/FeatureConfig;
    .registers 2

    .line 426
    new-instance v0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;

    invoke-direct {v0, p0}, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;-><init>(Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;)V

    return-object v0
.end method

.method public final updateEnabledState(Lcom/android/server/pm/pkg/AndroidPackage;)V
    .registers 6

    .line 391
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getCompatibility()Lcom/android/server/compat/PlatformCompat;

    move-result-object v0

    const-wide/32 v1, 0x81452eb

    .line 393
    invoke-static {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->generateAppInfoWithoutState(Lcom/android/server/pm/pkg/AndroidPackage;)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 391
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabledInternalNoLogging(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v0

    .line 394
    iget-object v1, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mDisabledPackages:Landroid/util/ArraySet;

    monitor-enter v1

    if-eqz v0, :cond_22

    .line 396
    :try_start_16
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mDisabledPackages:Landroid/util/ArraySet;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_2b

    :catchall_20
    move-exception p0

    goto :goto_34

    .line 398
    :cond_22
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mDisabledPackages:Landroid/util/ArraySet;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 400
    :goto_2b
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_16 .. :try_end_2c} :catchall_20

    .line 401
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    if-eqz p0, :cond_33

    .line 402
    invoke-static {p0}, Lcom/android/server/pm/AppsFilterImpl;->-$$Nest$monChanged(Lcom/android/server/pm/AppsFilterImpl;)V

    :cond_33
    return-void

    .line 400
    :goto_34
    :try_start_34
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_20

    throw p0
.end method

.method public updatePackageState(Lcom/android/server/pm/pkg/PackageStateInternal;Z)V
    .registers 5

    .line 408
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    if-eqz v0, :cond_1e

    if-nez p2, :cond_1e

    .line 409
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isTestOnly()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 410
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_1c
    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    .line 411
    :goto_1f
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->enableLogging(IZ)V

    if-eqz p2, :cond_40

    .line 413
    iget-object p2, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mDisabledPackages:Landroid/util/ArraySet;

    monitor-enter p2

    .line 414
    :try_start_2b
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mDisabledPackages:Landroid/util/ArraySet;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 415
    monitor-exit p2
    :try_end_35
    .catchall {:try_start_2b .. :try_end_35} :catchall_3d

    .line 416
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    if-eqz p0, :cond_4d

    .line 417
    invoke-static {p0}, Lcom/android/server/pm/AppsFilterImpl;->-$$Nest$monChanged(Lcom/android/server/pm/AppsFilterImpl;)V

    return-void

    :catchall_3d
    move-exception p0

    .line 415
    :try_start_3e
    monitor-exit p2
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw p0

    .line 419
    :cond_40
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p2

    if-eqz p2, :cond_4d

    .line 420
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->updateEnabledState(Lcom/android/server/pm/pkg/AndroidPackage;)V

    :cond_4d
    return-void
.end method
