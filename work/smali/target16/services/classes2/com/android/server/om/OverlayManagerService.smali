.class public final Lcom/android/server/om/OverlayManagerService;
.super Lcom/android/server/SystemService;
.source "OverlayManagerService.java"


# instance fields
.field public final mActorEnforcer:Lcom/android/server/om/OverlayActorEnforcer;

.field public final mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

.field public final mInternal:Lcom/android/server/om/OverlayManagerInternal;

.field public final mLock:Ljava/lang/Object;

.field public final mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

.field public final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field public mPrevStartedUserId:I

.field public final mService:Landroid/os/IBinder;

.field public final mSettings:Lcom/android/server/om/OverlayManagerSettings;

.field public final mSettingsFile:Landroid/util/AtomicFile;

.field public final mUserManager:Lcom/android/server/pm/UserManagerService;


# direct methods
.method public static synthetic $r8$lambda$FyERzJAuu-lT7jJKEeUlKoCzE78(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/om/OverlayManagerService;->filterReceiverAccess(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$GzMpaQrsjSzVXIS6Ewd4ZVcwe0E(Landroid/util/SparseArray;Landroid/content/pm/UserPackage;)V
    .registers 4

    .line 1570
    iget v0, p1, Landroid/content/pm/UserPackage;->userId:I

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    if-nez v0, :cond_14

    .line 1572
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1573
    iget v1, p1, Landroid/content/pm/UserPackage;->userId:I

    invoke-virtual {p0, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1575
    :cond_14
    iget-object p0, p1, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$VKUwGCBEaC1c_ubMSsuE2Rf3650(ILandroid/app/ActivityManagerInternal;Ljava/lang/String;)V
    .registers 12

    .line 1588
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "package"

    const/4 v2, 0x0

    .line 1589
    invoke-static {v0, p2, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "android.intent.action.OVERLAY_CHANGED"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x4000000

    .line 1590
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1591
    const-string v0, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1592
    const-string p2, "android.intent.extra.USER_ID"

    invoke-virtual {v1, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1593
    new-instance v7, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda4;

    invoke-direct {v7}, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda4;-><init>()V

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v5, p0

    move-object v0, p1

    invoke-virtual/range {v0 .. v8}, Landroid/app/ActivityManagerInternal;->broadcastIntent(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;ZI[ILjava/util/function/BiFunction;Landroid/os/Bundle;)I

    return-void
.end method

.method public static synthetic $r8$lambda$gmoodzoVnIfdn8kZYi3Op37no2g(Lcom/android/server/om/OverlayManagerService;Ljava/util/List;ILandroid/util/ArraySet;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/om/OverlayManagerService;->lambda$updateTargetPackagesLocked$1(Ljava/util/List;ILandroid/util/ArraySet;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rFdAtDXTB46MBaeMgzs6tfJWKtk(Ljava/lang/String;Landroid/content/om/OverlayInfo;)Z
    .registers 3

    .line 310
    iget-boolean v0, p1, Landroid/content/om/OverlayInfo;->isFabricated:Z

    if-eqz v0, :cond_e

    iget-object p1, p1, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    .line 311
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmActorEnforcer(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayActorEnforcer;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService;->mActorEnforcer:Lcom/android/server/om/OverlayActorEnforcer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmImpl(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPackageManager(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhandlePackageAdd(Lcom/android/server/om/OverlayManagerService;Ljava/lang/String;Landroid/os/Bundle;I)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/om/OverlayManagerService;->handlePackageAdd(Ljava/lang/String;Landroid/os/Bundle;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandlePackageChange(Lcom/android/server/om/OverlayManagerService;Ljava/lang/String;Landroid/os/Bundle;I)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/om/OverlayManagerService;->handlePackageChange(Ljava/lang/String;Landroid/os/Bundle;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandlePackageRemove(Lcom/android/server/om/OverlayManagerService;Ljava/lang/String;Landroid/os/Bundle;I)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/om/OverlayManagerService;->handlePackageRemove(Ljava/lang/String;Landroid/os/Bundle;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrestoreSettingsLocked(Lcom/android/server/om/OverlayManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerService;->restoreSettingsLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdatePackageManagerLocked(Lcom/android/server/om/OverlayManagerService;Ljava/util/Set;)Landroid/util/SparseArray;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayManagerService;->updatePackageManagerLocked(Ljava/util/Set;)Landroid/util/SparseArray;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mupdateTargetPackagesLocked(Lcom/android/server/om/OverlayManagerService;Landroid/content/pm/UserPackage;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayManagerService;->updateTargetPackagesLocked(Landroid/content/pm/UserPackage;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateTargetPackagesLocked(Lcom/android/server/om/OverlayManagerService;Ljava/util/Set;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayManagerService;->updateTargetPackagesLocked(Ljava/util/Set;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smisHighPriorityUserCreation(Landroid/content/pm/UserInfo;)Z
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/server/om/OverlayManagerService;->isHighPriorityUserCreation(Landroid/content/pm/UserInfo;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 276
    invoke-direct/range {p0 .. p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 254
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    .line 271
    new-instance v2, Lcom/android/server/om/OverlayManagerService$OverlayManagerPackageMonitor;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/android/server/om/OverlayManagerService$OverlayManagerPackageMonitor;-><init>(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/OverlayManagerService-IA;)V

    iput-object v2, v0, Lcom/android/server/om/OverlayManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    const/4 v4, -0x1

    .line 273
    iput v4, v0, Lcom/android/server/om/OverlayManagerService;->mPrevStartedUserId:I

    .line 617
    new-instance v4, Lcom/android/server/om/OverlayManagerService$1;

    invoke-direct {v4, v0}, Lcom/android/server/om/OverlayManagerService$1;-><init>(Lcom/android/server/om/OverlayManagerService;)V

    iput-object v4, v0, Lcom/android/server/om/OverlayManagerService;->mService:Landroid/os/IBinder;

    .line 1203
    new-instance v5, Lcom/android/server/om/OverlayManagerService$2;

    invoke-direct {v5, v0}, Lcom/android/server/om/OverlayManagerService$2;-><init>(Lcom/android/server/om/OverlayManagerService;)V

    iput-object v5, v0, Lcom/android/server/om/OverlayManagerService;->mInternal:Lcom/android/server/om/OverlayManagerInternal;

    const-wide/32 v6, 0x4000000

    .line 278
    :try_start_2a
    const-string v8, "OMS#OverlayManagerService"

    invoke-static {v6, v7, v8}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 279
    new-instance v8, Landroid/util/AtomicFile;

    new-instance v9, Ljava/io/File;

    .line 280
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v10

    const-string/jumbo v11, "overlays.xml"

    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v10, "overlays"

    invoke-direct {v8, v9, v10}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v8, v0, Lcom/android/server/om/OverlayManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    .line 281
    new-instance v12, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    invoke-direct {v12, v1}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;-><init>(Landroid/content/Context;)V

    iput-object v12, v0, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    .line 282
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v8

    iput-object v8, v0, Lcom/android/server/om/OverlayManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 283
    new-instance v13, Lcom/android/server/om/IdmapManager;

    invoke-static {}, Lcom/android/server/om/IdmapDaemon;->getInstance()Lcom/android/server/om/IdmapDaemon;

    move-result-object v8

    invoke-direct {v13, v8, v12}, Lcom/android/server/om/IdmapManager;-><init>(Lcom/android/server/om/IdmapDaemon;Lcom/android/server/om/PackageManagerHelper;)V

    .line 284
    new-instance v14, Lcom/android/server/om/OverlayManagerSettings;

    invoke-direct {v14}, Lcom/android/server/om/OverlayManagerSettings;-><init>()V

    iput-object v14, v0, Lcom/android/server/om/OverlayManagerService;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 285
    new-instance v11, Lcom/android/server/om/OverlayManagerServiceImpl;

    .line 286
    invoke-static {}, Lcom/android/internal/content/om/OverlayConfig;->getSystemInstance()Lcom/android/internal/content/om/OverlayConfig;

    move-result-object v15

    invoke-static {}, Lcom/android/server/om/OverlayManagerService;->getDefaultOverlayPackages()[Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v11 .. v16}, Lcom/android/server/om/OverlayManagerServiceImpl;-><init>(Lcom/android/server/om/PackageManagerHelper;Lcom/android/server/om/IdmapManager;Lcom/android/server/om/OverlayManagerSettings;Lcom/android/internal/content/om/OverlayConfig;[Ljava/lang/String;)V

    iput-object v11, v0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    .line 287
    new-instance v8, Lcom/android/server/om/OverlayActorEnforcer;

    invoke-direct {v8, v12}, Lcom/android/server/om/OverlayActorEnforcer;-><init>(Lcom/android/server/om/PackageManagerHelper;)V

    iput-object v8, v0, Lcom/android/server/om/OverlayManagerService;->mActorEnforcer:Lcom/android/server/om/OverlayActorEnforcer;

    .line 289
    new-instance v8, Landroid/os/HandlerThread;

    const-string v9, "OverlayManager"

    invoke-direct {v8, v9}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 290
    invoke-virtual {v8}, Landroid/os/HandlerThread;->start()V

    .line 292
    invoke-virtual {v8}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v8

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v10, 0x1

    .line 291
    invoke-virtual {v2, v1, v8, v9, v10}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 294
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 295
    const-string v2, "android.intent.action.USER_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 296
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 297
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v15

    new-instance v2, Lcom/android/server/om/OverlayManagerService$UserReceiver;

    invoke-direct {v2, v0, v3}, Lcom/android/server/om/OverlayManagerService$UserReceiver;-><init>(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/OverlayManagerService-IA;)V

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v18, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v9

    invoke-virtual/range {v15 .. v20}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 300
    const-class v1, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerInternal;

    .line 301
    new-instance v2, Lcom/android/server/om/OverlayManagerService$UserLifecycleListener;

    invoke-direct {v2, v0, v3}, Lcom/android/server/om/OverlayManagerService$UserLifecycleListener;-><init>(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/OverlayManagerService-IA;)V

    invoke-virtual {v1, v2}, Lcom/android/server/pm/UserManagerInternal;->addUserLifecycleListener(Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;)V

    .line 305
    invoke-virtual {v0}, Lcom/android/server/om/OverlayManagerService;->restoreSettingsLocked()V

    .line 309
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x104002a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 308
    invoke-static {v1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 310
    new-instance v2, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v2}, Lcom/android/server/om/OverlayManagerSettings;->removeIf(Ljava/util/function/Predicate;)Ljava/util/List;

    .line 313
    invoke-virtual {v0}, Lcom/android/server/om/OverlayManagerService;->initIfNeeded()V

    const/4 v1, 0x0

    .line 314
    invoke-virtual {v0, v1}, Lcom/android/server/om/OverlayManagerService;->onStartUser(I)V

    .line 316
    const-string/jumbo v1, "overlay"

    invoke-virtual {v0, v1, v4}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 317
    const-class v1, Lcom/android/server/om/OverlayManagerInternal;

    invoke-virtual {v0, v1, v5}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V
    :try_end_ed
    .catchall {:try_start_2a .. :try_end_ed} :catchall_f1

    .line 319
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_f1
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 320
    throw v0
.end method

.method public static broadcastActionOverlayChanged(Ljava/util/Set;I)V
    .registers 4

    .line 1585
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 1586
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 1587
    new-instance v1, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1, v0}, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda3;-><init>(ILandroid/app/ActivityManagerInternal;)V

    invoke-static {p0, v1}, Lcom/android/internal/util/CollectionUtils;->forEach(Ljava/util/Set;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    return-void
.end method

.method public static filterReceiverAccess(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .registers 6

    .line 1610
    const-string v0, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1611
    const-string v1, "android.intent.extra.USER_ID"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1612
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, p0, v1, v3}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;IIZ)Z

    move-result p0

    if-eqz p0, :cond_1d

    const/4 p0, 0x0

    return-object p0

    :cond_1d
    return-object p1
.end method

.method public static getDefaultOverlayPackages()[Ljava/lang/String;
    .registers 7

    .line 370
    const-string/jumbo v0, "ro.boot.vendor.overlay.theme"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 371
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 372
    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    return-object v0

    .line 375
    :cond_10
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 376
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_1e
    if-ge v4, v2, :cond_2e

    aget-object v5, v0, v4

    .line 377
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2b

    .line 378
    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_2b
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 381
    :cond_2e
    new-array v0, v3, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static groupTargetsByUserId(Ljava/util/Set;)Landroid/util/SparseArray;
    .registers 3

    .line 1568
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 1569
    new-instance v1, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda2;-><init>(Landroid/util/SparseArray;)V

    invoke-static {p0, v1}, Lcom/android/internal/util/CollectionUtils;->forEach(Ljava/util/Set;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    return-object v0
.end method

.method public static handleIncomingUser(ILjava/lang/String;)I
    .registers 9

    .line 423
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 424
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    move v2, p0

    move-object v5, p1

    .line 423
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static isHighPriorityUserCreation(Landroid/content/pm/UserInfo;)Z
    .registers 1

    if-eqz p0, :cond_a

    .line 555
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isMain()Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method private onPackageAdded(Ljava/lang/String;I)V
    .registers 7

    const-wide/32 v0, 0x4000000

    .line 456
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMS#onPackageAdded "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 457
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_46

    .line 458
    :try_start_1a
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->onPackageAdded(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageState;

    move-result-object v3

    if-eqz v3, :cond_3f

    .line 459
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->isInstantApp(Ljava/lang/String;I)Z

    move-result v3
    :try_end_28
    .catchall {:try_start_1a .. :try_end_28} :catchall_34

    if-nez v3, :cond_3f

    .line 462
    :try_start_2a
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    .line 463
    invoke-virtual {v3, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->onPackageAdded(Ljava/lang/String;I)Ljava/util/Set;

    move-result-object p1

    .line 462
    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayManagerService;->updateTargetPackagesLocked(Ljava/util/Set;)V
    :try_end_33
    .catch Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException; {:try_start_2a .. :try_end_33} :catch_36
    .catchall {:try_start_2a .. :try_end_33} :catchall_34

    goto :goto_3f

    :catchall_34
    move-exception p0

    goto :goto_44

    :catch_36
    move-exception p0

    .line 465
    :try_start_37
    const-string p1, "OverlayManager"

    const-string/jumbo p2, "onPackageAdded internal error"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 468
    :cond_3f
    :goto_3f
    monitor-exit v2
    :try_end_40
    .catchall {:try_start_37 .. :try_end_40} :catchall_34

    .line 470
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .line 468
    :goto_44
    :try_start_44
    monitor-exit v2
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_34

    :try_start_45
    throw p0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_46

    :catchall_46
    move-exception p0

    .line 470
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 471
    throw p0
.end method

.method private onPackageRemoved(Ljava/lang/String;I)V
    .registers 7

    const-wide/32 v0, 0x4000000

    .line 537
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMS#onPackageRemoved "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 538
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_30

    .line 539
    :try_start_1a
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->onPackageRemoved(Ljava/lang/String;I)V

    .line 540
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->onPackageRemoved(Ljava/lang/String;I)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayManagerService;->updateTargetPackagesLocked(Ljava/util/Set;)V

    .line 541
    monitor-exit v2
    :try_end_29
    .catchall {:try_start_1a .. :try_end_29} :catchall_2d

    .line 543
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_2d
    move-exception p0

    .line 541
    :try_start_2e
    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    :try_start_2f
    throw p0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_30

    :catchall_30
    move-exception p0

    .line 543
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 544
    throw p0
.end method


# virtual methods
.method public final handlePackageAdd(Ljava/lang/String;Landroid/os/Bundle;I)V
    .registers 6

    .line 428
    const-string v0, "android.intent.extra.REPLACING"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 430
    invoke-virtual {p0, p1, p3}, Lcom/android/server/om/OverlayManagerService;->onPackageReplaced(Ljava/lang/String;I)V

    return-void

    .line 432
    :cond_d
    invoke-direct {p0, p1, p3}, Lcom/android/server/om/OverlayManagerService;->onPackageAdded(Ljava/lang/String;I)V

    return-void
.end method

.method public final handlePackageChange(Ljava/lang/String;Landroid/os/Bundle;I)V
    .registers 5

    .line 437
    const-string v0, "android.intent.extra.REASON"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.intent.action.OVERLAY_CHANGED"

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_11

    .line 438
    invoke-virtual {p0, p1, p3}, Lcom/android/server/om/OverlayManagerService;->onPackageChanged(Ljava/lang/String;I)V

    :cond_11
    return-void
.end method

.method public final handlePackageRemove(Ljava/lang/String;Landroid/os/Bundle;I)V
    .registers 7

    .line 443
    const-string v0, "android.intent.extra.REPLACING"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 444
    const-string v2, "android.intent.extra.SYSTEM_UPDATE_UNINSTALL"

    .line 445
    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz v0, :cond_13

    .line 448
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/om/OverlayManagerService;->onPackageReplacing(Ljava/lang/String;ZI)V

    return-void

    .line 450
    :cond_13
    invoke-direct {p0, p1, p3}, Lcom/android/server/om/OverlayManagerService;->onPackageRemoved(Ljava/lang/String;I)V

    return-void
.end method

.method public final initIfNeeded()V
    .registers 7

    .line 329
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 330
    invoke-virtual {v0}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v0

    .line 331
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 332
    :try_start_13
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_18
    if-ge v3, v2, :cond_41

    .line 334
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 335
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->supportsSwitchTo()Z

    move-result v5

    if-nez v5, :cond_3e

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    if-eqz v4, :cond_3e

    .line 339
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateOverlaysForUser(I)Landroid/util/ArraySet;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/om/OverlayManagerService;->updatePackageManagerLocked(Ljava/util/Set;)Landroid/util/SparseArray;

    goto :goto_3e

    :catchall_3c
    move-exception p0

    goto :goto_43

    :cond_3e
    :goto_3e
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 342
    :cond_41
    monitor-exit v1

    return-void

    :goto_43
    monitor-exit v1
    :try_end_44
    .catchall {:try_start_13 .. :try_end_44} :catchall_3c

    throw p0
.end method

.method public final synthetic lambda$updateTargetPackagesLocked$1(Ljava/util/List;ILandroid/util/ArraySet;)V
    .registers 4

    .line 1556
    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerService;->updateActivityManager(Ljava/util/List;I)V

    .line 1560
    invoke-static {p3, p2}, Lcom/android/server/om/OverlayManagerService;->broadcastActionOverlayChanged(Ljava/util/Set;I)V

    return-void
.end method

.method public final onPackageChanged(Ljava/lang/String;I)V
    .registers 7

    const-wide/32 v0, 0x4000000

    .line 476
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMS#onPackageChanged "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 477
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_46

    .line 478
    :try_start_1a
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->onPackageUpdated(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageState;

    move-result-object v3

    if-eqz v3, :cond_3f

    .line 479
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->isInstantApp(Ljava/lang/String;I)Z

    move-result v3
    :try_end_28
    .catchall {:try_start_1a .. :try_end_28} :catchall_34

    if-nez v3, :cond_3f

    .line 482
    :try_start_2a
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    .line 483
    invoke-virtual {v3, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->onPackageChanged(Ljava/lang/String;I)Ljava/util/Set;

    move-result-object p1

    .line 482
    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayManagerService;->updateTargetPackagesLocked(Ljava/util/Set;)V
    :try_end_33
    .catch Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException; {:try_start_2a .. :try_end_33} :catch_36
    .catchall {:try_start_2a .. :try_end_33} :catchall_34

    goto :goto_3f

    :catchall_34
    move-exception p0

    goto :goto_44

    :catch_36
    move-exception p0

    .line 485
    :try_start_37
    const-string p1, "OverlayManager"

    const-string/jumbo p2, "onPackageChanged internal error"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 488
    :cond_3f
    :goto_3f
    monitor-exit v2
    :try_end_40
    .catchall {:try_start_37 .. :try_end_40} :catchall_34

    .line 490
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .line 488
    :goto_44
    :try_start_44
    monitor-exit v2
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_34

    :try_start_45
    throw p0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_46

    :catchall_46
    move-exception p0

    .line 490
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 491
    throw p0
.end method

.method public final onPackageReplaced(Ljava/lang/String;I)V
    .registers 7

    const-wide/32 v0, 0x4000000

    .line 517
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMS#onPackageReplaced "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 518
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_46

    .line 519
    :try_start_1a
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->onPackageUpdated(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageState;

    move-result-object v3

    if-eqz v3, :cond_3f

    .line 520
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->isInstantApp(Ljava/lang/String;I)Z

    move-result v3
    :try_end_28
    .catchall {:try_start_1a .. :try_end_28} :catchall_34

    if-nez v3, :cond_3f

    .line 523
    :try_start_2a
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    .line 524
    invoke-virtual {v3, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->onPackageReplaced(Ljava/lang/String;I)Ljava/util/Set;

    move-result-object p1

    .line 523
    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayManagerService;->updateTargetPackagesLocked(Ljava/util/Set;)V
    :try_end_33
    .catch Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException; {:try_start_2a .. :try_end_33} :catch_36
    .catchall {:try_start_2a .. :try_end_33} :catchall_34

    goto :goto_3f

    :catchall_34
    move-exception p0

    goto :goto_44

    :catch_36
    move-exception p0

    .line 526
    :try_start_37
    const-string p1, "OverlayManager"

    const-string/jumbo p2, "onPackageReplaced internal error"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 529
    :cond_3f
    :goto_3f
    monitor-exit v2
    :try_end_40
    .catchall {:try_start_37 .. :try_end_40} :catchall_34

    .line 531
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .line 529
    :goto_44
    :try_start_44
    monitor-exit v2
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_34

    :try_start_45
    throw p0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_46

    :catchall_46
    move-exception p0

    .line 531
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 532
    throw p0
.end method

.method public final onPackageReplacing(Ljava/lang/String;ZI)V
    .registers 8

    const-wide/32 v0, 0x4000000

    .line 497
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMS#onPackageReplacing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 498
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_46

    .line 499
    :try_start_1a
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    invoke-virtual {v3, p1, p3}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->onPackageUpdated(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageState;

    move-result-object v3

    if-eqz v3, :cond_3f

    .line 500
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    invoke-virtual {v3, p1, p3}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->isInstantApp(Ljava/lang/String;I)Z

    move-result v3
    :try_end_28
    .catchall {:try_start_1a .. :try_end_28} :catchall_34

    if-nez v3, :cond_3f

    .line 503
    :try_start_2a
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/om/OverlayManagerServiceImpl;->onPackageReplacing(Ljava/lang/String;ZI)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayManagerService;->updateTargetPackagesLocked(Ljava/util/Set;)V
    :try_end_33
    .catch Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException; {:try_start_2a .. :try_end_33} :catch_36
    .catchall {:try_start_2a .. :try_end_33} :catchall_34

    goto :goto_3f

    :catchall_34
    move-exception p0

    goto :goto_44

    :catch_36
    move-exception p0

    .line 506
    :try_start_37
    const-string p1, "OverlayManager"

    const-string/jumbo p2, "onPackageReplacing internal error"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 509
    :cond_3f
    :goto_3f
    monitor-exit v2
    :try_end_40
    .catchall {:try_start_37 .. :try_end_40} :catchall_34

    .line 511
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .line 509
    :goto_44
    :try_start_44
    monitor-exit v2
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_34

    :try_start_45
    throw p0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_46

    :catchall_46
    move-exception p0

    .line 511
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 512
    throw p0
.end method

.method public onStart()V
    .registers 1

    .line 0
    return-void
.end method

.method public final onStartUser(I)V
    .registers 6

    .line 352
    iget v0, p0, Lcom/android/server/om/OverlayManagerService;->mPrevStartedUserId:I

    if-ne p1, v0, :cond_5

    return-void

    .line 355
    :cond_5
    const-string v0, "OverlayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating overlays for starting user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/32 v0, 0x4000000

    .line 357
    :try_start_1e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMS#onStartUser "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 360
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_35
    .catchall {:try_start_1e .. :try_end_35} :catchall_48

    .line 361
    :try_start_35
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    invoke-virtual {v3, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateOverlaysForUser(I)Landroid/util/ArraySet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/om/OverlayManagerService;->updateTargetPackagesLocked(Ljava/util/Set;)V

    .line 362
    monitor-exit v2
    :try_end_3f
    .catchall {:try_start_35 .. :try_end_3f} :catchall_45

    .line 364
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 366
    iput p1, p0, Lcom/android/server/om/OverlayManagerService;->mPrevStartedUserId:I

    return-void

    :catchall_45
    move-exception p0

    .line 362
    :try_start_46
    monitor-exit v2
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    :try_start_47
    throw p0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_48

    :catchall_48
    move-exception p0

    .line 364
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 365
    throw p0
.end method

.method public onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .registers 2

    .line 347
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayManagerService;->onStartUser(I)V

    return-void
.end method

.method public final persistSettingsLocked()V
    .registers 3

    const/4 v0, 0x0

    .line 1717
    :try_start_1
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0

    .line 1718
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v1, v0}, Lcom/android/server/om/OverlayManagerSettings;->persist(Ljava/io/OutputStream;)V

    .line 1719
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v1, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_11} :catch_12
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_11} :catch_12

    return-void

    :catch_12
    move-exception v1

    .line 1721
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {p0, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1722
    const-string p0, "OverlayManager"

    const-string v0, "failed to persist overlay state"

    invoke-static {p0, v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final restoreSettingsLocked()V
    .registers 10

    const-wide/32 v0, 0x4000000

    .line 1729
    :try_start_3
    const-string v2, "OMS#restoreSettings"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1731
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_6f

    if-nez v2, :cond_18

    .line 1757
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .line 1734
    :cond_18
    :try_start_18
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1e} :catch_71
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_18 .. :try_end_1e} :catch_71
    .catchall {:try_start_18 .. :try_end_1e} :catchall_6f

    .line 1735
    :try_start_1e
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v3, v2}, Lcom/android/server/om/OverlayManagerSettings;->restore(Ljava/io/InputStream;)V

    .line 1741
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v3

    .line 1742
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [I

    const/4 v5, 0x0

    move v6, v5

    .line 1743
    :goto_32
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_4d

    .line 1744
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    aput v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_32

    :catchall_4b
    move-exception p0

    goto :goto_73

    .line 1746
    :cond_4d
    invoke-static {v4}, Ljava/util/Arrays;->sort([I)V

    .line 1748
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v3}, Lcom/android/server/om/OverlayManagerSettings;->getUsers()[I

    move-result-object v3

    array-length v6, v3

    :goto_57
    if-ge v5, v6, :cond_69

    aget v7, v3, v5

    .line 1749
    invoke-static {v4, v7}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v8

    if-gez v8, :cond_66

    .line 1750
    iget-object v8, p0, Lcom/android/server/om/OverlayManagerService;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v8, v7}, Lcom/android/server/om/OverlayManagerSettings;->removeUser(I)Z
    :try_end_66
    .catchall {:try_start_1e .. :try_end_66} :catchall_4b

    :cond_66
    add-int/lit8 v5, v5, 0x1

    goto :goto_57

    :cond_69
    if-eqz v2, :cond_85

    .line 1753
    :try_start_6b
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6e} :catch_71
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6b .. :try_end_6e} :catch_71
    .catchall {:try_start_6b .. :try_end_6e} :catchall_6f

    goto :goto_85

    :catchall_6f
    move-exception p0

    goto :goto_89

    :catch_71
    move-exception p0

    goto :goto_7e

    :goto_73
    if-eqz v2, :cond_7d

    .line 1734
    :try_start_75
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_78
    .catchall {:try_start_75 .. :try_end_78} :catchall_79

    goto :goto_7d

    :catchall_79
    move-exception v2

    :try_start_7a
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7d
    :goto_7d
    throw p0
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_7e} :catch_71
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7a .. :try_end_7e} :catch_71
    .catchall {:try_start_7a .. :try_end_7e} :catchall_6f

    .line 1754
    :goto_7e
    :try_start_7e
    const-string v2, "OverlayManager"

    const-string v3, "failed to restore overlay state"

    invoke-static {v2, v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_85
    .catchall {:try_start_7e .. :try_end_85} :catchall_6f

    .line 1757
    :cond_85
    :goto_85
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :goto_89
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1758
    throw p0
.end method

.method public final updateActivityManager(Ljava/util/List;I)V
    .registers 3

    .line 1624
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    .line 1626
    :try_start_4
    invoke-interface {p0, p1, p2}, Landroid/app/IActivityManager;->scheduleApplicationInfoChanged(Ljava/util/List;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p0

    .line 1628
    const-string p1, "OverlayManager"

    const-string/jumbo p2, "updateActivityManager remote exception"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final updatePackageManagerLocked(Ljava/util/Set;)Landroid/util/SparseArray;
    .registers 7

    .line 1636
    invoke-static {p1}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1637
    new-instance p0, Landroid/util/SparseArray;

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    return-object p0

    .line 1639
    :cond_c
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 1640
    invoke-static {p1}, Lcom/android/server/om/OverlayManagerService;->groupTargetsByUserId(Ljava/util/Set;)Landroid/util/SparseArray;

    move-result-object p1

    .line 1641
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1a
    if-ge v2, v1, :cond_30

    .line 1642
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 1643
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-virtual {p0, v4, v3}, Lcom/android/server/om/OverlayManagerService;->updatePackageManagerLocked(Ljava/util/Collection;I)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_30
    return-object v0
.end method

.method public final updatePackageManagerLocked(Ljava/util/Collection;I)Ljava/util/List;
    .registers 14

    const-wide/32 v0, 0x4000000

    .line 1658
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMS#updatePackageManagerLocked "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1662
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    .line 1663
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    .line 1664
    const-string v3, "android"

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 1666
    invoke-virtual {v2, p2}, Landroid/content/pm/PackageManagerInternal;->getTargetPackageNames(I)Ljava/util/List;

    move-result-object p1

    goto :goto_2f

    :catchall_2c
    move-exception p0

    goto/16 :goto_bf

    .line 1669
    :cond_2f
    :goto_2f
    new-instance v3, Landroid/util/ArrayMap;

    .line 1670
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/util/ArrayMap;-><init>(I)V

    .line 1671
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_2c

    .line 1672
    :try_start_3b
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    const-string v6, "android"

    const/4 v7, 0x0

    .line 1673
    invoke-virtual {v5, v6, p2, v7}, Lcom/android/server/om/OverlayManagerServiceImpl;->getEnabledOverlayPaths(Ljava/lang/String;IZ)Landroid/content/pm/overlay/OverlayPaths;

    move-result-object v5

    .line 1674
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_48
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_76

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1675
    new-instance v8, Landroid/content/pm/overlay/OverlayPaths$Builder;

    invoke-direct {v8, v5}, Landroid/content/pm/overlay/OverlayPaths$Builder;-><init>(Landroid/content/pm/overlay/OverlayPaths;)V

    .line 1676
    const-string v9, "android"

    invoke-virtual {v9, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6e

    .line 1677
    iget-object v9, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    const/4 v10, 0x1

    invoke-virtual {v9, v7, p2, v10}, Lcom/android/server/om/OverlayManagerServiceImpl;->getEnabledOverlayPaths(Ljava/lang/String;IZ)Landroid/content/pm/overlay/OverlayPaths;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/pm/overlay/OverlayPaths$Builder;->addAll(Landroid/content/pm/overlay/OverlayPaths;)Landroid/content/pm/overlay/OverlayPaths$Builder;

    goto :goto_6e

    :catchall_6c
    move-exception p0

    goto :goto_bd

    .line 1679
    :cond_6e
    :goto_6e
    invoke-virtual {v8}, Landroid/content/pm/overlay/OverlayPaths$Builder;->build()Landroid/content/pm/overlay/OverlayPaths;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_48

    .line 1681
    :cond_76
    monitor-exit v4
    :try_end_77
    .catchall {:try_start_3b .. :try_end_77} :catchall_6c

    .line 1683
    :try_start_77
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 1684
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 1685
    invoke-virtual {v2, p2, v3, p0, v4}, Landroid/content/pm/PackageManagerInternal;->setEnabledOverlayPackages(ILandroid/util/ArrayMap;Ljava/util/Set;Ljava/util/Set;)V

    .line 1687
    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b4

    .line 1688
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8e
    :goto_8e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1696
    invoke-virtual {v4, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8e

    .line 1697
    const-string v3, "OverlayManager"

    const-string v5, "Failed to change enabled overlays for %s user %d"

    .line 1700
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v2, v6}, [Ljava/lang/Object;

    move-result-object v2

    .line 1697
    invoke-static {v5, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8e

    .line 1704
    :cond_b4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_b9
    .catchall {:try_start_77 .. :try_end_b9} :catchall_2c

    .line 1706
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-object p1

    .line 1681
    :goto_bd
    :try_start_bd
    monitor-exit v4
    :try_end_be
    .catchall {:try_start_bd .. :try_end_be} :catchall_6c

    :try_start_be
    throw p0
    :try_end_bf
    .catchall {:try_start_be .. :try_end_bf} :catchall_2c

    .line 1706
    :goto_bf
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1707
    throw p0
.end method

.method public final updateTargetPackagesLocked(Landroid/content/pm/UserPackage;)V
    .registers 2

    if-eqz p1, :cond_9

    .line 1533
    invoke-static {p1}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayManagerService;->updateTargetPackagesLocked(Ljava/util/Set;)V

    :cond_9
    return-void
.end method

.method public final updateTargetPackagesLocked(Ljava/util/Set;)V
    .registers 9

    .line 1539
    invoke-static {p1}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_39

    .line 1542
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerService;->persistSettingsLocked()V

    .line 1543
    invoke-static {p1}, Lcom/android/server/om/OverlayManagerService;->groupTargetsByUserId(Ljava/util/Set;)Landroid/util/SparseArray;

    move-result-object p1

    .line 1544
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_13
    if-ge v1, v0, :cond_39

    .line 1545
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 1546
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 1547
    invoke-virtual {p0, v2, v3}, Lcom/android/server/om/OverlayManagerService;->updatePackageManagerLocked(Ljava/util/Collection;I)Ljava/util/List;

    move-result-object v4

    .line 1548
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2a

    goto :goto_36

    .line 1553
    :cond_2a
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0, v4, v3, v2}, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/om/OverlayManagerService;Ljava/util/List;ILandroid/util/ArraySet;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_39
    :goto_39
    return-void
.end method
