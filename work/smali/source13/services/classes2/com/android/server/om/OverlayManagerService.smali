.class public final Lcom/android/server/om/OverlayManagerService;
.super Lcom/android/server/SystemService;
.source "OverlayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;,
        Lcom/android/server/om/OverlayManagerService$UserReceiver;,
        Lcom/android/server/om/OverlayManagerService$PackageReceiver;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field private static final DEFAULT_OVERLAYS_PROP:Ljava/lang/String; = "ro.boot.vendor.overlay.theme"

.field static final TAG:Ljava/lang/String; = "OverlayManager"


# instance fields
.field private final mActorEnforcer:Lcom/android/server/om/OverlayActorEnforcer;

.field private final mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

.field private final mLock:Ljava/lang/Object;

.field private final mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

.field private final mService:Landroid/os/IBinder;

.field private final mSettings:Lcom/android/server/om/OverlayManagerSettings;

.field private final mSettingsFile:Landroid/util/AtomicFile;

.field private final mUserManager:Lcom/android/server/pm/UserManagerService;


# direct methods
.method static bridge synthetic -$$Nest$fgetmActorEnforcer(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayActorEnforcer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService;->mActorEnforcer:Lcom/android/server/om/OverlayActorEnforcer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmImpl(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;
    .registers 1

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPackageManager(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;
    .registers 1

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserManager(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/pm/UserManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mrestoreSettings(Lcom/android/server/om/OverlayManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerService;->restoreSettings()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdatePackageManagerLocked(Lcom/android/server/om/OverlayManagerService;Ljava/util/Set;)Landroid/util/SparseArray;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerService;->updatePackageManagerLocked(Ljava/util/Set;)Landroid/util/SparseArray;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateTargetPackagesLocked(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/PackageAndUser;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerService;->updateTargetPackagesLocked(Lcom/android/server/om/PackageAndUser;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateTargetPackagesLocked(Lcom/android/server/om/OverlayManagerService;Ljava/util/Set;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerService;->updateTargetPackagesLocked(Ljava/util/Set;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 19
    .param p1, "context"    # Landroid/content/Context;

    .line 257
    move-object/from16 v1, p0

    invoke-direct/range {p0 .. p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 242
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    .line 574
    new-instance v0, Lcom/android/server/om/OverlayManagerService$1;

    invoke-direct {v0, v1}, Lcom/android/server/om/OverlayManagerService$1;-><init>(Lcom/android/server/om/OverlayManagerService;)V

    iput-object v0, v1, Lcom/android/server/om/OverlayManagerService;->mService:Landroid/os/IBinder;

    .line 259
    const-wide/32 v2, 0x4000000

    :try_start_16
    const-string v4, "OMS#OverlayManagerService"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 260
    new-instance v4, Landroid/util/AtomicFile;

    new-instance v5, Ljava/io/File;

    .line 261
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v6

    const-string/jumbo v7, "overlays.xml"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v6, "overlays"

    invoke-direct {v4, v5, v6}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, v1, Lcom/android/server/om/OverlayManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    .line 262
    new-instance v4, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;
    :try_end_33
    .catchall {:try_start_16 .. :try_end_33} :catchall_f7

    move-object/from16 v5, p1

    :try_start_35
    invoke-direct {v4, v5}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;-><init>(Landroid/content/Context;)V

    iput-object v4, v1, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    .line 263
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/om/OverlayManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 264
    new-instance v9, Lcom/android/server/om/IdmapManager;

    invoke-static {}, Lcom/android/server/om/IdmapDaemon;->getInstance()Lcom/android/server/om/IdmapDaemon;

    move-result-object v6

    invoke-direct {v9, v6, v4}, Lcom/android/server/om/IdmapManager;-><init>(Lcom/android/server/om/IdmapDaemon;Lcom/android/server/om/PackageManagerHelper;)V

    .line 265
    .local v9, "im":Lcom/android/server/om/IdmapManager;
    new-instance v6, Lcom/android/server/om/OverlayManagerSettings;

    invoke-direct {v6}, Lcom/android/server/om/OverlayManagerSettings;-><init>()V

    iput-object v6, v1, Lcom/android/server/om/OverlayManagerService;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 266
    new-instance v13, Lcom/android/server/om/OverlayManagerServiceImpl;

    .line 267
    invoke-static {}, Lcom/android/internal/content/om/OverlayConfig;->getSystemInstance()Lcom/android/internal/content/om/OverlayConfig;

    move-result-object v11

    invoke-static {}, Lcom/android/server/om/OverlayManagerService;->getDefaultOverlayPackages()[Ljava/lang/String;

    move-result-object v12

    move-object v7, v13

    move-object v8, v4

    move-object v10, v6

    invoke-direct/range {v7 .. v12}, Lcom/android/server/om/OverlayManagerServiceImpl;-><init>(Lcom/android/server/om/PackageManagerHelper;Lcom/android/server/om/IdmapManager;Lcom/android/server/om/OverlayManagerSettings;Lcom/android/internal/content/om/OverlayConfig;[Ljava/lang/String;)V

    iput-object v13, v1, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    .line 268
    new-instance v7, Lcom/android/server/om/OverlayActorEnforcer;

    invoke-direct {v7, v4}, Lcom/android/server/om/OverlayActorEnforcer;-><init>(Lcom/android/server/om/PackageManagerHelper;)V

    iput-object v7, v1, Lcom/android/server/om/OverlayManagerService;->mActorEnforcer:Lcom/android/server/om/OverlayActorEnforcer;

    .line 270
    new-instance v4, Landroid/os/HandlerThread;

    const-string v7, "OverlayManager"

    invoke-direct {v4, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 271
    .local v4, "packageReceiverThread":Landroid/os/HandlerThread;
    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    .line 273
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 274
    .local v7, "packageFilter":Landroid/content/IntentFilter;
    const-string v8, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v7, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 275
    const-string v8, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v7, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 276
    const-string v8, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v7, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 277
    const-string/jumbo v8, "package"

    invoke-virtual {v7, v8}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 278
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/om/OverlayManagerService;->getContext()Landroid/content/Context;

    move-result-object v10

    new-instance v11, Lcom/android/server/om/OverlayManagerService$PackageReceiver;

    const/4 v8, 0x0

    invoke-direct {v11, v1, v8}, Lcom/android/server/om/OverlayManagerService$PackageReceiver;-><init>(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/OverlayManagerService$PackageReceiver-IA;)V

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v14, 0x0

    .line 279
    invoke-virtual {v4}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v15

    .line 278
    move-object v13, v7

    invoke-virtual/range {v10 .. v15}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 281
    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    .line 282
    .local v10, "userFilter":Landroid/content/IntentFilter;
    const-string v11, "android.intent.action.USER_ADDED"

    invoke-virtual {v10, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 283
    const-string v11, "android.intent.action.USER_REMOVED"

    invoke-virtual {v10, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 284
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/om/OverlayManagerService;->getContext()Landroid/content/Context;

    move-result-object v11

    new-instance v12, Lcom/android/server/om/OverlayManagerService$UserReceiver;

    invoke-direct {v12, v1, v8}, Lcom/android/server/om/OverlayManagerService$UserReceiver;-><init>(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/OverlayManagerService$UserReceiver-IA;)V

    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v14, v10

    invoke-virtual/range {v11 .. v16}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 287
    invoke-direct/range {p0 .. p0}, Lcom/android/server/om/OverlayManagerService;->restoreSettings()V

    .line 290
    nop

    .line 291
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/om/OverlayManagerService;->getContext()Landroid/content/Context;

    move-result-object v8

    const v11, 0x104002a

    invoke-virtual {v8, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 290
    invoke-static {v8}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 292
    .local v8, "shellPkgName":Ljava/lang/String;
    new-instance v11, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda4;

    invoke-direct {v11, v8}, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v11}, Lcom/android/server/om/OverlayManagerSettings;->removeIf(Ljava/util/function/Predicate;)Ljava/util/List;

    .line 295
    invoke-direct/range {p0 .. p0}, Lcom/android/server/om/OverlayManagerService;->initIfNeeded()V

    .line 296
    const/4 v6, 0x0

    invoke-direct {v1, v6}, Lcom/android/server/om/OverlayManagerService;->onSwitchUser(I)V

    .line 298
    const-string/jumbo v6, "overlay"

    invoke-virtual {v1, v6, v0}, Lcom/android/server/om/OverlayManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 299
    const-class v0, Lcom/android/server/om/OverlayManagerService;

    invoke-virtual {v1, v0, v1}, Lcom/android/server/om/OverlayManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V
    :try_end_f0
    .catchall {:try_start_35 .. :try_end_f0} :catchall_f5

    .line 301
    .end local v4    # "packageReceiverThread":Landroid/os/HandlerThread;
    .end local v7    # "packageFilter":Landroid/content/IntentFilter;
    .end local v8    # "shellPkgName":Ljava/lang/String;
    .end local v9    # "im":Lcom/android/server/om/IdmapManager;
    .end local v10    # "userFilter":Landroid/content/IntentFilter;
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 302
    nop

    .line 303
    return-void

    .line 301
    :catchall_f5
    move-exception v0

    goto :goto_fa

    :catchall_f7
    move-exception v0

    move-object/from16 v5, p1

    :goto_fa
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 302
    throw v0
.end method

.method private static broadcastActionOverlayChanged(Ljava/util/Set;I)V
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 1467
    .local p0, "targetPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {p0, v0}, Lcom/android/internal/util/CollectionUtils;->forEach(Ljava/util/Set;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    .line 1478
    return-void
.end method

.method private static getDefaultOverlayPackages()[Ljava/lang/String;
    .registers 7

    .line 346
    const-string/jumbo v0, "ro.boot.vendor.overlay.theme"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 347
    .local v0, "str":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 348
    sget-object v1, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    return-object v1

    .line 351
    :cond_10
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 352
    .local v1, "defaultPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1d
    if-ge v4, v3, :cond_2d

    aget-object v5, v2, v4

    .line 353
    .local v5, "packageName":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2a

    .line 354
    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 352
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_2a
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 357
    :cond_2d
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2
.end method

.method private static groupTargetsByUserId(Ljava/util/Set;)Landroid/util/SparseArray;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/server/om/PackageAndUser;",
            ">;)",
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1450
    .local p0, "targetsAndUsers":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 1451
    .local v0, "userTargets":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    new-instance v1, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0}, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda3;-><init>(Landroid/util/SparseArray;)V

    invoke-static {p0, v1}, Lcom/android/internal/util/CollectionUtils;->forEach(Ljava/util/Set;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    .line 1459
    return-object v0
.end method

.method private initIfNeeded()V
    .registers 9

    .line 311
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 312
    .local v0, "um":Landroid/os/UserManager;
    invoke-virtual {v0}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v1

    .line 313
    .local v1, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 314
    :try_start_13
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 315
    .local v3, "userCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_18
    if-ge v4, v3, :cond_3e

    .line 316
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 317
    .local v5, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->supportsSwitchTo()Z

    move-result v6

    if-nez v6, :cond_3b

    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    if-eqz v6, :cond_3b

    .line 321
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    iget v7, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v7}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateOverlaysForUser(I)Landroid/util/ArraySet;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/om/OverlayManagerService;->updatePackageManagerLocked(Ljava/util/Set;)Landroid/util/SparseArray;

    .line 315
    .end local v5    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_3b
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 324
    .end local v3    # "userCount":I
    .end local v4    # "i":I
    :cond_3e
    monitor-exit v2

    .line 325
    return-void

    .line 324
    :catchall_40
    move-exception v3

    monitor-exit v2
    :try_end_42
    .catchall {:try_start_13 .. :try_end_42} :catchall_40

    throw v3
.end method

.method static synthetic lambda$broadcastActionOverlayChanged$4(ILjava/lang/String;)V
    .registers 20
    .param p0, "userId"    # I
    .param p1, "target"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1468
    new-instance v0, Landroid/content/Intent;

    .line 1469
    const-string/jumbo v1, "package"

    const/4 v2, 0x0

    move-object/from16 v3, p1

    invoke-static {v1, v3, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.OVERLAY_CHANGED"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v1, v0

    .line 1470
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v0, 0x4000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1472
    :try_start_17
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v6, v1

    move/from16 v17, p0

    invoke-interface/range {v4 .. v17}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_2d} :catch_2e

    .line 1476
    goto :goto_36

    .line 1474
    :catch_2e
    move-exception v0

    .line 1475
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "OverlayManager"

    const-string v4, "broadcastActionOverlayChanged remote exception"

    invoke-static {v2, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1477
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_36
    return-void
.end method

.method static synthetic lambda$groupTargetsByUserId$3(Landroid/util/SparseArray;Lcom/android/server/om/PackageAndUser;)V
    .registers 4
    .param p0, "userTargets"    # Landroid/util/SparseArray;
    .param p1, "target"    # Lcom/android/server/om/PackageAndUser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1452
    iget v0, p1, Lcom/android/server/om/PackageAndUser;->userId:I

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 1453
    .local v0, "targets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v0, :cond_15

    .line 1454
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v1

    .line 1455
    iget v1, p1, Lcom/android/server/om/PackageAndUser;->userId:I

    invoke-virtual {p0, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1457
    :cond_15
    iget-object v1, p1, Lcom/android/server/om/PackageAndUser;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1458
    return-void
.end method

.method static synthetic lambda$new$0(Ljava/lang/String;Landroid/content/om/OverlayInfo;)Z
    .registers 3
    .param p0, "shellPkgName"    # Ljava/lang/String;
    .param p1, "overlayInfo"    # Landroid/content/om/OverlayInfo;

    .line 292
    iget-boolean v0, p1, Landroid/content/om/OverlayInfo;->isFabricated:Z

    if-eqz v0, :cond_e

    iget-object v0, p1, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    .line 293
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 292
    :goto_f
    return v0
.end method

.method static synthetic lambda$updateTargetPackagesLocked$1(Ljava/lang/String;)Z
    .registers 2
    .param p0, "pkg"    # Ljava/lang/String;

    .line 1428
    const-string v0, "com.android.cts.permissionapp"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private onSwitchUser(I)V
    .registers 6
    .param p1, "newUserId"    # I

    .line 334
    const-wide/32 v0, 0x4000000

    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMS#onSwitchUser "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 337
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_2e

    .line 338
    :try_start_1c
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    invoke-virtual {v3, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateOverlaysForUser(I)Landroid/util/ArraySet;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/om/OverlayManagerService;->updateTargetPackagesLocked(Ljava/util/Set;)V

    .line 339
    monitor-exit v2
    :try_end_26
    .catchall {:try_start_1c .. :try_end_26} :catchall_2b

    .line 341
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 342
    nop

    .line 343
    return-void

    .line 339
    :catchall_2b
    move-exception v3

    :try_start_2c
    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService;
    .end local p1    # "newUserId":I
    :try_start_2d
    throw v3
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2e

    .line 341
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService;
    .restart local p1    # "newUserId":I
    :catchall_2e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 342
    throw v2
.end method

.method private persistSettingsLocked()V
    .registers 5

    .line 1568
    const/4 v0, 0x0

    .line 1570
    .local v0, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    move-object v0, v1

    .line 1571
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v1, v0}, Lcom/android/server/om/OverlayManagerSettings;->persist(Ljava/io/OutputStream;)V

    .line 1572
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v1, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_12} :catch_13
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_12} :catch_13

    .line 1576
    goto :goto_20

    .line 1573
    :catch_13
    move-exception v1

    .line 1574
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1575
    const-string v2, "OverlayManager"

    const-string v3, "failed to persist overlay state"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1577
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_20
    return-void
.end method

.method private restoreSettings()V
    .registers 12

    .line 1581
    const-wide/32 v0, 0x4000000

    :try_start_3
    const-string v2, "OMS#restoreSettings"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1582
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_8e

    .line 1583
    :try_start_b
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1c

    .line 1584
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_8b

    .line 1610
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1584
    return-void

    .line 1586
    :cond_1c
    :try_start_1c
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_22} :catch_7d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1c .. :try_end_22} :catch_7d
    .catchall {:try_start_1c .. :try_end_22} :catchall_8b

    .line 1587
    .local v3, "stream":Ljava/io/FileInputStream;
    :try_start_22
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v4, v3}, Lcom/android/server/om/OverlayManagerSettings;->restore(Ljava/io/InputStream;)V

    .line 1593
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v4

    .line 1594
    .local v4, "liveUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [I

    .line 1595
    .local v5, "liveUserIds":[I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_35
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_4e

    .line 1596
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    aput v7, v5, v6

    .line 1595
    add-int/lit8 v6, v6, 0x1

    goto :goto_35

    .line 1598
    .end local v6    # "i":I
    :cond_4e
    invoke-static {v5}, Ljava/util/Arrays;->sort([I)V

    .line 1600
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v6}, Lcom/android/server/om/OverlayManagerSettings;->getUsers()[I

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    :goto_59
    if-ge v8, v7, :cond_6b

    aget v9, v6, v8

    .line 1601
    .local v9, "userId":I
    invoke-static {v5, v9}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v10

    if-gez v10, :cond_68

    .line 1602
    iget-object v10, p0, Lcom/android/server/om/OverlayManagerService;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v10, v9}, Lcom/android/server/om/OverlayManagerSettings;->removeUser(I)Z
    :try_end_68
    .catchall {:try_start_22 .. :try_end_68} :catchall_71

    .line 1600
    .end local v9    # "userId":I
    :cond_68
    add-int/lit8 v8, v8, 0x1

    goto :goto_59

    .line 1605
    .end local v4    # "liveUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v5    # "liveUserIds":[I
    :cond_6b
    if-eqz v3, :cond_70

    :try_start_6d
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_7d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6d .. :try_end_70} :catch_7d
    .catchall {:try_start_6d .. :try_end_70} :catchall_8b

    .line 1607
    .end local v3    # "stream":Ljava/io/FileInputStream;
    :cond_70
    goto :goto_85

    .line 1586
    .restart local v3    # "stream":Ljava/io/FileInputStream;
    :catchall_71
    move-exception v4

    if-eqz v3, :cond_7c

    :try_start_74
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_77
    .catchall {:try_start_74 .. :try_end_77} :catchall_78

    goto :goto_7c

    :catchall_78
    move-exception v5

    :try_start_79
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService;
    :cond_7c
    :goto_7c
    throw v4
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7d} :catch_7d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_79 .. :try_end_7d} :catch_7d
    .catchall {:try_start_79 .. :try_end_7d} :catchall_8b

    .line 1605
    .end local v3    # "stream":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService;
    :catch_7d
    move-exception v3

    .line 1606
    .local v3, "e":Ljava/lang/Exception;
    :try_start_7e
    const-string v4, "OverlayManager"

    const-string v5, "failed to restore overlay state"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1608
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_85
    monitor-exit v2
    :try_end_86
    .catchall {:try_start_7e .. :try_end_86} :catchall_8b

    .line 1610
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1611
    nop

    .line 1612
    return-void

    .line 1608
    :catchall_8b
    move-exception v3

    :try_start_8c
    monitor-exit v2
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_8b

    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService;
    :try_start_8d
    throw v3
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_8e

    .line 1610
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService;
    :catchall_8e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1611
    throw v2
.end method

.method private updateActivityManager(Ljava/util/List;I)V
    .registers 7
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 1485
    .local p1, "targetPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 1487
    .local v0, "am":Landroid/app/IActivityManager;
    :try_start_4
    invoke-interface {v0, p1, p2}, Landroid/app/IActivityManager;->scheduleApplicationInfoChanged(Ljava/util/List;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 1490
    goto :goto_11

    .line 1488
    :catch_8
    move-exception v1

    .line 1489
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "OverlayManager"

    const-string/jumbo v3, "updateActivityManager remote exception"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1491
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_11
    return-void
.end method

.method private updatePackageManagerLocked(Ljava/util/Set;)Landroid/util/SparseArray;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/server/om/PackageAndUser;",
            ">;)",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1496
    .local p1, "targets":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    invoke-static {p1}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1497
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    return-object v0

    .line 1499
    :cond_c
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 1500
    .local v0, "affectedTargets":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-static {p1}, Lcom/android/server/om/OverlayManagerService;->groupTargetsByUserId(Ljava/util/Set;)Landroid/util/SparseArray;

    move-result-object v1

    .line 1501
    .local v1, "userTargets":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    .local v3, "n":I
    :goto_1a
    if-ge v2, v3, :cond_30

    .line 1502
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 1503
    .local v4, "userId":I
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-direct {p0, v5, v4}, Lcom/android/server/om/OverlayManagerService;->updatePackageManagerLocked(Ljava/util/Collection;I)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1501
    .end local v4    # "userId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 1505
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_30
    return-object v0
.end method

.method private updatePackageManagerLocked(Ljava/util/Collection;I)Ljava/util/List;
    .registers 16
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1517
    .local p1, "targetPackageNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const-wide/32 v0, 0x4000000

    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMS#updatePackageManagerLocked "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1521
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    .line 1522
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    .line 1523
    .local v2, "pm":Landroid/content/pm/PackageManagerInternal;
    const-string v3, "android"

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 1524
    .local v3, "updateFrameworkRes":Z
    if-eqz v3, :cond_2e

    .line 1525
    invoke-virtual {v2, p2}, Landroid/content/pm/PackageManagerInternal;->getTargetPackageNames(I)Ljava/util/List;

    move-result-object v4

    move-object p1, v4

    .line 1528
    :cond_2e
    new-instance v4, Landroid/util/ArrayMap;

    .line 1529
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/util/ArrayMap;-><init>(I)V

    .line 1530
    .local v4, "pendingChanges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/overlay/OverlayPaths;>;"
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_bc

    .line 1531
    :try_start_3a
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    const-string v7, "android"

    .line 1532
    invoke-virtual {v6, v7, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->getEnabledOverlayPaths(Ljava/lang/String;I)Landroid/content/pm/overlay/OverlayPaths;

    move-result-object v6

    .line 1533
    .local v6, "frameworkOverlays":Landroid/content/pm/overlay/OverlayPaths;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_46
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_74

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1534
    .local v8, "targetPackageName":Ljava/lang/String;
    new-instance v9, Landroid/content/pm/overlay/OverlayPaths$Builder;

    invoke-direct {v9}, Landroid/content/pm/overlay/OverlayPaths$Builder;-><init>()V

    .line 1535
    .local v9, "list":Landroid/content/pm/overlay/OverlayPaths$Builder;
    const-string v10, "android"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_62

    .line 1536
    invoke-virtual {v9, v6}, Landroid/content/pm/overlay/OverlayPaths$Builder;->addAll(Landroid/content/pm/overlay/OverlayPaths;)Landroid/content/pm/overlay/OverlayPaths$Builder;

    .line 1538
    :cond_62
    iget-object v10, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    invoke-virtual {v10, v8, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->getEnabledOverlayPaths(Ljava/lang/String;I)Landroid/content/pm/overlay/OverlayPaths;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/pm/overlay/OverlayPaths$Builder;->addAll(Landroid/content/pm/overlay/OverlayPaths;)Landroid/content/pm/overlay/OverlayPaths$Builder;

    .line 1539
    invoke-virtual {v9}, Landroid/content/pm/overlay/OverlayPaths$Builder;->build()Landroid/content/pm/overlay/OverlayPaths;

    move-result-object v10

    invoke-interface {v4, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1540
    nop

    .end local v8    # "targetPackageName":Ljava/lang/String;
    .end local v9    # "list":Landroid/content/pm/overlay/OverlayPaths$Builder;
    goto :goto_46

    .line 1541
    .end local v6    # "frameworkOverlays":Landroid/content/pm/overlay/OverlayPaths;
    :cond_74
    monitor-exit v5
    :try_end_75
    .catchall {:try_start_3a .. :try_end_75} :catchall_b9

    .line 1543
    :try_start_75
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 1544
    .local v5, "updatedPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_7e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1551
    .local v7, "targetPackageName":Ljava/lang/String;
    nop

    .line 1552
    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/overlay/OverlayPaths;

    .line 1551
    invoke-virtual {v2, p2, v7, v8, v5}, Landroid/content/pm/PackageManagerInternal;->setEnabledOverlayPackages(ILjava/lang/String;Landroid/content/pm/overlay/OverlayPaths;Ljava/util/Set;)Z

    move-result v8

    if-nez v8, :cond_af

    .line 1554
    const-string v8, "OverlayManager"

    const-string v9, "Failed to change enabled overlays for %s user %d"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    const/4 v11, 0x1

    .line 1555
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    .line 1554
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1557
    .end local v7    # "targetPackageName":Ljava/lang/String;
    :cond_af
    goto :goto_7e

    .line 1558
    :cond_b0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_b5
    .catchall {:try_start_75 .. :try_end_b5} :catchall_bc

    .line 1560
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1558
    return-object v6

    .line 1541
    .end local v5    # "updatedPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_b9
    move-exception v6

    :try_start_ba
    monitor-exit v5
    :try_end_bb
    .catchall {:try_start_ba .. :try_end_bb} :catchall_b9

    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService;
    .end local p1    # "targetPackageNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local p2    # "userId":I
    :try_start_bb
    throw v6
    :try_end_bc
    .catchall {:try_start_bb .. :try_end_bc} :catchall_bc

    .line 1560
    .end local v2    # "pm":Landroid/content/pm/PackageManagerInternal;
    .end local v3    # "updateFrameworkRes":Z
    .end local v4    # "pendingChanges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/overlay/OverlayPaths;>;"
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService;
    .restart local p1    # "targetPackageNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .restart local p2    # "userId":I
    :catchall_bc
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1561
    throw v2
.end method

.method private updateTargetPackagesLocked(Lcom/android/server/om/PackageAndUser;)V
    .registers 3
    .param p1, "updatedTarget"    # Lcom/android/server/om/PackageAndUser;

    .line 1410
    if-eqz p1, :cond_9

    .line 1411
    invoke-static {p1}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/om/OverlayManagerService;->updateTargetPackagesLocked(Ljava/util/Set;)V

    .line 1413
    :cond_9
    return-void
.end method

.method private updateTargetPackagesLocked(Ljava/util/Set;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/server/om/PackageAndUser;",
            ">;)V"
        }
    .end annotation

    .line 1416
    .local p1, "updatedTargets":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/om/PackageAndUser;>;"
    invoke-static {p1}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1417
    return-void

    .line 1419
    :cond_7
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerService;->persistSettingsLocked()V

    .line 1420
    invoke-static {p1}, Lcom/android/server/om/OverlayManagerService;->groupTargetsByUserId(Ljava/util/Set;)Landroid/util/SparseArray;

    move-result-object v0

    .line 1421
    .local v0, "userTargets":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    .local v2, "n":I
    :goto_13
    if-ge v1, v2, :cond_59

    .line 1422
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 1423
    .local v3, "targets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 1424
    .local v4, "userId":I
    invoke-direct {p0, v3, v4}, Lcom/android/server/om/OverlayManagerService;->updatePackageManagerLocked(Ljava/util/Collection;I)Ljava/util/List;

    move-result-object v5

    .line 1428
    .local v5, "affectedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v6, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v6}, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v5, v6}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 1430
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_32

    .line 1432
    goto :goto_56

    .line 1434
    :cond_32
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OMS#updateTargetPackagesLocked for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "OverlayManager"

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v6

    new-instance v7, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v7, p0, v5, v4, v3}, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/om/OverlayManagerService;Ljava/util/List;ILandroid/util/ArraySet;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1421
    .end local v3    # "targets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v4    # "userId":I
    .end local v5    # "affectedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_56
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 1445
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_59
    return-void
.end method


# virtual methods
.method synthetic lambda$updateTargetPackagesLocked$2$com-android-server-om-OverlayManagerService(Ljava/util/List;ILandroid/util/ArraySet;)V
    .registers 4
    .param p1, "affectedPackages"    # Ljava/util/List;
    .param p2, "userId"    # I
    .param p3, "targets"    # Landroid/util/ArraySet;

    .line 1438
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerService;->updateActivityManager(Ljava/util/List;I)V

    .line 1442
    invoke-static {p3, p2}, Lcom/android/server/om/OverlayManagerService;->broadcastActionOverlayChanged(Ljava/util/Set;I)V

    .line 1443
    return-void
.end method

.method public onStart()V
    .registers 1

    .line 308
    return-void
.end method

.method public onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .registers 4
    .param p1, "from"    # Lcom/android/server/SystemService$TargetUser;
    .param p2, "to"    # Lcom/android/server/SystemService$TargetUser;

    .line 329
    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/om/OverlayManagerService;->onSwitchUser(I)V

    .line 330
    return-void
.end method
