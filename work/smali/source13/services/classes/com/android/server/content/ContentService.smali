.class public final Lcom/android/server/content/ContentService;
.super Landroid/content/IContentService$Stub;
.source "ContentService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/content/ContentService$ObserverNode;,
        Lcom/android/server/content/ContentService$ObserverCollector;,
        Lcom/android/server/content/ContentService$Lifecycle;
    }
.end annotation


# static fields
.field public static final ACCOUNT_ACCESS_CHECK_CHANGE_ID:J = 0xc0722ffL

.field private static final BACKGROUND_OBSERVER_DELAY:J = 0x2710L

.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "ContentService"

.field private static final TOO_MANY_OBSERVERS_THRESHOLD:I = 0x3e8

.field private static final sObserverDeathDispatcher:Lcom/android/internal/os/BinderDeathDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/os/BinderDeathDispatcher<",
            "Landroid/database/IContentObserver;",
            ">;"
        }
    .end annotation
.end field

.field private static final sObserverLeakDetectedUid:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAccountManagerInternal:Landroid/accounts/AccountManagerInternal;

.field private final mCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/os/Bundle;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mCacheReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mFactoryTest:Z

.field private final mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

.field private mSyncManager:Lcom/android/server/content/SyncManager;

.field private final mSyncManagerLock:Ljava/lang/Object;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCache(Lcom/android/server/content/ContentService;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$minvalidateCacheLocked(Lcom/android/server/content/ContentService;ILjava/lang/String;Landroid/net/Uri;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/content/ContentService;->invalidateCacheLocked(ILjava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetsObserverDeathDispatcher()Lcom/android/internal/os/BinderDeathDispatcher;
    .registers 1

    sget-object v0, Lcom/android/server/content/ContentService;->sObserverDeathDispatcher:Lcom/android/internal/os/BinderDeathDispatcher;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetsObserverLeakDetectedUid()Landroid/util/ArraySet;
    .registers 1

    sget-object v0, Lcom/android/server/content/ContentService;->sObserverLeakDetectedUid:Landroid/util/ArraySet;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 176
    new-instance v0, Lcom/android/internal/os/BinderDeathDispatcher;

    invoke-direct {v0}, Lcom/android/internal/os/BinderDeathDispatcher;-><init>()V

    sput-object v0, Lcom/android/server/content/ContentService;->sObserverDeathDispatcher:Lcom/android/internal/os/BinderDeathDispatcher;

    .line 180
    new-instance v0, Landroid/util/ArraySet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    sput-object v0, Lcom/android/server/content/ContentService;->sObserverLeakDetectedUid:Landroid/util/ArraySet;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Z)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "factoryTest"    # Z

    .line 311
    invoke-direct {p0}, Landroid/content/IContentService$Stub;-><init>()V

    .line 169
    new-instance v0, Lcom/android/server/content/ContentService$ObserverNode;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/android/server/content/ContentService$ObserverNode;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    .line 172
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/ContentService;->mSyncManagerLock:Ljava/lang/Object;

    .line 187
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    .line 191
    new-instance v0, Lcom/android/server/content/ContentService$1;

    invoke-direct {v0, p0}, Lcom/android/server/content/ContentService$1;-><init>(Lcom/android/server/content/ContentService;)V

    iput-object v0, p0, Lcom/android/server/content/ContentService;->mCacheReceiver:Landroid/content/BroadcastReceiver;

    .line 312
    iput-object p1, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    .line 313
    iput-boolean p2, p0, Lcom/android/server/content/ContentService;->mFactoryTest:Z

    .line 317
    const-class v0, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    .line 318
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    .line 319
    .local v0, "permissionManagerInternal":Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;
    new-instance v1, Lcom/android/server/content/ContentService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/content/ContentService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/content/ContentService;)V

    invoke-interface {v0, v1}, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;->setSyncAdapterPackagesProvider(Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$SyncAdapterPackagesProvider;)V

    .line 323
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 324
    .local v1, "packageFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 325
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 326
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 327
    const-string v2, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 328
    const-string/jumbo v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 329
    iget-object v2, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/content/ContentService;->mCacheReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 332
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 333
    .local v2, "localeFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 334
    iget-object v3, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/content/ContentService;->mCacheReceiver:Landroid/content/BroadcastReceiver;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v8, 0x0

    move-object v6, v2

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 337
    const-class v3, Landroid/accounts/AccountManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accounts/AccountManagerInternal;

    iput-object v3, p0, Lcom/android/server/content/ContentService;->mAccountManagerInternal:Landroid/accounts/AccountManagerInternal;

    .line 338
    return-void
.end method

.method private checkUriPermission(Landroid/net/Uri;IIII)I
    .registers 13
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "modeFlags"    # I
    .param p5, "userHandle"    # I

    .line 515
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v6, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v6}, Landroid/app/IActivityManager;->checkUriPermission(Landroid/net/Uri;IIIILandroid/os/IBinder;)I

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    return v0

    .line 517
    :catch_f
    move-exception v0

    .line 518
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    return v1
.end method

.method private clampPeriod(J)J
    .registers 7
    .param p1, "period"    # J

    .line 658
    invoke-static {}, Landroid/app/job/JobInfo;->getMinPeriodMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 659
    .local v0, "minPeriod":J
    cmp-long v2, p1, v0

    if-gez v2, :cond_35

    .line 660
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested poll frequency of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " seconds being rounded up to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "s."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ContentService"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    move-wide p1, v0

    .line 664
    :cond_35
    return-wide p1
.end method

.method private enforceCrossUserPermission(ILjava/lang/String;)V
    .registers 6
    .param p1, "userHandle"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 1501
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1502
    .local v0, "callingUser":I
    if-eq v0, p1, :cond_d

    .line 1503
    iget-object v1, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v1, v2, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1506
    :cond_d
    return-void
.end method

.method private enforceNonFullCrossUserPermission(ILjava/lang/String;)V
    .registers 7
    .param p1, "userHandle"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 1517
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1518
    .local v0, "callingUser":I
    if-ne v0, p1, :cond_7

    .line 1519
    return-void

    .line 1522
    :cond_7
    iget-object v1, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    .line 1524
    .local v1, "interactAcrossUsersState":I
    if-nez v1, :cond_12

    .line 1525
    return-void

    .line 1528
    :cond_12
    iget-object v2, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v2, v3, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1530
    return-void
.end method

.method private enforceShell(Ljava/lang/String;)V
    .registers 6
    .param p1, "method"    # Ljava/lang/String;

    .line 1978
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1979
    .local v0, "callingUid":I
    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_24

    if-nez v0, :cond_b

    goto :goto_24

    .line 1980
    :cond_b
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Non-shell user attempted to call "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1982
    :cond_24
    :goto_24
    return-void
.end method

.method private findOrCreateCacheLocked(ILjava/lang/String;)Landroid/util/ArrayMap;
    .registers 6
    .param p1, "userId"    # I
    .param p2, "providerPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArrayMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 1377
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 1378
    .local v0, "userCache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;Landroid/os/Bundle;>;>;"
    if-nez v0, :cond_15

    .line 1379
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v0, v1

    .line 1380
    iget-object v1, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1382
    :cond_15
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 1383
    .local v1, "packageCache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;Landroid/os/Bundle;>;"
    if-nez v1, :cond_26

    .line 1384
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    move-object v1, v2

    .line 1385
    invoke-virtual {v0, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1387
    :cond_26
    return-object v1
.end method

.method private getProcStateForStatsd(I)I
    .registers 3
    .param p1, "procState"    # I

    .line 1622
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_38

    .line 1666
    :pswitch_4
    return v0

    .line 1664
    :pswitch_5
    const/16 v0, 0x14

    return v0

    .line 1662
    :pswitch_8
    const/16 v0, 0x13

    return v0

    .line 1659
    :pswitch_b
    const/16 v0, 0x12

    return v0

    .line 1657
    :pswitch_e
    const/16 v0, 0x11

    return v0

    .line 1655
    :pswitch_11
    const/16 v0, 0x10

    return v0

    .line 1653
    :pswitch_14
    const/16 v0, 0xe

    return v0

    .line 1651
    :pswitch_17
    const/16 v0, 0xd

    return v0

    .line 1649
    :pswitch_1a
    const/16 v0, 0xc

    return v0

    .line 1647
    :pswitch_1d
    const/16 v0, 0xb

    return v0

    .line 1645
    :pswitch_20
    const/16 v0, 0xa

    return v0

    .line 1643
    :pswitch_23
    const/16 v0, 0x9

    return v0

    .line 1641
    :pswitch_26
    const/16 v0, 0x8

    return v0

    .line 1639
    :pswitch_29
    const/4 v0, 0x7

    return v0

    .line 1636
    :pswitch_2b
    const/4 v0, 0x6

    return v0

    .line 1634
    :pswitch_2d
    const/4 v0, 0x5

    return v0

    .line 1632
    :pswitch_2f
    const/4 v0, 0x4

    return v0

    .line 1630
    :pswitch_31
    const/4 v0, 0x3

    return v0

    .line 1628
    :pswitch_33
    const/4 v0, 0x2

    return v0

    .line 1626
    :pswitch_35
    const/4 v0, 0x1

    return v0

    .line 1624
    :pswitch_37
    return v0

    :pswitch_data_38
    .packed-switch -0x1
        :pswitch_37
        :pswitch_35
        :pswitch_33
        :pswitch_31
        :pswitch_2f
        :pswitch_2d
        :pswitch_2b
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_4
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method private getProviderPackageName(Landroid/net/Uri;I)Ljava/lang/String;
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "userId"    # I

    .line 1369
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1370
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 1369
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p2}, Landroid/content/pm/PackageManager;->resolveContentProviderAsUser(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    .line 1371
    .local v0, "pi":Landroid/content/pm/ProviderInfo;
    if-eqz v0, :cond_14

    iget-object v1, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    return-object v1
.end method

.method private getRestrictionLevelForStatsd(I)I
    .registers 3
    .param p1, "level"    # I

    .line 1671
    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_12

    .line 1687
    return v0

    .line 1685
    :sswitch_5
    const/4 v0, 0x6

    return v0

    .line 1683
    :sswitch_7
    const/4 v0, 0x5

    return v0

    .line 1681
    :sswitch_9
    const/4 v0, 0x4

    return v0

    .line 1679
    :sswitch_b
    const/4 v0, 0x3

    return v0

    .line 1677
    :sswitch_d
    const/4 v0, 0x2

    return v0

    .line 1675
    :sswitch_f
    const/4 v0, 0x1

    return v0

    .line 1673
    :sswitch_11
    return v0

    :sswitch_data_12
    .sparse-switch
        0x0 -> :sswitch_11
        0xa -> :sswitch_f
        0x14 -> :sswitch_d
        0x1e -> :sswitch_b
        0x28 -> :sswitch_9
        0x32 -> :sswitch_7
        0x3c -> :sswitch_5
    .end sparse-switch
.end method

.method private getSyncExemptionAndCleanUpExtrasForCaller(ILandroid/os/Bundle;)I
    .registers 9
    .param p1, "callingUid"    # I
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 1589
    if-eqz p2, :cond_11

    .line 1590
    nop

    .line 1591
    const-string/jumbo v0, "v_exemption"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1594
    .local v2, "exemption":I
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1595
    if-eq v2, v1, :cond_11

    .line 1596
    return v2

    .line 1599
    .end local v2    # "exemption":I
    :cond_11
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 1600
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 1601
    .local v0, "ami":Landroid/app/ActivityManagerInternal;
    const/4 v1, 0x0

    if-nez v0, :cond_1d

    .line 1602
    return v1

    .line 1604
    :cond_1d
    invoke-virtual {v0, p1}, Landroid/app/ActivityManagerInternal;->getUidProcessState(I)I

    move-result v2

    .line 1605
    .local v2, "procState":I
    invoke-virtual {v0, p1}, Landroid/app/ActivityManagerInternal;->isUidActive(I)Z

    move-result v3

    .line 1608
    .local v3, "isUidActive":Z
    const/4 v4, 0x2

    if-le v2, v4, :cond_46

    const/4 v5, 0x3

    if-ne v2, v5, :cond_2c

    goto :goto_46

    .line 1612
    :cond_2c
    const/4 v4, 0x6

    if-le v2, v4, :cond_33

    if-eqz v3, :cond_32

    goto :goto_33

    .line 1618
    :cond_32
    return v1

    .line 1613
    :cond_33
    :goto_33
    const/16 v1, 0x1d4

    .line 1614
    invoke-direct {p0, v2}, Lcom/android/server/content/ContentService;->getProcStateForStatsd(I)I

    move-result v4

    .line 1615
    invoke-virtual {v0, p1}, Landroid/app/ActivityManagerInternal;->getRestrictionLevel(I)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/content/ContentService;->getRestrictionLevelForStatsd(I)I

    move-result v5

    .line 1613
    invoke-static {v1, p1, v4, v3, v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZI)V

    .line 1616
    const/4 v1, 0x1

    return v1

    .line 1610
    :cond_46
    :goto_46
    return v4
.end method

.method private getSyncExemptionForCaller(I)I
    .registers 3
    .param p1, "callingUid"    # I

    .line 1584
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/content/ContentService;->getSyncExemptionAndCleanUpExtrasForCaller(ILandroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method private getSyncManager()Lcom/android/server/content/SyncManager;
    .registers 5

    .line 211
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mSyncManagerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 214
    :try_start_3
    iget-object v1, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    if-nez v1, :cond_12

    new-instance v1, Lcom/android/server/content/SyncManager;

    iget-object v2, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/android/server/content/ContentService;->mFactoryTest:Z

    invoke-direct {v1, v2, v3}, Lcom/android/server/content/SyncManager;-><init>(Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_12} :catch_15
    .catchall {:try_start_3 .. :try_end_12} :catchall_13

    .line 217
    :cond_12
    goto :goto_1d

    .line 219
    :catchall_13
    move-exception v1

    goto :goto_21

    .line 215
    :catch_15
    move-exception v1

    .line 216
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_16
    const-string v2, "ContentService"

    const-string v3, "Can\'t create SyncManager"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 218
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :goto_1d
    iget-object v1, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    monitor-exit v0

    return-object v1

    .line 219
    :goto_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_16 .. :try_end_22} :catchall_13

    throw v1
.end method

.method private handleIncomingUser(Landroid/net/Uri;IIIZI)I
    .registers 15
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "modeFlags"    # I
    .param p5, "allowNonFull"    # Z
    .param p6, "userId"    # I

    .line 1457
    const/4 v0, -0x2

    if-ne p6, v0, :cond_7

    .line 1458
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p6

    .line 1461
    :cond_7
    const/4 v0, -0x1

    const-string v6, "No access to "

    const-string v7, "android.permission.INTERACT_ACROSS_USERS_FULL"

    if-ne p6, v0, :cond_25

    .line 1462
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_85

    .line 1464
    :cond_25
    if-ltz p6, :cond_86

    .line 1466
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p6, v0, :cond_85

    .line 1467
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/content/ContentService;->checkUriPermission(Landroid/net/Uri;IIII)I

    move-result v0

    if-eqz v0, :cond_85

    .line 1469
    const/4 v0, 0x0

    .line 1470
    .local v0, "allow":Z
    iget-object v1, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_44

    .line 1473
    const/4 v0, 0x1

    goto :goto_51

    .line 1474
    :cond_44
    if-eqz p5, :cond_51

    iget-object v1, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_51

    .line 1477
    const/4 v0, 0x1

    .line 1479
    :cond_51
    :goto_51
    if-nez v0, :cond_85

    .line 1480
    if-eqz p5, :cond_58

    .line 1481
    const-string v7, "android.permission.INTERACT_ACROSS_USERS_FULL or android.permission.INTERACT_ACROSS_USERS"

    goto :goto_59

    .line 1483
    :cond_58
    nop

    :goto_59
    move-object v1, v7

    .line 1484
    .local v1, "permissions":Ljava/lang/String;
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": neither user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " nor current process has "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1490
    .end local v0    # "allow":Z
    .end local v1    # "permissions":Ljava/lang/String;
    :cond_85
    :goto_85
    return p6

    .line 1465
    :cond_86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private hasAccountAccess(ZLandroid/accounts/Account;I)Z
    .registers 7
    .param p1, "checkCompatFlag"    # Z
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "uid"    # I

    .line 1541
    const/4 v0, 0x1

    if-nez p2, :cond_4

    .line 1543
    return v0

    .line 1545
    :cond_4
    if-eqz p1, :cond_10

    const-wide/32 v1, 0xc0722ff

    .line 1546
    invoke-static {v1, v2, p3}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v1

    if-nez v1, :cond_10

    .line 1547
    return v0

    .line 1550
    :cond_10
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 1552
    .local v0, "identityToken":J
    :try_start_14
    iget-object v2, p0, Lcom/android/server/content/ContentService;->mAccountManagerInternal:Landroid/accounts/AccountManagerInternal;

    invoke-virtual {v2, p2, p3}, Landroid/accounts/AccountManagerInternal;->hasAccountAccess(Landroid/accounts/Account;I)Z

    move-result v2
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_1e

    .line 1554
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1552
    return v2

    .line 1554
    :catchall_1e
    move-exception v2

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1555
    throw v2
.end method

.method private invalidateCacheLocked(ILjava/lang/String;Landroid/net/Uri;)V
    .registers 10
    .param p1, "userId"    # I
    .param p2, "providerPackageName"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;

    .line 1392
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 1393
    .local v0, "userCache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;Landroid/os/Bundle;>;>;"
    if-nez v0, :cond_b

    return-void

    .line 1395
    :cond_b
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 1396
    .local v1, "packageCache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;Landroid/os/Bundle;>;"
    if-nez v1, :cond_14

    return-void

    .line 1398
    :cond_14
    if-eqz p3, :cond_41

    .line 1399
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_17
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_40

    .line 1400
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 1401
    .local v3, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;"
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v4, :cond_3d

    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 1403
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_3f

    .line 1405
    :cond_3d
    add-int/lit8 v2, v2, 0x1

    .line 1407
    .end local v3    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;"
    :goto_3f
    goto :goto_17

    .end local v2    # "i":I
    :cond_40
    goto :goto_44

    .line 1410
    :cond_41
    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 1412
    :goto_44
    return-void
.end method

.method private static normalizeSyncable(I)I
    .registers 2
    .param p0, "syncable"    # I

    .line 1559
    if-lez p0, :cond_4

    .line 1560
    const/4 v0, 0x1

    return v0

    .line 1561
    :cond_4
    if-nez p0, :cond_8

    .line 1562
    const/4 v0, 0x0

    return v0

    .line 1564
    :cond_8
    const/4 v0, -0x2

    return v0
.end method

.method private validateExtras(ILandroid/os/Bundle;)V
    .registers 6
    .param p1, "callingUid"    # I
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 1568
    const-string/jumbo v0, "v_exemption"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1569
    sparse-switch p1, :sswitch_data_1e

    .line 1575
    const-string v0, "Invalid extras specified."

    .line 1576
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "ContentService"

    const-string v2, "Invalid extras specified. requestsync -f/-F needs to run on \'adb shell\'"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Invalid extras specified."

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1580
    .end local v0    # "msg":Ljava/lang/String;
    :cond_1d
    :sswitch_1d
    return-void

    :sswitch_data_1e
    .sparse-switch
        0x0 -> :sswitch_1d
        0x3e8 -> :sswitch_1d
        0x7d0 -> :sswitch_1d
    .end sparse-switch
.end method


# virtual methods
.method public addPeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V
    .registers 25
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "pollFrequency"    # J

    .line 977
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v10, p3

    invoke-static {}, Lcom/android/server/content/SyncSecurityStub;->getInstance()Lcom/android/server/content/SyncSecurityStub;

    move-result-object v0

    iget-object v3, v1, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    invoke-interface {v0, v3, v2}, Lcom/android/server/content/SyncSecurityStub;->permitControlSyncForAccount(Landroid/content/Context;Landroid/accounts/Account;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 978
    return-void

    .line 982
    :cond_13
    const/4 v0, 0x1

    invoke-static {v10, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 983
    if-eqz v2, :cond_6f

    .line 986
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_65

    .line 989
    iget-object v3, v1, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v5, "no permission to write the sync settings"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 993
    .local v11, "callingUid":I
    invoke-direct {v1, v0, v2, v11}, Lcom/android/server/content/ContentService;->hasAccountAccess(ZLandroid/accounts/Account;I)Z

    move-result v0

    if-nez v0, :cond_34

    .line 994
    return-void

    .line 996
    :cond_34
    invoke-direct {v1, v11, v10}, Lcom/android/server/content/ContentService;->validateExtras(ILandroid/os/Bundle;)V

    .line 998
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v12

    .line 1000
    .local v12, "userId":I
    move-wide/from16 v3, p4

    invoke-direct {v1, v3, v4}, Lcom/android/server/content/ContentService;->clampPeriod(J)J

    move-result-wide v13

    .line 1001
    .end local p4    # "pollFrequency":J
    .local v13, "pollFrequency":J
    invoke-static {v13, v14}, Lcom/android/server/content/SyncStorageEngine;->calculateDefaultFlexTime(J)J

    move-result-wide v15

    .line 1003
    .local v15, "defaultFlex":J
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v17

    .line 1005
    .local v17, "identityToken":J
    :try_start_49
    new-instance v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object/from16 v9, p2

    invoke-direct {v4, v2, v9, v12}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 1007
    .local v4, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v3

    move-wide v5, v13

    move-wide v7, v15

    move-object/from16 v9, p3

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/content/SyncManager;->updateOrAddPeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V
    :try_end_5b
    .catchall {:try_start_49 .. :try_end_5b} :catchall_60

    .line 1010
    .end local v4    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    invoke-static/range {v17 .. v18}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1011
    nop

    .line 1012
    return-void

    .line 1010
    :catchall_60
    move-exception v0

    invoke-static/range {v17 .. v18}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1011
    throw v0

    .line 987
    .end local v11    # "callingUid":I
    .end local v12    # "userId":I
    .end local v13    # "pollFrequency":J
    .end local v15    # "defaultFlex":J
    .end local v17    # "identityToken":J
    .restart local p4    # "pollFrequency":J
    :cond_65
    move-wide/from16 v3, p4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v5, "Authority must not be empty."

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 984
    :cond_6f
    move-wide/from16 v3, p4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v5, "Account must not be null"

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addStatusChangeListener(ILandroid/content/ISyncStatusObserver;)V
    .registers 8
    .param p1, "mask"    # I
    .param p2, "callback"    # Landroid/content/ISyncStatusObserver;

    .line 1342
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1343
    .local v0, "callingUid":I
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v1

    .line 1345
    .local v1, "identityToken":J
    :try_start_8
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v3

    .line 1346
    .local v3, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v3, :cond_17

    if-eqz p2, :cond_17

    .line 1347
    invoke-virtual {v3}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v4

    invoke-virtual {v4, p1, v0, p2}, Lcom/android/server/content/SyncStorageEngine;->addStatusChangeListener(IILandroid/content/ISyncStatusObserver;)V
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_1c

    .line 1351
    .end local v3    # "syncManager":Lcom/android/server/content/SyncManager;
    :cond_17
    invoke-static {v1, v2}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1352
    nop

    .line 1353
    return-void

    .line 1351
    :catchall_1c
    move-exception v3

    invoke-static {v1, v2}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1352
    throw v3
.end method

.method public cancelRequest(Landroid/content/SyncRequest;)V
    .registers 14
    .param p1, "request"    # Landroid/content/SyncRequest;

    .line 793
    invoke-static {}, Lcom/android/server/content/SyncSecurityStub;->getInstance()Lcom/android/server/content/SyncSecurityStub;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/SyncRequest;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/server/content/SyncSecurityStub;->permitControlSyncForAccount(Landroid/content/Context;Landroid/accounts/Account;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 794
    return-void

    .line 798
    :cond_11
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v0

    .line 799
    .local v0, "syncManager":Lcom/android/server/content/SyncManager;
    if-nez v0, :cond_18

    return-void

    .line 800
    :cond_18
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 801
    .local v1, "userId":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 803
    .local v2, "callingUid":I
    invoke-virtual {p1}, Landroid/content/SyncRequest;->isPeriodic()Z

    move-result v3

    if-eqz v3, :cond_30

    .line 804
    iget-object v3, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v5, "no permission to write the sync settings"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    :cond_30
    new-instance v3, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/content/SyncRequest;->getBundle()Landroid/os/Bundle;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 809
    .local v3, "extras":Landroid/os/Bundle;
    invoke-direct {p0, v2, v3}, Lcom/android/server/content/ContentService;->validateExtras(ILandroid/os/Bundle;)V

    .line 811
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v4

    .line 815
    .local v4, "identityToken":J
    :try_start_40
    invoke-virtual {p1}, Landroid/content/SyncRequest;->getAccount()Landroid/accounts/Account;

    move-result-object v6

    .line 816
    .local v6, "account":Landroid/accounts/Account;
    invoke-virtual {p1}, Landroid/content/SyncRequest;->getProvider()Ljava/lang/String;

    move-result-object v7

    .line 817
    .local v7, "provider":Ljava/lang/String;
    new-instance v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v8, v6, v7, v1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 818
    .local v8, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    invoke-virtual {p1}, Landroid/content/SyncRequest;->isPeriodic()Z

    move-result v9

    if-eqz v9, :cond_6d

    .line 820
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "cancelRequest() by uid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v8, v3, v10}, Lcom/android/server/content/SyncManager;->removePeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 824
    :cond_6d
    invoke-virtual {v0, v8, v3}, Lcom/android/server/content/SyncManager;->cancelScheduledSyncOperation(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)V

    .line 825
    const-string v9, "API"

    invoke-virtual {v0, v8, v3, v9}, Lcom/android/server/content/SyncManager;->cancelActiveSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_75
    .catchall {:try_start_40 .. :try_end_75} :catchall_7a

    .line 827
    .end local v6    # "account":Landroid/accounts/Account;
    .end local v7    # "provider":Ljava/lang/String;
    .end local v8    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    invoke-static {v4, v5}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 828
    nop

    .line 829
    return-void

    .line 827
    :catchall_7a
    move-exception v6

    invoke-static {v4, v5}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 828
    throw v6
.end method

.method public cancelSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "cname"    # Landroid/content/ComponentName;

    .line 736
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/content/ContentService;->cancelSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)V

    .line 737
    return-void
.end method

.method public cancelSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)V
    .registers 11
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "cname"    # Landroid/content/ComponentName;
    .param p4, "userId"    # I

    .line 757
    if-nez p3, :cond_f

    .line 758
    invoke-static {}, Lcom/android/server/content/SyncSecurityStub;->getInstance()Lcom/android/server/content/SyncSecurityStub;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p1}, Lcom/android/server/content/SyncSecurityStub;->permitControlSyncForAccount(Landroid/content/Context;Landroid/accounts/Account;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 759
    return-void

    .line 764
    :cond_f
    if-eqz p2, :cond_20

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_20

    .line 765
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Authority must be non-empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 767
    :cond_20
    :goto_20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to modify the sync settings for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p4, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 771
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 772
    .local v0, "identityToken":J
    if-eqz p3, :cond_45

    .line 773
    const-string v2, "ContentService"

    const-string v3, "cname not null."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    return-void

    .line 777
    :cond_45
    :try_start_45
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    .line 778
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v2, :cond_59

    .line 780
    new-instance v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v3, p1, p2, p4}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 781
    .local v3, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    invoke-virtual {v2, v3}, Lcom/android/server/content/SyncManager;->clearScheduledSyncOperations(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 782
    const/4 v4, 0x0

    const-string v5, "API"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/content/SyncManager;->cancelActiveSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_59
    .catchall {:try_start_45 .. :try_end_59} :catchall_5e

    .line 785
    .end local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    .end local v3    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    :cond_59
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 786
    nop

    .line 787
    return-void

    .line 785
    :catchall_5e
    move-exception v2

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 786
    throw v2
.end method

.method protected declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 22
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw_"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    monitor-enter p0

    .line 236
    :try_start_5
    iget-object v0, v1, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v3, "ContentService"

    invoke-static {v0, v3, v2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_15d

    if-nez v0, :cond_11

    monitor-exit p0

    return-void

    .line 237
    :cond_11
    :try_start_11
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v3, "  "

    invoke-direct {v0, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    move-object v3, v0

    .line 239
    .local v3, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    const-string v0, "-a"

    move-object/from16 v12, p3

    invoke-static {v12, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    move v13, v0

    .line 243
    .local v13, "dumpAll":Z
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_26
    .catchall {:try_start_11 .. :try_end_26} :catchall_15d

    move-wide v14, v4

    .line 245
    .local v14, "identityToken":J
    :try_start_27
    iget-object v0, v1, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    if-nez v0, :cond_33

    .line 246
    const-string v0, "SyncManager not available yet"

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v11, p1

    goto :goto_38

    .line 248
    :cond_33
    move-object/from16 v11, p1

    invoke-virtual {v0, v11, v3, v13}, Lcom/android/server/content/SyncManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V

    .line 250
    :goto_38
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 251
    const-string v0, "Observer tree:"

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 252
    iget-object v10, v1, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    monitor-enter v10
    :try_end_43
    .catchall {:try_start_27 .. :try_end_43} :catchall_158

    .line 253
    const/4 v0, 0x2

    :try_start_44
    new-array v0, v0, [I

    .line 254
    .local v0, "counts":[I
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    move-object v9, v4

    .line 255
    .local v9, "pidCounts":Landroid/util/SparseIntArray;
    iget-object v4, v1, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    const-string v8, ""

    const-string v16, "  "
    :try_end_52
    .catchall {:try_start_44 .. :try_end_52} :catchall_151

    move-object/from16 v5, p1

    move-object v6, v3

    move-object/from16 v7, p3

    move-object/from16 v17, v9

    .end local v9    # "pidCounts":Landroid/util/SparseIntArray;
    .local v17, "pidCounts":Landroid/util/SparseIntArray;
    move-object/from16 v9, v16

    move-object/from16 v16, v10

    move-object v10, v0

    move-object/from16 v11, v17

    :try_start_60
    invoke-virtual/range {v4 .. v11}, Lcom/android/server/content/ContentService$ObserverNode;->dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[ILandroid/util/SparseIntArray;)V

    .line 256
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 257
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 258
    .local v4, "sorted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_6c
    invoke-virtual/range {v17 .. v17}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_84

    .line 259
    move-object/from16 v6, v17

    .end local v17    # "pidCounts":Landroid/util/SparseIntArray;
    .local v6, "pidCounts":Landroid/util/SparseIntArray;
    invoke-virtual {v6, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v17, v6

    goto :goto_6c

    .end local v6    # "pidCounts":Landroid/util/SparseIntArray;
    .restart local v17    # "pidCounts":Landroid/util/SparseIntArray;
    :cond_84
    move-object/from16 v6, v17

    .line 261
    .end local v5    # "i":I
    .end local v17    # "pidCounts":Landroid/util/SparseIntArray;
    .restart local v6    # "pidCounts":Landroid/util/SparseIntArray;
    new-instance v5, Lcom/android/server/content/ContentService$2;

    invoke-direct {v5, v1, v6}, Lcom/android/server/content/ContentService$2;-><init>(Lcom/android/server/content/ContentService;Landroid/util/SparseIntArray;)V

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 275
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_8f
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_bb

    .line 276
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 277
    .local v7, "pid":I
    const-string v8, "  pid "

    invoke-virtual {v3, v8}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    const-string v8, ": "

    invoke-virtual {v3, v8}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 278
    invoke-virtual {v6, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    invoke-virtual {v3, v8}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    const-string v8, " observers"

    invoke-virtual {v3, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 275
    .end local v7    # "pid":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_8f

    .line 280
    .end local v5    # "i":I
    :cond_bb
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 281
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 282
    const-string v5, "Total number of nodes: "

    invoke-virtual {v3, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const/4 v5, 0x0

    aget v5, v0, v5

    invoke-virtual {v3, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 283
    const-string v5, "Total number of observers: "

    invoke-virtual {v3, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const/4 v5, 0x1

    aget v5, v0, v5

    invoke-virtual {v3, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 285
    sget-object v5, Lcom/android/server/content/ContentService;->sObserverDeathDispatcher:Lcom/android/internal/os/BinderDeathDispatcher;

    invoke-virtual {v5, v3}, Lcom/android/internal/os/BinderDeathDispatcher;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 286
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 287
    nop

    .end local v0    # "counts":[I
    .end local v4    # "sorted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v6    # "pidCounts":Landroid/util/SparseIntArray;
    monitor-exit v16
    :try_end_e1
    .catchall {:try_start_60 .. :try_end_e1} :catchall_156

    .line 288
    :try_start_e1
    sget-object v4, Lcom/android/server/content/ContentService;->sObserverLeakDetectedUid:Landroid/util/ArraySet;

    monitor-enter v4
    :try_end_e4
    .catchall {:try_start_e1 .. :try_end_e4} :catchall_158

    .line 289
    :try_start_e4
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 290
    const-string v0, "Observer leaking UIDs: "

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 291
    invoke-virtual {v4}, Landroid/util/ArraySet;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 292
    monitor-exit v4
    :try_end_f4
    .catchall {:try_start_e4 .. :try_end_f4} :catchall_14e

    .line 294
    :try_start_f4
    iget-object v4, v1, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    monitor-enter v4
    :try_end_f7
    .catchall {:try_start_f4 .. :try_end_f7} :catchall_158

    .line 295
    :try_start_f7
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 296
    const-string v0, "Cached content:"

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 297
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 298
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_103
    iget-object v5, v1, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5
    :try_end_109
    .catchall {:try_start_f7 .. :try_end_109} :catchall_149

    if-ge v0, v5, :cond_13f

    .line 299
    :try_start_10b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "User "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 300
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 301
    iget-object v5, v1, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 302
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;
    :try_end_13c
    .catchall {:try_start_10b .. :try_end_13c} :catchall_14c

    .line 298
    add-int/lit8 v0, v0, 0x1

    goto :goto_103

    .line 304
    .end local v0    # "i":I
    :cond_13f
    :try_start_13f
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 305
    monitor-exit v4
    :try_end_143
    .catchall {:try_start_13f .. :try_end_143} :catchall_149

    .line 307
    :try_start_143
    invoke-static {v14, v15}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V
    :try_end_146
    .catchall {:try_start_143 .. :try_end_146} :catchall_15d

    .line 308
    nop

    .line 309
    monitor-exit p0

    return-void

    .line 305
    .end local p0    # "this":Lcom/android/server/content/ContentService;
    :catchall_149
    move-exception v0

    :goto_14a
    :try_start_14a
    monitor-exit v4
    :try_end_14b
    .catchall {:try_start_14a .. :try_end_14b} :catchall_14c

    .end local v3    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .end local v13    # "dumpAll":Z
    .end local v14    # "identityToken":J
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pw_":Ljava/io/PrintWriter;
    .end local p3    # "args":[Ljava/lang/String;
    :try_start_14b
    throw v0
    :try_end_14c
    .catchall {:try_start_14b .. :try_end_14c} :catchall_158

    .restart local v3    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v13    # "dumpAll":Z
    .restart local v14    # "identityToken":J
    .restart local p0    # "this":Lcom/android/server/content/ContentService;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "pw_":Ljava/io/PrintWriter;
    .restart local p3    # "args":[Ljava/lang/String;
    :catchall_14c
    move-exception v0

    goto :goto_14a

    .line 292
    :catchall_14e
    move-exception v0

    :try_start_14f
    monitor-exit v4
    :try_end_150
    .catchall {:try_start_14f .. :try_end_150} :catchall_14e

    .end local v3    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .end local v13    # "dumpAll":Z
    .end local v14    # "identityToken":J
    .end local p0    # "this":Lcom/android/server/content/ContentService;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pw_":Ljava/io/PrintWriter;
    .end local p3    # "args":[Ljava/lang/String;
    :try_start_150
    throw v0
    :try_end_151
    .catchall {:try_start_150 .. :try_end_151} :catchall_158

    .line 287
    .restart local v3    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v13    # "dumpAll":Z
    .restart local v14    # "identityToken":J
    .restart local p0    # "this":Lcom/android/server/content/ContentService;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "pw_":Ljava/io/PrintWriter;
    .restart local p3    # "args":[Ljava/lang/String;
    :catchall_151
    move-exception v0

    move-object/from16 v16, v10

    :goto_154
    :try_start_154
    monitor-exit v16
    :try_end_155
    .catchall {:try_start_154 .. :try_end_155} :catchall_156

    .end local v3    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .end local v13    # "dumpAll":Z
    .end local v14    # "identityToken":J
    .end local p0    # "this":Lcom/android/server/content/ContentService;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pw_":Ljava/io/PrintWriter;
    .end local p3    # "args":[Ljava/lang/String;
    :try_start_155
    throw v0
    :try_end_156
    .catchall {:try_start_155 .. :try_end_156} :catchall_158

    .restart local v3    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v13    # "dumpAll":Z
    .restart local v14    # "identityToken":J
    .restart local p0    # "this":Lcom/android/server/content/ContentService;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "pw_":Ljava/io/PrintWriter;
    .restart local p3    # "args":[Ljava/lang/String;
    :catchall_156
    move-exception v0

    goto :goto_154

    .line 307
    :catchall_158
    move-exception v0

    :try_start_159
    invoke-static {v14, v15}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 308
    throw v0
    :try_end_15d
    .catchall {:try_start_159 .. :try_end_15d} :catchall_15d

    .line 235
    .end local v3    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .end local v13    # "dumpAll":Z
    .end local v14    # "identityToken":J
    .end local p0    # "this":Lcom/android/server/content/ContentService;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pw_":Ljava/io/PrintWriter;
    .end local p3    # "args":[Ljava/lang/String;
    :catchall_15d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method enforceCrossUserPermissionForInjector(ILjava/lang/String;)V
    .registers 3
    .param p1, "userHandle"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 2040
    invoke-direct {p0, p1, p2}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 2041
    return-void
.end method

.method public getCache(Ljava/lang/String;Landroid/net/Uri;I)Landroid/os/Bundle;
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "key"    # Landroid/net/Uri;
    .param p3, "userId"    # I

    .line 1440
    const-string v0, "ContentService"

    invoke-direct {p0, p3, v0}, Lcom/android/server/content/ContentService;->enforceNonFullCrossUserPermission(ILjava/lang/String;)V

    .line 1441
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CACHE_CONTENT"

    const-string v2, "ContentService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1442
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 1445
    invoke-direct {p0, p2, p3}, Lcom/android/server/content/ContentService;->getProviderPackageName(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v0

    .line 1446
    .local v0, "providerPackageName":Ljava/lang/String;
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 1448
    .local v1, "fullKey":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;"
    iget-object v2, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    monitor-enter v2

    .line 1449
    :try_start_2a
    invoke-direct {p0, p3, v0}, Lcom/android/server/content/ContentService;->findOrCreateCacheLocked(ILjava/lang/String;)Landroid/util/ArrayMap;

    move-result-object v3

    .line 1451
    .local v3, "cache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;Landroid/os/Bundle;>;"
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    monitor-exit v2

    return-object v4

    .line 1452
    .end local v3    # "cache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;Landroid/os/Bundle;>;"
    :catchall_36
    move-exception v3

    monitor-exit v2
    :try_end_38
    .catchall {:try_start_2a .. :try_end_38} :catchall_36

    throw v3
.end method

.method public getCurrentSyncs()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/SyncInfo;",
            ">;"
        }
    .end annotation

    .line 1239
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/content/ContentService;->getCurrentSyncsAsUser(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentSyncsAsUser(I)Ljava/util/List;
    .registers 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/SyncInfo;",
            ">;"
        }
    .end annotation

    .line 1248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to read the sync settings for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 1250
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_SYNC_STATS"

    const-string/jumbo v2, "no permission to read the sync stats"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1253
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    .line 1254
    const-string v1, "android.permission.GET_ACCOUNTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2d

    const/4 v0, 0x1

    goto :goto_2e

    :cond_2d
    const/4 v0, 0x0

    .line 1256
    .local v0, "canAccessAccounts":Z
    :goto_2e
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v1

    .line 1258
    .local v1, "identityToken":J
    :try_start_32
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v3

    .line 1259
    invoke-virtual {v3, p1, v0}, Lcom/android/server/content/SyncStorageEngine;->getCurrentSyncsCopy(IZ)Ljava/util/List;

    move-result-object v3
    :try_end_3e
    .catchall {:try_start_32 .. :try_end_3e} :catchall_42

    .line 1261
    invoke-static {v1, v2}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1258
    return-object v3

    .line 1261
    :catchall_42
    move-exception v3

    invoke-static {v1, v2}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1262
    throw v3
.end method

.method public getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I
    .registers 4
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "providerName"    # Ljava/lang/String;

    .line 1078
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/content/ContentService;->getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I
    .registers 8
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "providerName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 1087
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to read the sync settings for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 1089
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_SYNC_SETTINGS"

    const-string/jumbo v2, "no permission to read the sync settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, p1, v0}, Lcom/android/server/content/ContentService;->hasAccountAccess(ZLandroid/accounts/Account;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2e

    .line 1092
    return v1

    .line 1095
    :cond_2e
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v2

    .line 1097
    .local v2, "identityToken":J
    :try_start_32
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v0

    .line 1098
    .local v0, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v0, :cond_40

    .line 1099
    invoke-virtual {v0, p1, p3, p2, v1}, Lcom/android/server/content/SyncManager;->computeSyncable(Landroid/accounts/Account;ILjava/lang/String;Z)I

    move-result v1
    :try_end_3c
    .catchall {:try_start_32 .. :try_end_3c} :catchall_46

    .line 1103
    invoke-static {v2, v3}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1099
    return v1

    .line 1103
    .end local v0    # "syncManager":Lcom/android/server/content/SyncManager;
    :cond_40
    invoke-static {v2, v3}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1104
    nop

    .line 1105
    const/4 v0, -0x1

    return v0

    .line 1103
    :catchall_46
    move-exception v0

    invoke-static {v2, v3}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1104
    throw v0
.end method

.method public getMasterSyncAutomatically()Z
    .registers 2

    .line 1155
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/content/ContentService;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v0

    return v0
.end method

.method public getMasterSyncAutomaticallyAsUser(I)Z
    .registers 6
    .param p1, "userId"    # I

    .line 1164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to read the sync settings for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 1166
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_SYNC_SETTINGS"

    const-string/jumbo v2, "no permission to read the sync settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1169
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 1171
    .local v0, "identityToken":J
    :try_start_25
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    .line 1172
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v2, :cond_37

    .line 1173
    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/content/SyncStorageEngine;->getMasterSyncAutomatically(I)Z

    move-result v3
    :try_end_33
    .catchall {:try_start_25 .. :try_end_33} :catchall_3d

    .line 1176
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1173
    return v3

    .line 1176
    .end local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :cond_37
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1177
    nop

    .line 1178
    const/4 v2, 0x0

    return v2

    .line 1176
    :catchall_3d
    move-exception v2

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1177
    throw v2
.end method

.method public getMiSyncPauseToTime(Landroid/accounts/Account;I)J
    .registers 5
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "uid"    # I

    .line 2023
    invoke-static {}, Lcom/android/server/content/ContentServiceStub;->getInstance()Lcom/android/server/content/ContentServiceStub;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p0, p1, p2}, Lcom/android/server/content/ContentServiceStub;->getMiSyncPauseToTime(Landroid/content/Context;Lcom/android/server/content/ContentService;Landroid/accounts/Account;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMiSyncStrategy(Landroid/accounts/Account;I)I
    .registers 5
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "uid"    # I

    .line 2035
    invoke-static {}, Lcom/android/server/content/ContentServiceStub;->getInstance()Lcom/android/server/content/ContentServiceStub;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p0, p1, p2}, Lcom/android/server/content/ContentServiceStub;->getMiSyncStrategy(Landroid/content/Context;Lcom/android/server/content/ContentService;Landroid/accounts/Account;I)I

    move-result v0

    return v0
.end method

.method public getPeriodicSyncs(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Ljava/util/List;
    .registers 9
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "providerName"    # Ljava/lang/String;
    .param p3, "cname"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/PeriodicSync;",
            ">;"
        }
    .end annotation

    .line 1054
    if-eqz p1, :cond_49

    .line 1057
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 1060
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_SYNC_SETTINGS"

    const-string/jumbo v2, "no permission to read the sync settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/content/ContentService;->hasAccountAccess(ZLandroid/accounts/Account;I)Z

    move-result v0

    if-nez v0, :cond_23

    .line 1063
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 1066
    :cond_23
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1067
    .local v0, "userId":I
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v1

    .line 1069
    .local v1, "identityToken":J
    :try_start_2b
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v3

    new-instance v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v4, p1, p2, v0}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Lcom/android/server/content/SyncManager;->getPeriodicSyncs(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Ljava/util/List;

    move-result-object v3
    :try_end_38
    .catchall {:try_start_2b .. :try_end_38} :catchall_3c

    .line 1072
    invoke-static {v1, v2}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1069
    return-object v3

    .line 1072
    :catchall_3c
    move-exception v3

    invoke-static {v1, v2}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1073
    throw v3

    .line 1058
    .end local v0    # "userId":I
    .end local v1    # "identityToken":J
    :cond_41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Authority must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1055
    :cond_49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Account must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSyncAdapterPackageAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 8
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 884
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to read sync settings for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 886
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 887
    .local v0, "callingUid":I
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v1

    .line 889
    .local v1, "identityToken":J
    :try_start_1f
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v3

    invoke-virtual {v3, p1, p2, v0, p3}, Lcom/android/server/content/SyncManager;->getSyncAdapterPackageAsUser(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3
    :try_end_27
    .catchall {:try_start_1f .. :try_end_27} :catchall_2b

    .line 892
    invoke-static {v1, v2}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 889
    return-object v3

    .line 892
    :catchall_2b
    move-exception v3

    invoke-static {v1, v2}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 893
    throw v3
.end method

.method public getSyncAdapterPackagesForAuthorityAsUser(Ljava/lang/String;I)[Ljava/lang/String;
    .registers 8
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 866
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to read sync settings for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 868
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 871
    .local v0, "callingUid":I
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v1

    .line 873
    .local v1, "identityToken":J
    :try_start_1f
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v3

    .line 874
    .local v3, "syncManager":Lcom/android/server/content/SyncManager;
    invoke-virtual {v3, p1, v0, p2}, Lcom/android/server/content/SyncManager;->getSyncAdapterPackagesForAuthorityAsUser(Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v4
    :try_end_27
    .catchall {:try_start_1f .. :try_end_27} :catchall_2b

    .line 877
    invoke-static {v1, v2}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 874
    return-object v4

    .line 877
    .end local v3    # "syncManager":Lcom/android/server/content/SyncManager;
    :catchall_2b
    move-exception v3

    invoke-static {v1, v2}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 878
    throw v3
.end method

.method public getSyncAdapterTypes()[Landroid/content/SyncAdapterType;
    .registers 2

    .line 837
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/content/ContentService;->getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;

    move-result-object v0

    return-object v0
.end method

.method public getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;
    .registers 7
    .param p1, "userId"    # I

    .line 850
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to read sync settings for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 852
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 855
    .local v0, "callingUid":I
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v1

    .line 857
    .local v1, "identityToken":J
    :try_start_1f
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v3

    .line 858
    .local v3, "syncManager":Lcom/android/server/content/SyncManager;
    invoke-virtual {v3, v0, p1}, Lcom/android/server/content/SyncManager;->getSyncAdapterTypes(II)[Landroid/content/SyncAdapterType;

    move-result-object v4
    :try_end_27
    .catchall {:try_start_1f .. :try_end_27} :catchall_2b

    .line 860
    invoke-static {v1, v2}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 858
    return-object v4

    .line 860
    .end local v3    # "syncManager":Lcom/android/server/content/SyncManager;
    :catchall_2b
    move-exception v3

    invoke-static {v1, v2}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 861
    throw v3
.end method

.method public getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z
    .registers 4
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "providerName"    # Ljava/lang/String;

    .line 898
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/content/ContentService;->getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .registers 8
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "providerName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 907
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to read the sync settings for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 909
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_SYNC_SETTINGS"

    const-string/jumbo v2, "no permission to read the sync settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, p1, v0}, Lcom/android/server/content/ContentService;->hasAccountAccess(ZLandroid/accounts/Account;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2e

    .line 912
    return v1

    .line 915
    :cond_2e
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v2

    .line 917
    .local v2, "identityToken":J
    :try_start_32
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v0

    .line 918
    .local v0, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v0, :cond_44

    .line 919
    invoke-virtual {v0}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v1

    .line 920
    invoke-virtual {v1, p1, p3, p2}, Lcom/android/server/content/SyncStorageEngine;->getSyncAutomatically(Landroid/accounts/Account;ILjava/lang/String;)Z

    move-result v1
    :try_end_40
    .catchall {:try_start_32 .. :try_end_40} :catchall_49

    .line 923
    invoke-static {v2, v3}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 919
    return v1

    .line 923
    .end local v0    # "syncManager":Lcom/android/server/content/SyncManager;
    :cond_44
    invoke-static {v2, v3}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 924
    nop

    .line 925
    return v1

    .line 923
    :catchall_49
    move-exception v0

    invoke-static {v2, v3}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 924
    throw v0
.end method

.method getSyncManagerForInjector()Lcom/android/server/content/SyncManager;
    .registers 2

    .line 2044
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v0

    return-object v0
.end method

.method public getSyncStatus(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Landroid/content/SyncStatusInfo;
    .registers 5
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "cname"    # Landroid/content/ComponentName;

    .line 1267
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/content/ContentService;->getSyncStatusAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)Landroid/content/SyncStatusInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSyncStatusAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)Landroid/content/SyncStatusInfo;
    .registers 10
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "cname"    # Landroid/content/ComponentName;
    .param p4, "userId"    # I

    .line 1277
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_65

    .line 1281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to read the sync stats for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p4, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 1283
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_SYNC_STATS"

    const-string/jumbo v2, "no permission to read the sync stats"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1285
    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/content/ContentService;->hasAccountAccess(ZLandroid/accounts/Account;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_34

    .line 1286
    return-object v1

    .line 1289
    :cond_34
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v2

    .line 1291
    .local v2, "identityToken":J
    :try_start_38
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v0
    :try_end_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_60

    .line 1292
    .local v0, "syncManager":Lcom/android/server/content/SyncManager;
    if-nez v0, :cond_43

    .line 1293
    nop

    .line 1303
    invoke-static {v2, v3}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1293
    return-object v1

    .line 1296
    :cond_43
    if-eqz p1, :cond_58

    if-eqz p2, :cond_58

    .line 1297
    :try_start_47
    new-instance v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v1, p1, p2, p4}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 1301
    .local v1, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    invoke-virtual {v0}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/server/content/SyncStorageEngine;->getStatusByAuthority(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/content/SyncStatusInfo;

    move-result-object v4
    :try_end_54
    .catchall {:try_start_47 .. :try_end_54} :catchall_60

    .line 1303
    invoke-static {v2, v3}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1301
    return-object v4

    .line 1299
    .end local v1    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    :cond_58
    :try_start_58
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v4, "Must call sync status with valid authority"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v2    # "identityToken":J
    .end local p0    # "this":Lcom/android/server/content/ContentService;
    .end local p1    # "account":Landroid/accounts/Account;
    .end local p2    # "authority":Ljava/lang/String;
    .end local p3    # "cname":Landroid/content/ComponentName;
    .end local p4    # "userId":I
    throw v1
    :try_end_60
    .catchall {:try_start_58 .. :try_end_60} :catchall_60

    .line 1303
    .end local v0    # "syncManager":Lcom/android/server/content/SyncManager;
    .restart local v2    # "identityToken":J
    .restart local p0    # "this":Lcom/android/server/content/ContentService;
    .restart local p1    # "account":Landroid/accounts/Account;
    .restart local p2    # "authority":Ljava/lang/String;
    .restart local p3    # "cname":Landroid/content/ComponentName;
    .restart local p4    # "userId":I
    :catchall_60
    move-exception v0

    invoke-static {v2, v3}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1304
    throw v0

    .line 1278
    .end local v2    # "identityToken":J
    :cond_65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Authority must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isSyncActive(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Z
    .registers 10
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "cname"    # Landroid/content/ComponentName;

    .line 1217
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_SYNC_STATS"

    const-string/jumbo v2, "no permission to read the sync stats"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1219
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, p1, v0}, Lcom/android/server/content/ContentService;->hasAccountAccess(ZLandroid/accounts/Account;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_17

    .line 1220
    return v1

    .line 1223
    :cond_17
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1224
    .local v0, "userId":I
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v2

    .line 1226
    .local v2, "identityToken":J
    :try_start_1f
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v4
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_3b

    .line 1227
    .local v4, "syncManager":Lcom/android/server/content/SyncManager;
    if-nez v4, :cond_2a

    .line 1228
    nop

    .line 1233
    invoke-static {v2, v3}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1228
    return v1

    .line 1230
    :cond_2a
    :try_start_2a
    invoke-virtual {v4}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v1

    new-instance v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v5, p1, p2, v0}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    invoke-virtual {v1, v5}, Lcom/android/server/content/SyncStorageEngine;->isSyncActive(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v1
    :try_end_37
    .catchall {:try_start_2a .. :try_end_37} :catchall_3b

    .line 1233
    invoke-static {v2, v3}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1230
    return v1

    .line 1233
    .end local v4    # "syncManager":Lcom/android/server/content/SyncManager;
    :catchall_3b
    move-exception v1

    invoke-static {v2, v3}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1234
    throw v1
.end method

.method public isSyncPending(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Z
    .registers 5
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "cname"    # Landroid/content/ComponentName;

    .line 1309
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/content/ContentService;->isSyncPendingAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public isSyncPendingAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)Z
    .registers 10
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "cname"    # Landroid/content/ComponentName;
    .param p4, "userId"    # I

    .line 1315
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_SYNC_STATS"

    const-string/jumbo v2, "no permission to read the sync stats"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to retrieve the sync settings for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p4, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 1319
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, p1, v0}, Lcom/android/server/content/ContentService;->hasAccountAccess(ZLandroid/accounts/Account;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2e

    .line 1320
    return v1

    .line 1323
    :cond_2e
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v2

    .line 1324
    .local v2, "identityToken":J
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v0

    .line 1325
    .local v0, "syncManager":Lcom/android/server/content/SyncManager;
    if-nez v0, :cond_39

    return v1

    .line 1329
    :cond_39
    if-eqz p1, :cond_4e

    if-eqz p2, :cond_4e

    .line 1330
    :try_start_3d
    new-instance v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v1, p1, p2, p4}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 1334
    .local v1, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    invoke-virtual {v0}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/server/content/SyncStorageEngine;->isSyncPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v4
    :try_end_4a
    .catchall {:try_start_3d .. :try_end_4a} :catchall_56

    .line 1336
    invoke-static {v2, v3}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1334
    return v4

    .line 1332
    .end local v1    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    :cond_4e
    :try_start_4e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid authority specified"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "syncManager":Lcom/android/server/content/SyncManager;
    .end local v2    # "identityToken":J
    .end local p0    # "this":Lcom/android/server/content/ContentService;
    .end local p1    # "account":Landroid/accounts/Account;
    .end local p2    # "authority":Ljava/lang/String;
    .end local p3    # "cname":Landroid/content/ComponentName;
    .end local p4    # "userId":I
    throw v1
    :try_end_56
    .catchall {:try_start_4e .. :try_end_56} :catchall_56

    .line 1336
    .restart local v0    # "syncManager":Lcom/android/server/content/SyncManager;
    .restart local v2    # "identityToken":J
    .restart local p0    # "this":Lcom/android/server/content/ContentService;
    .restart local p1    # "account":Landroid/accounts/Account;
    .restart local p2    # "authority":Ljava/lang/String;
    .restart local p3    # "cname":Landroid/content/ComponentName;
    .restart local p4    # "userId":I
    :catchall_56
    move-exception v1

    invoke-static {v2, v3}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1337
    throw v1
.end method

.method synthetic lambda$new$0$com-android-server-content-ContentService(Ljava/lang/String;I)[Ljava/lang/String;
    .registers 4
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 320
    invoke-virtual {p0, p1, p2}, Lcom/android/server/content/ContentService;->getSyncAdapterPackagesForAuthorityAsUser(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public notifyChange([Landroid/net/Uri;Landroid/database/IContentObserver;ZIIILjava/lang/String;)V
    .registers 39
    .param p1, "uris"    # [Landroid/net/Uri;
    .param p2, "observer"    # Landroid/database/IContentObserver;
    .param p3, "observerWantsSelfNotifications"    # Z
    .param p4, "flags"    # I
    .param p5, "userId"    # I
    .param p6, "targetSdkVersion"    # I
    .param p7, "callingPackage"    # Ljava/lang/String;

    .line 430
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    .line 431
    .local v15, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v19

    .line 432
    .local v19, "callingPid":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v20

    .line 435
    .local v20, "callingUserId":I
    new-instance v29, Lcom/android/server/content/ContentService$ObserverCollector;

    invoke-direct/range {v29 .. v29}, Lcom/android/server/content/ContentService$ObserverCollector;-><init>()V

    .line 439
    .local v29, "collector":Lcom/android/server/content/ContentService$ObserverCollector;
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v14, v0

    .line 441
    .local v14, "validatedProviders":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;Ljava/lang/String;>;"
    array-length v0, v9

    const/16 v30, 0x0

    move/from16 v10, v30

    :goto_20
    if-ge v10, v0, :cond_c6

    aget-object v11, v9, v10

    .line 443
    .local v11, "uri":Landroid/net/Uri;
    const/4 v5, 0x2

    const/4 v6, 0x1

    move-object/from16 v1, p0

    move-object v2, v11

    move/from16 v3, v19

    move v4, v15

    move/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/content/ContentService;->handleIncomingUser(Landroid/net/Uri;IIIZI)I

    move-result v1

    .line 445
    .local v1, "resolvedUserId":I
    invoke-virtual {v11}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    .line 446
    .local v2, "provider":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {v14, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a2

    .line 447
    const-class v3, Landroid/app/ActivityManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManagerInternal;

    .line 448
    invoke-virtual {v11}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Landroid/app/ActivityManagerInternal;->checkContentProviderAccess(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 449
    .local v3, "msg":Ljava/lang/String;
    if-eqz v3, :cond_98

    .line 450
    const/16 v4, 0x1a

    move/from16 v5, p6

    if-ge v5, v4, :cond_92

    .line 453
    const-string v4, "Failed to find provider"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_65

    goto :goto_9a

    .line 457
    :cond_65
    const-string v4, "ContentService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring notify for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    goto :goto_bf

    .line 451
    :cond_92
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 449
    :cond_98
    move/from16 v5, p6

    .line 465
    :goto_9a
    invoke-direct {v8, v11, v1}, Lcom/android/server/content/ContentService;->getProviderPackageName(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v4

    .line 466
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {v14, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a4

    .line 446
    .end local v3    # "msg":Ljava/lang/String;
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_a2
    move/from16 v5, p6

    .line 471
    :goto_a4
    iget-object v3, v8, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    monitor-enter v3

    .line 472
    :try_start_a7
    invoke-static {v11}, Lcom/android/server/content/ContentService$ObserverNode;->countUriSegments(Landroid/net/Uri;)I

    move-result v23

    .line 473
    .local v23, "segmentCount":I
    iget-object v4, v8, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    const/16 v24, 0x0

    move-object/from16 v21, v4

    move-object/from16 v22, v11

    move-object/from16 v25, p2

    move/from16 v26, p3

    move/from16 v27, p4

    move/from16 v28, v1

    invoke-virtual/range {v21 .. v29}, Lcom/android/server/content/ContentService$ObserverNode;->collectObserversLocked(Landroid/net/Uri;IILandroid/database/IContentObserver;ZIILcom/android/server/content/ContentService$ObserverCollector;)V

    .line 475
    .end local v23    # "segmentCount":I
    monitor-exit v3

    .line 441
    .end local v1    # "resolvedUserId":I
    .end local v2    # "provider":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v11    # "uri":Landroid/net/Uri;
    :goto_bf
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_20

    .line 475
    .restart local v1    # "resolvedUserId":I
    .restart local v2    # "provider":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v11    # "uri":Landroid/net/Uri;
    :catchall_c3
    move-exception v0

    monitor-exit v3
    :try_end_c5
    .catchall {:try_start_a7 .. :try_end_c5} :catchall_c3

    throw v0

    .line 478
    .end local v1    # "resolvedUserId":I
    .end local v2    # "provider":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v11    # "uri":Landroid/net/Uri;
    :cond_c6
    move/from16 v5, p6

    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v1

    .line 481
    .local v1, "token":J
    :try_start_cc
    invoke-virtual/range {v29 .. v29}, Lcom/android/server/content/ContentService$ObserverCollector;->dispatch()V

    .line 483
    const/4 v0, 0x0

    move v3, v0

    .local v3, "i":I
    :goto_d1
    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge v3, v0, :cond_14c

    .line 484
    invoke-virtual {v14, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 485
    .local v4, "authority":Ljava/lang/String;
    invoke-virtual {v14, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v6, v0

    .line 486
    .local v6, "resolvedUserId":I
    invoke-virtual {v14, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    .line 489
    .local v7, "packageName":Ljava/lang/String;
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_121

    .line 490
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v0

    .line 491
    .local v0, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v0, :cond_11c

    .line 492
    const/4 v11, 0x0

    .line 494
    invoke-direct {v8, v15}, Lcom/android/server/content/ContentService;->getSyncExemptionForCaller(I)I

    move-result v16
    :try_end_107
    .catchall {:try_start_cc .. :try_end_107} :catchall_155

    .line 492
    move-object v10, v0

    move/from16 v12, v20

    move v13, v15

    move-object/from16 v21, v14

    .end local v14    # "validatedProviders":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;Ljava/lang/String;>;"
    .local v21, "validatedProviders":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;Ljava/lang/String;>;"
    move-object v14, v4

    move/from16 v22, v15

    .end local v15    # "callingUid":I
    .local v22, "callingUid":I
    move/from16 v15, v16

    move/from16 v16, v22

    move/from16 v17, v19

    move-object/from16 v18, p7

    :try_start_118
    invoke-virtual/range {v10 .. v18}, Lcom/android/server/content/SyncManager;->scheduleLocalSync(Landroid/accounts/Account;IILjava/lang/String;IIILjava/lang/String;)V

    goto :goto_125

    .line 491
    .end local v21    # "validatedProviders":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;Ljava/lang/String;>;"
    .end local v22    # "callingUid":I
    .restart local v14    # "validatedProviders":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;Ljava/lang/String;>;"
    .restart local v15    # "callingUid":I
    :cond_11c
    move-object/from16 v21, v14

    move/from16 v22, v15

    .end local v14    # "validatedProviders":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;Ljava/lang/String;>;"
    .end local v15    # "callingUid":I
    .restart local v21    # "validatedProviders":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;Ljava/lang/String;>;"
    .restart local v22    # "callingUid":I
    goto :goto_125

    .line 489
    .end local v0    # "syncManager":Lcom/android/server/content/SyncManager;
    .end local v21    # "validatedProviders":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;Ljava/lang/String;>;"
    .end local v22    # "callingUid":I
    .restart local v14    # "validatedProviders":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;Ljava/lang/String;>;"
    .restart local v15    # "callingUid":I
    :cond_121
    move-object/from16 v21, v14

    move/from16 v22, v15

    .line 500
    .end local v14    # "validatedProviders":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;Ljava/lang/String;>;"
    .end local v15    # "callingUid":I
    .restart local v21    # "validatedProviders":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;Ljava/lang/String;>;"
    .restart local v22    # "callingUid":I
    :goto_125
    iget-object v10, v8, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    monitor-enter v10
    :try_end_128
    .catchall {:try_start_118 .. :try_end_128} :catchall_14a

    .line 501
    :try_start_128
    array-length v0, v9

    move/from16 v11, v30

    :goto_12b
    if-ge v11, v0, :cond_13f

    aget-object v12, v9, v11

    .line 502
    .local v12, "uri":Landroid/net/Uri;
    invoke-virtual {v12}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_13c

    .line 503
    invoke-direct {v8, v6, v7, v12}, Lcom/android/server/content/ContentService;->invalidateCacheLocked(ILjava/lang/String;Landroid/net/Uri;)V

    .line 501
    .end local v12    # "uri":Landroid/net/Uri;
    :cond_13c
    add-int/lit8 v11, v11, 0x1

    goto :goto_12b

    .line 506
    :cond_13f
    monitor-exit v10

    .line 483
    .end local v4    # "authority":Ljava/lang/String;
    .end local v6    # "resolvedUserId":I
    .end local v7    # "packageName":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v14, v21

    move/from16 v15, v22

    goto :goto_d1

    .line 506
    .restart local v4    # "authority":Ljava/lang/String;
    .restart local v6    # "resolvedUserId":I
    .restart local v7    # "packageName":Ljava/lang/String;
    :catchall_147
    move-exception v0

    monitor-exit v10
    :try_end_149
    .catchall {:try_start_128 .. :try_end_149} :catchall_147

    .end local v1    # "token":J
    .end local v19    # "callingPid":I
    .end local v20    # "callingUserId":I
    .end local v21    # "validatedProviders":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;Ljava/lang/String;>;"
    .end local v22    # "callingUid":I
    .end local v29    # "collector":Lcom/android/server/content/ContentService$ObserverCollector;
    .end local p0    # "this":Lcom/android/server/content/ContentService;
    .end local p1    # "uris":[Landroid/net/Uri;
    .end local p2    # "observer":Landroid/database/IContentObserver;
    .end local p3    # "observerWantsSelfNotifications":Z
    .end local p4    # "flags":I
    .end local p5    # "userId":I
    .end local p6    # "targetSdkVersion":I
    .end local p7    # "callingPackage":Ljava/lang/String;
    :try_start_149
    throw v0
    :try_end_14a
    .catchall {:try_start_149 .. :try_end_14a} :catchall_14a

    .line 509
    .end local v3    # "i":I
    .end local v4    # "authority":Ljava/lang/String;
    .end local v6    # "resolvedUserId":I
    .end local v7    # "packageName":Ljava/lang/String;
    .restart local v1    # "token":J
    .restart local v19    # "callingPid":I
    .restart local v20    # "callingUserId":I
    .restart local v21    # "validatedProviders":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;Ljava/lang/String;>;"
    .restart local v22    # "callingUid":I
    .restart local v29    # "collector":Lcom/android/server/content/ContentService$ObserverCollector;
    .restart local p0    # "this":Lcom/android/server/content/ContentService;
    .restart local p1    # "uris":[Landroid/net/Uri;
    .restart local p2    # "observer":Landroid/database/IContentObserver;
    .restart local p3    # "observerWantsSelfNotifications":Z
    .restart local p4    # "flags":I
    .restart local p5    # "userId":I
    .restart local p6    # "targetSdkVersion":I
    .restart local p7    # "callingPackage":Ljava/lang/String;
    :catchall_14a
    move-exception v0

    goto :goto_15a

    .line 483
    .end local v21    # "validatedProviders":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;Ljava/lang/String;>;"
    .end local v22    # "callingUid":I
    .restart local v3    # "i":I
    .restart local v14    # "validatedProviders":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;Ljava/lang/String;>;"
    .restart local v15    # "callingUid":I
    :cond_14c
    move-object/from16 v21, v14

    move/from16 v22, v15

    .line 509
    .end local v3    # "i":I
    .end local v14    # "validatedProviders":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;Ljava/lang/String;>;"
    .end local v15    # "callingUid":I
    .restart local v21    # "validatedProviders":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;Ljava/lang/String;>;"
    .restart local v22    # "callingUid":I
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 510
    nop

    .line 511
    return-void

    .line 509
    .end local v21    # "validatedProviders":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;Ljava/lang/String;>;"
    .end local v22    # "callingUid":I
    .restart local v14    # "validatedProviders":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;Ljava/lang/String;>;"
    .restart local v15    # "callingUid":I
    :catchall_155
    move-exception v0

    move-object/from16 v21, v14

    move/from16 v22, v15

    .end local v14    # "validatedProviders":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;Ljava/lang/String;>;"
    .end local v15    # "callingUid":I
    .restart local v21    # "validatedProviders":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;Ljava/lang/String;>;"
    .restart local v22    # "callingUid":I
    :goto_15a
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 510
    throw v0
.end method

.method onBootPhase(I)V
    .registers 3
    .param p1, "phase"    # I

    .line 341
    packed-switch p1, :pswitch_data_10

    goto :goto_7

    .line 343
    :pswitch_4
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    .line 346
    :goto_7
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    if-eqz v0, :cond_e

    .line 347
    invoke-virtual {v0, p1}, Lcom/android/server/content/SyncManager;->onBootPhase(I)V

    .line 349
    :cond_e
    return-void

    nop

    :pswitch_data_10
    .packed-switch 0x226
        :pswitch_4
    .end packed-switch
.end method

.method public onDbCorruption(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "stacktrace"    # Ljava/lang/String;

    .line 2000
    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2001
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2004
    invoke-static {p1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2005
    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 2011
    new-instance v0, Lcom/android/server/content/ContentShellCommand;

    invoke-direct {v0, p0}, Lcom/android/server/content/ContentShellCommand;-><init>(Landroid/content/IContentService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/content/ContentShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 2012
    return-void
.end method

.method onStartUser(I)V
    .registers 3
    .param p1, "userHandle"    # I

    .line 223
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/android/server/content/SyncManager;->onStartUser(I)V

    .line 224
    :cond_7
    return-void
.end method

.method onStopUser(I)V
    .registers 3
    .param p1, "userHandle"    # I

    .line 231
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/android/server/content/SyncManager;->onStopUser(I)V

    .line 232
    :cond_7
    return-void
.end method

.method onUnlockUser(I)V
    .registers 3
    .param p1, "userHandle"    # I

    .line 227
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/android/server/content/SyncManager;->onUnlockUser(I)V

    .line 228
    :cond_7
    return-void
.end method

.method public putCache(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;I)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "key"    # Landroid/net/Uri;
    .param p3, "value"    # Landroid/os/Bundle;
    .param p4, "userId"    # I

    .line 1417
    const/4 v0, 0x1

    invoke-static {p3, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 1418
    const-string v0, "ContentService"

    invoke-direct {p0, p4, v0}, Lcom/android/server/content/ContentService;->enforceNonFullCrossUserPermission(ILjava/lang/String;)V

    .line 1419
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CACHE_CONTENT"

    const-string v2, "ContentService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1420
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 1423
    invoke-direct {p0, p2, p4}, Lcom/android/server/content/ContentService;->getProviderPackageName(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v0

    .line 1424
    .local v0, "providerPackageName":Ljava/lang/String;
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 1426
    .local v1, "fullKey":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;"
    iget-object v2, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    monitor-enter v2

    .line 1427
    :try_start_2e
    invoke-direct {p0, p4, v0}, Lcom/android/server/content/ContentService;->findOrCreateCacheLocked(ILjava/lang/String;)Landroid/util/ArrayMap;

    move-result-object v3

    .line 1429
    .local v3, "cache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;Landroid/os/Bundle;>;"
    if-eqz p3, :cond_38

    .line 1430
    invoke-virtual {v3, v1, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3b

    .line 1432
    :cond_38
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1434
    .end local v3    # "cache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;Landroid/os/Bundle;>;"
    :goto_3b
    monitor-exit v2

    .line 1435
    return-void

    .line 1434
    :catchall_3d
    move-exception v3

    monitor-exit v2
    :try_end_3f
    .catchall {:try_start_2e .. :try_end_3f} :catchall_3d

    throw v3
.end method

.method public registerContentObserver(Landroid/net/Uri;ZLandroid/database/IContentObserver;)V
    .registers 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "notifyForDescendants"    # Z
    .param p3, "observer"    # Landroid/database/IContentObserver;

    .line 398
    nop

    .line 399
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 398
    const/16 v5, 0x2710

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/content/ContentService;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/IContentObserver;II)V

    .line 400
    return-void
.end method

.method public registerContentObserver(Landroid/net/Uri;ZLandroid/database/IContentObserver;II)V
    .registers 24
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "notifyForDescendants"    # Z
    .param p3, "observer"    # Landroid/database/IContentObserver;
    .param p4, "userHandle"    # I
    .param p5, "targetSdkVersion"    # I

    .line 362
    move-object/from16 v8, p0

    move-object/from16 v15, p1

    if-eqz p3, :cond_91

    if-eqz v15, :cond_91

    .line 366
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    .line 367
    .local v14, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v17

    .line 369
    .local v17, "pid":I
    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, v17

    move v4, v14

    move/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/content/ContentService;->handleIncomingUser(Landroid/net/Uri;IIIZI)I

    move-result v1

    .line 372
    .end local p4    # "userHandle":I
    .local v1, "userHandle":I
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 373
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/app/ActivityManagerInternal;->checkContentProviderAccess(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 374
    .local v2, "msg":Ljava/lang/String;
    if-eqz v2, :cond_73

    .line 375
    const/16 v0, 0x1a

    move/from16 v3, p5

    if-ge v3, v0, :cond_6d

    .line 378
    const-string v0, "Failed to find provider"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_40

    goto :goto_75

    .line 382
    :cond_40
    const-string v0, "ContentService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring content changes for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    return-void

    .line 376
    :cond_6d
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 374
    :cond_73
    move/from16 v3, p5

    .line 388
    :goto_75
    iget-object v4, v8, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    monitor-enter v4

    .line 389
    :try_start_78
    iget-object v13, v8, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;
    :try_end_7a
    .catchall {:try_start_78 .. :try_end_7a} :catchall_8b

    move-object v9, v13

    move-object/from16 v10, p1

    move-object/from16 v11, p3

    move/from16 v12, p2

    move v5, v14

    .end local v14    # "uid":I
    .local v5, "uid":I
    move/from16 v15, v17

    move/from16 v16, v1

    :try_start_86
    invoke-virtual/range {v9 .. v16}, Lcom/android/server/content/ContentService$ObserverNode;->addObserverLocked(Landroid/net/Uri;Landroid/database/IContentObserver;ZLjava/lang/Object;III)V

    .line 393
    monitor-exit v4

    .line 394
    return-void

    .line 393
    .end local v5    # "uid":I
    .restart local v14    # "uid":I
    :catchall_8b
    move-exception v0

    move v5, v14

    .end local v14    # "uid":I
    .restart local v5    # "uid":I
    :goto_8d
    monitor-exit v4
    :try_end_8e
    .catchall {:try_start_86 .. :try_end_8e} :catchall_8f

    throw v0

    :catchall_8f
    move-exception v0

    goto :goto_8d

    .line 362
    .end local v1    # "userHandle":I
    .end local v2    # "msg":Ljava/lang/String;
    .end local v5    # "uid":I
    .end local v17    # "pid":I
    .restart local p4    # "userHandle":I
    :cond_91
    move/from16 v3, p5

    .line 363
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must pass a valid uri and observer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 12
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 1018
    invoke-static {}, Lcom/android/server/content/SyncSecurityStub;->getInstance()Lcom/android/server/content/SyncSecurityStub;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p1}, Lcom/android/server/content/SyncSecurityStub;->permitControlSyncForAccount(Landroid/content/Context;Landroid/accounts/Account;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1019
    return-void

    .line 1023
    :cond_d
    const/4 v0, 0x1

    invoke-static {p3, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 1024
    if-eqz p1, :cond_6b

    .line 1027
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_63

    .line 1030
    iget-object v1, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v3, "no permission to write the sync settings"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1034
    .local v1, "callingUid":I
    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/content/ContentService;->hasAccountAccess(ZLandroid/accounts/Account;I)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 1035
    return-void

    .line 1037
    :cond_2e
    invoke-direct {p0, v1, p3}, Lcom/android/server/content/ContentService;->validateExtras(ILandroid/os/Bundle;)V

    .line 1039
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1040
    .local v0, "userId":I
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v2

    .line 1042
    .local v2, "identityToken":J
    :try_start_39
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v4

    new-instance v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v5, p1, p2, v0}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "removePeriodicSync() by uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1043
    invoke-virtual {v4, v5, p3, v6}, Lcom/android/server/content/SyncManager;->removePeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_59
    .catchall {:try_start_39 .. :try_end_59} :catchall_5e

    .line 1047
    invoke-static {v2, v3}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1048
    nop

    .line 1049
    return-void

    .line 1047
    :catchall_5e
    move-exception v4

    invoke-static {v2, v3}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1048
    throw v4

    .line 1028
    .end local v0    # "userId":I
    .end local v1    # "callingUid":I
    .end local v2    # "identityToken":J
    :cond_63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Authority must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1025
    :cond_6b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Account must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeStatusChangeListener(Landroid/content/ISyncStatusObserver;)V
    .registers 6
    .param p1, "callback"    # Landroid/content/ISyncStatusObserver;

    .line 1357
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 1359
    .local v0, "identityToken":J
    :try_start_4
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    .line 1360
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v2, :cond_13

    if-eqz p1, :cond_13

    .line 1361
    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/content/SyncStorageEngine;->removeStatusChangeListener(Landroid/content/ISyncStatusObserver;)V
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_18

    .line 1364
    .end local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :cond_13
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1365
    nop

    .line 1366
    return-void

    .line 1364
    :catchall_18
    move-exception v2

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1365
    throw v2
.end method

.method public requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 26
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "callingPackage"    # Ljava/lang/String;

    .line 610
    move-object/from16 v1, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p3

    invoke-static {}, Lcom/android/server/content/SyncSecurityStub;->getInstance()Lcom/android/server/content/SyncSecurityStub;

    move-result-object v0

    iget-object v2, v1, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    invoke-interface {v0, v2, v13}, Lcom/android/server/content/SyncSecurityStub;->permitControlSyncForAccount(Landroid/content/Context;Landroid/accounts/Account;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 611
    return-void

    .line 615
    :cond_13
    const/4 v0, 0x1

    invoke-static {v14, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 616
    invoke-static/range {p3 .. p3}, Landroid/content/ContentResolver;->validateSyncExtrasBundle(Landroid/os/Bundle;)V

    .line 617
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v15

    .line 618
    .local v15, "userId":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    .line 619
    .local v12, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v16

    .line 621
    .local v16, "callingPid":I
    invoke-direct {v1, v0, v13, v12}, Lcom/android/server/content/ContentService;->hasAccountAccess(ZLandroid/accounts/Account;I)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 622
    return-void

    .line 625
    :cond_2d
    invoke-direct {v1, v12, v14}, Lcom/android/server/content/ContentService;->validateExtras(ILandroid/os/Bundle;)V

    .line 626
    invoke-direct {v1, v12, v14}, Lcom/android/server/content/ContentService;->getSyncExemptionAndCleanUpExtrasForCaller(ILandroid/os/Bundle;)I

    move-result v17

    .line 630
    .local v17, "syncExemption":I
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v18

    .line 632
    .local v18, "identityToken":J
    :try_start_38
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v0
    :try_end_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_5e

    .line 633
    .local v0, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v0, :cond_57

    .line 634
    const/4 v8, -0x2

    move-object v2, v0

    move-object/from16 v3, p1

    move v4, v15

    move v5, v12

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v9, v17

    move v10, v12

    move/from16 v11, v16

    move/from16 v20, v12

    .end local v12    # "callingUid":I
    .local v20, "callingUid":I
    move-object/from16 v12, p4

    :try_start_51
    invoke-virtual/range {v2 .. v12}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IIIILjava/lang/String;)V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_55

    goto :goto_59

    .line 639
    .end local v0    # "syncManager":Lcom/android/server/content/SyncManager;
    :catchall_55
    move-exception v0

    goto :goto_61

    .line 633
    .end local v20    # "callingUid":I
    .restart local v0    # "syncManager":Lcom/android/server/content/SyncManager;
    .restart local v12    # "callingUid":I
    :cond_57
    move/from16 v20, v12

    .line 639
    .end local v0    # "syncManager":Lcom/android/server/content/SyncManager;
    .end local v12    # "callingUid":I
    .restart local v20    # "callingUid":I
    :goto_59
    invoke-static/range {v18 .. v19}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 640
    nop

    .line 641
    return-void

    .line 639
    .end local v20    # "callingUid":I
    .restart local v12    # "callingUid":I
    :catchall_5e
    move-exception v0

    move/from16 v20, v12

    .end local v12    # "callingUid":I
    .restart local v20    # "callingUid":I
    :goto_61
    invoke-static/range {v18 .. v19}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 640
    throw v0
.end method

.method public resetTodayStats()V
    .registers 4

    .line 1986
    const-string/jumbo v0, "resetTodayStats"

    invoke-direct {p0, v0}, Lcom/android/server/content/ContentService;->enforceShell(Ljava/lang/String;)V

    .line 1988
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    if-eqz v0, :cond_1c

    .line 1989
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1991
    .local v0, "token":J
    :try_start_e
    iget-object v2, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->resetTodayStats()V
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_17

    .line 1993
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1994
    goto :goto_1c

    .line 1993
    :catchall_17
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1994
    throw v2

    .line 1996
    .end local v0    # "token":J
    :cond_1c
    :goto_1c
    return-void
.end method

.method public setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V
    .registers 5
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "providerName"    # Ljava/lang/String;
    .param p3, "syncable"    # I

    .line 1110
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/content/ContentService;->setIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;II)V

    .line 1111
    return-void
.end method

.method public setIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;II)V
    .registers 21
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "providerName"    # Ljava/lang/String;
    .param p3, "syncable"    # I
    .param p4, "userId"    # I

    .line 1121
    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move/from16 v10, p4

    invoke-static {}, Lcom/android/server/content/SyncSecurityStub;->getInstance()Lcom/android/server/content/SyncSecurityStub;

    move-result-object v0

    iget-object v2, v1, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    invoke-interface {v0, v2, v9}, Lcom/android/server/content/SyncSecurityStub;->permitControlSyncForAccount(Landroid/content/Context;Landroid/accounts/Account;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 1122
    return-void

    .line 1126
    :cond_13
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_72

    .line 1129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "no permission to set the sync settings for user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v10, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 1131
    iget-object v0, v1, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v3, "no permission to write the sync settings"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1134
    invoke-static/range {p3 .. p3}, Lcom/android/server/content/ContentService;->normalizeSyncable(I)I

    move-result v11

    .line 1135
    .end local p3    # "syncable":I
    .local v11, "syncable":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    .line 1136
    .local v12, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v13

    .line 1137
    .local v13, "callingPid":I
    const/4 v0, 0x1

    invoke-direct {v1, v0, v9, v12}, Lcom/android/server/content/ContentService;->hasAccountAccess(ZLandroid/accounts/Account;I)Z

    move-result v0

    if-nez v0, :cond_4e

    .line 1138
    return-void

    .line 1141
    :cond_4e
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v14

    .line 1143
    .local v14, "identityToken":J
    :try_start_52
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v0

    .line 1144
    .local v0, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v0, :cond_68

    .line 1145
    invoke-virtual {v0}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v2

    move-object/from16 v3, p1

    move/from16 v4, p4

    move-object/from16 v5, p2

    move v6, v11

    move v7, v12

    move v8, v13

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/content/SyncStorageEngine;->setIsSyncable(Landroid/accounts/Account;ILjava/lang/String;III)V
    :try_end_68
    .catchall {:try_start_52 .. :try_end_68} :catchall_6d

    .line 1149
    .end local v0    # "syncManager":Lcom/android/server/content/SyncManager;
    :cond_68
    invoke-static {v14, v15}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1150
    nop

    .line 1151
    return-void

    .line 1149
    :catchall_6d
    move-exception v0

    invoke-static {v14, v15}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1150
    throw v0

    .line 1127
    .end local v11    # "syncable":I
    .end local v12    # "callingUid":I
    .end local v13    # "callingPid":I
    .end local v14    # "identityToken":J
    .restart local p3    # "syncable":I
    :cond_72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Authority must not be empty"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMasterSyncAutomatically(Z)V
    .registers 3
    .param p1, "flag"    # Z

    .line 1183
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/content/ContentService;->setMasterSyncAutomaticallyAsUser(ZI)V

    .line 1184
    return-void
.end method

.method public setMasterSyncAutomaticallyAsUser(ZI)V
    .registers 14
    .param p1, "flag"    # Z
    .param p2, "userId"    # I

    .line 1190
    invoke-static {}, Lcom/android/server/content/SyncSecurityStub;->getInstance()Lcom/android/server/content/SyncSecurityStub;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/server/content/SyncSecurityStub;->permitControlSyncForAccount(Landroid/content/Context;Landroid/accounts/Account;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1191
    return-void

    .line 1195
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to set the sync status for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 1197
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v2, "no permission to write the sync settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1201
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1203
    .local v1, "callingPid":I
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v9

    .line 1205
    .local v9, "identityToken":J
    :try_start_3b
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    .line 1206
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v2, :cond_50

    .line 1207
    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v3

    .line 1208
    invoke-direct {p0, v0}, Lcom/android/server/content/ContentService;->getSyncExemptionForCaller(I)I

    move-result v6

    .line 1207
    move v4, p1

    move v5, p2

    move v7, v0

    move v8, v1

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/content/SyncStorageEngine;->setMasterSyncAutomatically(ZIIII)V
    :try_end_50
    .catchall {:try_start_3b .. :try_end_50} :catchall_55

    .line 1211
    .end local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :cond_50
    invoke-static {v9, v10}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1212
    nop

    .line 1213
    return-void

    .line 1211
    :catchall_55
    move-exception v2

    invoke-static {v9, v10}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1212
    throw v2
.end method

.method public setMiSyncPauseToTime(Landroid/accounts/Account;JI)V
    .registers 12
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "pauseTimeMillis"    # J
    .param p4, "uid"    # I

    .line 2017
    invoke-static {}, Lcom/android/server/content/ContentServiceStub;->getInstance()Lcom/android/server/content/ContentServiceStub;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    invoke-interface/range {v0 .. v6}, Lcom/android/server/content/ContentServiceStub;->setMiSyncPauseToTime(Landroid/content/Context;Lcom/android/server/content/ContentService;Landroid/accounts/Account;JI)V

    .line 2019
    return-void
.end method

.method public setMiSyncStrategy(Landroid/accounts/Account;II)V
    .registers 10
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "strategy"    # I
    .param p3, "uid"    # I

    .line 2029
    invoke-static {}, Lcom/android/server/content/ContentServiceStub;->getInstance()Lcom/android/server/content/ContentServiceStub;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/server/content/ContentServiceStub;->setMiSyncStrategy(Landroid/content/Context;Lcom/android/server/content/ContentService;Landroid/accounts/Account;II)V

    .line 2031
    return-void
.end method

.method public setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V
    .registers 5
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "providerName"    # Ljava/lang/String;
    .param p3, "sync"    # Z

    .line 930
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/content/ContentService;->setSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;ZI)V

    .line 931
    return-void
.end method

.method public setSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;ZI)V
    .registers 22
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "providerName"    # Ljava/lang/String;
    .param p3, "sync"    # Z
    .param p4, "userId"    # I

    .line 938
    move-object/from16 v1, p0

    move-object/from16 v10, p1

    move/from16 v11, p4

    invoke-static {}, Lcom/android/server/content/SyncSecurityStub;->getInstance()Lcom/android/server/content/SyncSecurityStub;

    move-result-object v0

    iget-object v2, v1, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    invoke-interface {v0, v2, v10}, Lcom/android/server/content/SyncSecurityStub;->permitControlSyncForAccount(Landroid/content/Context;Landroid/accounts/Account;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 939
    return-void

    .line 943
    :cond_13
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_74

    .line 946
    iget-object v0, v1, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v3, "no permission to write the sync settings"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "no permission to modify the sync settings for user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v11, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 951
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    .line 952
    .local v12, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v13

    .line 953
    .local v13, "callingPid":I
    const/4 v0, 0x1

    invoke-direct {v1, v0, v10, v12}, Lcom/android/server/content/ContentService;->hasAccountAccess(ZLandroid/accounts/Account;I)Z

    move-result v0

    if-nez v0, :cond_4a

    .line 954
    return-void

    .line 957
    :cond_4a
    invoke-direct {v1, v12}, Lcom/android/server/content/ContentService;->getSyncExemptionForCaller(I)I

    move-result v14

    .line 959
    .local v14, "syncExemptionFlag":I
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v15

    .line 961
    .local v15, "identityToken":J
    :try_start_52
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v0

    .line 962
    .local v0, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v0, :cond_6a

    .line 963
    invoke-virtual {v0}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v2

    move-object/from16 v3, p1

    move/from16 v4, p4

    move-object/from16 v5, p2

    move/from16 v6, p3

    move v7, v14

    move v8, v12

    move v9, v13

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/content/SyncStorageEngine;->setSyncAutomatically(Landroid/accounts/Account;ILjava/lang/String;ZIII)V
    :try_end_6a
    .catchall {:try_start_52 .. :try_end_6a} :catchall_6f

    .line 967
    .end local v0    # "syncManager":Lcom/android/server/content/SyncManager;
    :cond_6a
    invoke-static/range {v15 .. v16}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 968
    nop

    .line 969
    return-void

    .line 967
    :catchall_6f
    move-exception v0

    invoke-static/range {v15 .. v16}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 968
    throw v0

    .line 944
    .end local v12    # "callingUid":I
    .end local v13    # "callingPid":I
    .end local v14    # "syncExemptionFlag":I
    .end local v15    # "identityToken":J
    :cond_74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Authority must be non-empty"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sync(Landroid/content/SyncRequest;Ljava/lang/String;)V
    .registers 4
    .param p1, "request"    # Landroid/content/SyncRequest;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 654
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/content/ContentService;->syncAsUser(Landroid/content/SyncRequest;ILjava/lang/String;)V

    .line 655
    return-void
.end method

.method public syncAsUser(Landroid/content/SyncRequest;ILjava/lang/String;)V
    .registers 30
    .param p1, "request"    # Landroid/content/SyncRequest;
    .param p2, "userId"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 675
    move-object/from16 v1, p0

    move/from16 v13, p2

    invoke-static {}, Lcom/android/server/content/SyncSecurityStub;->getInstance()Lcom/android/server/content/SyncSecurityStub;

    move-result-object v0

    iget-object v2, v1, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/android/server/content/SyncSecurityStub;->permitControlSyncForAccount(Landroid/content/Context;Landroid/accounts/Account;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 676
    return-void

    .line 680
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "no permission to request sync as user: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v13, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 682
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    .line 683
    .local v14, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v15

    .line 684
    .local v15, "callingPid":I
    const/4 v0, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    invoke-direct {v1, v0, v2, v14}, Lcom/android/server/content/ContentService;->hasAccountAccess(ZLandroid/accounts/Account;I)Z

    move-result v0

    if-nez v0, :cond_40

    .line 685
    return-void

    .line 688
    :cond_40
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getBundle()Landroid/os/Bundle;

    move-result-object v12

    .line 689
    .local v12, "extras":Landroid/os/Bundle;
    invoke-direct {v1, v14, v12}, Lcom/android/server/content/ContentService;->validateExtras(ILandroid/os/Bundle;)V

    .line 690
    invoke-direct {v1, v14, v12}, Lcom/android/server/content/ContentService;->getSyncExemptionAndCleanUpExtrasForCaller(ILandroid/os/Bundle;)I

    move-result v23

    .line 694
    .local v23, "syncExemption":I
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v24

    .line 696
    .local v24, "identityToken":J
    :try_start_4f
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v0
    :try_end_53
    .catchall {:try_start_4f .. :try_end_53} :catchall_b8

    .line 697
    .local v0, "syncManager":Lcom/android/server/content/SyncManager;
    if-nez v0, :cond_59

    .line 721
    invoke-static/range {v24 .. v25}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 698
    return-void

    .line 700
    :cond_59
    :try_start_59
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getSyncFlexTime()J

    move-result-wide v20

    .line 701
    .local v20, "flextime":J
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getSyncRunTime()J

    move-result-wide v2

    move-wide v10, v2

    .line 702
    .local v10, "runAtTime":J
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->isPeriodic()Z

    move-result v2
    :try_end_66
    .catchall {:try_start_59 .. :try_end_66} :catchall_b8

    if-eqz v2, :cond_95

    .line 703
    :try_start_68
    iget-object v2, v1, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v4, "no permission to write the sync settings"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    new-instance v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 708
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getProvider()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v13}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    move-object/from16 v17, v2

    .line 710
    .local v17, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    invoke-direct {v1, v10, v11}, Lcom/android/server/content/ContentService;->clampPeriod(J)J

    move-result-wide v18

    .line 712
    .end local v10    # "runAtTime":J
    .local v18, "runAtTime":J
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v16

    move-object/from16 v22, v12

    invoke-virtual/range {v16 .. v22}, Lcom/android/server/content/SyncManager;->updateOrAddPeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V
    :try_end_8e
    .catchall {:try_start_68 .. :try_end_8e} :catchall_91

    .line 714
    .end local v17    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    move-object/from16 v18, v12

    goto :goto_b1

    .line 721
    .end local v0    # "syncManager":Lcom/android/server/content/SyncManager;
    .end local v18    # "runAtTime":J
    .end local v20    # "flextime":J
    :catchall_91
    move-exception v0

    move-object/from16 v18, v12

    goto :goto_bb

    .line 715
    .restart local v0    # "syncManager":Lcom/android/server/content/SyncManager;
    .restart local v10    # "runAtTime":J
    .restart local v20    # "flextime":J
    :cond_95
    nop

    .line 716
    :try_start_96
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getProvider()Ljava/lang/String;

    move-result-object v6
    :try_end_9e
    .catchall {:try_start_96 .. :try_end_9e} :catchall_b8

    const/4 v8, -0x2

    .line 715
    move-object v2, v0

    move/from16 v4, p2

    move v5, v14

    move-object v7, v12

    move/from16 v9, v23

    move-wide/from16 v16, v10

    .end local v10    # "runAtTime":J
    .local v16, "runAtTime":J
    move v10, v14

    move v11, v15

    move-object/from16 v18, v12

    .end local v12    # "extras":Landroid/os/Bundle;
    .local v18, "extras":Landroid/os/Bundle;
    move-object/from16 v12, p3

    :try_start_ae
    invoke-virtual/range {v2 .. v12}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IIIILjava/lang/String;)V
    :try_end_b1
    .catchall {:try_start_ae .. :try_end_b1} :catchall_b6

    .line 721
    .end local v0    # "syncManager":Lcom/android/server/content/SyncManager;
    .end local v16    # "runAtTime":J
    .end local v20    # "flextime":J
    :goto_b1
    invoke-static/range {v24 .. v25}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 722
    nop

    .line 723
    return-void

    .line 721
    :catchall_b6
    move-exception v0

    goto :goto_bb

    .end local v18    # "extras":Landroid/os/Bundle;
    .restart local v12    # "extras":Landroid/os/Bundle;
    :catchall_b8
    move-exception v0

    move-object/from16 v18, v12

    .end local v12    # "extras":Landroid/os/Bundle;
    .restart local v18    # "extras":Landroid/os/Bundle;
    :goto_bb
    invoke-static/range {v24 .. v25}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 722
    throw v0
.end method

.method public unregisterContentObserver(Landroid/database/IContentObserver;)V
    .registers 4
    .param p1, "observer"    # Landroid/database/IContentObserver;

    .line 404
    if-eqz p1, :cond_f

    .line 407
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    monitor-enter v0

    .line 408
    :try_start_5
    iget-object v1, p0, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    invoke-virtual {v1, p1}, Lcom/android/server/content/ContentService$ObserverNode;->removeObserverLocked(Landroid/database/IContentObserver;)Z

    .line 410
    monitor-exit v0

    .line 411
    return-void

    .line 410
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw v1

    .line 405
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must pass a valid observer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
