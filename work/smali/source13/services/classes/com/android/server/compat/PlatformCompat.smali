.class public Lcom/android/server/compat/PlatformCompat;
.super Lcom/android/internal/compat/IPlatformCompat$Stub;
.source "PlatformCompat.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Compatibility"


# instance fields
.field private final mBuildClassifier:Lcom/android/internal/compat/AndroidBuildClassifier;

.field private final mChangeReporter:Lcom/android/internal/compat/ChangeReporter;

.field private final mCompatConfig:Lcom/android/server/compat/CompatConfig;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public static synthetic $r8$lambda$n_2JjKeulvxyAF8j4MdiUMuKl6A(Lcom/android/server/compat/PlatformCompat;Lcom/android/internal/compat/CompatibilityChangeInfo;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/compat/PlatformCompat;->isShownInUI(Lcom/android/internal/compat/CompatibilityChangeInfo;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCompatConfig(Lcom/android/server/compat/PlatformCompat;)Lcom/android/server/compat/CompatConfig;
    .registers 1

    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 79
    invoke-direct {p0}, Lcom/android/internal/compat/IPlatformCompat$Stub;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/android/server/compat/PlatformCompat;->mContext:Landroid/content/Context;

    .line 81
    new-instance v0, Lcom/android/internal/compat/ChangeReporter;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/internal/compat/ChangeReporter;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mChangeReporter:Lcom/android/internal/compat/ChangeReporter;

    .line 82
    new-instance v0, Lcom/android/internal/compat/AndroidBuildClassifier;

    invoke-direct {v0}, Lcom/android/internal/compat/AndroidBuildClassifier;-><init>()V

    iput-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mBuildClassifier:Lcom/android/internal/compat/AndroidBuildClassifier;

    .line 83
    invoke-static {v0, p1}, Lcom/android/server/compat/CompatConfig;->create(Lcom/android/internal/compat/AndroidBuildClassifier;Landroid/content/Context;)Lcom/android/server/compat/CompatConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    .line 84
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/compat/CompatConfig;Lcom/android/internal/compat/AndroidBuildClassifier;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "compatConfig"    # Lcom/android/server/compat/CompatConfig;
    .param p3, "buildClassifier"    # Lcom/android/internal/compat/AndroidBuildClassifier;

    .line 88
    invoke-direct {p0}, Lcom/android/internal/compat/IPlatformCompat$Stub;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/android/server/compat/PlatformCompat;->mContext:Landroid/content/Context;

    .line 90
    new-instance v0, Lcom/android/internal/compat/ChangeReporter;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/internal/compat/ChangeReporter;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mChangeReporter:Lcom/android/internal/compat/ChangeReporter;

    .line 91
    iput-object p2, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    .line 92
    iput-object p3, p0, Lcom/android/server/compat/PlatformCompat;->mBuildClassifier:Lcom/android/internal/compat/AndroidBuildClassifier;

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/server/compat/PlatformCompat;->registerPackageReceiver(Landroid/content/Context;)V

    .line 95
    return-void
.end method

.method private checkAllCompatOverridesAreOverridable(Ljava/util/Collection;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 485
    .local p1, "changeIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 486
    .local v1, "changeId":Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/server/compat/PlatformCompat;->isKnownChangeId(J)Z

    move-result v2

    if-eqz v2, :cond_2f

    iget-object v2, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/server/compat/CompatConfig;->isOverridable(J)Z

    move-result v2

    if-eqz v2, :cond_27

    goto :goto_2f

    .line 487
    :cond_27
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Only change ids marked as Overridable can be overridden."

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 490
    .end local v1    # "changeId":Ljava/lang/Long;
    :cond_2f
    :goto_2f
    goto :goto_4

    .line 491
    :cond_30
    return-void
.end method

.method private checkCompatChangeLogPermission()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 443
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_9

    .line 444
    return-void

    .line 446
    :cond_9
    iget-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOG_COMPAT_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_14

    .line 449
    return-void

    .line 447
    :cond_14
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Cannot log compat change usage"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkCompatChangeOverrideOverridablePermission()V
    .registers 3

    .line 475
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_9

    .line 476
    return-void

    .line 478
    :cond_9
    iget-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.OVERRIDE_COMPAT_CHANGE_CONFIG_ON_RELEASE_BUILD"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_14

    .line 482
    return-void

    .line 480
    :cond_14
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Cannot override compat change"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkCompatChangeOverridePermission()V
    .registers 3

    .line 464
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_9

    .line 465
    return-void

    .line 467
    :cond_9
    iget-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.OVERRIDE_COMPAT_CHANGE_CONFIG"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_14

    .line 471
    return-void

    .line 469
    :cond_14
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Cannot override compat change"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkCompatChangeReadAndLogPermission()V
    .registers 1

    .line 494
    invoke-direct {p0}, Lcom/android/server/compat/PlatformCompat;->checkCompatChangeReadPermission()V

    .line 495
    invoke-direct {p0}, Lcom/android/server/compat/PlatformCompat;->checkCompatChangeLogPermission()V

    .line 496
    return-void
.end method

.method private checkCompatChangeReadPermission()V
    .registers 3

    .line 453
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_9

    .line 454
    return-void

    .line 456
    :cond_9
    iget-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_COMPAT_CHANGE_CONFIG"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_14

    .line 460
    return-void

    .line 458
    :cond_14
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Cannot read compat change"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 410
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    .line 411
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    .line 410
    const-wide/16 v3, 0x0

    move-object v2, p1

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/PackageManagerInternal;->getApplicationInfo(Ljava/lang/String;JII)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method private isShownInUI(Lcom/android/internal/compat/CompatibilityChangeInfo;)Z
    .registers 8
    .param p1, "change"    # Lcom/android/internal/compat/CompatibilityChangeInfo;

    .line 499
    invoke-virtual {p1}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getLoggingOnly()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 500
    return v1

    .line 502
    :cond_8
    invoke-virtual {p1}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getId()J

    move-result-wide v2

    const-wide/32 v4, 0x8e787b1

    cmp-long v0, v2, v4

    if-nez v0, :cond_14

    .line 503
    return v1

    .line 505
    :cond_14
    invoke-virtual {p1}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getEnableSinceTargetSdk()I

    move-result v0

    const/4 v2, 0x1

    if-lez v0, :cond_33

    .line 506
    invoke-virtual {p1}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getEnableSinceTargetSdk()I

    move-result v0

    const/16 v3, 0x1d

    if-lt v0, v3, :cond_31

    .line 507
    invoke-virtual {p1}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getEnableSinceTargetSdk()I

    move-result v0

    iget-object v3, p0, Lcom/android/server/compat/PlatformCompat;->mBuildClassifier:Lcom/android/internal/compat/AndroidBuildClassifier;

    invoke-virtual {v3}, Lcom/android/internal/compat/AndroidBuildClassifier;->platformTargetSdk()I

    move-result v3

    if-gt v0, v3, :cond_31

    move v1, v2

    goto :goto_32

    :cond_31
    nop

    .line 506
    :goto_32
    return v1

    .line 509
    :cond_33
    return v2
.end method

.method private killPackage(Ljava/lang/String;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 415
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 416
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 415
    const-wide/16 v2, 0x0

    invoke-virtual {v0, p1, v2, v3, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0

    .line 418
    .local v0, "uid":I
    const-string v1, "Compatibility"

    if-gez v0, :cond_33

    .line 419
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Didn\'t find package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " on device."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    return-void

    .line 423
    :cond_33
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Killing package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/compat/PlatformCompat;->killUid(I)V

    .line 425
    return-void
.end method

.method private killUid(I)V
    .registers 7
    .param p1, "appId"    # I

    .line 428
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 430
    .local v0, "identity":J
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    .line 431
    .local v2, "am":Landroid/app/IActivityManager;
    if-eqz v2, :cond_17

    .line 432
    const/4 v3, -0x1

    const-string v4, "PlatformCompat overrides"

    invoke-interface {v2, p1, v3, v4}, Landroid/app/IActivityManager;->killUid(IILjava/lang/String;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_10} :catch_16
    .catchall {:try_start_4 .. :try_end_10} :catchall_11

    goto :goto_17

    .line 437
    .end local v2    # "am":Landroid/app/IActivityManager;
    :catchall_11
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 438
    throw v2

    .line 434
    :catch_16
    move-exception v2

    .line 437
    :cond_17
    :goto_17
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 438
    nop

    .line 439
    return-void
.end method

.method static synthetic lambda$listUIChanges$0(I)[Lcom/android/internal/compat/CompatibilityChangeInfo;
    .registers 2
    .param p0, "x$0"    # I

    .line 353
    new-array v0, p0, [Lcom/android/internal/compat/CompatibilityChangeInfo;

    return-object v0
.end method

.method private reportChangeInternal(JII)V
    .registers 6
    .param p1, "changeId"    # J
    .param p3, "uid"    # I
    .param p4, "state"    # I

    .line 120
    iget-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mChangeReporter:Lcom/android/internal/compat/ChangeReporter;

    invoke-virtual {v0, p3, p1, p2, p4}, Lcom/android/internal/compat/ChangeReporter;->reportChange(IJI)V

    .line 121
    return-void
.end method


# virtual methods
.method public clearOverride(JLjava/lang/String;)Z
    .registers 5
    .param p1, "changeId"    # J
    .param p3, "packageName"    # Ljava/lang/String;

    .line 306
    invoke-direct {p0}, Lcom/android/server/compat/PlatformCompat;->checkCompatChangeOverridePermission()V

    .line 307
    iget-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/compat/CompatConfig;->removeOverride(JLjava/lang/String;)Z

    move-result v0

    .line 308
    .local v0, "existed":Z
    invoke-direct {p0, p3}, Lcom/android/server/compat/PlatformCompat;->killPackage(Ljava/lang/String;)V

    .line 309
    return v0
.end method

.method public clearOverrideForTest(JLjava/lang/String;)Z
    .registers 5
    .param p1, "changeId"    # J
    .param p3, "packageName"    # Ljava/lang/String;

    .line 314
    invoke-direct {p0}, Lcom/android/server/compat/PlatformCompat;->checkCompatChangeOverridePermission()V

    .line 315
    iget-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/compat/CompatConfig;->removeOverride(JLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public clearOverrides(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 293
    invoke-direct {p0}, Lcom/android/server/compat/PlatformCompat;->checkCompatChangeOverridePermission()V

    .line 294
    iget-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {v0, p1}, Lcom/android/server/compat/CompatConfig;->removePackageOverrides(Ljava/lang/String;)V

    .line 295
    invoke-direct {p0, p1}, Lcom/android/server/compat/PlatformCompat;->killPackage(Ljava/lang/String;)V

    .line 296
    return-void
.end method

.method public clearOverridesForTest(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 300
    invoke-direct {p0}, Lcom/android/server/compat/PlatformCompat;->checkCompatChangeOverridePermission()V

    .line 301
    iget-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {v0, p1}, Lcom/android/server/compat/CompatConfig;->removePackageOverrides(Ljava/lang/String;)V

    .line 302
    return-void
.end method

.method public disableTargetSdkChanges(Ljava/lang/String;I)I
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "targetSdkVersion"    # I

    .line 284
    invoke-direct {p0}, Lcom/android/server/compat/PlatformCompat;->checkCompatChangeOverridePermission()V

    .line 285
    iget-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    .line 286
    invoke-virtual {v0, p1, p2}, Lcom/android/server/compat/CompatConfig;->disableTargetSdkChangesForPackage(Ljava/lang/String;I)I

    move-result v0

    .line 287
    .local v0, "numChanges":I
    invoke-direct {p0, p1}, Lcom/android/server/compat/PlatformCompat;->killPackage(Ljava/lang/String;)V

    .line 288
    return v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 386
    iget-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "platform_compat"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 387
    return-void

    .line 389
    :cond_c
    invoke-direct {p0}, Lcom/android/server/compat/PlatformCompat;->checkCompatChangeReadAndLogPermission()V

    .line 390
    iget-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {v0, p2}, Lcom/android/server/compat/CompatConfig;->dumpConfig(Ljava/io/PrintWriter;)V

    .line 391
    return-void
.end method

.method public enableTargetSdkChanges(Ljava/lang/String;I)I
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "targetSdkVersion"    # I

    .line 275
    invoke-direct {p0}, Lcom/android/server/compat/PlatformCompat;->checkCompatChangeOverridePermission()V

    .line 276
    iget-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    .line 277
    invoke-virtual {v0, p1, p2}, Lcom/android/server/compat/CompatConfig;->enableTargetSdkChangesForPackage(Ljava/lang/String;I)I

    move-result v0

    .line 278
    .local v0, "numChanges":I
    invoke-direct {p0, p1}, Lcom/android/server/compat/PlatformCompat;->killPackage(Ljava/lang/String;)V

    .line 279
    return v0
.end method

.method public getAppConfig(Landroid/content/pm/ApplicationInfo;)Lcom/android/internal/compat/CompatibilityChangeConfig;
    .registers 3
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 340
    invoke-direct {p0}, Lcom/android/server/compat/PlatformCompat;->checkCompatChangeReadAndLogPermission()V

    .line 341
    iget-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {v0, p1}, Lcom/android/server/compat/CompatConfig;->getAppConfig(Landroid/content/pm/ApplicationInfo;)Lcom/android/internal/compat/CompatibilityChangeConfig;

    move-result-object v0

    return-object v0
.end method

.method public getDisabledChanges(Landroid/content/pm/ApplicationInfo;)[J
    .registers 3
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 371
    iget-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {v0, p1}, Lcom/android/server/compat/CompatConfig;->getDisabledChanges(Landroid/content/pm/ApplicationInfo;)[J

    move-result-object v0

    return-object v0
.end method

.method public getOverrideValidator()Lcom/android/internal/compat/IOverrideValidator;
    .registers 2

    .line 395
    iget-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {v0}, Lcom/android/server/compat/CompatConfig;->getOverrideValidator()Lcom/android/internal/compat/IOverrideValidator;

    move-result-object v0

    return-object v0
.end method

.method public isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z
    .registers 5
    .param p1, "changeId"    # J
    .param p3, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 125
    invoke-direct {p0}, Lcom/android/server/compat/PlatformCompat;->checkCompatChangeReadAndLogPermission()V

    .line 126
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabledInternal(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v0

    return v0
.end method

.method public isChangeEnabledByPackageName(JLjava/lang/String;I)Z
    .registers 7
    .param p1, "changeId"    # J
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .line 132
    invoke-direct {p0}, Lcom/android/server/compat/PlatformCompat;->checkCompatChangeReadAndLogPermission()V

    .line 133
    invoke-direct {p0, p3, p4}, Lcom/android/server/compat/PlatformCompat;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 134
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_10

    .line 135
    iget-object v1, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/compat/CompatConfig;->willChangeBeEnabled(JLjava/lang/String;)Z

    move-result v1

    return v1

    .line 137
    :cond_10
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabledInternal(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v1

    return v1
.end method

.method public isChangeEnabledByUid(JI)Z
    .registers 10
    .param p1, "changeId"    # J
    .param p3, "uid"    # I

    .line 142
    invoke-direct {p0}, Lcom/android/server/compat/PlatformCompat;->checkCompatChangeReadAndLogPermission()V

    .line 143
    iget-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "packages":[Ljava/lang/String;
    if-eqz v0, :cond_28

    array-length v1, v0

    if-nez v1, :cond_13

    goto :goto_28

    .line 147
    :cond_13
    const/4 v1, 0x1

    .line 148
    .local v1, "enabled":Z
    array-length v2, v0

    const/4 v3, 0x0

    :goto_16
    if-ge v3, v2, :cond_27

    aget-object v4, v0, v3

    .line 149
    .local v4, "packageName":Ljava/lang/String;
    nop

    .line 150
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 149
    invoke-virtual {p0, p1, p2, v4, v5}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabledByPackageName(JLjava/lang/String;I)Z

    move-result v5

    and-int/2addr v1, v5

    .line 148
    .end local v4    # "packageName":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 152
    :cond_27
    return v1

    .line 145
    .end local v1    # "enabled":Z
    :cond_28
    :goto_28
    iget-object v1, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/compat/CompatConfig;->defaultChangeIdValue(J)Z

    move-result v1

    return v1
.end method

.method public isChangeEnabledInternal(JLandroid/content/pm/ApplicationInfo;)Z
    .registers 7
    .param p1, "changeId"    # J
    .param p3, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 171
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabledInternalNoLogging(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v0

    .line 172
    .local v0, "enabled":Z
    if-eqz p3, :cond_10

    .line 173
    iget v1, p3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 174
    if-eqz v0, :cond_c

    const/4 v2, 0x1

    goto :goto_d

    :cond_c
    const/4 v2, 0x2

    .line 173
    :goto_d
    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/server/compat/PlatformCompat;->reportChangeInternal(JII)V

    .line 176
    :cond_10
    return v0
.end method

.method public isChangeEnabledInternal(JLjava/lang/String;I)Z
    .registers 7
    .param p1, "changeId"    # J
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "targetSdkVersion"    # I

    .line 192
    iget-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/compat/CompatConfig;->willChangeBeEnabled(JLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 193
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 194
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iput-object p3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 195
    iput p4, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 196
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabledInternalNoLogging(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v1

    return v1

    .line 198
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public isChangeEnabledInternalNoLogging(JLandroid/content/pm/ApplicationInfo;)Z
    .registers 5
    .param p1, "changeId"    # J
    .param p3, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 162
    iget-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/compat/CompatConfig;->isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v0

    return v0
.end method

.method public isKnownChangeId(J)Z
    .registers 4
    .param p1, "changeId"    # J

    .line 358
    iget-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/compat/CompatConfig;->isKnownChangeId(J)Z

    move-result v0

    return v0
.end method

.method public listAllChanges()[Lcom/android/internal/compat/CompatibilityChangeInfo;
    .registers 2

    .line 346
    invoke-direct {p0}, Lcom/android/server/compat/PlatformCompat;->checkCompatChangeReadPermission()V

    .line 347
    iget-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {v0}, Lcom/android/server/compat/CompatConfig;->dumpChanges()[Lcom/android/internal/compat/CompatibilityChangeInfo;

    move-result-object v0

    return-object v0
.end method

.method public listUIChanges()[Lcom/android/internal/compat/CompatibilityChangeInfo;
    .registers 3

    .line 352
    invoke-virtual {p0}, Lcom/android/server/compat/PlatformCompat;->listAllChanges()[Lcom/android/internal/compat/CompatibilityChangeInfo;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/compat/PlatformCompat$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/compat/PlatformCompat$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/compat/PlatformCompat;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/compat/PlatformCompat$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/compat/PlatformCompat$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/compat/CompatibilityChangeInfo;

    return-object v0
.end method

.method public lookupChangeId(Ljava/lang/String;)J
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 381
    iget-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {v0, p1}, Lcom/android/server/compat/CompatConfig;->lookupChangeId(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public putAllOverridesOnReleaseBuilds(Lcom/android/internal/compat/CompatibilityOverridesByPackageConfig;)V
    .registers 5
    .param p1, "overridesByPackage"    # Lcom/android/internal/compat/CompatibilityOverridesByPackageConfig;

    .line 257
    invoke-direct {p0}, Lcom/android/server/compat/PlatformCompat;->checkCompatChangeOverrideOverridablePermission()V

    .line 259
    iget-object v0, p1, Lcom/android/internal/compat/CompatibilityOverridesByPackageConfig;->packageNameToOverrides:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/compat/CompatibilityOverrideConfig;

    .line 260
    .local v1, "overrides":Lcom/android/internal/compat/CompatibilityOverrideConfig;
    iget-object v2, v1, Lcom/android/internal/compat/CompatibilityOverrideConfig;->overrides:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/compat/PlatformCompat;->checkAllCompatOverridesAreOverridable(Ljava/util/Collection;)V

    .line 261
    .end local v1    # "overrides":Lcom/android/internal/compat/CompatibilityOverrideConfig;
    goto :goto_d

    .line 262
    :cond_23
    iget-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/compat/CompatConfig;->addAllPackageOverrides(Lcom/android/internal/compat/CompatibilityOverridesByPackageConfig;Z)V

    .line 263
    return-void
.end method

.method public putOverridesOnReleaseBuilds(Lcom/android/internal/compat/CompatibilityOverrideConfig;Ljava/lang/String;)V
    .registers 5
    .param p1, "overrides"    # Lcom/android/internal/compat/CompatibilityOverrideConfig;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 268
    invoke-direct {p0}, Lcom/android/server/compat/PlatformCompat;->checkCompatChangeOverrideOverridablePermission()V

    .line 269
    iget-object v0, p1, Lcom/android/internal/compat/CompatibilityOverrideConfig;->overrides:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/compat/PlatformCompat;->checkAllCompatOverridesAreOverridable(Ljava/util/Collection;)V

    .line 270
    iget-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/compat/CompatConfig;->addPackageOverrides(Lcom/android/internal/compat/CompatibilityOverrideConfig;Ljava/lang/String;Z)V

    .line 271
    return-void
.end method

.method public registerContentObserver()V
    .registers 2

    .line 568
    iget-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {v0}, Lcom/android/server/compat/CompatConfig;->registerContentObserver()V

    .line 569
    return-void
.end method

.method public registerListener(JLcom/android/server/compat/CompatChange$ChangeListener;)Z
    .registers 5
    .param p1, "changeId"    # J
    .param p3, "listener"    # Lcom/android/server/compat/CompatChange$ChangeListener;

    .line 528
    iget-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/compat/CompatConfig;->registerListener(JLcom/android/server/compat/CompatChange$ChangeListener;)Z

    move-result v0

    return v0
.end method

.method public registerPackageReceiver(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 537
    new-instance v0, Lcom/android/server/compat/PlatformCompat$1;

    invoke-direct {v0, p0}, Lcom/android/server/compat/PlatformCompat$1;-><init>(Lcom/android/server/compat/PlatformCompat;)V

    .line 554
    .local v0, "receiver":Landroid/content/BroadcastReceiver;
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 555
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 556
    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 557
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 558
    const-string/jumbo v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 559
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2, v2}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 561
    return-void
.end method

.method public removeAllOverridesOnReleaseBuilds(Lcom/android/internal/compat/CompatibilityOverridesToRemoveByPackageConfig;)V
    .registers 5
    .param p1, "overridesToRemoveByPackage"    # Lcom/android/internal/compat/CompatibilityOverridesToRemoveByPackageConfig;

    .line 321
    invoke-direct {p0}, Lcom/android/server/compat/PlatformCompat;->checkCompatChangeOverrideOverridablePermission()V

    .line 323
    iget-object v0, p1, Lcom/android/internal/compat/CompatibilityOverridesToRemoveByPackageConfig;->packageNameToOverridesToRemove:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;

    .line 324
    .local v1, "overridesToRemove":Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;
    iget-object v2, v1, Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;->changeIds:Ljava/util/Set;

    invoke-direct {p0, v2}, Lcom/android/server/compat/PlatformCompat;->checkAllCompatOverridesAreOverridable(Ljava/util/Collection;)V

    .line 325
    .end local v1    # "overridesToRemove":Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;
    goto :goto_d

    .line 326
    :cond_1f
    iget-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {v0, p1}, Lcom/android/server/compat/CompatConfig;->removeAllPackageOverrides(Lcom/android/internal/compat/CompatibilityOverridesToRemoveByPackageConfig;)V

    .line 327
    return-void
.end method

.method public removeOverridesOnReleaseBuilds(Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;Ljava/lang/String;)V
    .registers 4
    .param p1, "overridesToRemove"    # Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 333
    invoke-direct {p0}, Lcom/android/server/compat/PlatformCompat;->checkCompatChangeOverrideOverridablePermission()V

    .line 334
    iget-object v0, p1, Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;->changeIds:Ljava/util/Set;

    invoke-direct {p0, v0}, Lcom/android/server/compat/PlatformCompat;->checkAllCompatOverridesAreOverridable(Ljava/util/Collection;)V

    .line 335
    iget-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/compat/CompatConfig;->removePackageOverrides(Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;Ljava/lang/String;)V

    .line 336
    return-void
.end method

.method public reportChange(JLandroid/content/pm/ApplicationInfo;)V
    .registers 6
    .param p1, "changeId"    # J
    .param p3, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 99
    invoke-direct {p0}, Lcom/android/server/compat/PlatformCompat;->checkCompatChangeLogPermission()V

    .line 100
    iget v0, p3, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v1, 0x3

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/compat/PlatformCompat;->reportChangeInternal(JII)V

    .line 101
    return-void
.end method

.method public reportChangeByPackageName(JLjava/lang/String;I)V
    .registers 8
    .param p1, "changeId"    # J
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .line 106
    invoke-direct {p0}, Lcom/android/server/compat/PlatformCompat;->checkCompatChangeLogPermission()V

    .line 107
    invoke-direct {p0, p3, p4}, Lcom/android/server/compat/PlatformCompat;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 108
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_f

    .line 109
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v2, 0x3

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/server/compat/PlatformCompat;->reportChangeInternal(JII)V

    .line 111
    :cond_f
    return-void
.end method

.method public reportChangeByUid(JI)V
    .registers 5
    .param p1, "changeId"    # J
    .param p3, "uid"    # I

    .line 115
    invoke-direct {p0}, Lcom/android/server/compat/PlatformCompat;->checkCompatChangeLogPermission()V

    .line 116
    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/compat/PlatformCompat;->reportChangeInternal(JII)V

    .line 117
    return-void
.end method

.method public resetReporting(Landroid/content/pm/ApplicationInfo;)V
    .registers 4
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 406
    iget-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mChangeReporter:Lcom/android/internal/compat/ChangeReporter;

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1}, Lcom/android/internal/compat/ChangeReporter;->resetReportedChanges(I)V

    .line 407
    return-void
.end method

.method public setOverrides(Lcom/android/internal/compat/CompatibilityChangeConfig;Ljava/lang/String;)V
    .registers 10
    .param p1, "overrides"    # Lcom/android/internal/compat/CompatibilityChangeConfig;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 203
    invoke-direct {p0}, Lcom/android/server/compat/PlatformCompat;->checkCompatChangeOverridePermission()V

    .line 204
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 205
    .local v0, "overridesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Landroid/app/compat/PackageOverride;>;"
    invoke-virtual {p1}, Lcom/android/internal/compat/CompatibilityChangeConfig;->enabledChanges()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 206
    .local v2, "change":J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-instance v5, Landroid/app/compat/PackageOverride$Builder;

    invoke-direct {v5}, Landroid/app/compat/PackageOverride$Builder;-><init>()V

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/compat/PackageOverride$Builder;->setEnabled(Z)Landroid/app/compat/PackageOverride$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/compat/PackageOverride$Builder;->build()Landroid/app/compat/PackageOverride;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    .end local v2    # "change":J
    goto :goto_10

    .line 208
    :cond_36
    invoke-virtual {p1}, Lcom/android/internal/compat/CompatibilityChangeConfig;->disabledChanges()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_64

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 209
    .local v4, "change":J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v6, Landroid/app/compat/PackageOverride$Builder;

    invoke-direct {v6}, Landroid/app/compat/PackageOverride$Builder;-><init>()V

    invoke-virtual {v6, v3}, Landroid/app/compat/PackageOverride$Builder;->setEnabled(Z)Landroid/app/compat/PackageOverride$Builder;

    move-result-object v3

    .line 210
    invoke-virtual {v3}, Landroid/app/compat/PackageOverride$Builder;->build()Landroid/app/compat/PackageOverride;

    move-result-object v3

    .line 209
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    .end local v4    # "change":J
    goto :goto_3e

    .line 212
    :cond_64
    iget-object v1, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    new-instance v2, Lcom/android/internal/compat/CompatibilityOverrideConfig;

    invoke-direct {v2, v0}, Lcom/android/internal/compat/CompatibilityOverrideConfig;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v2, p2, v3}, Lcom/android/server/compat/CompatConfig;->addPackageOverrides(Lcom/android/internal/compat/CompatibilityOverrideConfig;Ljava/lang/String;Z)V

    .line 214
    invoke-direct {p0, p2}, Lcom/android/server/compat/PlatformCompat;->killPackage(Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method public setOverridesForDownscale(Lcom/android/internal/compat/CompatibilityChangeConfig;Ljava/lang/String;)V
    .registers 10
    .param p1, "overrides"    # Lcom/android/internal/compat/CompatibilityChangeConfig;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 220
    invoke-direct {p0}, Lcom/android/server/compat/PlatformCompat;->checkCompatChangeOverridePermission()V

    .line 221
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 222
    .local v0, "overridesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Landroid/app/compat/PackageOverride;>;"
    invoke-virtual {p1}, Lcom/android/internal/compat/CompatibilityChangeConfig;->enabledChanges()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 223
    .local v2, "change":J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-instance v5, Landroid/app/compat/PackageOverride$Builder;

    invoke-direct {v5}, Landroid/app/compat/PackageOverride$Builder;-><init>()V

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/compat/PackageOverride$Builder;->setEnabled(Z)Landroid/app/compat/PackageOverride$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/compat/PackageOverride$Builder;->build()Landroid/app/compat/PackageOverride;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .end local v2    # "change":J
    goto :goto_10

    .line 225
    :cond_36
    invoke-virtual {p1}, Lcom/android/internal/compat/CompatibilityChangeConfig;->disabledChanges()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_64

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 226
    .local v4, "change":J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v6, Landroid/app/compat/PackageOverride$Builder;

    invoke-direct {v6}, Landroid/app/compat/PackageOverride$Builder;-><init>()V

    invoke-virtual {v6, v3}, Landroid/app/compat/PackageOverride$Builder;->setEnabled(Z)Landroid/app/compat/PackageOverride$Builder;

    move-result-object v3

    .line 227
    invoke-virtual {v3}, Landroid/app/compat/PackageOverride$Builder;->build()Landroid/app/compat/PackageOverride;

    move-result-object v3

    .line 226
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    .end local v4    # "change":J
    goto :goto_3e

    .line 229
    :cond_64
    iget-object v1, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    new-instance v2, Lcom/android/internal/compat/CompatibilityOverrideConfig;

    invoke-direct {v2, v0}, Lcom/android/internal/compat/CompatibilityOverrideConfig;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v2, p2, v3}, Lcom/android/server/compat/CompatConfig;->addPackageOverrides(Lcom/android/internal/compat/CompatibilityOverrideConfig;Ljava/lang/String;Z)V

    .line 232
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    .line 233
    .local v1, "amInternal":Landroid/app/ActivityManagerInternal;
    if-eqz v1, :cond_83

    .line 234
    iget-object v2, p0, Lcom/android/server/compat/PlatformCompat;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    const-string v3, "Platform overrides for Downscale"

    invoke-virtual {v1, p2, v2, v3}, Landroid/app/ActivityManagerInternal;->forceStopPackage(Ljava/lang/String;ILjava/lang/String;)V

    .line 236
    :cond_83
    return-void
.end method

.method public setOverridesForTest(Lcom/android/internal/compat/CompatibilityChangeConfig;Ljava/lang/String;)V
    .registers 10
    .param p1, "overrides"    # Lcom/android/internal/compat/CompatibilityChangeConfig;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 241
    invoke-direct {p0}, Lcom/android/server/compat/PlatformCompat;->checkCompatChangeOverridePermission()V

    .line 242
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 243
    .local v0, "overridesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Landroid/app/compat/PackageOverride;>;"
    invoke-virtual {p1}, Lcom/android/internal/compat/CompatibilityChangeConfig;->enabledChanges()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 244
    .local v2, "change":J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-instance v5, Landroid/app/compat/PackageOverride$Builder;

    invoke-direct {v5}, Landroid/app/compat/PackageOverride$Builder;-><init>()V

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/compat/PackageOverride$Builder;->setEnabled(Z)Landroid/app/compat/PackageOverride$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/compat/PackageOverride$Builder;->build()Landroid/app/compat/PackageOverride;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    .end local v2    # "change":J
    goto :goto_10

    .line 246
    :cond_36
    invoke-virtual {p1}, Lcom/android/internal/compat/CompatibilityChangeConfig;->disabledChanges()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_64

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 247
    .local v4, "change":J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v6, Landroid/app/compat/PackageOverride$Builder;

    invoke-direct {v6}, Landroid/app/compat/PackageOverride$Builder;-><init>()V

    invoke-virtual {v6, v3}, Landroid/app/compat/PackageOverride$Builder;->setEnabled(Z)Landroid/app/compat/PackageOverride$Builder;

    move-result-object v3

    .line 248
    invoke-virtual {v3}, Landroid/app/compat/PackageOverride$Builder;->build()Landroid/app/compat/PackageOverride;

    move-result-object v3

    .line 247
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    .end local v4    # "change":J
    goto :goto_3e

    .line 250
    :cond_64
    iget-object v1, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    new-instance v2, Lcom/android/internal/compat/CompatibilityOverrideConfig;

    invoke-direct {v2, v0}, Lcom/android/internal/compat/CompatibilityOverrideConfig;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v2, p2, v3}, Lcom/android/server/compat/CompatConfig;->addPackageOverrides(Lcom/android/internal/compat/CompatibilityOverrideConfig;Ljava/lang/String;Z)V

    .line 252
    return-void
.end method
