.class public final Lcom/android/server/content/ContentService;
.super Landroid/content/IContentService$Stub;
.source "ContentService.java"


# static fields
.field public static final sObserverDeathDispatcher:Lcom/android/internal/os/BinderDeathDispatcher;

.field public static final sObserverLeakDetectedUid:Landroid/util/ArraySet;


# instance fields
.field public final mAccountManagerInternal:Landroid/accounts/AccountManagerInternal;

.field public final mCache:Landroid/util/SparseArray;

.field public mCacheReceiver:Landroid/content/BroadcastReceiver;

.field public mContext:Landroid/content/Context;

.field public mFactoryTest:Z

.field public final mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

.field public mSyncManager:Lcom/android/server/content/SyncManager;

.field public final mSyncManagerLock:Ljava/lang/Object;


# direct methods
.method public static synthetic $r8$lambda$AjFPVUPaMmwlWLE_QdM3Oj2y3xo(Lcom/android/server/content/ContentService;IILandroid/content/SyncInfo;)Z
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/content/ContentService;->lambda$getCurrentSyncsAsUser$1(IILandroid/content/SyncInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$tRDtME3FEONNmxLTGpqbA3aw8SU(Lcom/android/server/content/ContentService;Ljava/lang/String;I)[Ljava/lang/String;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/content/ContentService;->lambda$new$0(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCache(Lcom/android/server/content/ContentService;)Landroid/util/SparseArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$minvalidateCacheLocked(Lcom/android/server/content/ContentService;ILjava/lang/String;Landroid/net/Uri;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/content/ContentService;->invalidateCacheLocked(ILjava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetsObserverDeathDispatcher()Lcom/android/internal/os/BinderDeathDispatcher;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/server/content/ContentService;->sObserverDeathDispatcher:Lcom/android/internal/os/BinderDeathDispatcher;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetsObserverLeakDetectedUid()Landroid/util/ArraySet;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/server/content/ContentService;->sObserverLeakDetectedUid:Landroid/util/ArraySet;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 184
    new-instance v0, Lcom/android/internal/os/BinderDeathDispatcher;

    invoke-direct {v0}, Lcom/android/internal/os/BinderDeathDispatcher;-><init>()V

    sput-object v0, Lcom/android/server/content/ContentService;->sObserverDeathDispatcher:Lcom/android/internal/os/BinderDeathDispatcher;

    .line 188
    new-instance v0, Landroid/util/ArraySet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    sput-object v0, Lcom/android/server/content/ContentService;->sObserverLeakDetectedUid:Landroid/util/ArraySet;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 13

    .line 316
    invoke-direct {p0}, Landroid/content/IContentService$Stub;-><init>()V

    .line 177
    new-instance v0, Lcom/android/server/content/ContentService$ObserverNode;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/android/server/content/ContentService$ObserverNode;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    const/4 v0, 0x0

    .line 179
    iput-object v0, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    .line 180
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/ContentService;->mSyncManagerLock:Ljava/lang/Object;

    .line 195
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    .line 199
    new-instance v0, Lcom/android/server/content/ContentService$1;

    invoke-direct {v0, p0}, Lcom/android/server/content/ContentService$1;-><init>(Lcom/android/server/content/ContentService;)V

    iput-object v0, p0, Lcom/android/server/content/ContentService;->mCacheReceiver:Landroid/content/BroadcastReceiver;

    .line 317
    iput-object p1, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    .line 318
    iput-boolean p2, p0, Lcom/android/server/content/ContentService;->mFactoryTest:Z

    .line 322
    const-class p1, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    .line 323
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    .line 324
    new-instance p2, Lcom/android/server/content/ContentService$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/content/ContentService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/content/ContentService;)V

    invoke-interface {p1, p2}, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;->setSyncAdapterPackagesProvider(Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$SyncAdapterPackagesProvider;)V

    .line 328
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 329
    const-string p1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 330
    const-string p1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 331
    const-string p1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 332
    const-string p1, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 333
    const-string/jumbo p1, "package"

    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/content/ContentService;->mCacheReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 337
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 338
    const-string p1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v7, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 339
    iget-object v4, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/content/ContentService;->mCacheReceiver:Landroid/content/BroadcastReceiver;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v6, v2

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 342
    const-class p1, Landroid/accounts/AccountManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/accounts/AccountManagerInternal;

    iput-object p1, p0, Lcom/android/server/content/ContentService;->mAccountManagerInternal:Landroid/accounts/AccountManagerInternal;

    return-void
.end method

.method public static normalizeSyncable(I)I
    .registers 1

    .line 0
    if-lez p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    if-nez p0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    const/4 p0, -0x2

    return p0
.end method


# virtual methods
.method public addPeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V
    .registers 16

    const/4 v0, 0x1

    .line 941
    invoke-static {p3, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    if-eqz p1, :cond_5a

    .line 945
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_52

    .line 948
    iget-object v1, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v3, "no permission to write the sync settings"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 952
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 953
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/content/ContentService;->hasAccountAccess(ZLandroid/accounts/Account;I)Z

    move-result v0

    if-nez v0, :cond_25

    goto :goto_2b

    .line 956
    :cond_25
    invoke-virtual {p0, p2, v1, v2}, Lcom/android/server/content/ContentService;->hasAuthorityAccess(Ljava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_2c

    :goto_2b
    return-void

    .line 960
    :cond_2c
    invoke-virtual {p0, v1, p3}, Lcom/android/server/content/ContentService;->validateExtras(ILandroid/os/Bundle;)V

    .line 962
    invoke-virtual {p0, p4, p5}, Lcom/android/server/content/ContentService;->clampPeriod(J)J

    move-result-wide v5

    .line 963
    invoke-static {v5, v6}, Lcom/android/server/content/SyncStorageEngine;->calculateDefaultFlexTime(J)J

    move-result-wide v7

    .line 965
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    move-result-wide p4

    .line 967
    :try_start_3b
    new-instance v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v4, p1, p2, v2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 969
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v3

    move-object v9, p3

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/content/SyncManager;->updateOrAddPeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V
    :try_end_48
    .catchall {:try_start_3b .. :try_end_48} :catchall_4c

    .line 972
    invoke-static {p4, p5}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    return-void

    :catchall_4c
    move-exception v0

    move-object p0, v0

    invoke-static {p4, p5}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 973
    throw p0

    .line 946
    :cond_52
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Authority must not be empty."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 943
    :cond_5a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Account must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addStatusChangeListener(ILandroid/content/ISyncStatusObserver;)V
    .registers 6

    .line 1294
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1295
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    move-result-wide v1

    if-eqz p2, :cond_1b

    .line 1298
    :try_start_a
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object p0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/content/SyncStorageEngine;->addStatusChangeListener(IILandroid/content/ISyncStatusObserver;)V
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_16

    goto :goto_1b

    :catchall_16
    move-exception p0

    .line 1302
    invoke-static {v1, v2}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 1303
    throw p0

    .line 1302
    :cond_1b
    :goto_1b
    invoke-static {v1, v2}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    return-void
.end method

.method public cancelRequest(Landroid/content/SyncRequest;)V
    .registers 10

    .line 771
    invoke-virtual {p1}, Landroid/content/SyncRequest;->isPeriodic()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 772
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v2, "no permission to write the sync settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    :cond_10
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 777
    new-instance v1, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/content/SyncRequest;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 778
    invoke-virtual {p0, v0, v1}, Lcom/android/server/content/ContentService;->validateExtras(ILandroid/os/Bundle;)V

    .line 780
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 781
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    move-result-wide v3

    .line 785
    :try_start_28
    invoke-virtual {p1}, Landroid/content/SyncRequest;->getAccount()Landroid/accounts/Account;

    move-result-object v5

    .line 786
    invoke-virtual {p1}, Landroid/content/SyncRequest;->getProvider()Ljava/lang/String;

    move-result-object v6

    .line 787
    new-instance v7, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v7, v5, v6, v2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 788
    invoke-virtual {p1}, Landroid/content/SyncRequest;->isPeriodic()Z

    move-result p1

    if-eqz p1, :cond_56

    .line 790
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cancelRequest() by uid="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v7, v1, v0}, Lcom/android/server/content/SyncManager;->removePeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_56

    :catchall_54
    move-exception p0

    goto :goto_6a

    .line 794
    :cond_56
    :goto_56
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object p1

    invoke-virtual {p1, v7, v1}, Lcom/android/server/content/SyncManager;->cancelScheduledSyncOperation(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)V

    .line 795
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object p0

    const-string p1, "API"

    invoke-virtual {p0, v7, v1, p1}, Lcom/android/server/content/SyncManager;->cancelActiveSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_66
    .catchall {:try_start_28 .. :try_end_66} :catchall_54

    .line 797
    invoke-static {v3, v4}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    return-void

    :goto_6a
    invoke-static {v3, v4}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 798
    throw p0
.end method

.method public cancelSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)V
    .registers 5

    .line 726
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/content/ContentService;->cancelSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)V

    return-void
.end method

.method public cancelSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)V
    .registers 7

    if-eqz p2, :cond_11

    .line 745
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_11

    .line 746
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Authority must be non-empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 748
    :cond_11
    :goto_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to modify the sync settings for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p4, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    if-eqz p3, :cond_30

    .line 752
    const-string p0, "ContentService"

    const-string p1, "cname not null."

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 758
    :cond_30
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    move-result-wide v0

    .line 761
    :try_start_34
    new-instance p3, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {p3, p1, p2, p4}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 762
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/android/server/content/SyncManager;->clearScheduledSyncOperations(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 763
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object p0

    const-string p1, "API"

    const/4 p2, 0x0

    invoke-virtual {p0, p3, p2, p1}, Lcom/android/server/content/SyncManager;->cancelActiveSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_4a
    .catchall {:try_start_34 .. :try_end_4a} :catchall_4e

    .line 765
    invoke-static {v0, v1}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    return-void

    :catchall_4e
    move-exception p0

    invoke-static {v0, v1}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 766
    throw p0
.end method

.method public final checkUriPermission(Landroid/net/Uri;IIII)I
    .registers 13

    .line 520
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

    move-result p0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    return p0

    :catch_f
    const/4 p0, -0x1

    return p0
.end method

.method public final clampPeriod(J)J
    .registers 7

    .line 656
    invoke-static {}, Landroid/app/job/JobInfo;->getMinPeriodMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    cmp-long p0, p1, v0

    if-gez p0, :cond_30

    .line 658
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested poll frequency of "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " seconds being rounded up to "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "s."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ContentService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0

    :cond_30
    return-wide p1
.end method

.method public declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 15

    monitor-enter p0

    .line 241
    :try_start_1
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "ContentService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_12e

    if-nez v0, :cond_d

    monitor-exit p0

    return-void

    .line 242
    :cond_d
    :try_start_d
    new-instance v3, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v0, "  "

    invoke-direct {v3, p2, v0}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 244
    const-string p2, "-a"

    invoke-static {p3, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    .line 248
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    move-result-wide v9
    :try_end_1e
    .catchall {:try_start_d .. :try_end_1e} :catchall_12e

    .line 250
    :try_start_1e
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    if-nez v0, :cond_2c

    .line 251
    const-string p2, "SyncManager not available yet"

    invoke-virtual {v3, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2f

    :catchall_28
    move-exception v0

    move-object p1, v0

    goto/16 :goto_139

    .line 253
    :cond_2c
    invoke-virtual {v0, p1, v3, p2}, Lcom/android/server/content/SyncManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V

    .line 255
    :goto_2f
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 256
    const-string p2, "Observer tree:"

    invoke-virtual {v3, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 257
    iget-object p2, p0, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    monitor-enter p2
    :try_end_3a
    .catchall {:try_start_1e .. :try_end_3a} :catchall_28

    const/4 v0, 0x2

    .line 258
    :try_start_3b
    new-array v7, v0, [I

    .line 259
    new-instance v8, Landroid/util/SparseIntArray;

    invoke-direct {v8}, Landroid/util/SparseIntArray;-><init>()V

    .line 260
    iget-object v1, p0, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    const-string v5, ""

    const-string v6, "  "

    move-object v2, p1

    move-object v4, p3

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/content/ContentService$ObserverNode;->dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[ILandroid/util/SparseIntArray;)V

    .line 261
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 262
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 p3, 0x0

    move v0, p3

    .line 263
    :goto_57
    invoke-virtual {v8}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_6f

    .line 264
    invoke-virtual {v8, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_57

    :catchall_6b
    move-exception v0

    move-object p1, v0

    goto/16 :goto_137

    .line 266
    :cond_6f
    new-instance v0, Lcom/android/server/content/ContentService$2;

    invoke-direct {v0, p0, v8}, Lcom/android/server/content/ContentService$2;-><init>(Lcom/android/server/content/ContentService;Landroid/util/SparseIntArray;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move v0, p3

    .line 280
    :goto_78
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_a4

    .line 281
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 282
    const-string v2, "  pid "

    invoke-virtual {v3, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    const-string v2, ": "

    invoke-virtual {v3, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 283
    invoke-virtual {v8, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    const-string v1, " observers"

    invoke-virtual {v3, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_78

    .line 285
    :cond_a4
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 286
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 287
    const-string p1, "Total number of nodes: "

    invoke-virtual {v3, p1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    aget p1, v7, p3

    invoke-virtual {v3, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 288
    const-string p1, "Total number of observers: "

    invoke-virtual {v3, p1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const/4 p1, 0x1

    aget p1, v7, p1

    invoke-virtual {v3, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 290
    sget-object p1, Lcom/android/server/content/ContentService;->sObserverDeathDispatcher:Lcom/android/internal/os/BinderDeathDispatcher;

    invoke-virtual {p1, v3}, Lcom/android/internal/os/BinderDeathDispatcher;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 291
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 292
    monitor-exit p2
    :try_end_c8
    .catchall {:try_start_3b .. :try_end_c8} :catchall_6b

    .line 293
    :try_start_c8
    sget-object p1, Lcom/android/server/content/ContentService;->sObserverLeakDetectedUid:Landroid/util/ArraySet;

    monitor-enter p1
    :try_end_cb
    .catchall {:try_start_c8 .. :try_end_cb} :catchall_28

    .line 294
    :try_start_cb
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 295
    const-string p2, "Observer leaking UIDs: "

    invoke-virtual {v3, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p1}, Landroid/util/ArraySet;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 297
    monitor-exit p1
    :try_end_db
    .catchall {:try_start_cb .. :try_end_db} :catchall_133

    .line 299
    :try_start_db
    iget-object p1, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    monitor-enter p1
    :try_end_de
    .catchall {:try_start_db .. :try_end_de} :catchall_28

    .line 300
    :try_start_de
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 301
    const-string p2, "Cached content:"

    invoke-virtual {v3, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 302
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 303
    :goto_e9
    iget-object p2, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge p3, p2, :cond_125

    .line 304
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "User "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 305
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 306
    iget-object p2, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    invoke-virtual {p2, p3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v3, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 307
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    add-int/lit8 p3, p3, 0x1

    goto :goto_e9

    :catchall_122
    move-exception v0

    move-object p2, v0

    goto :goto_131

    .line 309
    :cond_125
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 310
    monitor-exit p1
    :try_end_129
    .catchall {:try_start_de .. :try_end_129} :catchall_122

    .line 312
    :try_start_129
    invoke-static {v9, v10}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V
    :try_end_12c
    .catchall {:try_start_129 .. :try_end_12c} :catchall_12e

    .line 314
    monitor-exit p0

    return-void

    :catchall_12e
    move-exception v0

    move-object p1, v0

    goto :goto_13d

    .line 310
    :goto_131
    :try_start_131
    monitor-exit p1
    :try_end_132
    .catchall {:try_start_131 .. :try_end_132} :catchall_122

    :try_start_132
    throw p2
    :try_end_133
    .catchall {:try_start_132 .. :try_end_133} :catchall_28

    :catchall_133
    move-exception v0

    move-object p2, v0

    .line 297
    :try_start_135
    monitor-exit p1
    :try_end_136
    .catchall {:try_start_135 .. :try_end_136} :catchall_133

    :try_start_136
    throw p2
    :try_end_137
    .catchall {:try_start_136 .. :try_end_137} :catchall_28

    .line 292
    :goto_137
    :try_start_137
    monitor-exit p2
    :try_end_138
    .catchall {:try_start_137 .. :try_end_138} :catchall_6b

    :try_start_138
    throw p1
    :try_end_139
    .catchall {:try_start_138 .. :try_end_139} :catchall_28

    .line 312
    :goto_139
    :try_start_139
    invoke-static {v9, v10}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 313
    throw p1

    :goto_13d
    monitor-exit p0
    :try_end_13e
    .catchall {:try_start_139 .. :try_end_13e} :catchall_12e

    throw p1
.end method

.method public final enforceCrossUserPermission(ILjava/lang/String;)V
    .registers 4

    .line 1451
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p1, :cond_d

    .line 1453
    iget-object p0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string p1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public final enforceNonFullCrossUserPermission(ILjava/lang/String;)V
    .registers 4

    .line 1467
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-ne v0, p1, :cond_7

    goto :goto_11

    .line 1472
    :cond_7
    iget-object p1, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_12

    :goto_11
    return-void

    .line 1478
    :cond_12
    iget-object p0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string p1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final enforceShell(Ljava/lang/String;)V
    .registers 4

    .line 1952
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    const/16 v0, 0x7d0

    if-eq p0, v0, :cond_22

    if-nez p0, :cond_b

    goto :goto_22

    .line 1954
    :cond_b
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Non-shell user attempted to call "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_22
    :goto_22
    return-void
.end method

.method public final findOrCreateCacheLocked(ILjava/lang/String;)Landroid/util/ArrayMap;
    .registers 4

    .line 1327
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    if-nez v0, :cond_14

    .line 1329
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 1330
    iget-object p0, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1332
    :cond_14
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    if-nez p0, :cond_24

    .line 1334
    new-instance p0, Landroid/util/ArrayMap;

    invoke-direct {p0}, Landroid/util/ArrayMap;-><init>()V

    .line 1335
    invoke-virtual {v0, p2, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_24
    return-object p0
.end method

.method public getCache(Ljava/lang/String;Landroid/net/Uri;I)Landroid/os/Bundle;
    .registers 7

    .line 1390
    const-string v0, "ContentService"

    invoke-virtual {p0, p3, v0}, Lcom/android/server/content/ContentService;->enforceNonFullCrossUserPermission(ILjava/lang/String;)V

    .line 1391
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CACHE_CONTENT"

    const-string v2, "ContentService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1392
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 1395
    invoke-virtual {p0, p2, p3}, Lcom/android/server/content/ContentService;->getProviderPackageName(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v0

    .line 1396
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 1398
    iget-object p2, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    monitor-enter p2

    .line 1399
    :try_start_2a
    invoke-virtual {p0, p3, v0}, Lcom/android/server/content/ContentService;->findOrCreateCacheLocked(ILjava/lang/String;)Landroid/util/ArrayMap;

    move-result-object p0

    .line 1401
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    monitor-exit p2

    return-object p0

    :catchall_36
    move-exception p0

    .line 1402
    monitor-exit p2
    :try_end_38
    .catchall {:try_start_2a .. :try_end_38} :catchall_36

    throw p0
.end method

.method public getCurrentSyncs()Ljava/util/List;
    .registers 2

    .line 1183
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/content/ContentService;->getCurrentSyncsAsUser(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentSyncsAsUser(I)Ljava/util/List;
    .registers 7

    .line 1192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to read the sync settings for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 1194
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_SYNC_STATS"

    const-string/jumbo v2, "no permission to read the sync stats"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1197
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.GET_ACCOUNTS"

    .line 1198
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2b

    const/4 v0, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v0, 0x0

    .line 1201
    :goto_2c
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1202
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    move-result-wide v2

    .line 1204
    :try_start_34
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v4

    .line 1205
    invoke-virtual {v4, p1, v0}, Lcom/android/server/content/SyncStorageEngine;->getCurrentSyncsCopy(IZ)Ljava/util/List;

    move-result-object v0
    :try_end_40
    .catchall {:try_start_34 .. :try_end_40} :catchall_4c

    .line 1207
    invoke-static {v2, v3}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 1209
    new-instance v2, Lcom/android/server/content/ContentService$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/server/content/ContentService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/content/ContentService;II)V

    invoke-interface {v0, v2}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    return-object v0

    :catchall_4c
    move-exception p0

    .line 1207
    invoke-static {v2, v3}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 1208
    throw p0
.end method

.method public getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I
    .registers 4

    .line 1041
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/content/ContentService;->getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I
    .registers 13

    .line 1050
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to read the sync settings for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 1052
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_SYNC_SETTINGS"

    const-string/jumbo v2, "no permission to read the sync settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x1

    .line 1056
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/content/ContentService;->hasAccountAccess(ZLandroid/accounts/Account;I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2c

    return v2

    .line 1059
    :cond_2c
    invoke-virtual {p0, p2, v0, p3}, Lcom/android/server/content/ContentService;->hasAuthorityAccess(Ljava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_33

    return v2

    .line 1063
    :cond_33
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    move-result-wide v1

    .line 1065
    :try_start_37
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p1

    move-object v6, p2

    move v5, p3

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/content/SyncManager;->computeSyncable(Landroid/accounts/Account;ILjava/lang/String;ZZ)I

    move-result p0
    :try_end_44
    .catchall {:try_start_37 .. :try_end_44} :catchall_48

    .line 1068
    invoke-static {v1, v2}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    return p0

    :catchall_48
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 1069
    throw p0
.end method

.method public getMasterSyncAutomatically()Z
    .registers 2

    .line 1112
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/content/ContentService;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result p0

    return p0
.end method

.method public getMasterSyncAutomaticallyAsUser(I)Z
    .registers 5

    .line 1121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to read the sync settings for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 1123
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_SYNC_SETTINGS"

    const-string/jumbo v2, "no permission to read the sync settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    move-result-wide v0

    .line 1128
    :try_start_23
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncStorageEngine;->getMasterSyncAutomatically(I)Z

    move-result p0
    :try_end_2f
    .catchall {:try_start_23 .. :try_end_2f} :catchall_33

    .line 1130
    invoke-static {v0, v1}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    return p0

    :catchall_33
    move-exception p0

    invoke-static {v0, v1}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 1131
    throw p0
.end method

.method public getPeriodicSyncs(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Ljava/util/List;
    .registers 7

    if-eqz p1, :cond_55

    .line 1015
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_4d

    .line 1018
    iget-object p3, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.READ_SYNC_SETTINGS"

    const-string/jumbo v1, "no permission to read the sync settings"

    invoke-virtual {p3, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p3

    .line 1022
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const/4 v1, 0x1

    .line 1023
    invoke-virtual {p0, v1, p1, p3}, Lcom/android/server/content/ContentService;->hasAccountAccess(ZLandroid/accounts/Account;I)Z

    move-result v1

    if-nez v1, :cond_27

    .line 1024
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 1026
    :cond_27
    invoke-virtual {p0, p2, p3, v0}, Lcom/android/server/content/ContentService;->hasAuthorityAccess(Ljava/lang/String;II)Z

    move-result p3

    if-nez p3, :cond_33

    .line 1027
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 1030
    :cond_33
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    move-result-wide v1

    .line 1032
    :try_start_37
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object p0

    new-instance p3, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {p3, p1, p2, v0}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    invoke-virtual {p0, p3}, Lcom/android/server/content/SyncManager;->getPeriodicSyncs(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Ljava/util/List;

    move-result-object p0
    :try_end_44
    .catchall {:try_start_37 .. :try_end_44} :catchall_48

    .line 1035
    invoke-static {v1, v2}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_48
    move-exception p0

    invoke-static {v1, v2}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 1036
    throw p0

    .line 1016
    :cond_4d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Authority must not be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1013
    :cond_55
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Account must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getProcStateForStatsd(I)I
    .registers 2

    .line 0
    packed-switch p1, :pswitch_data_38

    :pswitch_3
    const/4 p0, 0x0

    return p0

    :pswitch_5
    const/16 p0, 0x14

    return p0

    :pswitch_8
    const/16 p0, 0x13

    return p0

    :pswitch_b
    const/16 p0, 0x12

    return p0

    :pswitch_e
    const/16 p0, 0x11

    return p0

    :pswitch_11
    const/16 p0, 0x10

    return p0

    :pswitch_14
    const/16 p0, 0xe

    return p0

    :pswitch_17
    const/16 p0, 0xd

    return p0

    :pswitch_1a
    const/16 p0, 0xc

    return p0

    :pswitch_1d
    const/16 p0, 0xb

    return p0

    :pswitch_20
    const/16 p0, 0xa

    return p0

    :pswitch_23
    const/16 p0, 0x9

    return p0

    :pswitch_26
    const/16 p0, 0x8

    return p0

    :pswitch_29
    const/4 p0, 0x7

    return p0

    :pswitch_2b
    const/4 p0, 0x6

    return p0

    :pswitch_2d
    const/4 p0, 0x5

    return p0

    :pswitch_2f
    const/4 p0, 0x4

    return p0

    :pswitch_31
    const/4 p0, 0x3

    return p0

    :pswitch_33
    const/4 p0, 0x2

    return p0

    :pswitch_35
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_38
    .packed-switch 0x0
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
        :pswitch_3
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public final getProviderPackageName(Landroid/net/Uri;I)Ljava/lang/String;
    .registers 4

    .line 1319
    iget-object p0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 1320
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 1319
    invoke-virtual {p0, p1, v0, p2}, Landroid/content/pm/PackageManager;->resolveContentProviderAsUser(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object p0

    if-eqz p0, :cond_14

    .line 1321
    iget-object p0, p0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    return-object p0

    :cond_14
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getRestrictionLevelForStatsd(I)I
    .registers 2

    .line 0
    const/16 p0, 0xa

    if-eq p1, p0, :cond_24

    const/16 p0, 0x14

    if-eq p1, p0, :cond_22

    const/16 p0, 0x1e

    if-eq p1, p0, :cond_20

    const/16 p0, 0x28

    if-eq p1, p0, :cond_1e

    const/16 p0, 0x32

    if-eq p1, p0, :cond_1c

    const/16 p0, 0x3c

    if-eq p1, p0, :cond_1a

    const/4 p0, 0x0

    return p0

    :cond_1a
    const/4 p0, 0x6

    return p0

    :cond_1c
    const/4 p0, 0x5

    return p0

    :cond_1e
    const/4 p0, 0x4

    return p0

    :cond_20
    const/4 p0, 0x3

    return p0

    :cond_22
    const/4 p0, 0x2

    return p0

    :cond_24
    const/4 p0, 0x1

    return p0
.end method

.method public getSyncAdapterPackageAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 7

    .line 855
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to read sync settings for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 858
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 859
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    move-result-wide v1

    .line 861
    :try_start_1d
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/content/SyncManager;->getSyncAdapterPackageAsUser(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0
    :try_end_25
    .catchall {:try_start_1d .. :try_end_25} :catchall_29

    .line 864
    invoke-static {v1, v2}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_29
    move-exception p0

    invoke-static {v1, v2}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 865
    throw p0
.end method

.method public getSyncAdapterPackagesForAuthorityAsUser(Ljava/lang/String;I)[Ljava/lang/String;
    .registers 6

    .line 836
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to read sync settings for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 841
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 842
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    move-result-wide v1

    .line 844
    :try_start_1d
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object p0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/content/SyncManager;->getSyncAdapterPackagesForAuthorityAsUser(Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object p0
    :try_end_25
    .catchall {:try_start_1d .. :try_end_25} :catchall_29

    .line 847
    invoke-static {v1, v2}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_29
    move-exception p0

    invoke-static {v1, v2}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 848
    throw p0
.end method

.method public getSyncAdapterTypes()[Landroid/content/SyncAdapterType;
    .registers 2

    .line 807
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/content/ContentService;->getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;

    move-result-object p0

    return-object p0
.end method

.method public getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;
    .registers 5

    .line 820
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to read sync settings for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 825
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 826
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    move-result-wide v1

    .line 828
    :try_start_1d
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object p0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/content/SyncManager;->getSyncAdapterTypes(II)[Landroid/content/SyncAdapterType;

    move-result-object p0
    :try_end_25
    .catchall {:try_start_1d .. :try_end_25} :catchall_29

    .line 830
    invoke-static {v1, v2}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_29
    move-exception p0

    invoke-static {v1, v2}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 831
    throw p0
.end method

.method public getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z
    .registers 4

    .line 870
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/content/ContentService;->getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .registers 7

    .line 879
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to read the sync settings for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 881
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_SYNC_SETTINGS"

    const-string/jumbo v2, "no permission to read the sync settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x1

    .line 885
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/content/ContentService;->hasAccountAccess(ZLandroid/accounts/Account;I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2c

    return v2

    .line 888
    :cond_2c
    invoke-virtual {p0, p2, v0, p3}, Lcom/android/server/content/ContentService;->hasAuthorityAccess(Ljava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_33

    return v2

    .line 892
    :cond_33
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    move-result-wide v0

    .line 894
    :try_start_37
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object p0

    .line 895
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/content/SyncStorageEngine;->getSyncAutomatically(Landroid/accounts/Account;ILjava/lang/String;)Z

    move-result p0
    :try_end_43
    .catchall {:try_start_37 .. :try_end_43} :catchall_47

    .line 897
    invoke-static {v0, v1}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    return p0

    :catchall_47
    move-exception p0

    invoke-static {v0, v1}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 898
    throw p0
.end method

.method public final getSyncExemptionAndCleanUpExtrasForCaller(ILandroid/os/Bundle;)I
    .registers 8

    if-eqz p2, :cond_10

    .line 1565
    const-string/jumbo v0, "v_exemption"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1568
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    if-eq v2, v1, :cond_10

    return v2

    .line 1573
    :cond_10
    const-class p2, Landroid/app/ActivityManagerInternal;

    .line 1574
    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/ActivityManagerInternal;

    const/4 v0, 0x0

    if-nez p2, :cond_1c

    return v0

    .line 1578
    :cond_1c
    invoke-virtual {p2, p1}, Landroid/app/ActivityManagerInternal;->getUidProcessState(I)I

    move-result v1

    .line 1579
    invoke-virtual {p2, p1}, Landroid/app/ActivityManagerInternal;->isUidActive(I)Z

    move-result v2

    const/4 v3, 0x2

    if-le v1, v3, :cond_45

    const/4 v4, 0x3

    if-ne v1, v4, :cond_2b

    goto :goto_45

    :cond_2b
    const/4 v3, 0x6

    if-le v1, v3, :cond_32

    if-eqz v2, :cond_31

    goto :goto_32

    :cond_31
    return v0

    .line 1588
    :cond_32
    :goto_32
    invoke-virtual {p0, v1}, Lcom/android/server/content/ContentService;->getProcStateForStatsd(I)I

    move-result v0

    .line 1589
    invoke-virtual {p2, p1}, Landroid/app/ActivityManagerInternal;->getRestrictionLevel(I)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/server/content/ContentService;->getRestrictionLevelForStatsd(I)I

    move-result p0

    const/16 p2, 0x1d4

    .line 1587
    invoke-static {p2, p1, v0, v2, p0}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZI)V

    const/4 p0, 0x1

    return p0

    :cond_45
    :goto_45
    return v3
.end method

.method public final getSyncExemptionForCaller(I)I
    .registers 3

    const/4 v0, 0x0

    .line 1558
    invoke-virtual {p0, p1, v0}, Lcom/android/server/content/ContentService;->getSyncExemptionAndCleanUpExtrasForCaller(ILandroid/os/Bundle;)I

    move-result p0

    return p0
.end method

.method public final getSyncManager()Lcom/android/server/content/SyncManager;
    .registers 5

    .line 219
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mSyncManagerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 220
    :try_start_3
    iget-object v1, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    if-nez v1, :cond_15

    .line 221
    new-instance v1, Lcom/android/server/content/SyncManager;

    iget-object v2, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/android/server/content/ContentService;->mFactoryTest:Z

    invoke-direct {v1, v2, v3}, Lcom/android/server/content/SyncManager;-><init>(Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    goto :goto_15

    :catchall_13
    move-exception p0

    goto :goto_19

    .line 223
    :cond_15
    :goto_15
    iget-object p0, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    monitor-exit v0

    return-object p0

    .line 224
    :goto_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_13

    throw p0
.end method

.method public getSyncStatus(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Landroid/content/SyncStatusInfo;
    .registers 5

    .line 1215
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/content/ContentService;->getSyncStatusAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)Landroid/content/SyncStatusInfo;

    move-result-object p0

    return-object p0
.end method

.method public getSyncStatusAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)Landroid/content/SyncStatusInfo;
    .registers 7

    .line 1226
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_64

    .line 1230
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "no permission to read the sync stats for user "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p4, p3}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 1232
    iget-object p3, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.READ_SYNC_STATS"

    const-string/jumbo v1, "no permission to read the sync stats"

    invoke-virtual {p3, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1235
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p3

    const/4 v0, 0x1

    .line 1236
    invoke-virtual {p0, v0, p1, p3}, Lcom/android/server/content/ContentService;->hasAccountAccess(ZLandroid/accounts/Account;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_32

    return-object v1

    .line 1239
    :cond_32
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/content/ContentService;->hasAuthorityAccess(Ljava/lang/String;II)Z

    move-result p3

    if-nez p3, :cond_39

    return-object v1

    .line 1243
    :cond_39
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    move-result-wide v0

    if-eqz p1, :cond_58

    if-eqz p2, :cond_58

    .line 1247
    :try_start_41
    new-instance p3, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {p3, p1, p2, p4}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 1251
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/android/server/content/SyncStorageEngine;->getStatusByAuthority(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/content/SyncStatusInfo;

    move-result-object p0
    :try_end_52
    .catchall {:try_start_41 .. :try_end_52} :catchall_56

    .line 1253
    invoke-static {v0, v1}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_56
    move-exception p0

    goto :goto_60

    .line 1249
    :cond_58
    :try_start_58
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must call sync status with valid authority"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_60
    .catchall {:try_start_58 .. :try_end_60} :catchall_56

    .line 1253
    :goto_60
    invoke-static {v0, v1}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 1254
    throw p0

    .line 1227
    :cond_64
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Authority must not be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final handleIncomingUser(Landroid/net/Uri;IIIZI)I
    .registers 15

    const/4 v0, -0x2

    if-ne p6, v0, :cond_7

    .line 1408
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p6

    :cond_7
    move v5, p6

    const/4 p6, -0x1

    .line 1411
    const-string v6, "No access to "

    const-string v7, "android.permission.INTERACT_ACROSS_USERS_FULL"

    if-ne v5, p6, :cond_24

    .line 1412
    iget-object p0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v7, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_24
    if-ltz v5, :cond_77

    .line 1416
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p6

    if-eq v5, p6, :cond_76

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 1417
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/content/ContentService;->checkUriPermission(Landroid/net/Uri;IIII)I

    move-result p0

    if-eqz p0, :cond_76

    .line 1420
    iget-object p0, v0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_40

    return v5

    :cond_40
    if-eqz p5, :cond_4d

    .line 1424
    iget-object p0, v0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string p1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_4d

    return v5

    :cond_4d
    if-eqz p5, :cond_51

    .line 1431
    const-string v7, "android.permission.INTERACT_ACROSS_USERS_FULL or android.permission.INTERACT_ACROSS_USERS"

    .line 1434
    :cond_51
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ": neither user "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " nor current process has "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_76
    return v5

    .line 1415
    :cond_77
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid user: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final hasAccountAccess(ZLandroid/accounts/Account;I)Z
    .registers 7

    const/4 v0, 0x1

    if-nez p2, :cond_4

    return v0

    :cond_4
    if-eqz p1, :cond_10

    const-wide/32 v1, 0xc0722ff

    .line 1496
    invoke-static {v1, v2, p3}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result p1

    if-nez p1, :cond_10

    return v0

    .line 1500
    :cond_10
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    move-result-wide v0

    .line 1502
    :try_start_14
    iget-object p0, p0, Lcom/android/server/content/ContentService;->mAccountManagerInternal:Landroid/accounts/AccountManagerInternal;

    invoke-virtual {p0, p2, p3}, Landroid/accounts/AccountManagerInternal;->hasAccountAccess(Landroid/accounts/Account;I)Z

    move-result p0
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_1e

    .line 1504
    invoke-static {v0, v1}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    return p0

    :catchall_1e
    move-exception p0

    invoke-static {v0, v1}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 1505
    throw p0
.end method

.method public final hasAuthorityAccess(Ljava/lang/String;II)Z
    .registers 8

    .line 1517
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    const-wide/32 v2, 0xc589c26

    .line 1520
    invoke-static {v2, v3, p2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result p2

    if-nez p2, :cond_12

    return v1

    .line 1527
    :cond_12
    invoke-virtual {p0, p1, p3}, Lcom/android/server/content/ContentService;->getSyncAdapterPackagesForAuthorityAsUser(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 1528
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0
.end method

.method public final invalidateCacheLocked(ILjava/lang/String;Landroid/net/Uri;)V
    .registers 5

    .line 1342
    iget-object p0, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    if-nez p0, :cond_b

    goto :goto_3e

    .line 1345
    :cond_b
    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    if-nez p0, :cond_14

    goto :goto_3e

    :cond_14
    if-eqz p3, :cond_3f

    const/4 p1, 0x0

    .line 1349
    :goto_17
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p2

    if-ge p1, p2, :cond_3e

    .line 1350
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/Pair;

    .line 1351
    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz p2, :cond_3b

    check-cast p2, Landroid/net/Uri;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3b

    .line 1353
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_17

    :cond_3b
    add-int/lit8 p1, p1, 0x1

    goto :goto_17

    :cond_3e
    :goto_3e
    return-void

    .line 1360
    :cond_3f
    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    return-void
.end method

.method public isSyncActive(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Z
    .registers 7

    .line 1161
    invoke-virtual {p0}, Landroid/content/IContentService$Stub;->isSyncActive_enforcePermission()V

    .line 1163
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p3

    .line 1164
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const/4 v1, 0x1

    .line 1165
    invoke-virtual {p0, v1, p1, p3}, Lcom/android/server/content/ContentService;->hasAccountAccess(ZLandroid/accounts/Account;I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_14

    return v2

    .line 1168
    :cond_14
    invoke-virtual {p0, p2, p3, v0}, Lcom/android/server/content/ContentService;->hasAuthorityAccess(Ljava/lang/String;II)Z

    move-result p3

    if-nez p3, :cond_1b

    return v2

    .line 1172
    :cond_1b
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    move-result-wide v1

    .line 1174
    :try_start_1f
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object p0

    new-instance p3, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {p3, p1, p2, v0}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    invoke-virtual {p0, p3}, Lcom/android/server/content/SyncStorageEngine;->isSyncActive(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result p0
    :try_end_30
    .catchall {:try_start_1f .. :try_end_30} :catchall_34

    .line 1177
    invoke-static {v1, v2}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    return p0

    :catchall_34
    move-exception p0

    invoke-static {v1, v2}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 1178
    throw p0
.end method

.method public isSyncPending(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Z
    .registers 5

    .line 1259
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/content/ContentService;->isSyncPendingAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)Z

    move-result p0

    return p0
.end method

.method public isSyncPendingAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)Z
    .registers 7

    .line 1266
    invoke-virtual {p0}, Landroid/content/IContentService$Stub;->isSyncPendingAsUser_enforcePermission()V

    .line 1267
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "no permission to retrieve the sync settings for user "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p4, p3}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 1270
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p3

    const/4 v0, 0x1

    .line 1271
    invoke-virtual {p0, v0, p1, p3}, Lcom/android/server/content/ContentService;->hasAccountAccess(ZLandroid/accounts/Account;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_25

    return v1

    .line 1274
    :cond_25
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/content/ContentService;->hasAuthorityAccess(Ljava/lang/String;II)Z

    move-result p3

    if-nez p3, :cond_2c

    return v1

    .line 1278
    :cond_2c
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    move-result-wide v0

    if-eqz p1, :cond_4b

    if-eqz p2, :cond_4b

    .line 1282
    :try_start_34
    new-instance p3, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {p3, p1, p2, p4}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 1286
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/android/server/content/SyncStorageEngine;->isSyncPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result p0
    :try_end_45
    .catchall {:try_start_34 .. :try_end_45} :catchall_49

    .line 1288
    invoke-static {v0, v1}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    return p0

    :catchall_49
    move-exception p0

    goto :goto_53

    .line 1284
    :cond_4b
    :try_start_4b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid authority specified"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_53
    .catchall {:try_start_4b .. :try_end_53} :catchall_49

    .line 1288
    :goto_53
    invoke-static {v0, v1}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 1289
    throw p0
.end method

.method public final synthetic lambda$getCurrentSyncsAsUser$1(IILandroid/content/SyncInfo;)Z
    .registers 4

    .line 1209
    iget-object p3, p3, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    invoke-virtual {p0, p3, p1, p2}, Lcom/android/server/content/ContentService;->hasAuthorityAccess(Ljava/lang/String;II)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final synthetic lambda$new$0(Ljava/lang/String;I)[Ljava/lang/String;
    .registers 3

    .line 325
    invoke-virtual {p0, p1, p2}, Lcom/android/server/content/ContentService;->getSyncAdapterPackagesForAuthorityAsUser(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public notifyChange([Landroid/net/Uri;Landroid/database/IContentObserver;ZIIILjava/lang/String;)V
    .registers 35

    move-object/from16 v7, p1

    .line 437
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 438
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v15

    .line 439
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v10

    .line 442
    new-instance v24, Lcom/android/server/content/ContentService$ObserverCollector;

    invoke-direct/range {v24 .. v24}, Lcom/android/server/content/ContentService$ObserverCollector;-><init>()V

    .line 446
    new-instance v8, Landroid/util/ArrayMap;

    invoke-direct {v8}, Landroid/util/ArrayMap;-><init>()V

    .line 448
    array-length v9, v7

    const/16 v25, 0x0

    move/from16 v12, v25

    :goto_1d
    if-ge v12, v9, :cond_bb

    aget-object v1, v7, v12

    const/4 v4, 0x2

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move/from16 v6, p5

    move v3, v11

    move v2, v15

    .line 450
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/content/ContentService;->handleIncomingUser(Landroid/net/Uri;IIIZI)I

    move-result v4

    .line 452
    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    .line 453
    invoke-virtual {v8, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_97

    .line 454
    const-class v3, Landroid/app/ActivityManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManagerInternal;

    .line 455
    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Landroid/app/ActivityManagerInternal;->checkContentProviderAccess(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8d

    const/16 v5, 0x1a

    move/from16 v6, p6

    if-ge v6, v5, :cond_87

    .line 460
    const-string v5, "Failed to find provider"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_60

    goto :goto_8f

    .line 464
    :cond_60
    const-string v2, "ContentService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring notify for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " from "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b4

    .line 458
    :cond_87
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8d
    move/from16 v6, p6

    .line 472
    :goto_8f
    invoke-virtual {v0, v1, v4}, Lcom/android/server/content/ContentService;->getProviderPackageName(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v3

    .line 473
    invoke-virtual {v8, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_99

    :cond_97
    move/from16 v6, p6

    .line 478
    :goto_99
    iget-object v2, v0, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    monitor-enter v2

    .line 479
    :try_start_9c
    invoke-static {v1}, Lcom/android/server/content/ContentService$ObserverNode;->countUriSegments(Landroid/net/Uri;)I

    move-result v18

    .line 480
    iget-object v3, v0, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    const/16 v19, 0x0

    move-object/from16 v20, p2

    move/from16 v21, p3

    move/from16 v22, p4

    move-object/from16 v17, v1

    move-object/from16 v16, v3

    move/from16 v23, v4

    invoke-virtual/range {v16 .. v24}, Lcom/android/server/content/ContentService$ObserverNode;->collectObserversLocked(Landroid/net/Uri;IILandroid/database/IContentObserver;ZIILcom/android/server/content/ContentService$ObserverCollector;)V

    .line 482
    monitor-exit v2

    :goto_b4
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1d

    :catchall_b8
    move-exception v0

    monitor-exit v2
    :try_end_ba
    .catchall {:try_start_9c .. :try_end_ba} :catchall_b8

    throw v0

    :cond_bb
    move-object/from16 v0, p0

    .line 485
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    move-result-wide v1

    .line 488
    :try_start_c1
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/content/ContentService$ObserverCollector;->dispatch()V

    .line 490
    invoke-virtual {v0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v3

    move/from16 v4, v25

    .line 491
    :goto_ca
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_140

    .line 492
    invoke-virtual {v8, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v12, v5

    check-cast v12, Ljava/lang/String;

    .line 493
    invoke-virtual {v8, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 494
    invoke-virtual {v8, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    and-int/lit8 v9, p4, 0x1

    if-eqz v9, :cond_108

    .line 500
    invoke-virtual {v0, v11}, Lcom/android/server/content/ContentService;->getSyncExemptionForCaller(I)I

    move-result v13

    const/4 v9, 0x0

    move v14, v11

    move-object/from16 v16, v8

    move-object v8, v3

    move-object/from16 v3, v16

    move-object/from16 v16, p7

    .line 498
    invoke-virtual/range {v8 .. v16}, Lcom/android/server/content/SyncManager;->scheduleLocalSync(Landroid/accounts/Account;IILjava/lang/String;IIILjava/lang/String;)V

    goto :goto_10d

    :catchall_104
    move-exception v0

    move-wide/from16 p2, v1

    goto :goto_146

    :cond_108
    move-object/from16 v26, v8

    move-object v8, v3

    move-object/from16 v3, v26

    .line 505
    :goto_10d
    iget-object v9, v0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    monitor-enter v9
    :try_end_110
    .catchall {:try_start_c1 .. :try_end_110} :catchall_104

    .line 506
    :try_start_110
    array-length v13, v7
    :try_end_111
    .catchall {:try_start_110 .. :try_end_111} :catchall_139

    move/from16 v14, v25

    :goto_113
    if-ge v14, v13, :cond_12e

    move-wide/from16 p2, v1

    :try_start_117
    aget-object v1, v7, v14

    .line 507
    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v12}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_129

    .line 508
    invoke-virtual {v0, v5, v6, v1}, Lcom/android/server/content/ContentService;->invalidateCacheLocked(ILjava/lang/String;Landroid/net/Uri;)V

    goto :goto_129

    :catchall_127
    move-exception v0

    goto :goto_13c

    :cond_129
    :goto_129
    add-int/lit8 v14, v14, 0x1

    move-wide/from16 v1, p2

    goto :goto_113

    :cond_12e
    move-wide/from16 p2, v1

    .line 511
    monitor-exit v9

    add-int/lit8 v4, v4, 0x1

    move-object v1, v8

    move-object v8, v3

    move-object v3, v1

    move-wide/from16 v1, p2

    goto :goto_ca

    :catchall_139
    move-exception v0

    move-wide/from16 p2, v1

    :goto_13c
    monitor-exit v9
    :try_end_13d
    .catchall {:try_start_117 .. :try_end_13d} :catchall_127

    :try_start_13d
    throw v0
    :try_end_13e
    .catchall {:try_start_13d .. :try_end_13e} :catchall_13e

    :catchall_13e
    move-exception v0

    goto :goto_146

    :cond_140
    move-wide/from16 p2, v1

    .line 514
    invoke-static/range {p2 .. p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_146
    invoke-static/range {p2 .. p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 515
    throw v0
.end method

.method public onBootPhase(I)V
    .registers 3

    const/16 v0, 0x226

    if-eq p1, v0, :cond_5

    goto :goto_8

    .line 348
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    .line 351
    :goto_8
    iget-object p0, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    if-eqz p0, :cond_f

    .line 352
    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncManager;->onBootPhase(I)V

    :cond_f
    return-void
.end method

.method public onDbCorruption(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1974
    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1975
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "at "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1978
    invoke-static {p1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    .line 1985
    new-instance v0, Lcom/android/server/content/ContentShellCommand;

    invoke-direct {v0, p0}, Lcom/android/server/content/ContentShellCommand;-><init>(Landroid/content/IContentService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public onStartUser(I)V
    .registers 2

    .line 228
    iget-object p0, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncManager;->onStartUser(I)V

    :cond_7
    return-void
.end method

.method public onStopUser(I)V
    .registers 2

    .line 236
    iget-object p0, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncManager;->onStopUser(I)V

    :cond_7
    return-void
.end method

.method public onUnlockUser(I)V
    .registers 2

    .line 232
    iget-object p0, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncManager;->onUnlockUser(I)V

    :cond_7
    return-void
.end method

.method public putCache(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;I)V
    .registers 8

    const/4 v0, 0x1

    .line 1367
    invoke-static {p3, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 1368
    const-string v0, "ContentService"

    invoke-virtual {p0, p4, v0}, Lcom/android/server/content/ContentService;->enforceNonFullCrossUserPermission(ILjava/lang/String;)V

    .line 1369
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CACHE_CONTENT"

    const-string v2, "ContentService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1370
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 1373
    invoke-virtual {p0, p2, p4}, Lcom/android/server/content/ContentService;->getProviderPackageName(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v0

    .line 1374
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 1376
    iget-object p2, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    monitor-enter p2

    .line 1377
    :try_start_2e
    invoke-virtual {p0, p4, v0}, Lcom/android/server/content/ContentService;->findOrCreateCacheLocked(ILjava/lang/String;)Landroid/util/ArrayMap;

    move-result-object p0

    if-eqz p3, :cond_3a

    .line 1380
    invoke-virtual {p0, p1, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3d

    :catchall_38
    move-exception p0

    goto :goto_3f

    .line 1382
    :cond_3a
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1384
    :goto_3d
    monitor-exit p2

    return-void

    :goto_3f
    monitor-exit p2
    :try_end_40
    .catchall {:try_start_2e .. :try_end_40} :catchall_38

    throw p0
.end method

.method public registerContentObserver(Landroid/net/Uri;ZLandroid/database/IContentObserver;II)V
    .registers 14

    if-eqz p3, :cond_74

    if-eqz p1, :cond_74

    .line 372
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 373
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v6, p4

    .line 375
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/content/ContentService;->handleIncomingUser(Landroid/net/Uri;IIIZI)I

    move-result v7

    .line 378
    const-class p0, Landroid/app/ActivityManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManagerInternal;

    .line 379
    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v7}, Landroid/app/ActivityManagerInternal;->checkContentProviderAccess(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_61

    const/16 p1, 0x1a

    if-ge p5, p1, :cond_5b

    .line 384
    const-string p1, "Failed to find provider"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_34

    goto :goto_61

    .line 388
    :cond_34
    const-string p1, "ContentService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Ignoring content changes for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " from "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ": "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 382
    :cond_5b
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 394
    :cond_61
    :goto_61
    iget-object p0, v0, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    monitor-enter p0

    .line 395
    :try_start_64
    iget-object v0, v0, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    move-object v4, v0

    move v6, v2

    move v5, v3

    move v3, p2

    move-object v2, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/content/ContentService$ObserverNode;->addObserverLocked(Landroid/net/Uri;Landroid/database/IContentObserver;ZLjava/lang/Object;III)V

    .line 399
    monitor-exit p0

    return-void

    :catchall_70
    move-exception v0

    move-object p1, v0

    monitor-exit p0
    :try_end_73
    .catchall {:try_start_64 .. :try_end_73} :catchall_70

    throw p1

    .line 369
    :cond_74
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "You must pass a valid uri and observer"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 9

    const/4 v0, 0x1

    .line 978
    invoke-static {p3, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    if-eqz p1, :cond_62

    .line 982
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5a

    .line 985
    iget-object v1, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v3, "no permission to write the sync settings"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 989
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 990
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/content/ContentService;->hasAccountAccess(ZLandroid/accounts/Account;I)Z

    move-result v0

    if-nez v0, :cond_25

    goto :goto_2b

    .line 993
    :cond_25
    invoke-virtual {p0, p2, v1, v2}, Lcom/android/server/content/ContentService;->hasAuthorityAccess(Ljava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_2c

    :goto_2b
    return-void

    .line 997
    :cond_2c
    invoke-virtual {p0, v1, p3}, Lcom/android/server/content/ContentService;->validateExtras(ILandroid/os/Bundle;)V

    .line 999
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    move-result-wide v3

    .line 1001
    :try_start_33
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object p0

    new-instance v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v0, p1, p2, v2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "removePeriodicSync() by uid="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p3, p1}, Lcom/android/server/content/SyncManager;->removePeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_51
    .catchall {:try_start_33 .. :try_end_51} :catchall_55

    .line 1005
    invoke-static {v3, v4}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    return-void

    :catchall_55
    move-exception p0

    invoke-static {v3, v4}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 1006
    throw p0

    .line 983
    :cond_5a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Authority must not be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 980
    :cond_62
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Account must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeStatusChangeListener(Landroid/content/ISyncStatusObserver;)V
    .registers 4

    .line 1308
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    move-result-wide v0

    if-eqz p1, :cond_17

    .line 1311
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncStorageEngine;->removeStatusChangeListener(Landroid/content/ISyncStatusObserver;)V
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_12

    goto :goto_17

    :catchall_12
    move-exception p0

    .line 1314
    invoke-static {v0, v1}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 1315
    throw p0

    .line 1314
    :cond_17
    :goto_17
    invoke-static {v0, v1}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    return-void
.end method

.method public requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 18

    move-object/from16 v5, p3

    const/4 v0, 0x1

    .line 613
    invoke-static {v5, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 614
    invoke-static {v5}, Landroid/content/ContentResolver;->validateSyncExtrasBundle(Landroid/os/Bundle;)V

    .line 615
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 616
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 617
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    .line 619
    invoke-virtual {p0, v0, p1, v3}, Lcom/android/server/content/ContentService;->hasAccountAccess(ZLandroid/accounts/Account;I)Z

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_22

    .line 622
    :cond_1c
    invoke-virtual {p0, p2, v3, v2}, Lcom/android/server/content/ContentService;->hasAuthorityAccess(Ljava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_23

    :goto_22
    return-void

    .line 626
    :cond_23
    invoke-virtual {p0, v3, v5}, Lcom/android/server/content/ContentService;->validateExtras(ILandroid/os/Bundle;)V

    .line 627
    invoke-virtual {p0, v3, v5}, Lcom/android/server/content/ContentService;->getSyncExemptionAndCleanUpExtrasForCaller(ILandroid/os/Bundle;)I

    move-result v7

    .line 631
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    move-result-wide v11

    .line 633
    :try_start_2e
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v0

    const/4 v6, -0x2

    move v8, v3

    move-object v1, p1

    move-object v4, p2

    move-object/from16 v10, p4

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IIIILjava/lang/String;)V
    :try_end_3b
    .catchall {:try_start_2e .. :try_end_3b} :catchall_3f

    .line 637
    invoke-static {v11, v12}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    return-void

    :catchall_3f
    move-exception v0

    move-object p0, v0

    invoke-static {v11, v12}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 638
    throw p0
.end method

.method public resetTodayStats()V
    .registers 3

    .line 1960
    const-string/jumbo v0, "resetTodayStats"

    invoke-virtual {p0, v0}, Lcom/android/server/content/ContentService;->enforceShell(Ljava/lang/String;)V

    .line 1962
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    if-eqz v0, :cond_1c

    .line 1963
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1965
    :try_start_e
    iget-object p0, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->resetTodayStats()V
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_17

    .line 1967
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_17
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1968
    throw p0

    :cond_1c
    return-void
.end method

.method public setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V
    .registers 5

    .line 1074
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/content/ContentService;->setIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;II)V

    return-void
.end method

.method public setIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;II)V
    .registers 15

    .line 1083
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5c

    .line 1086
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to set the sync settings for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p4, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 1088
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v2, "no permission to write the sync settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    invoke-static {p3}, Lcom/android/server/content/ContentService;->normalizeSyncable(I)I

    move-result v7

    .line 1092
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 1093
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    const/4 p3, 0x1

    .line 1094
    invoke-virtual {p0, p3, p1, v8}, Lcom/android/server/content/ContentService;->hasAccountAccess(ZLandroid/accounts/Account;I)Z

    move-result p3

    if-nez p3, :cond_39

    goto :goto_3f

    .line 1097
    :cond_39
    invoke-virtual {p0, p2, v8, p4}, Lcom/android/server/content/ContentService;->hasAuthorityAccess(Ljava/lang/String;II)Z

    move-result p3

    if-nez p3, :cond_40

    :goto_3f
    return-void

    .line 1101
    :cond_40
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    move-result-wide v1

    .line 1103
    :try_start_44
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v3

    move-object v4, p1

    move-object v6, p2

    move v5, p4

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/content/SyncStorageEngine;->setIsSyncable(Landroid/accounts/Account;ILjava/lang/String;III)V
    :try_end_52
    .catchall {:try_start_44 .. :try_end_52} :catchall_56

    .line 1106
    invoke-static {v1, v2}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    return-void

    :catchall_56
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 1107
    throw p0

    .line 1084
    :cond_5c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Authority must not be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMasterSyncAutomatically(Z)V
    .registers 3

    .line 1136
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/content/ContentService;->setMasterSyncAutomaticallyAsUser(ZI)V

    return-void
.end method

.method public setMasterSyncAutomaticallyAsUser(ZI)V
    .registers 12

    .line 1141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to set the sync status for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 1143
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v2, "no permission to write the sync settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 1147
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    .line 1149
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    move-result-wide v1

    .line 1151
    :try_start_2b
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v3

    .line 1152
    invoke-virtual {p0, v7}, Lcom/android/server/content/ContentService;->getSyncExemptionForCaller(I)I

    move-result v6

    move v4, p1

    move v5, p2

    .line 1151
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/content/SyncStorageEngine;->setMasterSyncAutomatically(ZIIII)V
    :try_end_3c
    .catchall {:try_start_2b .. :try_end_3c} :catchall_40

    .line 1154
    invoke-static {v1, v2}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    return-void

    :catchall_40
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 1155
    throw p0
.end method

.method public setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V
    .registers 5

    .line 903
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/content/ContentService;->setSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;ZI)V

    return-void
.end method

.method public setSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;ZI)V
    .registers 16

    .line 909
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5d

    .line 912
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v2, "no permission to write the sync settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to modify the sync settings for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p4, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 917
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 918
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    const/4 v0, 0x1

    .line 919
    invoke-virtual {p0, v0, p1, v7}, Lcom/android/server/content/ContentService;->hasAccountAccess(ZLandroid/accounts/Account;I)Z

    move-result v0

    if-nez v0, :cond_35

    goto :goto_3b

    .line 922
    :cond_35
    invoke-virtual {p0, p2, v7, p4}, Lcom/android/server/content/ContentService;->hasAuthorityAccess(Ljava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_3c

    :goto_3b
    return-void

    .line 926
    :cond_3c
    invoke-virtual {p0, v7}, Lcom/android/server/content/ContentService;->getSyncExemptionForCaller(I)I

    move-result v6

    .line 928
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    move-result-wide v9

    .line 930
    :try_start_44
    invoke-virtual {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v1

    move-object v2, p1

    move-object v4, p2

    move v5, p3

    move v3, p4

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/content/SyncStorageEngine;->setSyncAutomatically(Landroid/accounts/Account;ILjava/lang/String;ZIII)V
    :try_end_53
    .catchall {:try_start_44 .. :try_end_53} :catchall_57

    .line 933
    invoke-static {v9, v10}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    return-void

    :catchall_57
    move-exception v0

    move-object p0, v0

    invoke-static {v9, v10}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 934
    throw p0

    .line 910
    :cond_5d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Authority must be non-empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public sync(Landroid/content/SyncRequest;Ljava/lang/String;)V
    .registers 4

    .line 652
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/content/ContentService;->syncAsUser(Landroid/content/SyncRequest;ILjava/lang/String;)V

    return-void
.end method

.method public syncAsUser(Landroid/content/SyncRequest;ILjava/lang/String;)V
    .registers 23

    move-object/from16 v0, p0

    move/from16 v2, p2

    .line 671
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "no permission to request sync as user: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 673
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 674
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    const/4 v1, 0x1

    .line 675
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getAccount()Landroid/accounts/Account;

    move-result-object v4

    invoke-virtual {v0, v1, v4, v3}, Lcom/android/server/content/ContentService;->hasAccountAccess(ZLandroid/accounts/Account;I)Z

    move-result v1

    if-nez v1, :cond_2d

    goto :goto_37

    .line 678
    :cond_2d
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/server/content/ContentService;->hasAuthorityAccess(Ljava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_38

    :goto_37
    return-void

    .line 682
    :cond_38
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getBundle()Landroid/os/Bundle;

    move-result-object v5

    .line 683
    invoke-virtual {v0, v3, v5}, Lcom/android/server/content/ContentService;->validateExtras(ILandroid/os/Bundle;)V

    .line 684
    invoke-virtual {v0, v3, v5}, Lcom/android/server/content/ContentService;->getSyncExemptionAndCleanUpExtrasForCaller(ILandroid/os/Bundle;)I

    move-result v7

    .line 688
    invoke-static {}, Landroid/content/IContentService$Stub;->clearCallingIdentity()J

    move-result-wide v17

    .line 690
    :try_start_47
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getSyncFlexTime()J

    move-result-wide v14

    .line 691
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getSyncRunTime()J

    move-result-wide v10

    .line 692
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->isPeriodic()Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 693
    iget-object v1, v0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v4, "no permission to write the sync settings"

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    new-instance v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 698
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getProvider()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4, v2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 700
    invoke-virtual {v0, v10, v11}, Lcom/android/server/content/ContentService;->clampPeriod(J)J

    move-result-wide v12

    .line 702
    invoke-virtual {v0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v10

    move-object v11, v1

    move-object/from16 v16, v5

    invoke-virtual/range {v10 .. v16}, Lcom/android/server/content/SyncManager;->updateOrAddPeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V

    goto :goto_94

    :catchall_7b
    move-exception v0

    goto :goto_98

    :cond_7d
    move-object/from16 v16, v5

    .line 705
    invoke-virtual {v0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v0

    .line 706
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getProvider()Ljava/lang/String;

    move-result-object v4

    const/4 v6, -0x2

    move v8, v3

    move-object/from16 v10, p3

    move-object/from16 v5, v16

    .line 705
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IIIILjava/lang/String;)V
    :try_end_94
    .catchall {:try_start_47 .. :try_end_94} :catchall_7b

    .line 711
    :goto_94
    invoke-static/range {v17 .. v18}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    return-void

    :goto_98
    invoke-static/range {v17 .. v18}, Landroid/content/IContentService$Stub;->restoreCallingIdentity(J)V

    .line 712
    throw v0
.end method

.method public unregisterContentObserver(Landroid/database/IContentObserver;)V
    .registers 3

    if-eqz p1, :cond_f

    .line 413
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    monitor-enter v0

    .line 414
    :try_start_5
    iget-object p0, p0, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    invoke-virtual {p0, p1}, Lcom/android/server/content/ContentService$ObserverNode;->removeObserverLocked(Landroid/database/IContentObserver;)Z

    .line 416
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw p0

    .line 411
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "You must pass a valid observer"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final validateExtras(ILandroid/os/Bundle;)V
    .registers 3

    .line 1542
    const-string/jumbo p0, "v_exemption"

    invoke-virtual {p2, p0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_23

    if-eqz p1, :cond_23

    const/16 p0, 0x3e8

    if-eq p1, p0, :cond_23

    const/16 p0, 0x7d0

    if-ne p1, p0, :cond_14

    goto :goto_23

    .line 1550
    :cond_14
    const-string p0, "ContentService"

    const-string p1, "Invalid extras specified. requestsync -f/-F needs to run on \'adb shell\'"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Invalid extras specified."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_23
    :goto_23
    return-void
.end method
