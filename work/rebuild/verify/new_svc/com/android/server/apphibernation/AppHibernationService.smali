.class public final Lcom/android/server/apphibernation/AppHibernationService;
.super Lcom/android/server/SystemService;
.source "AppHibernationService.java"


# static fields
.field public static sIsServiceEnabled:Z


# instance fields
.field public final mBackgroundExecutor:Ljava/util/concurrent/Executor;

.field public final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public final mContext:Landroid/content/Context;

.field public final mGlobalHibernationStates:Ljava/util/Map;

.field public final mGlobalLevelHibernationDiskStore:Lcom/android/server/apphibernation/HibernationStateDiskStore;

.field public final mIActivityManager:Landroid/app/IActivityManager;

.field public final mIPackageManager:Landroid/content/pm/IPackageManager;

.field public final mInjector:Lcom/android/server/apphibernation/AppHibernationService$Injector;

.field public final mLocalService:Lcom/android/server/apphibernation/AppHibernationManagerInternal;

.field public final mLock:Ljava/lang/Object;

.field public final mOatArtifactDeletionEnabled:Z

.field public final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public final mServiceStub:Lcom/android/server/apphibernation/AppHibernationService$AppHibernationServiceStub;

.field public final mStorageStatsManager:Landroid/app/usage/StorageStatsManager;

.field public final mUsageEventListener:Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;

.field public final mUserDiskStores:Landroid/util/SparseArray;

.field public final mUserManager:Landroid/os/UserManager;

.field public final mUserStates:Landroid/util/SparseArray;


# direct methods
.method public static synthetic $r8$lambda$3HfMTVJhc1WapdDpoQXuXDMtFks(Lcom/android/server/apphibernation/AppHibernationService;Ljava/lang/String;I)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/apphibernation/AppHibernationService;->lambda$setHibernatingForUser$2(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Fws_Wf_jgjjpMDT6HEIS6H9GGIc(Lcom/android/server/apphibernation/AppHibernationService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/apphibernation/AppHibernationService;->lambda$onBootPhase$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$VQ5tI_-mCe1y9rez4cVqHzkounA(Lcom/android/server/apphibernation/UserLevelState;I)V
    .registers 4

    .line 325
    iget-object v0, p0, Lcom/android/server/apphibernation/UserLevelState;->packageName:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/android/server/apphibernation/UserLevelState;->hibernated:Z

    const/16 v1, 0x172

    invoke-static {v1, v0, p1, p0}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$dnVAvtPQn-Iq4D0phPGD5byVE1w(Lcom/android/server/apphibernation/AppHibernationService;Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/apphibernation/AppHibernationService;->onDeviceConfigChanged(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fT12eBCv0K0U7e7DCdE6loRthKg(Lcom/android/server/apphibernation/AppHibernationService;ILandroid/app/usage/UsageEvents$Event;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/apphibernation/AppHibernationService;->lambda$new$6(ILandroid/app/usage/UsageEvents$Event;)V

    return-void
.end method

.method public static synthetic $r8$lambda$opUpfhtJr-oO2TJqTn3WA57WfLw(Lcom/android/server/apphibernation/AppHibernationService;Ljava/lang/String;Lcom/android/server/apphibernation/GlobalLevelState;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/apphibernation/AppHibernationService;->lambda$setHibernatingGlobally$4(Ljava/lang/String;Lcom/android/server/apphibernation/GlobalLevelState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pmiSg0_3IcxhUY6KWcWtKuVRLt4(Lcom/android/server/apphibernation/AppHibernationService;Lcom/android/server/apphibernation/HibernationStateDiskStore;I)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/apphibernation/AppHibernationService;->lambda$onUserUnlocking$5(Lcom/android/server/apphibernation/HibernationStateDiskStore;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$tF9416fHhyawKHBQuNFp5SEq1cc(Lcom/android/server/apphibernation/AppHibernationService;Ljava/lang/String;ILcom/android/server/apphibernation/UserLevelState;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/apphibernation/AppHibernationService;->lambda$setHibernatingForUser$1(Ljava/lang/String;ILcom/android/server/apphibernation/UserLevelState;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmGlobalHibernationStates(Lcom/android/server/apphibernation/AppHibernationService;)Ljava/util/Map;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mGlobalHibernationStates:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/apphibernation/AppHibernationService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserManager(Lcom/android/server/apphibernation/AppHibernationService;)Landroid/os/UserManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserManager:Landroid/os/UserManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mdump(Lcom/android/server/apphibernation/AppHibernationService;Ljava/io/PrintWriter;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/apphibernation/AppHibernationService;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$misOatArtifactDeletionEnabled(Lcom/android/server/apphibernation/AppHibernationService;)Z
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/apphibernation/AppHibernationService;->isOatArtifactDeletionEnabled()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$monPackageAdded(Lcom/android/server/apphibernation/AppHibernationService;Ljava/lang/String;I)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/apphibernation/AppHibernationService;->onPackageAdded(Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monPackageRemoved(Lcom/android/server/apphibernation/AppHibernationService;Ljava/lang/String;I)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/apphibernation/AppHibernationService;->onPackageRemoved(Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monPackageRemovedForAllUsers(Lcom/android/server/apphibernation/AppHibernationService;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/apphibernation/AppHibernationService;->onPackageRemovedForAllUsers(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 143
    new-instance v0, Lcom/android/server/apphibernation/AppHibernationService$InjectorImpl;

    invoke-direct {v0, p1}, Lcom/android/server/apphibernation/AppHibernationService$InjectorImpl;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/android/server/apphibernation/AppHibernationService;-><init>(Lcom/android/server/apphibernation/AppHibernationService$Injector;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/apphibernation/AppHibernationService$Injector;)V
    .registers 7

    .line 148
    invoke-interface {p1}, Lcom/android/server/apphibernation/AppHibernationService$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 111
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mLock:Ljava/lang/Object;

    .line 119
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserStates:Landroid/util/SparseArray;

    .line 121
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserDiskStores:Landroid/util/SparseArray;

    .line 123
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mGlobalHibernationStates:Ljava/util/Map;

    .line 829
    new-instance v0, Lcom/android/server/apphibernation/AppHibernationService$LocalService;

    invoke-direct {v0, p0}, Lcom/android/server/apphibernation/AppHibernationService$LocalService;-><init>(Lcom/android/server/apphibernation/AppHibernationService;)V

    iput-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mLocalService:Lcom/android/server/apphibernation/AppHibernationManagerInternal;

    .line 864
    new-instance v1, Lcom/android/server/apphibernation/AppHibernationService$AppHibernationServiceStub;

    invoke-direct {v1, p0}, Lcom/android/server/apphibernation/AppHibernationService$AppHibernationServiceStub;-><init>(Lcom/android/server/apphibernation/AppHibernationService;)V

    iput-object v1, p0, Lcom/android/server/apphibernation/AppHibernationService;->mServiceStub:Lcom/android/server/apphibernation/AppHibernationService$AppHibernationServiceStub;

    .line 926
    new-instance v1, Lcom/android/server/apphibernation/AppHibernationService$1;

    invoke-direct {v1, p0}, Lcom/android/server/apphibernation/AppHibernationService$1;-><init>(Lcom/android/server/apphibernation/AppHibernationService;)V

    iput-object v1, p0, Lcom/android/server/apphibernation/AppHibernationService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 954
    new-instance v2, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/apphibernation/AppHibernationService;)V

    iput-object v2, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUsageEventListener:Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;

    .line 149
    invoke-interface {p1}, Lcom/android/server/apphibernation/AppHibernationService$Injector;->getContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/apphibernation/AppHibernationService;->mContext:Landroid/content/Context;

    .line 150
    invoke-interface {p1}, Lcom/android/server/apphibernation/AppHibernationService$Injector;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/apphibernation/AppHibernationService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 151
    invoke-interface {p1}, Lcom/android/server/apphibernation/AppHibernationService$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/apphibernation/AppHibernationService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 152
    invoke-interface {p1}, Lcom/android/server/apphibernation/AppHibernationService$Injector;->getActivityManager()Landroid/app/IActivityManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/apphibernation/AppHibernationService;->mIActivityManager:Landroid/app/IActivityManager;

    .line 153
    invoke-interface {p1}, Lcom/android/server/apphibernation/AppHibernationService$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserManager:Landroid/os/UserManager;

    .line 154
    invoke-interface {p1}, Lcom/android/server/apphibernation/AppHibernationService$Injector;->getStorageStatsManager()Landroid/app/usage/StorageStatsManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/apphibernation/AppHibernationService;->mStorageStatsManager:Landroid/app/usage/StorageStatsManager;

    .line 155
    invoke-interface {p1}, Lcom/android/server/apphibernation/AppHibernationService$Injector;->getGlobalLevelDiskStore()Lcom/android/server/apphibernation/HibernationStateDiskStore;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/apphibernation/AppHibernationService;->mGlobalLevelHibernationDiskStore:Lcom/android/server/apphibernation/HibernationStateDiskStore;

    .line 156
    invoke-interface {p1}, Lcom/android/server/apphibernation/AppHibernationService$Injector;->getBackgroundExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/apphibernation/AppHibernationService;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 157
    invoke-interface {p1}, Lcom/android/server/apphibernation/AppHibernationService$Injector;->isOatArtifactDeletionEnabled()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/apphibernation/AppHibernationService;->mOatArtifactDeletionEnabled:Z

    .line 158
    iput-object p1, p0, Lcom/android/server/apphibernation/AppHibernationService;->mInjector:Lcom/android/server/apphibernation/AppHibernationService$Injector;

    .line 160
    sget-object p0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    invoke-virtual {v3, p0, v4}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    .line 162
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 163
    const-string v4, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    const-string/jumbo v4, "package"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 167
    const-class p0, Lcom/android/server/apphibernation/AppHibernationManagerInternal;

    invoke-static {p0, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 168
    invoke-interface {p1}, Lcom/android/server/apphibernation/AppHibernationService$Injector;->getUsageStatsManagerInternal()Landroid/app/usage/UsageStatsManagerInternal;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/app/usage/UsageStatsManagerInternal;->registerListener(Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;)V

    return-void
.end method

.method private dump(Ljava/io/PrintWriter;)V
    .registers 8

    .line 800
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "AppHibernationService"

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    .line 802
    :cond_d
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 804
    iget-object p1, p0, Lcom/android/server/apphibernation/AppHibernationService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 805
    :try_start_17
    iget-object v1, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1e
    if-ge v2, v1, :cond_66

    .line 807
    iget-object v3, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 808
    const-string v4, "User Level Hibernation States, "

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 809
    const-string/jumbo v4, "user"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 810
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 811
    iget-object v4, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 812
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 813
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_60

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/apphibernation/UserLevelState;

    .line 814
    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    .line 815
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    goto :goto_4b

    :catchall_5e
    move-exception p0

    goto :goto_90

    .line 817
    :cond_60
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 819
    :cond_66
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 820
    const-string v1, "Global Level Hibernation States"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 821
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 822
    iget-object p0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mGlobalHibernationStates:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_7b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/apphibernation/GlobalLevelState;

    .line 823
    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    .line 824
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    goto :goto_7b

    .line 826
    :cond_8e
    monitor-exit p1

    return-void

    :goto_90
    monitor-exit p1
    :try_end_91
    .catchall {:try_start_17 .. :try_end_91} :catchall_5e

    throw p0
.end method

.method private handleIncomingUser(ILjava/lang/String;)I
    .registers 11

    .line 761
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 763
    :try_start_4
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mIActivityManager:Landroid/app/IActivityManager;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x0

    move v3, p1

    move-object v6, p2

    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_13} :catch_14

    return p0

    :catch_14
    move-exception v0

    move-object p0, v0

    .line 766
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static isAppHibernationEnabled()Z
    .registers 1

    .line 974
    sget-boolean v0, Lcom/android/server/apphibernation/AppHibernationService;->sIsServiceEnabled:Z

    return v0
.end method

.method public static isDeviceConfigAppHibernationEnabled()Z
    .registers 3

    .line 978
    const-string v0, "app_hibernation_enabled"

    const/4 v1, 0x1

    const-string v2, "app_hibernation"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final checkUserStatesExist(ILjava/lang/String;Z)Z
    .registers 7

    .line 780
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "AppHibernationService"

    if-nez v0, :cond_1f

    if-eqz p3, :cond_1e

    .line 784
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p2, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 782
    const-string p1, "Attempt to call %s on stopped or nonexistent user %d"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    return v1

    .line 788
    :cond_1f
    iget-object p0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result p0

    if-nez p0, :cond_37

    if-eqz p3, :cond_36

    .line 790
    const-string p0, "Attempt to call %s before states have been read from disk"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    return v1

    :cond_37
    const/4 p0, 0x1

    return p0
.end method

.method public getHibernatingPackagesForUser(I)Ljava/util/List;
    .registers 8

    .line 378
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 379
    const-string v1, "getHibernatingPackagesForUser"

    .line 380
    sget-boolean v2, Lcom/android/server/apphibernation/AppHibernationService;->sIsServiceEnabled:Z

    if-nez v2, :cond_c

    return-object v0

    .line 383
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.MANAGE_APP_HIBERNATION"

    const-string v4, "Caller does not have MANAGE_APP_HIBERNATION permission."

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    invoke-direct {p0, p1, v1}, Lcom/android/server/apphibernation/AppHibernationService;->handleIncomingUser(ILjava/lang/String;)I

    move-result p1

    .line 387
    iget-object v2, p0, Lcom/android/server/apphibernation/AppHibernationService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x1

    .line 388
    :try_start_1f
    invoke-virtual {p0, p1, v1, v3}, Lcom/android/server/apphibernation/AppHibernationService;->checkUserStatesExist(ILjava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_29

    .line 389
    monitor-exit v2

    return-object v0

    :catchall_27
    move-exception p0

    goto :goto_60

    .line 391
    :cond_29
    iget-object v1, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 392
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_39
    :goto_39
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/apphibernation/UserLevelState;

    .line 393
    iget-object v3, v1, Lcom/android/server/apphibernation/UserLevelState;->packageName:Ljava/lang/String;

    .line 394
    iget-object v4, p0, Lcom/android/server/apphibernation/AppHibernationService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 395
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 394
    invoke-virtual {v4, v5, v3}, Landroid/content/pm/PackageManagerInternal;->canQueryPackage(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_54

    goto :goto_39

    .line 399
    :cond_54
    iget-boolean v3, v1, Lcom/android/server/apphibernation/UserLevelState;->hibernated:Z

    if-eqz v3, :cond_39

    .line 400
    iget-object v1, v1, Lcom/android/server/apphibernation/UserLevelState;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_39

    .line 403
    :cond_5e
    monitor-exit v2

    return-object v0

    .line 404
    :goto_60
    monitor-exit v2
    :try_end_61
    .catchall {:try_start_1f .. :try_end_61} :catchall_27

    throw p0
.end method

.method public getHibernationStatsForUser(Ljava/util/Set;I)Ljava/util/Map;
    .registers 11

    .line 415
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 416
    const-string v1, "getHibernationStatsForUser"

    .line 417
    sget-boolean v2, Lcom/android/server/apphibernation/AppHibernationService;->sIsServiceEnabled:Z

    if-nez v2, :cond_c

    return-object v0

    .line 420
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.MANAGE_APP_HIBERNATION"

    const-string v4, "Caller does not have MANAGE_APP_HIBERNATION permission."

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    invoke-direct {p0, p2, v1}, Lcom/android/server/apphibernation/AppHibernationService;->handleIncomingUser(ILjava/lang/String;)I

    move-result p2

    .line 424
    iget-object v2, p0, Lcom/android/server/apphibernation/AppHibernationService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x1

    .line 425
    :try_start_1f
    invoke-virtual {p0, p2, v1, v3}, Lcom/android/server/apphibernation/AppHibernationService;->checkUserStatesExist(ILjava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_29

    .line 426
    monitor-exit v2

    return-object v0

    :catchall_27
    move-exception p0

    goto :goto_96

    .line 428
    :cond_29
    iget-object v1, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz p1, :cond_34

    goto :goto_38

    .line 429
    :cond_34
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 430
    :goto_38
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_94

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 431
    iget-object v4, p0, Lcom/android/server/apphibernation/AppHibernationService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/content/pm/PackageManagerInternal;->canQueryPackage(ILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_55

    goto :goto_3c

    .line 435
    :cond_55
    iget-object v4, p0, Lcom/android/server/apphibernation/AppHibernationService;->mGlobalHibernationStates:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_80

    .line 436
    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_64

    goto :goto_80

    .line 442
    :cond_64
    iget-object v4, p0, Lcom/android/server/apphibernation/AppHibernationService;->mGlobalHibernationStates:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/apphibernation/GlobalLevelState;

    iget-wide v4, v4, Lcom/android/server/apphibernation/GlobalLevelState;->savedByte:J

    .line 443
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/apphibernation/UserLevelState;

    iget-wide v6, v6, Lcom/android/server/apphibernation/UserLevelState;->savedByte:J

    add-long/2addr v4, v6

    .line 444
    new-instance v6, Landroid/apphibernation/HibernationStats;

    invoke-direct {v6, v4, v5}, Landroid/apphibernation/HibernationStats;-><init>(J)V

    .line 445
    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3c

    .line 437
    :cond_80
    :goto_80
    const-string v4, "AppHibernationService"

    const-string v5, "No hibernation state associated with package %s user %d. Maybethe package was uninstalled? "

    .line 439
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v3, v6}, [Ljava/lang/Object;

    move-result-object v3

    .line 437
    invoke-static {v5, v3}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    .line 447
    :cond_94
    monitor-exit v2

    return-object v0

    :goto_96
    monitor-exit v2
    :try_end_97
    .catchall {:try_start_1f .. :try_end_97} :catchall_27

    throw p0
.end method

.method public final hibernatePackageForUser(Ljava/lang/String;ILcom/android/server/apphibernation/UserLevelState;)V
    .registers 12

    .line 457
    const-string v0, "hibernatePackage"

    const-wide/32 v1, 0x80000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 458
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 460
    :try_start_c
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const-wide/32 v5, 0x200ca200

    invoke-interface {v0, p1, v5, v6, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 462
    iget-object v5, p0, Lcom/android/server/apphibernation/AppHibernationService;->mStorageStatsManager:Landroid/app/usage/StorageStatsManager;

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->storageUuid:Ljava/util/UUID;

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v6, p1, v7}, Landroid/app/usage/StorageStatsManager;->queryStatsForPackage(Ljava/util/UUID;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/StorageStats;

    move-result-object v5

    .line 465
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v6, 0x1

    invoke-virtual {p0, p1, v0, v6}, Lcom/android/server/apphibernation/AppHibernationService;->noteHibernationChange(Ljava/lang/String;IZ)V

    .line 467
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mIActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V

    .line 468
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const/4 v6, 0x0

    invoke-interface {v0, p1, p2, v6}, Landroid/content/pm/IPackageManager;->deleteApplicationCacheFilesAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageDataObserver;)V

    .line 470
    iget-object p0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mLock:Ljava/lang/Object;

    monitor-enter p0
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_36} :catch_4d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_36} :catch_4b
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_36} :catch_49
    .catchall {:try_start_c .. :try_end_36} :catchall_47

    .line 471
    :try_start_36
    invoke-virtual {v5}, Landroid/app/usage/StorageStats;->getCacheBytes()J

    move-result-wide p1

    iput-wide p1, p3, Lcom/android/server/apphibernation/UserLevelState;->savedByte:J

    .line 472
    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_36 .. :try_end_3d} :catchall_44

    .line 481
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 482
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_44
    move-exception p1

    .line 472
    :try_start_45
    monitor-exit p0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    :try_start_46
    throw p1
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_47} :catch_4d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_46 .. :try_end_47} :catch_4b
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_47} :catch_49
    .catchall {:try_start_46 .. :try_end_47} :catchall_47

    :catchall_47
    move-exception p0

    goto :goto_6e

    :catch_49
    move-exception p0

    goto :goto_4f

    :catch_4b
    move-exception p0

    goto :goto_5d

    :catch_4d
    move-exception p0

    goto :goto_66

    .line 479
    :goto_4f
    :try_start_4f
    const-string p1, "AppHibernationService"

    const-string p2, "Storage device not found"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_56
    .catchall {:try_start_4f .. :try_end_56} :catchall_47

    .line 481
    :goto_56
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 482
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_65

    .line 477
    :goto_5d
    :try_start_5d
    const-string p1, "AppHibernationService"

    const-string p2, "Package name not found when querying storage stats"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_56

    :goto_65
    return-void

    .line 474
    :goto_66
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Failed to hibernate due to manager not being available"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_6e
    .catchall {:try_start_5d .. :try_end_6e} :catchall_47

    .line 481
    :goto_6e
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 482
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 483
    throw p0
.end method

.method public final hibernatePackageGlobally(Ljava/lang/String;Lcom/android/server/apphibernation/GlobalLevelState;)V
    .registers 10

    .line 553
    const-string v0, "hibernatePackageGlobally"

    const-wide/32 v1, 0x80000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 555
    iget-boolean v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mOatArtifactDeletionEnabled:Z

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_18

    .line 556
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 557
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->deleteOatArtifactsOfPackage(Ljava/lang/String;)J

    move-result-wide v5

    .line 556
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 560
    :cond_18
    iget-object p0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mLock:Ljava/lang/Object;

    monitor-enter p0

    .line 561
    :try_start_1b
    iput-wide v3, p2, Lcom/android/server/apphibernation/GlobalLevelState;->savedByte:J

    .line 562
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_22

    .line 563
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_22
    move-exception p1

    .line 562
    :try_start_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw p1
.end method

.method public final initializeGlobalHibernationStates(Ljava/util/List;)V
    .registers 9

    .line 646
    :try_start_0
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const-wide/32 v1, 0x204ca200

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager;->getInstalledPackages(JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 647
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_79

    .line 652
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    move v2, v3

    :goto_13
    if-ge v2, v1, :cond_2c

    .line 653
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 654
    new-instance v5, Lcom/android/server/apphibernation/GlobalLevelState;

    invoke-direct {v5}, Lcom/android/server/apphibernation/GlobalLevelState;-><init>()V

    .line 655
    iput-object v4, v5, Lcom/android/server/apphibernation/GlobalLevelState;->packageName:Ljava/lang/String;

    .line 656
    iget-object v6, p0, Lcom/android/server/apphibernation/AppHibernationService;->mGlobalHibernationStates:Ljava/util/Map;

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_2c
    if-eqz p1, :cond_78

    .line 659
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 660
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    move v4, v3

    :goto_38
    if-ge v4, v2, :cond_48

    .line 661
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_38

    .line 663
    :cond_48
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    :goto_4c
    if-ge v3, v0, :cond_78

    .line 664
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/apphibernation/GlobalLevelState;

    .line 665
    iget-object v4, v2, Lcom/android/server/apphibernation/GlobalLevelState;->packageName:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6e

    .line 666
    iget-object v2, v2, Lcom/android/server/apphibernation/GlobalLevelState;->packageName:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v4, "No hibernation state associated with package %s. Maybe the package was uninstalled? "

    invoke-static {v4, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "AppHibernationService"

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_75

    .line 671
    :cond_6e
    iget-object v4, p0, Lcom/android/server/apphibernation/AppHibernationService;->mGlobalHibernationStates:Ljava/util/Map;

    iget-object v5, v2, Lcom/android/server/apphibernation/GlobalLevelState;->packageName:Ljava/lang/String;

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_75
    add-int/lit8 v3, v3, 0x1

    goto :goto_4c

    :cond_78
    return-void

    :catch_79
    move-exception p0

    .line 649
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Package manager not available"

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final initializeUserHibernationStates(ILjava/util/List;)V
    .registers 13

    .line 594
    :try_start_0
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const-wide/32 v1, 0x200ca200

    invoke-interface {v0, v1, v2, p1}, Landroid/content/pm/IPackageManager;->getInstalledPackages(JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_a7

    .line 599
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 601
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_18
    if-ge v4, v2, :cond_2f

    .line 602
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 603
    new-instance v6, Lcom/android/server/apphibernation/UserLevelState;

    invoke-direct {v6}, Lcom/android/server/apphibernation/UserLevelState;-><init>()V

    .line 604
    iput-object v5, v6, Lcom/android/server/apphibernation/UserLevelState;->packageName:Ljava/lang/String;

    .line 605
    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    :cond_2f
    if-eqz p2, :cond_a1

    .line 609
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 610
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    move v5, v3

    :goto_3b
    if-ge v5, v4, :cond_51

    .line 611
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageInfo;

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_3b

    .line 613
    :cond_51
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    move v4, v3

    :goto_56
    if-ge v4, v0, :cond_a1

    .line 614
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/apphibernation/UserLevelState;

    iget-object v5, v5, Lcom/android/server/apphibernation/UserLevelState;->packageName:Ljava/lang/String;

    .line 615
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageInfo;

    .line 616
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/apphibernation/UserLevelState;

    if-nez v6, :cond_82

    .line 620
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    .line 618
    const-string v6, "No hibernation state associated with package %s user %d. Maybethe package was uninstalled? "

    invoke-static {v6, v5}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "AppHibernationService"

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9e

    .line 623
    :cond_82
    iget-object v6, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v6, :cond_9b

    iget v8, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v9, 0x200000

    and-int/2addr v8, v9

    iput v8, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    if-nez v8, :cond_9b

    iget-boolean v6, v7, Lcom/android/server/apphibernation/UserLevelState;->hibernated:Z

    if-eqz v6, :cond_9b

    .line 628
    iput-boolean v3, v7, Lcom/android/server/apphibernation/UserLevelState;->hibernated:Z

    .line 629
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v7, Lcom/android/server/apphibernation/UserLevelState;->lastUnhibernatedMs:J

    .line 631
    :cond_9b
    invoke-interface {v1, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_9e
    add-int/lit8 v4, v4, 0x1

    goto :goto_56

    .line 634
    :cond_a1
    iget-object p0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    :catch_a7
    move-exception p0

    .line 596
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Package manager not available"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public isHibernatingForUser(Ljava/lang/String;I)Z
    .registers 9

    .line 227
    const-string/jumbo v0, "isHibernatingForUser"

    .line 228
    sget-boolean v1, Lcom/android/server/apphibernation/AppHibernationService;->sIsServiceEnabled:Z

    const/4 v2, 0x0

    if-nez v1, :cond_9

    return v2

    .line 231
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "android.permission.MANAGE_APP_HIBERNATION"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Caller did not have permission while calling "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-direct {p0, p2, v0}, Lcom/android/server/apphibernation/AppHibernationService;->handleIncomingUser(ILjava/lang/String;)I

    move-result p2

    .line 235
    iget-object v1, p0, Lcom/android/server/apphibernation/AppHibernationService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 238
    :try_start_2a
    invoke-virtual {p0, p2, v0, v2}, Lcom/android/server/apphibernation/AppHibernationService;->checkUserStatesExist(ILjava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_34

    .line 239
    monitor-exit v1

    return v2

    :catchall_32
    move-exception p0

    goto :goto_57

    .line 241
    :cond_34
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    .line 242
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/apphibernation/UserLevelState;

    if-eqz p2, :cond_55

    .line 243
    iget-object p0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 245
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 244
    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManagerInternal;->canQueryPackage(ILjava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_51

    goto :goto_55

    .line 248
    :cond_51
    iget-boolean p0, p2, Lcom/android/server/apphibernation/UserLevelState;->hibernated:Z

    monitor-exit v1

    return p0

    .line 246
    :cond_55
    :goto_55
    monitor-exit v1

    return v2

    .line 249
    :goto_57
    monitor-exit v1
    :try_end_58
    .catchall {:try_start_2a .. :try_end_58} :catchall_32

    throw p0
.end method

.method public isHibernatingGlobally(Ljava/lang/String;)Z
    .registers 6

    .line 259
    sget-boolean v0, Lcom/android/server/apphibernation/AppHibernationService;->sIsServiceEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 262
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.MANAGE_APP_HIBERNATION"

    const-string v3, "Caller does not have MANAGE_APP_HIBERNATION permission."

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 266
    :try_start_14
    iget-object v2, p0, Lcom/android/server/apphibernation/AppHibernationService;->mGlobalHibernationStates:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/apphibernation/GlobalLevelState;

    if-eqz v2, :cond_31

    .line 267
    iget-object p0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 269
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 268
    invoke-virtual {p0, v3, p1}, Landroid/content/pm/PackageManagerInternal;->canQueryPackage(ILjava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2b

    goto :goto_31

    .line 274
    :cond_2b
    iget-boolean p0, v2, Lcom/android/server/apphibernation/GlobalLevelState;->hibernated:Z

    monitor-exit v0

    return p0

    :catchall_2f
    move-exception p0

    goto :goto_33

    .line 272
    :cond_31
    :goto_31
    monitor-exit v0

    return v1

    .line 275
    :goto_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_14 .. :try_end_34} :catchall_2f

    throw p0
.end method

.method public final isOatArtifactDeletionEnabled()Z
    .registers 4

    .line 213
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_APP_HIBERNATION"

    const-string v2, "Caller does not have MANAGE_APP_HIBERNATION permission."

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-boolean p0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mOatArtifactDeletionEnabled:Z

    return p0
.end method

.method public final synthetic lambda$new$6(ILandroid/app/usage/UsageEvents$Event;)V
    .registers 5

    .line 955
    invoke-static {}, Lcom/android/server/apphibernation/AppHibernationService;->isAppHibernationEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_14

    .line 958
    :cond_7
    iget v0, p2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_15

    const/4 v1, 0x1

    if-eq v0, v1, :cond_15

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_14

    goto :goto_15

    :cond_14
    :goto_14
    return-void

    .line 962
    :cond_15
    :goto_15
    iget-object p2, p2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    const/4 v0, 0x0

    .line 963
    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/apphibernation/AppHibernationService;->setHibernatingForUser(Ljava/lang/String;IZ)V

    .line 964
    invoke-virtual {p0, p2, v0}, Lcom/android/server/apphibernation/AppHibernationService;->setHibernatingGlobally(Ljava/lang/String;Z)V

    return-void
.end method

.method public final synthetic lambda$onBootPhase$0()V
    .registers 3

    .line 180
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mGlobalLevelHibernationDiskStore:Lcom/android/server/apphibernation/HibernationStateDiskStore;

    .line 181
    invoke-virtual {v0}, Lcom/android/server/apphibernation/HibernationStateDiskStore;->readHibernationStates()Ljava/util/List;

    move-result-object v0

    .line 182
    iget-object v1, p0, Lcom/android/server/apphibernation/AppHibernationService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 183
    :try_start_9
    invoke-virtual {p0, v0}, Lcom/android/server/apphibernation/AppHibernationService;->initializeGlobalHibernationStates(Ljava/util/List;)V

    .line 184
    monitor-exit v1

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public final synthetic lambda$onUserUnlocking$5(Lcom/android/server/apphibernation/HibernationStateDiskStore;I)V
    .registers 6

    .line 683
    invoke-virtual {p1}, Lcom/android/server/apphibernation/HibernationStateDiskStore;->readHibernationStates()Ljava/util/List;

    move-result-object p1

    .line 684
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 686
    :try_start_7
    iget-object v1, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p2}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 687
    invoke-virtual {p0, p2, p1}, Lcom/android/server/apphibernation/AppHibernationService;->initializeUserHibernationStates(ILjava/util/List;)V

    .line 690
    iget-object p1, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_22
    :goto_22
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_47

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/apphibernation/UserLevelState;

    .line 691
    iget-object v1, p2, Lcom/android/server/apphibernation/UserLevelState;->packageName:Ljava/lang/String;

    .line 692
    iget-object v2, p0, Lcom/android/server/apphibernation/AppHibernationService;->mGlobalHibernationStates:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/apphibernation/GlobalLevelState;

    .line 693
    iget-boolean v2, v2, Lcom/android/server/apphibernation/GlobalLevelState;->hibernated:Z

    if-eqz v2, :cond_22

    iget-boolean p2, p2, Lcom/android/server/apphibernation/UserLevelState;->hibernated:Z

    if-nez p2, :cond_22

    const/4 p2, 0x0

    .line 694
    invoke-virtual {p0, v1, p2}, Lcom/android/server/apphibernation/AppHibernationService;->setHibernatingGlobally(Ljava/lang/String;Z)V

    goto :goto_22

    :catchall_45
    move-exception p0

    goto :goto_49

    .line 698
    :cond_47
    monitor-exit v0

    return-void

    :goto_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_7 .. :try_end_4a} :catchall_45

    throw p0
.end method

.method public final synthetic lambda$setHibernatingForUser$1(Ljava/lang/String;ILcom/android/server/apphibernation/UserLevelState;)V
    .registers 4

    .line 315
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/apphibernation/AppHibernationService;->hibernatePackageForUser(Ljava/lang/String;ILcom/android/server/apphibernation/UserLevelState;)V

    return-void
.end method

.method public final synthetic lambda$setHibernatingForUser$2(Ljava/lang/String;I)V
    .registers 3

    .line 318
    invoke-virtual {p0, p1, p2}, Lcom/android/server/apphibernation/AppHibernationService;->unhibernatePackageForUser(Ljava/lang/String;I)V

    return-void
.end method

.method public final synthetic lambda$setHibernatingGlobally$4(Ljava/lang/String;Lcom/android/server/apphibernation/GlobalLevelState;)V
    .registers 3

    .line 362
    invoke-virtual {p0, p1, p2}, Lcom/android/server/apphibernation/AppHibernationService;->hibernatePackageGlobally(Ljava/lang/String;Lcom/android/server/apphibernation/GlobalLevelState;)V

    return-void
.end method

.method public final noteHibernationChange(Ljava/lang/String;IZ)V
    .registers 14

    if-eqz p3, :cond_1c

    .line 571
    :try_start_2
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mIActivityManager:Landroid/app/IActivityManager;

    const/4 v7, 0x3

    const-wide v8, 0x1cf7c5800L

    const/16 v3, 0x3c

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, p1

    move v2, p2

    invoke-interface/range {v0 .. v9}, Landroid/app/IActivityManager;->noteAppRestrictionEnabled(Ljava/lang/String;IIZILjava/lang/String;IJ)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_14} :catch_15

    return-void

    .line 579
    :catch_15
    const-string p0, "AppHibernationService"

    const-string p1, "Couldn\'t set restriction state change"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    return-void
.end method

.method public onBootPhase(I)V
    .registers 6

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_e

    .line 179
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/apphibernation/AppHibernationService;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_e
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_4a

    .line 188
    invoke-static {}, Lcom/android/server/apphibernation/AppHibernationService;->isDeviceConfigAppHibernationEnabled()Z

    move-result p1

    sput-boolean p1, Lcom/android/server/apphibernation/AppHibernationService;->sIsServiceEnabled:Z

    .line 191
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Application;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v0, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/apphibernation/AppHibernationService;)V

    .line 189
    const-string v1, "app_hibernation"

    invoke-static {v1, p1, v0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 193
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/app/StatsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/StatsManager;

    .line 194
    new-instance v0, Lcom/android/server/apphibernation/AppHibernationService$StatsPullAtomCallbackImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/apphibernation/AppHibernationService$StatsPullAtomCallbackImpl;-><init>(Lcom/android/server/apphibernation/AppHibernationService;Lcom/android/server/apphibernation/AppHibernationService-IA;)V

    const/16 v2, 0x277b

    .line 195
    iget-object v3, p0, Lcom/android/server/apphibernation/AppHibernationService;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v2, v1, v3, v0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    const/16 v2, 0x277d

    .line 200
    iget-object p0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v2, v1, p0, v0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    :cond_4a
    return-void
.end method

.method public final onDeviceConfigChanged(Landroid/provider/DeviceConfig$Properties;)V
    .registers 3

    .line 744
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 745
    const-string v0, "app_hibernation_enabled"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 746
    invoke-static {}, Lcom/android/server/apphibernation/AppHibernationService;->isDeviceConfigAppHibernationEnabled()Z

    move-result p0

    sput-boolean p0, Lcom/android/server/apphibernation/AppHibernationService;->sIsServiceEnabled:Z

    .line 747
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "App hibernation changed to enabled="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p1, Lcom/android/server/apphibernation/AppHibernationService;->sIsServiceEnabled:Z

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppHibernationService"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a
    return-void
.end method

.method public final onPackageAdded(Ljava/lang/String;I)V
    .registers 6

    .line 713
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 714
    :try_start_3
    iget-object v1, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_f

    .line 715
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    goto :goto_37

    .line 717
    :cond_f
    new-instance v1, Lcom/android/server/apphibernation/UserLevelState;

    invoke-direct {v1}, Lcom/android/server/apphibernation/UserLevelState;-><init>()V

    .line 718
    iput-object p1, v1, Lcom/android/server/apphibernation/UserLevelState;->packageName:Ljava/lang/String;

    .line 719
    iget-object v2, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    iget-object p2, p0, Lcom/android/server/apphibernation/AppHibernationService;->mGlobalHibernationStates:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_35

    .line 721
    new-instance p2, Lcom/android/server/apphibernation/GlobalLevelState;

    invoke-direct {p2}, Lcom/android/server/apphibernation/GlobalLevelState;-><init>()V

    .line 722
    iput-object p1, p2, Lcom/android/server/apphibernation/GlobalLevelState;->packageName:Ljava/lang/String;

    .line 723
    iget-object p0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mGlobalHibernationStates:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    :cond_35
    monitor-exit v0

    return-void

    :goto_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_d

    throw p0
.end method

.method public final onPackageRemoved(Ljava/lang/String;I)V
    .registers 5

    .line 729
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 730
    :try_start_3
    iget-object v1, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_f

    .line 731
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    goto :goto_1c

    .line 733
    :cond_f
    iget-object p0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    monitor-exit v0

    return-void

    :goto_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_d

    throw p0
.end method

.method public final onPackageRemovedForAllUsers(Ljava/lang/String;)V
    .registers 3

    .line 738
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 739
    :try_start_3
    iget-object p0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mGlobalHibernationStates:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 740
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public onStart()V
    .registers 3

    .line 173
    const-string v0, "app_hibernation"

    iget-object v1, p0, Lcom/android/server/apphibernation/AppHibernationService;->mServiceStub:Lcom/android/server/apphibernation/AppHibernationService$AppHibernationServiceStub;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .registers 4

    .line 704
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    .line 706
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 707
    :try_start_7
    iget-object v1, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserDiskStores:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 708
    iget-object p0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 709
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .registers 5

    .line 678
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    .line 679
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mInjector:Lcom/android/server/apphibernation/AppHibernationService$Injector;

    .line 680
    invoke-interface {v0, p1}, Lcom/android/server/apphibernation/AppHibernationService$Injector;->getUserLevelDiskStore(I)Lcom/android/server/apphibernation/HibernationStateDiskStore;

    move-result-object v0

    .line 681
    iget-object v1, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserDiskStores:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 682
    iget-object v1, p0, Lcom/android/server/apphibernation/AppHibernationService;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/apphibernation/AppHibernationService;Lcom/android/server/apphibernation/HibernationStateDiskStore;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setHibernatingForUser(Ljava/lang/String;IZ)V
    .registers 8

    .line 286
    const-string/jumbo v0, "setHibernatingForUser"

    .line 287
    sget-boolean v1, Lcom/android/server/apphibernation/AppHibernationService;->sIsServiceEnabled:Z

    if-nez v1, :cond_8

    return-void

    .line 290
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.MANAGE_APP_HIBERNATION"

    const-string v3, "Caller does not have MANAGE_APP_HIBERNATION permission."

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-direct {p0, p2, v0}, Lcom/android/server/apphibernation/AppHibernationService;->handleIncomingUser(ILjava/lang/String;)I

    move-result p2

    .line 294
    iget-object v1, p0, Lcom/android/server/apphibernation/AppHibernationService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x1

    .line 295
    :try_start_1b
    invoke-virtual {p0, p2, v0, v2}, Lcom/android/server/apphibernation/AppHibernationService;->checkUserStatesExist(ILjava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_26

    .line 296
    monitor-exit v1

    return-void

    :catchall_23
    move-exception p0

    goto/16 :goto_aa

    .line 298
    :cond_26
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 299
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/apphibernation/UserLevelState;

    if-eqz v0, :cond_95

    .line 300
    iget-object v2, p0, Lcom/android/server/apphibernation/AppHibernationService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 302
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 301
    invoke-virtual {v2, v3, p1}, Landroid/content/pm/PackageManagerInternal;->canQueryPackage(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_43

    goto :goto_95

    .line 308
    :cond_43
    iget-boolean v2, v0, Lcom/android/server/apphibernation/UserLevelState;->hibernated:Z

    if-ne v2, p3, :cond_49

    .line 309
    monitor-exit v1

    return-void

    .line 312
    :cond_49
    iput-boolean p3, v0, Lcom/android/server/apphibernation/UserLevelState;->hibernated:Z

    if-eqz p3, :cond_58

    .line 314
    iget-object p3, p0, Lcom/android/server/apphibernation/AppHibernationService;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/apphibernation/AppHibernationService;Ljava/lang/String;ILcom/android/server/apphibernation/UserLevelState;)V

    invoke-interface {p3, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_68

    .line 317
    :cond_58
    iget-object p3, p0, Lcom/android/server/apphibernation/AppHibernationService;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/apphibernation/AppHibernationService;Ljava/lang/String;I)V

    invoke-interface {p3, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 319
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/apphibernation/UserLevelState;->lastUnhibernatedMs:J

    .line 322
    :goto_68
    new-instance p1, Lcom/android/server/apphibernation/UserLevelState;

    invoke-direct {p1, v0}, Lcom/android/server/apphibernation/UserLevelState;-><init>(Lcom/android/server/apphibernation/UserLevelState;)V

    .line 324
    iget-object p3, p0, Lcom/android/server/apphibernation/AppHibernationService;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1, p2}, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/apphibernation/UserLevelState;I)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 331
    new-instance p1, Ljava/util/ArrayList;

    iget-object p3, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 332
    iget-object p0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserDiskStores:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/apphibernation/HibernationStateDiskStore;

    invoke-virtual {p0, p1}, Lcom/android/server/apphibernation/HibernationStateDiskStore;->scheduleWriteHibernationStates(Ljava/util/List;)V

    .line 333
    monitor-exit v1

    return-void

    .line 303
    :cond_95
    :goto_95
    const-string p0, "AppHibernationService"

    const-string p3, "Package %s is not installed for user %s"

    .line 304
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 303
    invoke-static {p3, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    monitor-exit v1

    return-void

    .line 333
    :goto_aa
    monitor-exit v1
    :try_end_ab
    .catchall {:try_start_1b .. :try_end_ab} :catchall_23

    throw p0
.end method

.method public setHibernatingGlobally(Ljava/lang/String;Z)V
    .registers 7

    .line 344
    sget-boolean v0, Lcom/android/server/apphibernation/AppHibernationService;->sIsServiceEnabled:Z

    if-nez v0, :cond_5

    return-void

    .line 347
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_APP_HIBERNATION"

    const-string v2, "Caller does not have MANAGE_APP_HIBERNATION permission."

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 351
    :try_start_13
    iget-object v1, p0, Lcom/android/server/apphibernation/AppHibernationService;->mGlobalHibernationStates:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/apphibernation/GlobalLevelState;

    if-eqz v1, :cond_5b

    .line 352
    iget-object v2, p0, Lcom/android/server/apphibernation/AppHibernationService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 354
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 353
    invoke-virtual {v2, v3, p1}, Landroid/content/pm/PackageManagerInternal;->canQueryPackage(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2a

    goto :goto_5b

    .line 359
    :cond_2a
    iget-boolean v2, v1, Lcom/android/server/apphibernation/GlobalLevelState;->hibernated:Z

    if-eq v2, p2, :cond_59

    .line 360
    iput-boolean p2, v1, Lcom/android/server/apphibernation/GlobalLevelState;->hibernated:Z

    if-eqz p2, :cond_3f

    .line 362
    iget-object p2, p0, Lcom/android/server/apphibernation/AppHibernationService;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, p1, v1}, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/apphibernation/AppHibernationService;Ljava/lang/String;Lcom/android/server/apphibernation/GlobalLevelState;)V

    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_49

    :catchall_3d
    move-exception p0

    goto :goto_6c

    :cond_3f
    const-wide/16 p1, 0x0

    .line 364
    iput-wide p1, v1, Lcom/android/server/apphibernation/GlobalLevelState;->savedByte:J

    .line 365
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, v1, Lcom/android/server/apphibernation/GlobalLevelState;->lastUnhibernatedMs:J

    .line 367
    :goto_49
    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/android/server/apphibernation/AppHibernationService;->mGlobalHibernationStates:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 368
    iget-object p0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mGlobalLevelHibernationDiskStore:Lcom/android/server/apphibernation/HibernationStateDiskStore;

    invoke-virtual {p0, p1}, Lcom/android/server/apphibernation/HibernationStateDiskStore;->scheduleWriteHibernationStates(Ljava/util/List;)V

    .line 370
    :cond_59
    monitor-exit v0

    return-void

    .line 355
    :cond_5b
    :goto_5b
    const-string p0, "AppHibernationService"

    const-string p2, "Package %s is not installed for any user"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    monitor-exit v0

    return-void

    .line 370
    :goto_6c
    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_13 .. :try_end_6d} :catchall_3d

    throw p0
.end method

.method public final unhibernatePackageForUser(Ljava/lang/String;I)V
    .registers 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 491
    const-string/jumbo v2, "unhibernatePackage"

    const-wide/32 v3, 0x80000

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 492
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 497
    :try_start_11
    iget-object v2, v0, Lcom/android/server/apphibernation/AppHibernationService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const-wide/32 v7, 0x200ca200

    move/from16 v9, p2

    invoke-interface {v2, v1, v7, v8, v9}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 499
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v7, 0x0

    invoke-virtual {v0, v1, v2, v7}, Lcom/android/server/apphibernation/AppHibernationService;->noteHibernationChange(Ljava/lang/String;IZ)V

    .line 501
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 502
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v12

    .line 503
    const-string v2, "android.permission.RECEIVE_BOOT_COMPLETED"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v18

    .line 504
    iget-object v9, v0, Lcom/android/server/apphibernation/AppHibernationService;->mIActivityManager:Landroid/app/IActivityManager;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, -0x1

    const/16 v22, 0x0

    move/from16 v25, p2

    invoke-interface/range {v9 .. v25}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I

    .line 522
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v12

    .line 523
    iget-object v9, v0, Lcom/android/server/apphibernation/AppHibernationService;->mIActivityManager:Landroid/app/IActivityManager;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, -0x1

    const/16 v22, 0x0

    move/from16 v25, p2

    invoke-interface/range {v9 .. v25}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_76
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_76} :catch_7f
    .catchall {:try_start_11 .. :try_end_76} :catchall_7d

    .line 543
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 544
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_7d
    move-exception v0

    goto :goto_85

    :catch_7f
    move-exception v0

    .line 541
    :try_start_80
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_85
    .catchall {:try_start_80 .. :try_end_85} :catchall_7d

    .line 543
    :goto_85
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 544
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 545
    throw v0
.end method
