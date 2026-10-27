.class public Lcom/android/server/am/ComponentAliasResolver;
.super Ljava/lang/Object;
.source "ComponentAliasResolver.java"


# instance fields
.field public final mAm:Lcom/android/server/am/ActivityManagerService;

.field public final mContext:Landroid/content/Context;

.field public mEnabled:Z

.field public mEnabledByDeviceConfig:Z

.field public final mFromTo:Landroid/util/ArrayMap;

.field public final mLock:Ljava/lang/Object;

.field public mOverrideString:Ljava/lang/String;

.field public final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field public mPlatformCompat:Lcom/android/server/compat/PlatformCompat;


# direct methods
.method public static synthetic $r8$lambda$7HSIXW-bnHBdHaW1w1BvxdFH7hM(Lcom/android/server/am/ComponentAliasResolver;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/ComponentAliasResolver;->lambda$update$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$jzDSoplopK0y2WasSsxZRtHLY-0(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;
    .registers 1

    .line 463
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$w_UDsI7lyPAfPRG4TDZeP8takq8(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/ComponentName;
    .registers 13

    .line 433
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    int-to-long v4, p2

    move-object v2, p0

    move-object v3, p1

    move v6, p3

    move v7, p4

    .line 435
    invoke-virtual/range {v1 .. v7}, Landroid/content/pm/PackageManagerInternal;->resolveService(Landroid/content/Intent;Ljava/lang/String;JII)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_18

    .line 437
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    goto :goto_19

    :cond_18
    move-object p0, p1

    :goto_19
    if-nez p0, :cond_1c

    return-object p1

    .line 441
    :cond_1c
    new-instance p1, Landroid/content/ComponentName;

    iget-object p2, p0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {p1, p2, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public static bridge synthetic -$$Nest$mrefresh(Lcom/android/server/am/ComponentAliasResolver;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/ComponentAliasResolver;->refresh()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 3

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ComponentAliasResolver;->mLock:Ljava/lang/Object;

    .line 82
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ComponentAliasResolver;->mFromTo:Landroid/util/ArrayMap;

    .line 118
    new-instance v0, Lcom/android/server/am/ComponentAliasResolver$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/ComponentAliasResolver$1;-><init>(Lcom/android/server/am/ComponentAliasResolver;)V

    iput-object v0, p0, Lcom/android/server/am/ComponentAliasResolver;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 104
    iput-object p1, p0, Lcom/android/server/am/ComponentAliasResolver;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 105
    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/am/ComponentAliasResolver;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 7

    .line 347
    iget-object v0, p0, Lcom/android/server/am/ComponentAliasResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 348
    :try_start_3
    const-string v1, "ACTIVITY MANAGER COMPONENT-ALIAS (dumpsys activity component-alias)"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 349
    const-string v1, "  Enabled: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/am/ComponentAliasResolver;->mEnabled:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 351
    const-string v1, "  Aliases:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 352
    :goto_18
    iget-object v2, p0, Lcom/android/server/am/ComponentAliasResolver;->mFromTo:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_50

    .line 353
    iget-object v2, p0, Lcom/android/server/am/ComponentAliasResolver;->mFromTo:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 354
    iget-object v3, p0, Lcom/android/server/am/ComponentAliasResolver;->mFromTo:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 355
    const-string v4, "    "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 356
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 357
    const-string v2, " -> "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 358
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 359
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :catchall_4e
    move-exception p0

    goto :goto_55

    .line 361
    :cond_50
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 362
    monitor-exit v0

    return-void

    :goto_55
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_3 .. :try_end_56} :catchall_4e

    throw p0
.end method

.method public final synthetic lambda$update$0()V
    .registers 1

    .line 167
    iget-object p0, p0, Lcom/android/server/am/ComponentAliasResolver;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    return-void
.end method

.method public onSystemReady(ZLjava/lang/String;)V
    .registers 5

    .line 139
    iget-object v0, p0, Lcom/android/server/am/ComponentAliasResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 140
    :try_start_3
    const-string/jumbo v1, "platform_compat"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/compat/PlatformCompat;

    iput-object v1, p0, Lcom/android/server/am/ComponentAliasResolver;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    .line 142
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_13

    .line 144
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ComponentAliasResolver;->update(ZLjava/lang/String;)V

    return-void

    :catchall_13
    move-exception p0

    .line 142
    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public final refresh()V
    .registers 4

    .line 184
    iget-object v0, p0, Lcom/android/server/am/ComponentAliasResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 185
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/am/ComponentAliasResolver;->mEnabledByDeviceConfig:Z

    iget-object v2, p0, Lcom/android/server/am/ComponentAliasResolver;->mOverrideString:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/ComponentAliasResolver;->update(ZLjava/lang/String;)V

    .line 186
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public resolveComponentAlias(Ljava/util/function/Supplier;)Lcom/android/server/am/ComponentAliasResolver$Resolution;
    .registers 6

    .line 401
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 403
    :try_start_4
    iget-object v2, p0, Lcom/android/server/am/ComponentAliasResolver;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_32

    .line 404
    :try_start_7
    iget-boolean v3, p0, Lcom/android/server/am/ComponentAliasResolver;->mEnabled:Z

    if-nez v3, :cond_18

    .line 405
    new-instance p0, Lcom/android/server/am/ComponentAliasResolver$Resolution;

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Lcom/android/server/am/ComponentAliasResolver$Resolution;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v2
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_16

    .line 424
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_16
    move-exception p0

    goto :goto_30

    .line 408
    :cond_18
    :try_start_18
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 409
    iget-object p0, p0, Lcom/android/server/am/ComponentAliasResolver;->mFromTo:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ComponentName;

    .line 421
    new-instance v3, Lcom/android/server/am/ComponentAliasResolver$Resolution;

    invoke-direct {v3, p1, p0}, Lcom/android/server/am/ComponentAliasResolver$Resolution;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_18 .. :try_end_2c} :catchall_16

    .line 424
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3

    .line 422
    :goto_30
    :try_start_30
    monitor-exit v2
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_16

    :try_start_31
    throw p0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_32

    :catchall_32
    move-exception p0

    .line 424
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 425
    throw p0
.end method

.method public resolveReceiver(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/String;JIII)Lcom/android/server/am/ComponentAliasResolver$Resolution;
    .registers 23

    move-object/from16 v0, p2

    .line 462
    new-instance v1, Lcom/android/server/am/ComponentAliasResolver$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/server/am/ComponentAliasResolver$$ExternalSyntheticLambda0;-><init>(Landroid/content/pm/ResolveInfo;)V

    invoke-virtual {p0, v1}, Lcom/android/server/am/ComponentAliasResolver;->resolveComponentAlias(Ljava/util/function/Supplier;)Lcom/android/server/am/ComponentAliasResolver$Resolution;

    move-result-object p0

    .line 464
    invoke-virtual {p0}, Lcom/android/server/am/ComponentAliasResolver$Resolution;->getTarget()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    const/4 v2, 0x0

    if-nez v1, :cond_1a

    .line 466
    new-instance p0, Lcom/android/server/am/ComponentAliasResolver$Resolution;

    invoke-direct {p0, v0, v2}, Lcom/android/server/am/ComponentAliasResolver$Resolution;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 471
    :cond_1a
    const-class v3, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/content/pm/PackageManagerInternal;

    .line 479
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 480
    invoke-virtual {v5, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 481
    invoke-virtual {p0}, Lcom/android/server/am/ComponentAliasResolver$Resolution;->getTarget()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ComponentName;

    invoke-virtual {v5, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object/from16 v6, p3

    move-wide/from16 v7, p4

    move/from16 v11, p6

    move/from16 v9, p7

    move/from16 v10, p8

    .line 483
    invoke-virtual/range {v4 .. v13}, Landroid/content/pm/PackageManagerInternal;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;JIIIZ[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_5a

    .line 486
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_4d

    goto :goto_5a

    .line 491
    :cond_4d
    new-instance v1, Lcom/android/server/am/ComponentAliasResolver$Resolution;

    const/4 v2, 0x0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    invoke-direct {v1, v0, p0}, Lcom/android/server/am/ComponentAliasResolver$Resolution;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 488
    :cond_5a
    :goto_5a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Alias target "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not found"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ComponentAliasResolver"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public resolveService(Landroid/content/Intent;Ljava/lang/String;III)Lcom/android/server/am/ComponentAliasResolver$Resolution;
    .registers 12

    .line 432
    new-instance v0, Lcom/android/server/am/ComponentAliasResolver$$ExternalSyntheticLambda1;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ComponentAliasResolver$$ExternalSyntheticLambda1;-><init>(Landroid/content/Intent;Ljava/lang/String;III)V

    invoke-virtual {p0, v0}, Lcom/android/server/am/ComponentAliasResolver;->resolveComponentAlias(Ljava/util/function/Supplier;)Lcom/android/server/am/ComponentAliasResolver$Resolution;

    move-result-object p0

    if-eqz p0, :cond_2b

    .line 447
    invoke-virtual {p0}, Lcom/android/server/am/ComponentAliasResolver$Resolution;->isAlias()Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 449
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setOriginalIntent(Landroid/content/Intent;)V

    const/4 p1, 0x0

    .line 451
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 452
    invoke-virtual {p0}, Lcom/android/server/am/ComponentAliasResolver$Resolution;->getTarget()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_2b
    return-object p0
.end method

.method public update(ZLjava/lang/String;)V
    .registers 6

    .line 151
    iget-object v0, p0, Lcom/android/server/am/ComponentAliasResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 152
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/ComponentAliasResolver;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    if-nez v1, :cond_b

    .line 153
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    goto :goto_30

    .line 157
    :cond_b
    iget-boolean v1, p0, Lcom/android/server/am/ComponentAliasResolver;->mEnabled:Z

    if-eqz v1, :cond_22

    .line 158
    const-string v1, "ComponentAliasResolver"

    const-string v2, "Disabling component aliases..."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/am/ComponentAliasResolver$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/android/server/am/ComponentAliasResolver$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/ComponentAliasResolver;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_22
    const/4 v1, 0x0

    .line 171
    iput-boolean v1, p0, Lcom/android/server/am/ComponentAliasResolver;->mEnabled:Z

    .line 172
    iput-boolean p1, p0, Lcom/android/server/am/ComponentAliasResolver;->mEnabledByDeviceConfig:Z

    .line 173
    iput-object p2, p0, Lcom/android/server/am/ComponentAliasResolver;->mOverrideString:Ljava/lang/String;

    .line 178
    iget-object p0, p0, Lcom/android/server/am/ComponentAliasResolver;->mFromTo:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    .line 180
    monitor-exit v0

    return-void

    :goto_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_9

    throw p0
.end method
