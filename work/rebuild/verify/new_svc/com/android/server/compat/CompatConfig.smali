.class public final Lcom/android/server/compat/CompatConfig;
.super Ljava/lang/Object;
.source "CompatConfig.java"


# instance fields
.field public final mAndroidBuildClassifier:Lcom/android/internal/compat/AndroidBuildClassifier;

.field public mBackupOverridesFile:Ljava/io/File;

.field public final mChanges:Ljava/util/concurrent/ConcurrentHashMap;

.field public mContext:Landroid/content/Context;

.field public final mOverrideValidator:Lcom/android/server/compat/OverrideValidatorImpl;

.field public mOverridesFile:Ljava/io/File;

.field public final mOverridesFileLock:Ljava/lang/Object;


# direct methods
.method public static synthetic $r8$lambda$C1SLw-dqL7ekU-66P5SJ6ti6DZY(Lcom/android/server/compat/CompatConfig;Ljava/util/concurrent/atomic/AtomicBoolean;JLjava/lang/Long;)Lcom/android/server/compat/CompatChange;
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/compat/CompatConfig;->lambda$registerListener$2(Ljava/util/concurrent/atomic/AtomicBoolean;JLjava/lang/Long;)Lcom/android/server/compat/CompatChange;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$RmVydZyosIBjprfsjXCOUcqARPw(Ljava/io/File;)Z
    .registers 1

    .line 704
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$UU-PU-AnQuTIJeABebic5M59hFg(Ljava/util/concurrent/atomic/AtomicBoolean;JLjava/lang/Long;)Lcom/android/server/compat/CompatChange;
    .registers 4

    const/4 p3, 0x0

    .line 366
    invoke-virtual {p0, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 367
    new-instance p0, Lcom/android/server/compat/CompatChange;

    invoke-direct {p0, p1, p2}, Lcom/android/server/compat/CompatChange;-><init>(J)V

    return-object p0
.end method

.method public constructor <init>(Lcom/android/internal/compat/AndroidBuildClassifier;Landroid/content/Context;)V
    .registers 4

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    .line 92
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/compat/CompatConfig;->mOverridesFileLock:Ljava/lang/Object;

    .line 100
    new-instance v0, Lcom/android/server/compat/OverrideValidatorImpl;

    invoke-direct {v0, p1, p2, p0}, Lcom/android/server/compat/OverrideValidatorImpl;-><init>(Lcom/android/internal/compat/AndroidBuildClassifier;Landroid/content/Context;Lcom/android/server/compat/CompatConfig;)V

    iput-object v0, p0, Lcom/android/server/compat/CompatConfig;->mOverrideValidator:Lcom/android/server/compat/OverrideValidatorImpl;

    .line 101
    iput-object p1, p0, Lcom/android/server/compat/CompatConfig;->mAndroidBuildClassifier:Lcom/android/internal/compat/AndroidBuildClassifier;

    .line 102
    iput-object p2, p0, Lcom/android/server/compat/CompatConfig;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static create(Lcom/android/internal/compat/AndroidBuildClassifier;Landroid/content/Context;)Lcom/android/server/compat/CompatConfig;
    .registers 3

    .line 106
    new-instance v0, Lcom/android/server/compat/CompatConfig;

    invoke-direct {v0, p0, p1}, Lcom/android/server/compat/CompatConfig;-><init>(Lcom/android/internal/compat/AndroidBuildClassifier;Landroid/content/Context;)V

    .line 107
    invoke-virtual {v0}, Lcom/android/server/compat/CompatConfig;->loadConfigFiles()V

    .line 108
    invoke-virtual {v0}, Lcom/android/server/compat/CompatConfig;->initOverrides()V

    .line 109
    invoke-virtual {v0}, Lcom/android/server/compat/CompatConfig;->invalidateCache()V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized addAllPackageOverrides(Lcom/android/internal/compat/CompatibilityOverridesByPackageConfig;Z)V
    .registers 6

    monitor-enter p0

    .line 320
    :try_start_1
    iget-object v0, p1, Lcom/android/internal/compat/CompatibilityOverridesByPackageConfig;->packageNameToOverrides:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 321
    iget-object v2, p1, Lcom/android/internal/compat/CompatibilityOverridesByPackageConfig;->packageNameToOverrides:Ljava/util/Map;

    .line 322
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/compat/CompatibilityOverrideConfig;

    .line 321
    invoke-virtual {p0, v2, v1, p2}, Lcom/android/server/compat/CompatConfig;->addPackageOverridesWithoutSaving(Lcom/android/internal/compat/CompatibilityOverrideConfig;Ljava/lang/String;Z)V

    goto :goto_b

    :catchall_23
    move-exception p1

    goto :goto_2d

    .line 325
    :cond_25
    invoke-virtual {p0}, Lcom/android/server/compat/CompatConfig;->saveOverrides()V

    .line 326
    invoke-virtual {p0}, Lcom/android/server/compat/CompatConfig;->invalidateCache()V
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_23

    .line 327
    monitor-exit p0

    return-void

    :goto_2d
    :try_start_2d
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_23

    throw p1
.end method

.method public addChange(Lcom/android/server/compat/CompatChange;)V
    .registers 4

    .line 144
    iget-object p0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final addOverrideUnsafe(JLjava/lang/String;Landroid/app/compat/PackageOverride;)Z
    .registers 11

    .line 359
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 360
    iget-object v1, p0, Lcom/android/server/compat/CompatConfig;->mOverrideValidator:Lcom/android/server/compat/OverrideValidatorImpl;

    .line 361
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/compat/OverrideValidatorImpl;->getOverrideAllowedState(JLjava/lang/String;)Lcom/android/internal/compat/OverrideAllowedState;

    move-result-object v1

    .line 362
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/compat/OverrideAllowedState;->enforce(JLjava/lang/String;)V

    .line 363
    invoke-virtual {p0, p3}, Lcom/android/server/compat/CompatConfig;->getVersionCodeOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 365
    iget-object v3, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-instance v5, Lcom/android/server/compat/CompatConfig$$ExternalSyntheticLambda0;

    invoke-direct {v5, v0, p1, p2}, Lcom/android/server/compat/CompatConfig$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;J)V

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/compat/CompatChange;

    .line 369
    invoke-virtual {v3, p3, p4, v1, v2}, Lcom/android/server/compat/CompatChange;->addPackageOverride(Ljava/lang/String;Landroid/app/compat/PackageOverride;Lcom/android/internal/compat/OverrideAllowedState;Ljava/lang/Long;)V

    .line 370
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Landroid/app/compat/PackageOverride;->isEnabled()Z

    move-result p4

    if-eqz p4, :cond_35

    const-string p4, "Enabled"

    goto :goto_37

    :cond_35
    const-string p4, "Disabled"

    :goto_37
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " change "

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 371
    invoke-virtual {v3}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_63

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, " ["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_65

    :cond_63
    const-string p1, ""

    :goto_65
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 370
    const-string p2, "CompatConfig"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    invoke-virtual {p0}, Lcom/android/server/compat/CompatConfig;->invalidateCache()V

    .line 374
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public declared-synchronized addPackageOverrides(Lcom/android/internal/compat/CompatibilityOverrideConfig;Ljava/lang/String;Z)V
    .registers 4

    monitor-enter p0

    .line 340
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/compat/CompatConfig;->addPackageOverridesWithoutSaving(Lcom/android/internal/compat/CompatibilityOverrideConfig;Ljava/lang/String;Z)V

    .line 341
    invoke-virtual {p0}, Lcom/android/server/compat/CompatConfig;->saveOverrides()V

    .line 342
    invoke-virtual {p0}, Lcom/android/server/compat/CompatConfig;->invalidateCache()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 343
    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method public final addPackageOverridesWithoutSaving(Lcom/android/internal/compat/CompatibilityOverrideConfig;Ljava/lang/String;Z)V
    .registers 9

    .line 347
    iget-object v0, p1, Lcom/android/internal/compat/CompatibilityOverrideConfig;->overrides:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-eqz p3, :cond_3e

    .line 348
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/server/compat/CompatConfig;->isKnownChangeId(J)Z

    move-result v2

    if-nez v2, :cond_3e

    .line 349
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to add overrides for unknown Change ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". Skipping Change ID."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CompatConfig"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 353
    :cond_3e
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p1, Lcom/android/internal/compat/CompatibilityOverrideConfig;->overrides:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/compat/PackageOverride;

    invoke-virtual {p0, v2, v3, p2, v1}, Lcom/android/server/compat/CompatConfig;->addOverrideUnsafe(JLjava/lang/String;Landroid/app/compat/PackageOverride;)Z

    goto :goto_a

    :cond_4e
    return-void
.end method

.method public clearChanges()V
    .registers 1

    .line 650
    iget-object p0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public defaultChangeIdValue(J)Z
    .registers 3

    .line 636
    iget-object p0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/compat/CompatChange;

    if-nez p0, :cond_10

    const/4 p0, 0x1

    return p0

    .line 640
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/compat/CompatChange;->defaultValue()Z

    move-result p0

    return p0
.end method

.method public disableTargetSdkChangesForPackage(Ljava/lang/String;I)I
    .registers 10

    .line 611
    invoke-virtual {p0, p1, p2}, Lcom/android/server/compat/CompatConfig;->getAllowedChangesSinceTargetSdkForPackage(Ljava/lang/String;I)[J

    move-result-object p2

    .line 613
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_8
    if-ge v2, v0, :cond_21

    aget-wide v4, p2, v2

    .line 614
    new-instance v6, Landroid/app/compat/PackageOverride$Builder;

    invoke-direct {v6}, Landroid/app/compat/PackageOverride$Builder;-><init>()V

    .line 615
    invoke-virtual {v6, v1}, Landroid/app/compat/PackageOverride$Builder;->setEnabled(Z)Landroid/app/compat/PackageOverride$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/compat/PackageOverride$Builder;->build()Landroid/app/compat/PackageOverride;

    move-result-object v6

    .line 614
    invoke-virtual {p0, v4, v5, p1, v6}, Lcom/android/server/compat/CompatConfig;->addOverrideUnsafe(JLjava/lang/String;Landroid/app/compat/PackageOverride;)Z

    move-result v4

    or-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_21
    if-eqz v3, :cond_29

    .line 618
    invoke-virtual {p0}, Lcom/android/server/compat/CompatConfig;->saveOverrides()V

    .line 619
    invoke-virtual {p0}, Lcom/android/server/compat/CompatConfig;->invalidateCache()V

    .line 621
    :cond_29
    array-length p0, p2

    return p0
.end method

.method public dumpChanges()[Lcom/android/internal/compat/CompatibilityChangeInfo;
    .registers 6

    .line 692
    iget-object v0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/internal/compat/CompatibilityChangeInfo;

    .line 694
    iget-object p0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/compat/CompatChange;

    add-int/lit8 v3, v1, 0x1

    .line 695
    new-instance v4, Lcom/android/internal/compat/CompatibilityChangeInfo;

    invoke-direct {v4, v2}, Lcom/android/internal/compat/CompatibilityChangeInfo;-><init>(Lcom/android/internal/compat/CompatibilityChangeInfo;)V

    aput-object v4, v0, v1

    move v1, v3

    goto :goto_13

    :cond_2a
    return-object v0
.end method

.method public dumpConfig(Ljava/io/PrintWriter;)V
    .registers 3

    .line 659
    iget-object v0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-nez v0, :cond_e

    .line 660
    const-string p0, "No compat overrides."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 663
    :cond_e
    iget-object p0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_18
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/compat/CompatChange;

    .line 664
    invoke-virtual {v0}, Lcom/android/server/compat/CompatChange;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_18

    :cond_2c
    return-void
.end method

.method public enableTargetSdkChangesForPackage(Ljava/lang/String;I)I
    .registers 10

    .line 591
    invoke-virtual {p0, p1, p2}, Lcom/android/server/compat/CompatConfig;->getAllowedChangesSinceTargetSdkForPackage(Ljava/lang/String;I)[J

    move-result-object p2

    .line 593
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_7
    if-ge v1, v0, :cond_21

    aget-wide v3, p2, v1

    .line 594
    new-instance v5, Landroid/app/compat/PackageOverride$Builder;

    invoke-direct {v5}, Landroid/app/compat/PackageOverride$Builder;-><init>()V

    const/4 v6, 0x1

    .line 595
    invoke-virtual {v5, v6}, Landroid/app/compat/PackageOverride$Builder;->setEnabled(Z)Landroid/app/compat/PackageOverride$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/compat/PackageOverride$Builder;->build()Landroid/app/compat/PackageOverride;

    move-result-object v5

    .line 594
    invoke-virtual {p0, v3, v4, p1, v5}, Lcom/android/server/compat/CompatConfig;->addOverrideUnsafe(JLjava/lang/String;Landroid/app/compat/PackageOverride;)Z

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_21
    if-eqz v2, :cond_29

    .line 598
    invoke-virtual {p0}, Lcom/android/server/compat/CompatConfig;->saveOverrides()V

    .line 599
    invoke-virtual {p0}, Lcom/android/server/compat/CompatConfig;->invalidateCache()V

    .line 601
    :cond_29
    array-length p0, p2

    return p0
.end method

.method public forceNonDebuggableFinalForTest(Z)V
    .registers 2

    .line 645
    iget-object p0, p0, Lcom/android/server/compat/CompatConfig;->mOverrideValidator:Lcom/android/server/compat/OverrideValidatorImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/compat/OverrideValidatorImpl;->forceNonDebuggableFinalForTest(Z)V

    return-void
.end method

.method public final getAllowedChangesSinceTargetSdkForPackage(Ljava/lang/String;I)[J
    .registers 9

    .line 569
    new-instance v0, Landroid/util/LongArray;

    invoke-direct {v0}, Landroid/util/LongArray;-><init>()V

    .line 570
    iget-object v1, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/compat/CompatChange;

    .line 571
    invoke-virtual {v2}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getEnableSinceTargetSdk()I

    move-result v3

    if-eq v3, p2, :cond_22

    goto :goto_f

    .line 574
    :cond_22
    iget-object v3, p0, Lcom/android/server/compat/CompatConfig;->mOverrideValidator:Lcom/android/server/compat/OverrideValidatorImpl;

    .line 575
    invoke-virtual {v2}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5, p1}, Lcom/android/server/compat/OverrideValidatorImpl;->getOverrideAllowedState(JLjava/lang/String;)Lcom/android/internal/compat/OverrideAllowedState;

    move-result-object v3

    .line 577
    iget v3, v3, Lcom/android/internal/compat/OverrideAllowedState;->state:I

    if-nez v3, :cond_f

    .line 578
    invoke-virtual {v2}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/util/LongArray;->add(J)V

    goto :goto_f

    .line 581
    :cond_38
    invoke-virtual {v0}, Landroid/util/LongArray;->toArray()[J

    move-result-object p0

    return-object p0
.end method

.method public getAppConfig(Landroid/content/pm/ApplicationInfo;)Lcom/android/internal/compat/CompatibilityChangeConfig;
    .registers 7

    .line 674
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 675
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 676
    iget-object v2, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/compat/CompatChange;

    .line 677
    iget-object v4, p0, Lcom/android/server/compat/CompatConfig;->mAndroidBuildClassifier:Lcom/android/internal/compat/AndroidBuildClassifier;

    invoke-virtual {v3, p1, v4}, Lcom/android/server/compat/CompatChange;->isEnabled(Landroid/content/pm/ApplicationInfo;Lcom/android/internal/compat/AndroidBuildClassifier;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 678
    invoke-virtual {v3}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 680
    :cond_34
    invoke-virtual {v3}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 683
    :cond_40
    new-instance p0, Lcom/android/internal/compat/CompatibilityChangeConfig;

    new-instance p1, Landroid/compat/Compatibility$ChangeConfig;

    invoke-direct {p1, v0, v1}, Landroid/compat/Compatibility$ChangeConfig;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    invoke-direct {p0, p1}, Lcom/android/internal/compat/CompatibilityChangeConfig;-><init>(Landroid/compat/Compatibility$ChangeConfig;)V

    return-object p0
.end method

.method public getCompatChange(J)Lcom/android/server/compat/CompatChange;
    .registers 3

    .line 217
    iget-object p0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/compat/CompatChange;

    return-object p0
.end method

.method public getDisabledChanges(Landroid/content/pm/ApplicationInfo;)[J
    .registers 6

    .line 159
    new-instance v0, Landroid/util/LongArray;

    invoke-direct {v0}, Landroid/util/LongArray;-><init>()V

    .line 160
    iget-object v1, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/compat/CompatChange;

    .line 161
    iget-object v3, p0, Lcom/android/server/compat/CompatConfig;->mAndroidBuildClassifier:Lcom/android/internal/compat/AndroidBuildClassifier;

    invoke-virtual {v2, p1, v3}, Lcom/android/server/compat/CompatChange;->isEnabled(Landroid/content/pm/ApplicationInfo;Lcom/android/internal/compat/AndroidBuildClassifier;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 162
    invoke-virtual {v2}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/util/LongArray;->add(J)V

    goto :goto_f

    .line 165
    :cond_2b
    invoke-virtual {v0}, Landroid/util/LongArray;->toArray()[J

    move-result-object p0

    .line 166
    invoke-static {p0}, Ljava/util/Arrays;->sort([J)V

    return-object p0
.end method

.method public getLoggableChanges(Landroid/content/pm/ApplicationInfo;)[J
    .registers 9

    .line 178
    new-instance v0, Landroid/util/LongArray;

    iget-object v1, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/LongArray;-><init>(I)V

    .line 179
    iget-object v1, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_15
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/compat/CompatChange;

    .line 180
    invoke-virtual {v2}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getId()J

    move-result-wide v3

    .line 181
    iget v5, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {p0, v2, v5}, Lcom/android/server/compat/CompatConfig;->isChangeTargetingLatestSdk(Lcom/android/server/compat/CompatChange;I)Z

    move-result v5

    .line 182
    iget-object v6, p0, Lcom/android/server/compat/CompatConfig;->mAndroidBuildClassifier:Lcom/android/internal/compat/AndroidBuildClassifier;

    invoke-virtual {v2, p1, v6}, Lcom/android/server/compat/CompatChange;->isEnabled(Landroid/content/pm/ApplicationInfo;Lcom/android/internal/compat/AndroidBuildClassifier;)Z

    move-result v6

    if-eqz v6, :cond_15

    if-eqz v5, :cond_15

    invoke-virtual {v2}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getNoLogging()Z

    move-result v2

    if-nez v2, :cond_15

    .line 183
    invoke-virtual {v0, v3, v4}, Landroid/util/LongArray;->add(J)V

    goto :goto_15

    .line 186
    :cond_3f
    invoke-virtual {v0}, Landroid/util/LongArray;->toArray()[J

    move-result-object p0

    .line 187
    invoke-static {p0}, Ljava/util/Arrays;->sort([J)V

    return-object p0
.end method

.method public getOverrideValidator()Lcom/android/internal/compat/IOverrideValidator;
    .registers 1

    .line 853
    iget-object p0, p0, Lcom/android/server/compat/CompatConfig;->mOverrideValidator:Lcom/android/server/compat/OverrideValidatorImpl;

    return-object p0
.end method

.method public final getVersionCodeOrNull(Ljava/lang/String;)Ljava/lang/Long;
    .registers 2

    .line 882
    invoke-virtual {p0, p1}, Lcom/android/server/compat/CompatConfig;->getVersionCodeOrNullImpl(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public final getVersionCodeOrNullImpl(Ljava/lang/String;)Ljava/lang/Long;
    .registers 3

    .line 901
    :try_start_0
    iget-object p0, p0, Lcom/android/server/compat/CompatConfig;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v0, 0x400000

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 903
    iget-wide p0, p0, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_12} :catch_13

    return-object p0

    :catch_13
    const/4 p0, 0x0

    return-object p0
.end method

.method public initConfigFromLib(Ljava/io/File;)V
    .registers 3

    .line 704
    new-instance v0, Lcom/android/server/compat/CompatConfig$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/compat/CompatConfig$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/compat/CompatConfig;->initConfigFromLib(Ljava/io/File;Ljava/util/function/Predicate;)V

    return-void
.end method

.method public initConfigFromLib(Ljava/io/File;Ljava/util/function/Predicate;)V
    .registers 9

    .line 711
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v1, "CompatConfig"

    if-eqz v0, :cond_3f

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_3f

    .line 715
    :cond_f
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    array-length v0, p1

    const/4 v2, 0x0

    :goto_15
    if-ge v2, v0, :cond_3e

    aget-object v3, p1, v2

    .line 716
    invoke-interface {p2, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_20

    goto :goto_3b

    .line 719
    :cond_20
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found a config file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    invoke-virtual {p0, v3}, Lcom/android/server/compat/CompatConfig;->readConfig(Ljava/io/File;)V

    :goto_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_3e
    return-void

    .line 712
    :cond_3f
    :goto_3f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "No directory "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", skipping"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final initOverrides()V
    .registers 5

    .line 739
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/appcompat"

    const-string v2, "compat_framework_overrides.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v3, "/product/etc/appcompat"

    invoke-direct {v1, v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/compat/CompatConfig;->initOverrides(Ljava/io/File;Ljava/io/File;)V

    return-void
.end method

.method public initOverrides(Ljava/io/File;Ljava/io/File;)V
    .registers 5

    .line 747
    iget-object v0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/compat/CompatChange;

    .line 748
    invoke-virtual {v1}, Lcom/android/server/compat/CompatChange;->clearOverrides()V

    goto :goto_a

    .line 752
    :cond_1a
    invoke-virtual {p0, p2}, Lcom/android/server/compat/CompatConfig;->loadOverrides(Ljava/io/File;)V

    .line 754
    iget-object v0, p0, Lcom/android/server/compat/CompatConfig;->mOverridesFileLock:Ljava/lang/Object;

    monitor-enter v0

    .line 755
    :try_start_20
    iput-object p1, p0, Lcom/android/server/compat/CompatConfig;->mOverridesFile:Ljava/io/File;

    .line 756
    invoke-virtual {p0, p1}, Lcom/android/server/compat/CompatConfig;->makeBackupFile(Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/compat/CompatConfig;->mBackupOverridesFile:Ljava/io/File;

    .line 757
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_3d

    .line 758
    iget-object p1, p0, Lcom/android/server/compat/CompatConfig;->mOverridesFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 759
    iget-object p1, p0, Lcom/android/server/compat/CompatConfig;->mBackupOverridesFile:Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/compat/CompatConfig;->mOverridesFile:Ljava/io/File;

    invoke-virtual {p1, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_3d

    :catchall_3b
    move-exception p0

    goto :goto_4d

    .line 761
    :cond_3d
    :goto_3d
    iget-object p1, p0, Lcom/android/server/compat/CompatConfig;->mOverridesFile:Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/android/server/compat/CompatConfig;->loadOverrides(Ljava/io/File;)V

    .line 762
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_20 .. :try_end_43} :catchall_3b

    .line 764
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_4c

    .line 766
    invoke-virtual {p0}, Lcom/android/server/compat/CompatConfig;->saveOverrides()V

    :cond_4c
    return-void

    .line 762
    :goto_4d
    :try_start_4d
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_3b

    throw p0
.end method

.method public final invalidateCache()V
    .registers 1

    .line 857
    invoke-static {}, Landroid/app/compat/ChangeIdStateCache;->invalidate()V

    return-void
.end method

.method public isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z
    .registers 5

    .line 244
    iget-object v0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/compat/CompatChange;

    .line 245
    invoke-virtual {p0, p1, p3}, Lcom/android/server/compat/CompatConfig;->isChangeEnabled(Lcom/android/server/compat/CompatChange;Landroid/content/pm/ApplicationInfo;)Z

    move-result p0

    return p0
.end method

.method public isChangeEnabled(Lcom/android/server/compat/CompatChange;Landroid/content/pm/ApplicationInfo;)Z
    .registers 3

    if-nez p1, :cond_4

    const/4 p0, 0x1

    return p0

    .line 261
    :cond_4
    iget-object p0, p0, Lcom/android/server/compat/CompatConfig;->mAndroidBuildClassifier:Lcom/android/internal/compat/AndroidBuildClassifier;

    invoke-virtual {p1, p2, p0}, Lcom/android/server/compat/CompatChange;->isEnabled(Landroid/content/pm/ApplicationInfo;Lcom/android/internal/compat/AndroidBuildClassifier;)Z

    move-result p0

    return p0
.end method

.method public isChangeTargetingLatestSdk(Lcom/android/server/compat/CompatChange;I)Z
    .registers 5

    .line 199
    invoke-virtual {p0, p1}, Lcom/android/server/compat/CompatConfig;->maxTargetSdkForCompatChange(Lcom/android/server/compat/CompatChange;)I

    move-result p0

    const/4 p1, 0x1

    add-int/2addr p0, p1

    const/4 v0, 0x0

    if-gtz p0, :cond_a

    return v0

    :cond_a
    const/16 v1, 0x2710

    if-eq p0, v1, :cond_12

    if-ne p0, p2, :cond_11

    goto :goto_12

    :cond_11
    return v0

    :cond_12
    :goto_12
    return p1
.end method

.method public isDisabled(J)Z
    .registers 3

    .line 418
    iget-object p0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/compat/CompatChange;

    if-eqz p0, :cond_16

    .line 419
    invoke-virtual {p0}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getDisabled()Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public isKnownChangeId(J)Z
    .registers 3

    .line 379
    iget-object p0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isLoggingOnly(J)Z
    .registers 3

    .line 410
    iget-object p0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/compat/CompatChange;

    if-eqz p0, :cond_16

    .line 411
    invoke-virtual {p0}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getLoggingOnly()Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public isOverridable(J)Z
    .registers 3

    .line 426
    iget-object p0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/compat/CompatChange;

    if-eqz p0, :cond_16

    .line 427
    invoke-virtual {p0}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getOverridable()Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$registerListener$2(Ljava/util/concurrent/atomic/AtomicBoolean;JLjava/lang/Long;)Lcom/android/server/compat/CompatChange;
    .registers 5

    const/4 p4, 0x0

    .line 627
    invoke-virtual {p1, p4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 628
    invoke-virtual {p0}, Lcom/android/server/compat/CompatConfig;->invalidateCache()V

    .line 629
    new-instance p0, Lcom/android/server/compat/CompatChange;

    invoke-direct {p0, p2, p3}, Lcom/android/server/compat/CompatChange;-><init>(J)V

    return-object p0
.end method

.method public final loadConfigFiles()V
    .registers 6

    .line 116
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "etc"

    const-string v2, "compatconfig"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v3

    .line 115
    invoke-static {v0, v3}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/compat/CompatConfig;->initConfigFromLib(Ljava/io/File;)V

    .line 118
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v3, "system_ext"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v3

    .line 117
    invoke-static {v0, v3}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/compat/CompatConfig;->initConfigFromLib(Ljava/io/File;)V

    .line 120
    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/ApexManager;->getActiveApexInfos()Ljava/util/List;

    move-result-object v0

    .line 121
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_31
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/ApexManager$ActiveApexInfo;

    .line 122
    iget-object v3, v3, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->apexDirectory:Ljava/io/File;

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/compat/CompatConfig;->initConfigFromLib(Ljava/io/File;)V

    goto :goto_31

    :cond_4b
    return-void
.end method

.method public final loadOverrides(Ljava/io/File;)V
    .registers 10

    .line 775
    const-string v0, "CompatConfig"

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_9

    return-void

    .line 780
    :cond_9
    :try_start_9
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_13} :catch_3a
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_9 .. :try_end_13} :catch_3a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_13} :catch_3a

    .line 781
    :try_start_13
    invoke-static {v1}, Lcom/android/server/compat/overrides/XmlParser;->read(Ljava/io/InputStream;)Lcom/android/server/compat/overrides/Overrides;

    move-result-object v2

    if-nez v2, :cond_3e

    .line 783
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parsing "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " failed"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catchall {:try_start_13 .. :try_end_36} :catchall_3c

    .line 796
    :cond_36
    :try_start_36
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_3a
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_36 .. :try_end_39} :catch_3a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_36 .. :try_end_39} :catch_3a

    return-void

    :catch_3a
    move-exception p0

    goto :goto_8b

    :catchall_3c
    move-exception p0

    goto :goto_82

    .line 786
    :cond_3e
    :try_start_3e
    invoke-virtual {v2}, Lcom/android/server/compat/overrides/Overrides;->getChangeOverrides()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_46
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/compat/overrides/ChangeOverrides;

    .line 787
    invoke-virtual {v3}, Lcom/android/server/compat/overrides/ChangeOverrides;->getChangeId()J

    move-result-wide v4

    .line 788
    iget-object v6, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/compat/CompatChange;

    if-nez v6, :cond_7e

    .line 790
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Change ID "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " not found. Skipping overrides for it."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46

    .line 794
    :cond_7e
    invoke-virtual {v6, v3}, Lcom/android/server/compat/CompatChange;->loadOverrides(Lcom/android/server/compat/overrides/ChangeOverrides;)V
    :try_end_81
    .catchall {:try_start_3e .. :try_end_81} :catchall_3c

    goto :goto_46

    .line 780
    :goto_82
    :try_start_82
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_85
    .catchall {:try_start_82 .. :try_end_85} :catchall_86

    goto :goto_8a

    :catchall_86
    move-exception v1

    :try_start_87
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_8a
    throw p0
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8b} :catch_3a
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_87 .. :try_end_8b} :catch_3a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_87 .. :try_end_8b} :catch_3a

    .line 797
    :goto_8b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error processing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public lookupChangeId(Ljava/lang/String;)J
    .registers 4

    .line 227
    iget-object p0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/compat/CompatChange;

    .line 228
    invoke-virtual {v0}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 229
    invoke-virtual {v0}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getId()J

    move-result-wide p0

    return-wide p0

    :cond_25
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public final makeBackupFile(Ljava/io/File;)Ljava/io/File;
    .registers 3

    .line 771
    new-instance p0, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".bak"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public maxTargetSdkForChangeIdOptIn(J)I
    .registers 4

    .line 389
    iget-object v0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/compat/CompatChange;

    .line 390
    invoke-virtual {p0, p1}, Lcom/android/server/compat/CompatConfig;->maxTargetSdkForCompatChange(Lcom/android/server/compat/CompatChange;)I

    move-result p0

    return p0
.end method

.method public maxTargetSdkForCompatChange(Lcom/android/server/compat/CompatChange;)I
    .registers 3

    const/4 p0, -0x1

    if-eqz p1, :cond_f

    .line 400
    invoke-virtual {p1}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getEnableSinceTargetSdk()I

    move-result v0

    if-eq v0, p0, :cond_f

    .line 401
    invoke-virtual {p1}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getEnableSinceTargetSdk()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :cond_f
    return p0
.end method

.method public final readConfig(Ljava/io/File;)V
    .registers 7

    .line 726
    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_40
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_0 .. :try_end_a} :catch_40
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_a} :catch_40
    .catchall {:try_start_0 .. :try_end_a} :catchall_3e

    .line 727
    :try_start_a
    invoke-static {v0}, Lcom/android/server/compat/config/XmlParser;->read(Ljava/io/InputStream;)Lcom/android/server/compat/config/Config;

    move-result-object p1

    .line 728
    invoke-virtual {p1}, Lcom/android/server/compat/config/Config;->getCompatChange()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/compat/config/Change;

    .line 729
    iget-object v2, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lcom/android/server/compat/config/Change;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-instance v4, Lcom/android/server/compat/CompatChange;

    invoke-direct {v4, v1}, Lcom/android/server/compat/CompatChange;-><init>(Lcom/android/server/compat/config/Change;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_34
    .catchall {:try_start_a .. :try_end_34} :catchall_35

    goto :goto_16

    :catchall_35
    move-exception p1

    goto :goto_42

    .line 731
    :cond_37
    :try_start_37
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_40
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_37 .. :try_end_3a} :catch_40
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_37 .. :try_end_3a} :catch_40
    .catchall {:try_start_37 .. :try_end_3a} :catchall_3e

    .line 734
    invoke-virtual {p0}, Lcom/android/server/compat/CompatConfig;->invalidateCache()V

    return-void

    :catchall_3e
    move-exception p1

    goto :goto_56

    :catch_40
    move-exception p1

    goto :goto_4b

    .line 726
    :goto_42
    :try_start_42
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_46

    goto :goto_4a

    :catchall_46
    move-exception v0

    :try_start_47
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4a
    throw p1
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4b} :catch_40
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_47 .. :try_end_4b} :catch_40
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_47 .. :try_end_4b} :catch_40
    .catchall {:try_start_47 .. :try_end_4b} :catchall_3e

    .line 732
    :goto_4b
    :try_start_4b
    const-string v0, "CompatConfig"

    const-string v1, "Encountered an error while reading/parsing compat config file"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_52
    .catchall {:try_start_4b .. :try_end_52} :catchall_3e

    .line 734
    invoke-virtual {p0}, Lcom/android/server/compat/CompatConfig;->invalidateCache()V

    return-void

    :goto_56
    invoke-virtual {p0}, Lcom/android/server/compat/CompatConfig;->invalidateCache()V

    .line 735
    throw p1
.end method

.method public recheckOverrides(Ljava/lang/String;)V
    .registers 9

    .line 864
    invoke-virtual {p0, p1}, Lcom/android/server/compat/CompatConfig;->getVersionCodeOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 866
    iget-object v1, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/compat/CompatChange;

    .line 867
    iget-object v4, p0, Lcom/android/server/compat/CompatConfig;->mOverrideValidator:Lcom/android/server/compat/OverrideValidatorImpl;

    .line 868
    invoke-virtual {v3}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6, p1}, Lcom/android/server/compat/OverrideValidatorImpl;->getOverrideAllowedStateForRecheck(JLjava/lang/String;)Lcom/android/internal/compat/OverrideAllowedState;

    move-result-object v4

    .line 870
    invoke-virtual {v3, p1, v4, v0}, Lcom/android/server/compat/CompatChange;->recheckOverride(Ljava/lang/String;Lcom/android/internal/compat/OverrideAllowedState;Ljava/lang/Long;)Z

    move-result v3

    or-int/2addr v2, v3

    goto :goto_f

    :cond_2b
    if-eqz v2, :cond_30

    .line 873
    invoke-virtual {p0}, Lcom/android/server/compat/CompatConfig;->invalidateCache()V

    :cond_30
    return-void
.end method

.method public registerContentObserver()V
    .registers 1

    .line 910
    iget-object p0, p0, Lcom/android/server/compat/CompatConfig;->mOverrideValidator:Lcom/android/server/compat/OverrideValidatorImpl;

    invoke-virtual {p0}, Lcom/android/server/compat/OverrideValidatorImpl;->registerContentObserver()V

    return-void
.end method

.method public registerListener(JLcom/android/server/compat/CompatChange$ChangeListener;)Z
    .registers 8

    .line 625
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 626
    iget-object v1, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v3, Lcom/android/server/compat/CompatConfig$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v0, p1, p2}, Lcom/android/server/compat/CompatConfig$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/compat/CompatConfig;Ljava/util/concurrent/atomic/AtomicBoolean;J)V

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/compat/CompatChange;

    .line 631
    invoke-virtual {p0, p3}, Lcom/android/server/compat/CompatChange;->registerListener(Lcom/android/server/compat/CompatChange$ChangeListener;)V

    .line 632
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public declared-synchronized removeAllPackageOverrides(Lcom/android/internal/compat/CompatibilityOverridesToRemoveByPackageConfig;)V
    .registers 6

    monitor-enter p0

    .line 500
    :try_start_1
    iget-object v0, p1, Lcom/android/internal/compat/CompatibilityOverridesToRemoveByPackageConfig;->packageNameToOverridesToRemove:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 501
    iget-object v3, p1, Lcom/android/internal/compat/CompatibilityOverridesToRemoveByPackageConfig;->packageNameToOverridesToRemove:Ljava/util/Map;

    .line 502
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;

    .line 501
    invoke-virtual {p0, v3, v2}, Lcom/android/server/compat/CompatConfig;->removePackageOverridesWithoutSaving(Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;Ljava/lang/String;)Z

    move-result v2

    or-int/2addr v1, v2

    goto :goto_c

    :catchall_26
    move-exception p1

    goto :goto_32

    :cond_28
    if-eqz v1, :cond_30

    .line 506
    invoke-virtual {p0}, Lcom/android/server/compat/CompatConfig;->saveOverrides()V

    .line 507
    invoke-virtual {p0}, Lcom/android/server/compat/CompatConfig;->invalidateCache()V
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_26

    .line 509
    :cond_30
    monitor-exit p0

    return-void

    :goto_32
    :try_start_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_26

    throw p1
.end method

.method public declared-synchronized removeOverride(JLjava/lang/String;)Z
    .registers 4

    monitor-enter p0

    .line 441
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/compat/CompatConfig;->removeOverrideUnsafe(JLjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 443
    invoke-virtual {p0}, Lcom/android/server/compat/CompatConfig;->saveOverrides()V

    .line 444
    invoke-virtual {p0}, Lcom/android/server/compat/CompatConfig;->invalidateCache()V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_e

    goto :goto_10

    :catchall_e
    move-exception p1

    goto :goto_12

    .line 446
    :cond_10
    :goto_10
    monitor-exit p0

    return p1

    :goto_12
    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_e

    throw p1
.end method

.method public final removeOverrideUnsafe(JLjava/lang/String;)Z
    .registers 6

    .line 454
    invoke-virtual {p0, p3}, Lcom/android/server/compat/CompatConfig;->getVersionCodeOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 455
    iget-object v1, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/compat/CompatChange;

    if-eqz p1, :cond_17

    .line 457
    invoke-virtual {p0, p1, p3, v0}, Lcom/android/server/compat/CompatConfig;->removeOverrideUnsafe(Lcom/android/server/compat/CompatChange;Ljava/lang/String;Ljava/lang/Long;)Z

    move-result p0

    return p0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method public final removeOverrideUnsafe(Lcom/android/server/compat/CompatChange;Ljava/lang/String;Ljava/lang/Long;)Z
    .registers 7

    .line 468
    invoke-virtual {p1}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getId()J

    move-result-wide v0

    .line 469
    iget-object p0, p0, Lcom/android/server/compat/CompatConfig;->mOverrideValidator:Lcom/android/server/compat/OverrideValidatorImpl;

    .line 470
    invoke-virtual {p0, v0, v1, p2}, Lcom/android/server/compat/OverrideValidatorImpl;->getOverrideAllowedState(JLjava/lang/String;)Lcom/android/internal/compat/OverrideAllowedState;

    move-result-object p0

    .line 471
    invoke-virtual {p1, p2, p0, p3}, Lcom/android/server/compat/CompatChange;->removePackageOverride(Ljava/lang/String;Lcom/android/internal/compat/OverrideAllowedState;Ljava/lang/Long;)Z

    move-result p0

    if-eqz p0, :cond_59

    .line 474
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reset change "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 475
    invoke-virtual {p1}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_40

    :cond_3e
    const-string p1, ""

    :goto_40
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to default value."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 474
    const-string p2, "CompatConfig"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_59
    return p0
.end method

.method public declared-synchronized removePackageOverrides(Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    .line 545
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/compat/CompatConfig;->removePackageOverridesWithoutSaving(Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 548
    invoke-virtual {p0}, Lcom/android/server/compat/CompatConfig;->saveOverrides()V

    .line 549
    invoke-virtual {p0}, Lcom/android/server/compat/CompatConfig;->invalidateCache()V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_e

    goto :goto_10

    :catchall_e
    move-exception p1

    goto :goto_12

    .line 551
    :cond_10
    :goto_10
    monitor-exit p0

    return-void

    :goto_12
    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_e

    throw p1
.end method

.method public declared-synchronized removePackageOverrides(Ljava/lang/String;)V
    .registers 6

    monitor-enter p0

    .line 521
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/compat/CompatConfig;->getVersionCodeOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 523
    iget-object v1, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/compat/CompatChange;

    .line 524
    invoke-virtual {p0, v3, p1, v0}, Lcom/android/server/compat/CompatConfig;->removeOverrideUnsafe(Lcom/android/server/compat/CompatChange;Ljava/lang/String;Ljava/lang/Long;)Z

    move-result v3

    or-int/2addr v2, v3

    goto :goto_10

    :catchall_22
    move-exception p1

    goto :goto_2e

    :cond_24
    if-eqz v2, :cond_2c

    .line 527
    invoke-virtual {p0}, Lcom/android/server/compat/CompatConfig;->saveOverrides()V

    .line 528
    invoke-virtual {p0}, Lcom/android/server/compat/CompatConfig;->invalidateCache()V
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_22

    .line 530
    :cond_2c
    monitor-exit p0

    return-void

    :goto_2e
    :try_start_2e
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_22

    throw p1
.end method

.method public final removePackageOverridesWithoutSaving(Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;Ljava/lang/String;)Z
    .registers 7

    .line 556
    iget-object p1, p1, Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;->changeIds:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 557
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/server/compat/CompatConfig;->isKnownChangeId(J)Z

    move-result v2

    if-nez v2, :cond_39

    .line 558
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to remove overrides for unknown Change ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". Skipping Change ID."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CompatConfig"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 562
    :cond_39
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2, p2}, Lcom/android/server/compat/CompatConfig;->removeOverrideUnsafe(JLjava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_7

    :cond_43
    return v0
.end method

.method public saveOverrides()V
    .registers 6

    .line 806
    iget-object v0, p0, Lcom/android/server/compat/CompatConfig;->mOverridesFileLock:Ljava/lang/Object;

    monitor-enter v0

    .line 807
    :try_start_3
    iget-object v1, p0, Lcom/android/server/compat/CompatConfig;->mOverridesFile:Ljava/io/File;

    if-eqz v1, :cond_ce

    iget-object v1, p0, Lcom/android/server/compat/CompatConfig;->mBackupOverridesFile:Ljava/io/File;

    if-nez v1, :cond_d

    goto/16 :goto_ce

    .line 811
    :cond_d
    new-instance v1, Lcom/android/server/compat/overrides/Overrides;

    invoke-direct {v1}, Lcom/android/server/compat/overrides/Overrides;-><init>()V

    .line 812
    invoke-virtual {v1}, Lcom/android/server/compat/overrides/Overrides;->getChangeOverrides()Ljava/util/List;

    move-result-object v2

    .line 813
    iget-object v3, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_20
    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_39

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/compat/CompatChange;

    .line 814
    invoke-virtual {v4}, Lcom/android/server/compat/CompatChange;->saveOverrides()Lcom/android/server/compat/overrides/ChangeOverrides;

    move-result-object v4

    if-eqz v4, :cond_20

    .line 816
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :catchall_36
    move-exception p0

    goto/16 :goto_d0

    .line 821
    :cond_39
    iget-object v2, p0, Lcom/android/server/compat/CompatConfig;->mOverridesFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 822
    iget-object v2, p0, Lcom/android/server/compat/CompatConfig;->mBackupOverridesFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 823
    iget-object v2, p0, Lcom/android/server/compat/CompatConfig;->mOverridesFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_7d

    .line 825
    :cond_4f
    iget-object v2, p0, Lcom/android/server/compat/CompatConfig;->mOverridesFile:Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/compat/CompatConfig;->mBackupOverridesFile:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_7d

    .line 826
    const-string v1, "CompatConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t rename file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/compat/CompatConfig;->mOverridesFile:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/compat/CompatConfig;->mBackupOverridesFile:Ljava/io/File;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    monitor-exit v0
    :try_end_7c
    .catchall {:try_start_3 .. :try_end_7c} :catchall_36

    return-void

    .line 835
    :cond_7d
    :goto_7d
    :try_start_7d
    iget-object v2, p0, Lcom/android/server/compat/CompatConfig;->mOverridesFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_82} :catch_b1
    .catchall {:try_start_7d .. :try_end_82} :catchall_36

    .line 840
    :try_start_82
    new-instance v2, Ljava/io/PrintWriter;

    iget-object v3, p0, Lcom/android/server/compat/CompatConfig;->mOverridesFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_89} :catch_95
    .catchall {:try_start_82 .. :try_end_89} :catchall_36

    .line 841
    :try_start_89
    new-instance v3, Lcom/android/server/compat/overrides/XmlWriter;

    invoke-direct {v3, v2}, Lcom/android/server/compat/overrides/XmlWriter;-><init>(Ljava/io/PrintWriter;)V

    .line 842
    invoke-static {v3, v1}, Lcom/android/server/compat/overrides/XmlWriter;->write(Lcom/android/server/compat/overrides/XmlWriter;Lcom/android/server/compat/overrides/Overrides;)V
    :try_end_91
    .catchall {:try_start_89 .. :try_end_91} :catchall_97

    .line 843
    :try_start_91
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_94} :catch_95
    .catchall {:try_start_91 .. :try_end_94} :catchall_36

    goto :goto_aa

    :catch_95
    move-exception v1

    goto :goto_a1

    :catchall_97
    move-exception v1

    .line 840
    :try_start_98
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V
    :try_end_9b
    .catchall {:try_start_98 .. :try_end_9b} :catchall_9c

    goto :goto_a0

    :catchall_9c
    move-exception v2

    :try_start_9d
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_a0
    throw v1
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_a1} :catch_95
    .catchall {:try_start_9d .. :try_end_a1} :catchall_36

    .line 844
    :goto_a1
    :try_start_a1
    const-string v2, "CompatConfig"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    :goto_aa
    iget-object p0, p0, Lcom/android/server/compat/CompatConfig;->mBackupOverridesFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 849
    monitor-exit v0

    goto :goto_cd

    :catch_b1
    move-exception p0

    .line 837
    const-string v1, "CompatConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not create override config file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    monitor-exit v0

    :goto_cd
    return-void

    .line 808
    :cond_ce
    :goto_ce
    monitor-exit v0

    return-void

    .line 849
    :goto_d0
    monitor-exit v0
    :try_end_d1
    .catchall {:try_start_a1 .. :try_end_d1} :catchall_36

    throw p0
.end method

.method public willChangeBeEnabled(JLjava/lang/String;)Z
    .registers 4

    .line 273
    iget-object p0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/compat/CompatChange;

    if-nez p0, :cond_10

    const/4 p0, 0x1

    return p0

    .line 278
    :cond_10
    invoke-virtual {p0, p3}, Lcom/android/server/compat/CompatChange;->willBeEnabled(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
