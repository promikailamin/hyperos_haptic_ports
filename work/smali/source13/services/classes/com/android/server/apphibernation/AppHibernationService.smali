.class public final Lcom/android/server/apphibernation/AppHibernationService;
.super Lcom/android/server/SystemService;
.source "AppHibernationService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/apphibernation/AppHibernationService$StatsPullAtomCallbackImpl;,
        Lcom/android/server/apphibernation/AppHibernationService$InjectorImpl;,
        Lcom/android/server/apphibernation/AppHibernationService$Injector;,
        Lcom/android/server/apphibernation/AppHibernationService$AppHibernationServiceStub;,
        Lcom/android/server/apphibernation/AppHibernationService$LocalService;
    }
.end annotation


# static fields
.field private static final PACKAGE_MATCH_FLAGS:I = 0x200ca200

.field private static final TAG:Ljava/lang/String; = "AppHibernationService"

.field public static sIsServiceEnabled:Z


# instance fields
.field private final mBackgroundExecutor:Ljava/util/concurrent/Executor;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mGlobalHibernationStates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/apphibernation/GlobalLevelState;",
            ">;"
        }
    .end annotation
.end field

.field private final mGlobalLevelHibernationDiskStore:Lcom/android/server/apphibernation/HibernationStateDiskStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/apphibernation/HibernationStateDiskStore<",
            "Lcom/android/server/apphibernation/GlobalLevelState;",
            ">;"
        }
    .end annotation
.end field

.field private final mIActivityManager:Landroid/app/IActivityManager;

.field private final mIPackageManager:Landroid/content/pm/IPackageManager;

.field private final mInjector:Lcom/android/server/apphibernation/AppHibernationService$Injector;

.field private final mLocalService:Lcom/android/server/apphibernation/AppHibernationManagerInternal;

.field private final mLock:Ljava/lang/Object;

.field private final mOatArtifactDeletionEnabled:Z

.field private final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field private final mServiceStub:Lcom/android/server/apphibernation/AppHibernationService$AppHibernationServiceStub;

.field private final mStorageStatsManager:Landroid/app/usage/StorageStatsManager;

.field private final mUsageEventListener:Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;

.field private final mUserDiskStores:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/apphibernation/HibernationStateDiskStore<",
            "Lcom/android/server/apphibernation/UserLevelState;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mUserManager:Landroid/os/UserManager;

.field private final mUserStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/apphibernation/UserLevelState;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$PYZuZQSSTjdPIvhr5hm0CJ1rLtA(Lcom/android/server/apphibernation/AppHibernationService;Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/apphibernation/AppHibernationService;->onDeviceConfigChanged(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmGlobalHibernationStates(Lcom/android/server/apphibernation/AppHibernationService;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mGlobalHibernationStates:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/apphibernation/AppHibernationService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserManager(Lcom/android/server/apphibernation/AppHibernationService;)Landroid/os/UserManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserManager:Landroid/os/UserManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mdump(Lcom/android/server/apphibernation/AppHibernationService;Ljava/io/PrintWriter;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/apphibernation/AppHibernationService;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$misOatArtifactDeletionEnabled(Lcom/android/server/apphibernation/AppHibernationService;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/server/apphibernation/AppHibernationService;->isOatArtifactDeletionEnabled()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$monPackageAdded(Lcom/android/server/apphibernation/AppHibernationService;Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/apphibernation/AppHibernationService;->onPackageAdded(Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monPackageRemoved(Lcom/android/server/apphibernation/AppHibernationService;Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/apphibernation/AppHibernationService;->onPackageRemoved(Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monPackageRemovedForAllUsers(Lcom/android/server/apphibernation/AppHibernationService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/apphibernation/AppHibernationService;->onPackageRemovedForAllUsers(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 143
    new-instance v0, Lcom/android/server/apphibernation/AppHibernationService$InjectorImpl;

    invoke-direct {v0, p1}, Lcom/android/server/apphibernation/AppHibernationService$InjectorImpl;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/android/server/apphibernation/AppHibernationService;-><init>(Lcom/android/server/apphibernation/AppHibernationService$Injector;)V

    .line 144
    return-void
.end method

.method constructor <init>(Lcom/android/server/apphibernation/AppHibernationService$Injector;)V
    .registers 8
    .param p1, "injector"    # Lcom/android/server/apphibernation/AppHibernationService$Injector;

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

    .line 801
    new-instance v0, Lcom/android/server/apphibernation/AppHibernationService$LocalService;

    invoke-direct {v0, p0}, Lcom/android/server/apphibernation/AppHibernationService$LocalService;-><init>(Lcom/android/server/apphibernation/AppHibernationService;)V

    iput-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mLocalService:Lcom/android/server/apphibernation/AppHibernationManagerInternal;

    .line 836
    new-instance v1, Lcom/android/server/apphibernation/AppHibernationService$AppHibernationServiceStub;

    invoke-direct {v1, p0}, Lcom/android/server/apphibernation/AppHibernationService$AppHibernationServiceStub;-><init>(Lcom/android/server/apphibernation/AppHibernationService;)V

    iput-object v1, p0, Lcom/android/server/apphibernation/AppHibernationService;->mServiceStub:Lcom/android/server/apphibernation/AppHibernationService$AppHibernationServiceStub;

    .line 893
    new-instance v1, Lcom/android/server/apphibernation/AppHibernationService$1;

    invoke-direct {v1, p0}, Lcom/android/server/apphibernation/AppHibernationService$1;-><init>(Lcom/android/server/apphibernation/AppHibernationService;)V

    iput-object v1, p0, Lcom/android/server/apphibernation/AppHibernationService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 921
    new-instance v2, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/apphibernation/AppHibernationService;)V

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
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v3

    .line 162
    .local v3, "userAllContext":Landroid/content/Context;
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 163
    .local v4, "intentFilter":Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    const-string/jumbo v5, "package"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 167
    const-class v1, Lcom/android/server/apphibernation/AppHibernationManagerInternal;

    invoke-static {v1, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 168
    invoke-interface {p1}, Lcom/android/server/apphibernation/AppHibernationService$Injector;->getUsageStatsManagerInternal()Landroid/app/usage/UsageStatsManagerInternal;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/usage/UsageStatsManagerInternal;->registerListener(Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;)V

    .line 169
    return-void
.end method

.method private checkUserStatesExist(ILjava/lang/String;Z)Z
    .registers 9
    .param p1, "userId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "shouldLog"    # Z

    .line 752
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    const-string v1, "AppHibernationService"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_23

    .line 753
    if-eqz p3, :cond_22

    .line 754
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v3

    .line 756
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v2

    .line 754
    const-string v2, "Attempt to call %s on stopped or nonexistent user %d"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    :cond_22
    return v3

    .line 760
    :cond_23
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 761
    if-eqz p3, :cond_3a

    .line 762
    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v3

    const-string v2, "Attempt to call %s before states have been read from disk"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    :cond_3a
    return v3

    .line 767
    :cond_3b
    return v2
.end method

.method private dump(Ljava/io/PrintWriter;)V
    .registers 10
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 772
    invoke-virtual {p0}, Lcom/android/server/apphibernation/AppHibernationService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "AppHibernationService"

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    .line 774
    :cond_d
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 776
    .local v0, "idpw":Lcom/android/internal/util/IndentingPrintWriter;
    iget-object v1, p0, Lcom/android/server/apphibernation/AppHibernationService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 777
    :try_start_17
    iget-object v2, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 778
    .local v2, "userCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1e
    if-ge v3, v2, :cond_65

    .line 779
    iget-object v4, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 780
    .local v4, "userId":I
    const-string v5, "User Level Hibernation States, "

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 781
    const-string/jumbo v5, "user"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 782
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 783
    iget-object v5, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 784
    .local v5, "stateMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/apphibernation/UserLevelState;>;"
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 785
    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/apphibernation/UserLevelState;

    .line 786
    .local v7, "state":Lcom/android/server/apphibernation/UserLevelState;
    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    .line 787
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 788
    .end local v7    # "state":Lcom/android/server/apphibernation/UserLevelState;
    goto :goto_4b

    .line 789
    :cond_5e
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 778
    nop

    .end local v4    # "userId":I
    .end local v5    # "stateMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/apphibernation/UserLevelState;>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 791
    .end local v3    # "i":I
    :cond_65
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 792
    const-string v3, "Global Level Hibernation States"

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 793
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 794
    iget-object v3, p0, Lcom/android/server/apphibernation/AppHibernationService;->mGlobalHibernationStates:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/apphibernation/GlobalLevelState;

    .line 795
    .local v4, "state":Lcom/android/server/apphibernation/GlobalLevelState;
    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    .line 796
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 797
    .end local v4    # "state":Lcom/android/server/apphibernation/GlobalLevelState;
    goto :goto_7a

    .line 798
    .end local v2    # "userCount":I
    :cond_8d
    monitor-exit v1

    .line 799
    return-void

    .line 798
    :catchall_8f
    move-exception v2

    monitor-exit v1
    :try_end_91
    .catchall {:try_start_17 .. :try_end_91} :catchall_8f

    throw v2
.end method

.method private handleIncomingUser(ILjava/lang/String;)I
    .registers 12
    .param p1, "userId"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 733
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 735
    .local v8, "callingUid":I
    :try_start_4
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mIActivityManager:Landroid/app/IActivityManager;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    move v2, v8

    move v3, p1

    move-object v6, p2

    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_14} :catch_15

    return v0

    .line 737
    :catch_15
    move-exception v0

    .line 738
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private hibernatePackageForUser(Ljava/lang/String;ILcom/android/server/apphibernation/UserLevelState;)V
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "state"    # Lcom/android/server/apphibernation/UserLevelState;

    .line 454
    const-string/jumbo v0, "hibernatePackage"

    const-wide/32 v1, 0x80000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 455
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 457
    .local v3, "caller":J
    :try_start_d
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const-wide/32 v5, 0x200ca200

    invoke-interface {v0, p1, v5, v6, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 459
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v5, p0, Lcom/android/server/apphibernation/AppHibernationService;->mStorageStatsManager:Landroid/app/usage/StorageStatsManager;

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->storageUuid:Ljava/util/UUID;

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v6, p1, v7}, Landroid/app/usage/StorageStatsManager;->queryStatsForPackage(Ljava/util/UUID;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/StorageStats;

    move-result-object v5

    .line 461
    .local v5, "stats":Landroid/app/usage/StorageStats;
    iget-object v6, p0, Lcom/android/server/apphibernation/AppHibernationService;->mIActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v6, p1, p2}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V

    .line 462
    iget-object v6, p0, Lcom/android/server/apphibernation/AppHibernationService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const/4 v7, 0x0

    invoke-interface {v6, p1, p2, v7}, Landroid/content/pm/IPackageManager;->deleteApplicationCacheFilesAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageDataObserver;)V

    .line 464
    iget-object v6, p0, Lcom/android/server/apphibernation/AppHibernationService;->mLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_31} :catch_59
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_31} :catch_48
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_31} :catch_3e
    .catchall {:try_start_d .. :try_end_31} :catchall_3c

    .line 465
    :try_start_31
    invoke-virtual {v5}, Landroid/app/usage/StorageStats;->getCacheBytes()J

    move-result-wide v7

    iput-wide v7, p3, Lcom/android/server/apphibernation/UserLevelState;->savedByte:J

    .line 466
    monitor-exit v6

    .line 475
    .end local v0    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "stats":Landroid/app/usage/StorageStats;
    goto :goto_51

    .line 466
    .restart local v0    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v5    # "stats":Landroid/app/usage/StorageStats;
    :catchall_39
    move-exception v7

    monitor-exit v6
    :try_end_3b
    .catchall {:try_start_31 .. :try_end_3b} :catchall_39

    .end local v3    # "caller":J
    .end local p0    # "this":Lcom/android/server/apphibernation/AppHibernationService;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "userId":I
    .end local p3    # "state":Lcom/android/server/apphibernation/UserLevelState;
    :try_start_3b
    throw v7
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_3c} :catch_59
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3b .. :try_end_3c} :catch_48
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3c} :catch_3e
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3c

    .line 475
    .end local v0    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "stats":Landroid/app/usage/StorageStats;
    .restart local v3    # "caller":J
    .restart local p0    # "this":Lcom/android/server/apphibernation/AppHibernationService;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "userId":I
    .restart local p3    # "state":Lcom/android/server/apphibernation/UserLevelState;
    :catchall_3c
    move-exception v0

    goto :goto_62

    .line 472
    :catch_3e
    move-exception v0

    .line 473
    .local v0, "e":Ljava/io/IOException;
    :try_start_3f
    const-string v5, "AppHibernationService"

    const-string v6, "Storage device not found"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 475
    nop

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_51

    .line 470
    :catch_48
    move-exception v0

    .line 471
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "AppHibernationService"

    const-string v6, "Package name not found when querying storage stats"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_50
    .catchall {:try_start_3f .. :try_end_50} :catchall_3c

    .line 475
    nop

    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_51
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 476
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 477
    nop

    .line 478
    return-void

    .line 467
    :catch_59
    move-exception v0

    .line 468
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_5a
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Failed to hibernate due to manager not being available"

    invoke-direct {v5, v6, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v3    # "caller":J
    .end local p0    # "this":Lcom/android/server/apphibernation/AppHibernationService;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "userId":I
    .end local p3    # "state":Lcom/android/server/apphibernation/UserLevelState;
    throw v5
    :try_end_62
    .catchall {:try_start_5a .. :try_end_62} :catchall_3c

    .line 475
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v3    # "caller":J
    .restart local p0    # "this":Lcom/android/server/apphibernation/AppHibernationService;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "userId":I
    .restart local p3    # "state":Lcom/android/server/apphibernation/UserLevelState;
    :goto_62
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 476
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 477
    throw v0
.end method

.method private hibernatePackageGlobally(Ljava/lang/String;Lcom/android/server/apphibernation/GlobalLevelState;)V
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "state"    # Lcom/android/server/apphibernation/GlobalLevelState;

    .line 542
    const-string/jumbo v0, "hibernatePackageGlobally"

    const-wide/32 v1, 0x80000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 543
    const-wide/16 v3, 0x0

    .line 544
    .local v3, "savedBytes":J
    iget-boolean v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mOatArtifactDeletionEnabled:Z

    if-eqz v0, :cond_1b

    .line 545
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 546
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->deleteOatArtifactsOfPackage(Ljava/lang/String;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    .line 545
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 549
    :cond_1b
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 550
    :try_start_1e
    iput-wide v3, p2, Lcom/android/server/apphibernation/GlobalLevelState;->savedByte:J

    .line 551
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_25

    .line 552
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 553
    return-void

    .line 551
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v1
.end method

.method private initializeGlobalHibernationStates(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/apphibernation/GlobalLevelState;",
            ">;)V"
        }
    .end annotation

    .line 618
    .local p1, "diskStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/apphibernation/GlobalLevelState;>;"
    :try_start_0
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const-wide/32 v1, 0x204ca200

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager;->getInstalledPackages(JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 619
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_7c

    .line 622
    .local v0, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    nop

    .line 624
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_14
    if-ge v1, v2, :cond_2d

    .line 625
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 626
    .local v4, "packageName":Ljava/lang/String;
    new-instance v5, Lcom/android/server/apphibernation/GlobalLevelState;

    invoke-direct {v5}, Lcom/android/server/apphibernation/GlobalLevelState;-><init>()V

    .line 627
    .local v5, "state":Lcom/android/server/apphibernation/GlobalLevelState;
    iput-object v4, v5, Lcom/android/server/apphibernation/GlobalLevelState;->packageName:Ljava/lang/String;

    .line 628
    iget-object v6, p0, Lcom/android/server/apphibernation/AppHibernationService;->mGlobalHibernationStates:Ljava/util/Map;

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "state":Lcom/android/server/apphibernation/GlobalLevelState;
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 630
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_2d
    if-eqz p1, :cond_7b

    .line 631
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 632
    .local v1, "installedPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "size":I
    :goto_39
    if-ge v2, v4, :cond_49

    .line 633
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 632
    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    .line 635
    .end local v2    # "i":I
    .end local v4    # "size":I
    :cond_49
    const/4 v2, 0x0

    .restart local v2    # "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .restart local v4    # "size":I
    :goto_4e
    if-ge v2, v4, :cond_7b

    .line 636
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/apphibernation/GlobalLevelState;

    .line 637
    .restart local v5    # "state":Lcom/android/server/apphibernation/GlobalLevelState;
    iget-object v6, v5, Lcom/android/server/apphibernation/GlobalLevelState;->packageName:Ljava/lang/String;

    invoke-interface {v1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_71

    .line 638
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, v5, Lcom/android/server/apphibernation/GlobalLevelState;->packageName:Ljava/lang/String;

    aput-object v7, v6, v3

    const-string v7, "No hibernation state associated with package %s. Maybe the package was uninstalled? "

    invoke-static {v7, v6}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "AppHibernationService"

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    goto :goto_78

    .line 643
    :cond_71
    iget-object v6, p0, Lcom/android/server/apphibernation/AppHibernationService;->mGlobalHibernationStates:Ljava/util/Map;

    iget-object v7, v5, Lcom/android/server/apphibernation/GlobalLevelState;->packageName:Ljava/lang/String;

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    .end local v5    # "state":Lcom/android/server/apphibernation/GlobalLevelState;
    :goto_78
    add-int/lit8 v2, v2, 0x1

    goto :goto_4e

    .line 646
    .end local v1    # "installedPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "i":I
    .end local v4    # "size":I
    :cond_7b
    return-void

    .line 620
    .end local v0    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :catch_7c
    move-exception v0

    .line 621
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Package manager not available"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private initializeUserHibernationStates(ILjava/util/List;)V
    .registers 15
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/server/apphibernation/UserLevelState;",
            ">;)V"
        }
    .end annotation

    .line 566
    .local p2, "diskStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/apphibernation/UserLevelState;>;"
    :try_start_0
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const-wide/32 v1, 0x200ca200

    invoke-interface {v0, v1, v2, p1}, Landroid/content/pm/IPackageManager;->getInstalledPackages(JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_ae

    .line 569
    .local v0, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    nop

    .line 571
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 573
    .local v1, "userLevelStates":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/apphibernation/UserLevelState;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "size":I
    :goto_18
    if-ge v2, v3, :cond_2f

    .line 574
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 575
    .local v4, "packageName":Ljava/lang/String;
    new-instance v5, Lcom/android/server/apphibernation/UserLevelState;

    invoke-direct {v5}, Lcom/android/server/apphibernation/UserLevelState;-><init>()V

    .line 576
    .local v5, "state":Lcom/android/server/apphibernation/UserLevelState;
    iput-object v4, v5, Lcom/android/server/apphibernation/UserLevelState;->packageName:Ljava/lang/String;

    .line 577
    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "state":Lcom/android/server/apphibernation/UserLevelState;
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 580
    .end local v2    # "i":I
    .end local v3    # "size":I
    :cond_2f
    if-eqz p2, :cond_a8

    .line 581
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 582
    .local v2, "installedPackages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "size":I
    :goto_3b
    if-ge v3, v4, :cond_51

    .line 583
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageInfo;

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    .line 585
    .end local v3    # "i":I
    .end local v4    # "size":I
    :cond_51
    const/4 v3, 0x0

    .restart local v3    # "i":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    .restart local v4    # "size":I
    :goto_56
    if-ge v3, v4, :cond_a8

    .line 586
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/apphibernation/UserLevelState;

    iget-object v5, v5, Lcom/android/server/apphibernation/UserLevelState;->packageName:Ljava/lang/String;

    .line 587
    .local v5, "packageName":Ljava/lang/String;
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageInfo;

    .line 588
    .local v6, "pkgInfo":Landroid/content/pm/PackageInfo;
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/apphibernation/UserLevelState;

    .line 589
    .local v7, "currentState":Lcom/android/server/apphibernation/UserLevelState;
    const/4 v8, 0x0

    if-nez v6, :cond_87

    .line 590
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v5, v9, v8

    .line 592
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v10, 0x1

    aput-object v8, v9, v10

    .line 590
    const-string v8, "No hibernation state associated with package %s user %d. Maybethe package was uninstalled? "

    invoke-static {v8, v9}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "AppHibernationService"

    invoke-static {v9, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    goto :goto_a5

    .line 595
    :cond_87
    iget-object v9, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v9, :cond_a2

    iget-object v9, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v11, 0x200000

    and-int/2addr v10, v11

    iput v10, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    if-nez v10, :cond_a2

    iget-boolean v9, v7, Lcom/android/server/apphibernation/UserLevelState;->hibernated:Z

    if-eqz v9, :cond_a2

    .line 600
    iput-boolean v8, v7, Lcom/android/server/apphibernation/UserLevelState;->hibernated:Z

    .line 601
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v7, Lcom/android/server/apphibernation/UserLevelState;->lastUnhibernatedMs:J

    .line 603
    :cond_a2
    invoke-interface {v1, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v7    # "currentState":Lcom/android/server/apphibernation/UserLevelState;
    :goto_a5
    add-int/lit8 v3, v3, 0x1

    goto :goto_56

    .line 606
    .end local v2    # "installedPackages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    .end local v3    # "i":I
    .end local v4    # "size":I
    :cond_a8
    iget-object v2, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 607
    return-void

    .line 567
    .end local v0    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v1    # "userLevelStates":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/apphibernation/UserLevelState;>;"
    :catch_ae
    move-exception v0

    .line 568
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Package manager not available"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static isAppHibernationEnabled()Z
    .registers 1

    .line 941
    sget-boolean v0, Lcom/android/server/apphibernation/AppHibernationService;->sIsServiceEnabled:Z

    return v0
.end method

.method private static isDeviceConfigAppHibernationEnabled()Z
    .registers 3

    .line 945
    const-string v0, "app_hibernation"

    const-string v1, "app_hibernation_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isOatArtifactDeletionEnabled()Z
    .registers 2

    .line 213
    iget-boolean v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mOatArtifactDeletionEnabled:Z

    return v0
.end method

.method static synthetic lambda$setHibernatingForUser$3(Lcom/android/server/apphibernation/UserLevelState;I)V
    .registers 5
    .param p0, "stateSnapshot"    # Lcom/android/server/apphibernation/UserLevelState;
    .param p1, "userIdSnapshot"    # I

    .line 322
    iget-object v0, p0, Lcom/android/server/apphibernation/UserLevelState;->packageName:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/android/server/apphibernation/UserLevelState;->hibernated:Z

    const/16 v2, 0x172

    invoke-static {v2, v0, p1, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;IZ)V

    .line 327
    return-void
.end method

.method private onDeviceConfigChanged(Landroid/provider/DeviceConfig$Properties;)V
    .registers 5
    .param p1, "properties"    # Landroid/provider/DeviceConfig$Properties;

    .line 716
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 717
    .local v1, "key":Ljava/lang/String;
    const-string v2, "app_hibernation_enabled"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 718
    invoke-static {}, Lcom/android/server/apphibernation/AppHibernationService;->isDeviceConfigAppHibernationEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/apphibernation/AppHibernationService;->sIsServiceEnabled:Z

    .line 719
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "App hibernation changed to enabled="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v2, Lcom/android/server/apphibernation/AppHibernationService;->sIsServiceEnabled:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AppHibernationService"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    goto :goto_3e

    .line 722
    .end local v1    # "key":Ljava/lang/String;
    :cond_3d
    goto :goto_8

    .line 723
    :cond_3e
    :goto_3e
    return-void
.end method

.method private onPackageAdded(Ljava/lang/String;I)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 685
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 686
    :try_start_3
    iget-object v1, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_d

    .line 687
    monitor-exit v0

    return-void

    .line 689
    :cond_d
    new-instance v1, Lcom/android/server/apphibernation/UserLevelState;

    invoke-direct {v1}, Lcom/android/server/apphibernation/UserLevelState;-><init>()V

    .line 690
    .local v1, "userState":Lcom/android/server/apphibernation/UserLevelState;
    iput-object p1, v1, Lcom/android/server/apphibernation/UserLevelState;->packageName:Ljava/lang/String;

    .line 691
    iget-object v2, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    iget-object v2, p0, Lcom/android/server/apphibernation/AppHibernationService;->mGlobalHibernationStates:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    .line 693
    new-instance v2, Lcom/android/server/apphibernation/GlobalLevelState;

    invoke-direct {v2}, Lcom/android/server/apphibernation/GlobalLevelState;-><init>()V

    .line 694
    .local v2, "globalState":Lcom/android/server/apphibernation/GlobalLevelState;
    iput-object p1, v2, Lcom/android/server/apphibernation/GlobalLevelState;->packageName:Ljava/lang/String;

    .line 695
    iget-object v3, p0, Lcom/android/server/apphibernation/AppHibernationService;->mGlobalHibernationStates:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    .end local v1    # "userState":Lcom/android/server/apphibernation/UserLevelState;
    .end local v2    # "globalState":Lcom/android/server/apphibernation/GlobalLevelState;
    :cond_33
    monitor-exit v0

    .line 698
    return-void

    .line 697
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw v1
.end method

.method private onPackageRemoved(Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 701
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 702
    :try_start_3
    iget-object v1, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_d

    .line 703
    monitor-exit v0

    return-void

    .line 705
    :cond_d
    iget-object v1, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    monitor-exit v0

    .line 707
    return-void

    .line 706
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method private onPackageRemovedForAllUsers(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 710
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 711
    :try_start_3
    iget-object v1, p0, Lcom/android/server/apphibernation/AppHibernationService;->mGlobalHibernationStates:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    monitor-exit v0

    .line 713
    return-void

    .line 712
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private unhibernatePackageForUser(Ljava/lang/String;I)V
    .registers 38
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 485
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-wide/32 v3, 0x80000

    const-string/jumbo v0, "unhibernatePackage"

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 486
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 490
    .local v5, "caller":J
    :try_start_11
    new-instance v0, Landroid/content/Intent;

    const-string v7, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 491
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    .line 492
    .local v11, "lockedBcIntent":Landroid/content/Intent;
    const-string v0, "android.permission.RECEIVE_BOOT_COMPLETED"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v17

    .line 493
    .local v17, "requiredPermissions":[Ljava/lang/String;
    iget-object v8, v1, Lcom/android/server/apphibernation/AppHibernationService;->mIActivityManager:Landroid/app/IActivityManager;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, -0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v24, p2

    invoke-interface/range {v8 .. v24}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I

    .line 511
    new-instance v0, Landroid/content/Intent;

    const-string v7, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v21

    .line 512
    .local v21, "bcIntent":Landroid/content/Intent;
    iget-object v0, v1, Lcom/android/server/apphibernation/AppHibernationService;->mIActivityManager:Landroid/app/IActivityManager;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, -0x1

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, -0x1

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v18, v0

    move-object/from16 v27, v17

    move/from16 v34, p2

    invoke-interface/range {v18 .. v34}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_6d
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_6d} :catch_78
    .catchall {:try_start_11 .. :try_end_6d} :catchall_76

    .line 532
    nop

    .end local v11    # "lockedBcIntent":Landroid/content/Intent;
    .end local v17    # "requiredPermissions":[Ljava/lang/String;
    .end local v21    # "bcIntent":Landroid/content/Intent;
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 533
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 534
    nop

    .line 535
    return-void

    .line 532
    :catchall_76
    move-exception v0

    goto :goto_7e

    .line 529
    :catch_78
    move-exception v0

    .line 530
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_79
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v7

    .end local v5    # "caller":J
    .end local p0    # "this":Lcom/android/server/apphibernation/AppHibernationService;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "userId":I
    throw v7
    :try_end_7e
    .catchall {:try_start_79 .. :try_end_7e} :catchall_76

    .line 532
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v5    # "caller":J
    .restart local p0    # "this":Lcom/android/server/apphibernation/AppHibernationService;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "userId":I
    :goto_7e
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 533
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 534
    throw v0
.end method


# virtual methods
.method getHibernatingPackagesForUser(I)Ljava/util/List;
    .registers 11
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 375
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 376
    .local v0, "hibernatingPackages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "getHibernatingPackagesForUser"

    .line 377
    .local v1, "methodName":Ljava/lang/String;
    sget-boolean v2, Lcom/android/server/apphibernation/AppHibernationService;->sIsServiceEnabled:Z

    if-nez v2, :cond_c

    .line 378
    return-object v0

    .line 380
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/apphibernation/AppHibernationService;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.MANAGE_APP_HIBERNATION"

    const-string v4, "Caller does not have MANAGE_APP_HIBERNATION permission."

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    invoke-direct {p0, p1, v1}, Lcom/android/server/apphibernation/AppHibernationService;->handleIncomingUser(ILjava/lang/String;)I

    move-result p1

    .line 384
    iget-object v2, p0, Lcom/android/server/apphibernation/AppHibernationService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 385
    const/4 v3, 0x1

    :try_start_1f
    invoke-direct {p0, p1, v1, v3}, Lcom/android/server/apphibernation/AppHibernationService;->checkUserStatesExist(ILjava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_27

    .line 386
    monitor-exit v2

    return-object v0

    .line 388
    :cond_27
    iget-object v3, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 389
    .local v3, "userStates":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/apphibernation/UserLevelState;>;"
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_37
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/apphibernation/UserLevelState;

    .line 390
    .local v5, "state":Lcom/android/server/apphibernation/UserLevelState;
    iget-object v6, v5, Lcom/android/server/apphibernation/UserLevelState;->packageName:Ljava/lang/String;

    .line 391
    .local v6, "packageName":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/apphibernation/AppHibernationService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 392
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 391
    invoke-virtual {v7, v8, v6}, Landroid/content/pm/PackageManagerInternal;->canQueryPackage(ILjava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_52

    .line 394
    goto :goto_37

    .line 396
    :cond_52
    iget-boolean v7, v5, Lcom/android/server/apphibernation/UserLevelState;->hibernated:Z

    if-eqz v7, :cond_5b

    .line 397
    iget-object v7, v5, Lcom/android/server/apphibernation/UserLevelState;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    .end local v5    # "state":Lcom/android/server/apphibernation/UserLevelState;
    .end local v6    # "packageName":Ljava/lang/String;
    :cond_5b
    goto :goto_37

    .line 400
    :cond_5c
    monitor-exit v2

    return-object v0

    .line 401
    .end local v3    # "userStates":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/apphibernation/UserLevelState;>;"
    :catchall_5e
    move-exception v3

    monitor-exit v2
    :try_end_60
    .catchall {:try_start_1f .. :try_end_60} :catchall_5e

    throw v3
.end method

.method public getHibernationStatsForUser(Ljava/util/Set;I)Ljava/util/Map;
    .registers 15
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/apphibernation/HibernationStats;",
            ">;"
        }
    .end annotation

    .line 412
    .local p1, "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 413
    .local v0, "statsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/apphibernation/HibernationStats;>;"
    const-string v1, "getHibernationStatsForUser"

    .line 414
    .local v1, "methodName":Ljava/lang/String;
    sget-boolean v2, Lcom/android/server/apphibernation/AppHibernationService;->sIsServiceEnabled:Z

    if-nez v2, :cond_c

    .line 415
    return-object v0

    .line 417
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/apphibernation/AppHibernationService;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.MANAGE_APP_HIBERNATION"

    const-string v4, "Caller does not have MANAGE_APP_HIBERNATION permission."

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    invoke-direct {p0, p2, v1}, Lcom/android/server/apphibernation/AppHibernationService;->handleIncomingUser(ILjava/lang/String;)I

    move-result p2

    .line 421
    iget-object v2, p0, Lcom/android/server/apphibernation/AppHibernationService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 422
    const/4 v3, 0x1

    :try_start_1f
    invoke-direct {p0, p2, v1, v3}, Lcom/android/server/apphibernation/AppHibernationService;->checkUserStatesExist(ILjava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_27

    .line 423
    monitor-exit v2

    return-object v0

    .line 425
    :cond_27
    iget-object v4, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 426
    .local v4, "userPackageStates":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/apphibernation/UserLevelState;>;"
    if-eqz p1, :cond_33

    move-object v5, p1

    goto :goto_37

    :cond_33
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 427
    .local v5, "pkgs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_37
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_98

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 428
    .local v7, "pkgName":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/apphibernation/AppHibernationService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-virtual {v8, v9, v7}, Landroid/content/pm/PackageManagerInternal;->canQueryPackage(ILjava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_54

    .line 430
    goto :goto_3b

    .line 432
    :cond_54
    iget-object v8, p0, Lcom/android/server/apphibernation/AppHibernationService;->mGlobalHibernationStates:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_80

    .line 433
    invoke-interface {v4, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_63

    goto :goto_80

    .line 439
    :cond_63
    iget-object v8, p0, Lcom/android/server/apphibernation/AppHibernationService;->mGlobalHibernationStates:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/apphibernation/GlobalLevelState;

    iget-wide v8, v8, Lcom/android/server/apphibernation/GlobalLevelState;->savedByte:J

    .line 440
    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/apphibernation/UserLevelState;

    iget-wide v10, v10, Lcom/android/server/apphibernation/UserLevelState;->savedByte:J

    add-long/2addr v8, v10

    .line 441
    .local v8, "diskBytesSaved":J
    new-instance v10, Landroid/apphibernation/HibernationStats;

    invoke-direct {v10, v8, v9}, Landroid/apphibernation/HibernationStats;-><init>(J)V

    .line 442
    .local v10, "stats":Landroid/apphibernation/HibernationStats;
    invoke-interface {v0, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    nop

    .end local v7    # "pkgName":Ljava/lang/String;
    .end local v8    # "diskBytesSaved":J
    .end local v10    # "stats":Landroid/apphibernation/HibernationStats;
    goto :goto_3b

    .line 434
    .restart local v7    # "pkgName":Ljava/lang/String;
    :cond_80
    :goto_80
    const-string v8, "AppHibernationService"

    const-string v9, "No hibernation state associated with package %s user %d. Maybethe package was uninstalled? "

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    .line 436
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v3

    .line 434
    invoke-static {v9, v10}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    goto :goto_3b

    .line 444
    .end local v4    # "userPackageStates":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/apphibernation/UserLevelState;>;"
    .end local v5    # "pkgs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v7    # "pkgName":Ljava/lang/String;
    :cond_98
    monitor-exit v2

    .line 445
    return-object v0

    .line 444
    :catchall_9a
    move-exception v3

    monitor-exit v2
    :try_end_9c
    .catchall {:try_start_1f .. :try_end_9c} :catchall_9a

    throw v3
.end method

.method isHibernatingForUser(Ljava/lang/String;I)Z
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 224
    const-string/jumbo v0, "isHibernatingForUser"

    .line 225
    .local v0, "methodName":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/apphibernation/AppHibernationService;->sIsServiceEnabled:Z

    const/4 v2, 0x0

    if-nez v1, :cond_9

    .line 226
    return v2

    .line 228
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/apphibernation/AppHibernationService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "android.permission.MANAGE_APP_HIBERNATION"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Caller did not have permission while calling "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-direct {p0, p2, v0}, Lcom/android/server/apphibernation/AppHibernationService;->handleIncomingUser(ILjava/lang/String;)I

    move-result p2

    .line 232
    iget-object v1, p0, Lcom/android/server/apphibernation/AppHibernationService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 235
    :try_start_2c
    invoke-direct {p0, p2, v0, v2}, Lcom/android/server/apphibernation/AppHibernationService;->checkUserStatesExist(ILjava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_34

    .line 236
    monitor-exit v1

    return v2

    .line 238
    :cond_34
    iget-object v3, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 239
    .local v3, "packageStates":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/apphibernation/UserLevelState;>;"
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/apphibernation/UserLevelState;

    .line 240
    .local v4, "pkgState":Lcom/android/server/apphibernation/UserLevelState;
    if-eqz v4, :cond_55

    iget-object v5, p0, Lcom/android/server/apphibernation/AppHibernationService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 242
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 241
    invoke-virtual {v5, v6, p1}, Landroid/content/pm/PackageManagerInternal;->canQueryPackage(ILjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_51

    goto :goto_55

    .line 245
    :cond_51
    iget-boolean v2, v4, Lcom/android/server/apphibernation/UserLevelState;->hibernated:Z

    monitor-exit v1

    return v2

    .line 243
    :cond_55
    :goto_55
    monitor-exit v1

    return v2

    .line 246
    .end local v3    # "packageStates":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/apphibernation/UserLevelState;>;"
    .end local v4    # "pkgState":Lcom/android/server/apphibernation/UserLevelState;
    :catchall_57
    move-exception v2

    monitor-exit v1
    :try_end_59
    .catchall {:try_start_2c .. :try_end_59} :catchall_57

    throw v2
.end method

.method isHibernatingGlobally(Ljava/lang/String;)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .line 256
    sget-boolean v0, Lcom/android/server/apphibernation/AppHibernationService;->sIsServiceEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 257
    return v1

    .line 259
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/apphibernation/AppHibernationService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.MANAGE_APP_HIBERNATION"

    const-string v3, "Caller does not have MANAGE_APP_HIBERNATION permission."

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 263
    :try_start_14
    iget-object v2, p0, Lcom/android/server/apphibernation/AppHibernationService;->mGlobalHibernationStates:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/apphibernation/GlobalLevelState;

    .line 264
    .local v2, "state":Lcom/android/server/apphibernation/GlobalLevelState;
    if-eqz v2, :cond_2f

    iget-object v3, p0, Lcom/android/server/apphibernation/AppHibernationService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 266
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 265
    invoke-virtual {v3, v4, p1}, Landroid/content/pm/PackageManagerInternal;->canQueryPackage(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2b

    goto :goto_2f

    .line 271
    :cond_2b
    iget-boolean v1, v2, Lcom/android/server/apphibernation/GlobalLevelState;->hibernated:Z

    monitor-exit v0

    return v1

    .line 269
    :cond_2f
    :goto_2f
    monitor-exit v0

    return v1

    .line 272
    .end local v2    # "state":Lcom/android/server/apphibernation/GlobalLevelState;
    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_14 .. :try_end_33} :catchall_31

    throw v1
.end method

.method synthetic lambda$new$6$com-android-server-apphibernation-AppHibernationService(ILandroid/app/usage/UsageEvents$Event;)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "event"    # Landroid/app/usage/UsageEvents$Event;

    .line 922
    invoke-static {}, Lcom/android/server/apphibernation/AppHibernationService;->isAppHibernationEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 923
    return-void

    .line 925
    :cond_7
    iget v0, p2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    .line 926
    .local v0, "eventType":I
    const/4 v1, 0x7

    if-eq v0, v1, :cond_13

    const/4 v1, 0x1

    if-eq v0, v1, :cond_13

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_1c

    .line 929
    :cond_13
    iget-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 930
    .local v1, "pkgName":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2}, Lcom/android/server/apphibernation/AppHibernationService;->setHibernatingForUser(Ljava/lang/String;IZ)V

    .line 931
    invoke-virtual {p0, v1, v2}, Lcom/android/server/apphibernation/AppHibernationService;->setHibernatingGlobally(Ljava/lang/String;Z)V

    .line 933
    .end local v1    # "pkgName":Ljava/lang/String;
    :cond_1c
    return-void
.end method

.method synthetic lambda$onBootPhase$0$com-android-server-apphibernation-AppHibernationService()V
    .registers 4

    .line 180
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mGlobalLevelHibernationDiskStore:Lcom/android/server/apphibernation/HibernationStateDiskStore;

    .line 181
    invoke-virtual {v0}, Lcom/android/server/apphibernation/HibernationStateDiskStore;->readHibernationStates()Ljava/util/List;

    move-result-object v0

    .line 182
    .local v0, "states":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/apphibernation/GlobalLevelState;>;"
    iget-object v1, p0, Lcom/android/server/apphibernation/AppHibernationService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 183
    :try_start_9
    invoke-direct {p0, v0}, Lcom/android/server/apphibernation/AppHibernationService;->initializeGlobalHibernationStates(Ljava/util/List;)V

    .line 184
    monitor-exit v1

    .line 185
    return-void

    .line 184
    :catchall_e
    move-exception v2

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_e

    throw v2
.end method

.method synthetic lambda$onUserUnlocking$5$com-android-server-apphibernation-AppHibernationService(Lcom/android/server/apphibernation/HibernationStateDiskStore;I)V
    .registers 10
    .param p1, "diskStore"    # Lcom/android/server/apphibernation/HibernationStateDiskStore;
    .param p2, "userId"    # I

    .line 655
    invoke-virtual {p1}, Lcom/android/server/apphibernation/HibernationStateDiskStore;->readHibernationStates()Ljava/util/List;

    move-result-object v0

    .line 656
    .local v0, "storedStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/apphibernation/UserLevelState;>;"
    iget-object v1, p0, Lcom/android/server/apphibernation/AppHibernationService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 658
    :try_start_7
    iget-object v2, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p2}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 659
    invoke-direct {p0, p2, v0}, Lcom/android/server/apphibernation/AppHibernationService;->initializeUserHibernationStates(ILjava/util/List;)V

    .line 662
    iget-object v2, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_45

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/apphibernation/UserLevelState;

    .line 663
    .local v3, "userState":Lcom/android/server/apphibernation/UserLevelState;
    iget-object v4, v3, Lcom/android/server/apphibernation/UserLevelState;->packageName:Ljava/lang/String;

    .line 664
    .local v4, "pkgName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/apphibernation/AppHibernationService;->mGlobalHibernationStates:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/apphibernation/GlobalLevelState;

    .line 665
    .local v5, "globalState":Lcom/android/server/apphibernation/GlobalLevelState;
    iget-boolean v6, v5, Lcom/android/server/apphibernation/GlobalLevelState;->hibernated:Z

    if-eqz v6, :cond_44

    iget-boolean v6, v3, Lcom/android/server/apphibernation/UserLevelState;->hibernated:Z

    if-nez v6, :cond_44

    .line 666
    const/4 v6, 0x0

    invoke-virtual {p0, v4, v6}, Lcom/android/server/apphibernation/AppHibernationService;->setHibernatingGlobally(Ljava/lang/String;Z)V

    .line 668
    .end local v3    # "userState":Lcom/android/server/apphibernation/UserLevelState;
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "globalState":Lcom/android/server/apphibernation/GlobalLevelState;
    :cond_44
    goto :goto_22

    .line 670
    :cond_45
    monitor-exit v1

    .line 671
    return-void

    .line 670
    :catchall_47
    move-exception v2

    monitor-exit v1
    :try_end_49
    .catchall {:try_start_7 .. :try_end_49} :catchall_47

    throw v2
.end method

.method synthetic lambda$setHibernatingForUser$1$com-android-server-apphibernation-AppHibernationService(Ljava/lang/String;ILcom/android/server/apphibernation/UserLevelState;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "realUserId"    # I
    .param p3, "pkgState"    # Lcom/android/server/apphibernation/UserLevelState;

    .line 312
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/apphibernation/AppHibernationService;->hibernatePackageForUser(Ljava/lang/String;ILcom/android/server/apphibernation/UserLevelState;)V

    return-void
.end method

.method synthetic lambda$setHibernatingForUser$2$com-android-server-apphibernation-AppHibernationService(Ljava/lang/String;I)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "realUserId"    # I

    .line 315
    invoke-direct {p0, p1, p2}, Lcom/android/server/apphibernation/AppHibernationService;->unhibernatePackageForUser(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic lambda$setHibernatingGlobally$4$com-android-server-apphibernation-AppHibernationService(Ljava/lang/String;Lcom/android/server/apphibernation/GlobalLevelState;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "state"    # Lcom/android/server/apphibernation/GlobalLevelState;

    .line 359
    invoke-direct {p0, p1, p2}, Lcom/android/server/apphibernation/AppHibernationService;->hibernatePackageGlobally(Ljava/lang/String;Lcom/android/server/apphibernation/GlobalLevelState;)V

    return-void
.end method

.method public onBootPhase(I)V
    .registers 7
    .param p1, "phase"    # I

    .line 178
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_e

    .line 179
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/apphibernation/AppHibernationService;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 187
    :cond_e
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_4b

    .line 188
    invoke-static {}, Lcom/android/server/apphibernation/AppHibernationService;->isDeviceConfigAppHibernationEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/apphibernation/AppHibernationService;->sIsServiceEnabled:Z

    .line 189
    nop

    .line 191
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/apphibernation/AppHibernationService;)V

    .line 189
    const-string v2, "app_hibernation"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 193
    invoke-virtual {p0}, Lcom/android/server/apphibernation/AppHibernationService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/StatsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatsManager;

    .line 194
    .local v0, "statsManager":Landroid/app/StatsManager;
    new-instance v1, Lcom/android/server/apphibernation/AppHibernationService$StatsPullAtomCallbackImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/apphibernation/AppHibernationService$StatsPullAtomCallbackImpl;-><init>(Lcom/android/server/apphibernation/AppHibernationService;Lcom/android/server/apphibernation/AppHibernationService$StatsPullAtomCallbackImpl-IA;)V

    .line 195
    .local v1, "pullAtomCallback":Lcom/android/server/apphibernation/AppHibernationService$StatsPullAtomCallbackImpl;
    const/16 v3, 0x277b

    iget-object v4, p0, Lcom/android/server/apphibernation/AppHibernationService;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v3, v2, v4, v1}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 200
    const/16 v3, 0x277d

    iget-object v4, p0, Lcom/android/server/apphibernation/AppHibernationService;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v3, v2, v4, v1}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 206
    .end local v0    # "statsManager":Landroid/app/StatsManager;
    .end local v1    # "pullAtomCallback":Lcom/android/server/apphibernation/AppHibernationService$StatsPullAtomCallbackImpl;
    :cond_4b
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 173
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mServiceStub:Lcom/android/server/apphibernation/AppHibernationService$AppHibernationServiceStub;

    const-string v1, "app_hibernation"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/apphibernation/AppHibernationService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 174
    return-void
.end method

.method public onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .registers 5
    .param p1, "user"    # Lcom/android/server/SystemService$TargetUser;

    .line 676
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v0

    .line 678
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/apphibernation/AppHibernationService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 679
    :try_start_7
    iget-object v2, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserDiskStores:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 680
    iget-object v2, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 681
    monitor-exit v1

    .line 682
    return-void

    .line 681
    :catchall_13
    move-exception v2

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_13

    throw v2
.end method

.method public onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .registers 6
    .param p1, "user"    # Lcom/android/server/SystemService$TargetUser;

    .line 650
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v0

    .line 651
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/apphibernation/AppHibernationService;->mInjector:Lcom/android/server/apphibernation/AppHibernationService$Injector;

    .line 652
    invoke-interface {v1, v0}, Lcom/android/server/apphibernation/AppHibernationService$Injector;->getUserLevelDiskStore(I)Lcom/android/server/apphibernation/HibernationStateDiskStore;

    move-result-object v1

    .line 653
    .local v1, "diskStore":Lcom/android/server/apphibernation/HibernationStateDiskStore;, "Lcom/android/server/apphibernation/HibernationStateDiskStore<Lcom/android/server/apphibernation/UserLevelState;>;"
    iget-object v2, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserDiskStores:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 654
    iget-object v2, p0, Lcom/android/server/apphibernation/AppHibernationService;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/apphibernation/AppHibernationService;Lcom/android/server/apphibernation/HibernationStateDiskStore;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 672
    return-void
.end method

.method setHibernatingForUser(Ljava/lang/String;IZ)V
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "isHibernating"    # Z

    .line 283
    const-string/jumbo v0, "setHibernatingForUser"

    .line 284
    .local v0, "methodName":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/apphibernation/AppHibernationService;->sIsServiceEnabled:Z

    if-nez v1, :cond_8

    .line 285
    return-void

    .line 287
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/apphibernation/AppHibernationService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.MANAGE_APP_HIBERNATION"

    const-string v3, "Caller does not have MANAGE_APP_HIBERNATION permission."

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-direct {p0, p2, v0}, Lcom/android/server/apphibernation/AppHibernationService;->handleIncomingUser(ILjava/lang/String;)I

    move-result v1

    .line 291
    .local v1, "realUserId":I
    iget-object v2, p0, Lcom/android/server/apphibernation/AppHibernationService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 292
    const/4 v3, 0x1

    :try_start_1b
    invoke-direct {p0, v1, v0, v3}, Lcom/android/server/apphibernation/AppHibernationService;->checkUserStatesExist(ILjava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_23

    .line 293
    monitor-exit v2

    return-void

    .line 295
    :cond_23
    iget-object v4, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 296
    .local v4, "packageStates":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/apphibernation/UserLevelState;>;"
    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/apphibernation/UserLevelState;

    .line 297
    .local v5, "pkgState":Lcom/android/server/apphibernation/UserLevelState;
    if-eqz v5, :cond_93

    iget-object v6, p0, Lcom/android/server/apphibernation/AppHibernationService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 299
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 298
    invoke-virtual {v6, v7, p1}, Landroid/content/pm/PackageManagerInternal;->canQueryPackage(ILjava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_40

    goto :goto_93

    .line 305
    :cond_40
    iget-boolean v3, v5, Lcom/android/server/apphibernation/UserLevelState;->hibernated:Z

    if-ne v3, p3, :cond_46

    .line 306
    monitor-exit v2

    return-void

    .line 309
    :cond_46
    iput-boolean p3, v5, Lcom/android/server/apphibernation/UserLevelState;->hibernated:Z

    .line 310
    if-eqz p3, :cond_55

    .line 311
    iget-object v3, p0, Lcom/android/server/apphibernation/AppHibernationService;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v6, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda2;

    invoke-direct {v6, p0, p1, v1, v5}, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/apphibernation/AppHibernationService;Ljava/lang/String;ILcom/android/server/apphibernation/UserLevelState;)V

    invoke-interface {v3, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_65

    .line 314
    :cond_55
    iget-object v3, p0, Lcom/android/server/apphibernation/AppHibernationService;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v6, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda3;

    invoke-direct {v6, p0, p1, v1}, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/apphibernation/AppHibernationService;Ljava/lang/String;I)V

    invoke-interface {v3, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 316
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/android/server/apphibernation/UserLevelState;->lastUnhibernatedMs:J

    .line 319
    :goto_65
    new-instance v3, Lcom/android/server/apphibernation/UserLevelState;

    invoke-direct {v3, v5}, Lcom/android/server/apphibernation/UserLevelState;-><init>(Lcom/android/server/apphibernation/UserLevelState;)V

    .line 320
    .local v3, "stateSnapshot":Lcom/android/server/apphibernation/UserLevelState;
    move v6, v1

    .line 321
    .local v6, "userIdSnapshot":I
    iget-object v7, p0, Lcom/android/server/apphibernation/AppHibernationService;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v8, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda4;

    invoke-direct {v8, v3, v6}, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/apphibernation/UserLevelState;I)V

    invoke-interface {v7, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 328
    new-instance v7, Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v8, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 329
    .local v7, "states":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/apphibernation/UserLevelState;>;"
    iget-object v8, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserDiskStores:Landroid/util/SparseArray;

    invoke-virtual {v8, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/apphibernation/HibernationStateDiskStore;

    invoke-virtual {v8, v7}, Lcom/android/server/apphibernation/HibernationStateDiskStore;->scheduleWriteHibernationStates(Ljava/util/List;)V

    .line 330
    .end local v3    # "stateSnapshot":Lcom/android/server/apphibernation/UserLevelState;
    .end local v4    # "packageStates":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/apphibernation/UserLevelState;>;"
    .end local v5    # "pkgState":Lcom/android/server/apphibernation/UserLevelState;
    .end local v6    # "userIdSnapshot":I
    .end local v7    # "states":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/apphibernation/UserLevelState;>;"
    monitor-exit v2

    .line 331
    return-void

    .line 300
    .restart local v4    # "packageStates":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/apphibernation/UserLevelState;>;"
    .restart local v5    # "pkgState":Lcom/android/server/apphibernation/UserLevelState;
    :cond_93
    :goto_93
    const-string v6, "AppHibernationService"

    const-string v7, "Package %s is not installed for user %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    .line 301
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v3

    .line 300
    invoke-static {v7, v8}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    monitor-exit v2

    return-void

    .line 330
    .end local v4    # "packageStates":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/apphibernation/UserLevelState;>;"
    .end local v5    # "pkgState":Lcom/android/server/apphibernation/UserLevelState;
    :catchall_ac
    move-exception v3

    monitor-exit v2
    :try_end_ae
    .catchall {:try_start_1b .. :try_end_ae} :catchall_ac

    throw v3
.end method

.method setHibernatingGlobally(Ljava/lang/String;Z)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "isHibernating"    # Z

    .line 341
    sget-boolean v0, Lcom/android/server/apphibernation/AppHibernationService;->sIsServiceEnabled:Z

    if-nez v0, :cond_5

    .line 342
    return-void

    .line 344
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/apphibernation/AppHibernationService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_APP_HIBERNATION"

    const-string v2, "Caller does not have MANAGE_APP_HIBERNATION permission."

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 348
    :try_start_13
    iget-object v1, p0, Lcom/android/server/apphibernation/AppHibernationService;->mGlobalHibernationStates:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/apphibernation/GlobalLevelState;

    .line 349
    .local v1, "state":Lcom/android/server/apphibernation/GlobalLevelState;
    if-eqz v1, :cond_59

    iget-object v2, p0, Lcom/android/server/apphibernation/AppHibernationService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 351
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 350
    invoke-virtual {v2, v3, p1}, Landroid/content/pm/PackageManagerInternal;->canQueryPackage(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2a

    goto :goto_59

    .line 356
    :cond_2a
    iget-boolean v2, v1, Lcom/android/server/apphibernation/GlobalLevelState;->hibernated:Z

    if-eq v2, p2, :cond_57

    .line 357
    iput-boolean p2, v1, Lcom/android/server/apphibernation/GlobalLevelState;->hibernated:Z

    .line 358
    if-eqz p2, :cond_3d

    .line 359
    iget-object v2, p0, Lcom/android/server/apphibernation/AppHibernationService;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1, v1}, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/apphibernation/AppHibernationService;Ljava/lang/String;Lcom/android/server/apphibernation/GlobalLevelState;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_47

    .line 361
    :cond_3d
    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/android/server/apphibernation/GlobalLevelState;->savedByte:J

    .line 362
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/apphibernation/GlobalLevelState;->lastUnhibernatedMs:J

    .line 364
    :goto_47
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/apphibernation/AppHibernationService;->mGlobalHibernationStates:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 365
    .local v2, "states":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/apphibernation/GlobalLevelState;>;"
    iget-object v3, p0, Lcom/android/server/apphibernation/AppHibernationService;->mGlobalLevelHibernationDiskStore:Lcom/android/server/apphibernation/HibernationStateDiskStore;

    invoke-virtual {v3, v2}, Lcom/android/server/apphibernation/HibernationStateDiskStore;->scheduleWriteHibernationStates(Ljava/util/List;)V

    .line 367
    .end local v1    # "state":Lcom/android/server/apphibernation/GlobalLevelState;
    .end local v2    # "states":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/apphibernation/GlobalLevelState;>;"
    :cond_57
    monitor-exit v0

    .line 368
    return-void

    .line 352
    .restart local v1    # "state":Lcom/android/server/apphibernation/GlobalLevelState;
    :cond_59
    :goto_59
    const-string v2, "AppHibernationService"

    const-string v3, "Package %s is not installed for any user"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    monitor-exit v0

    return-void

    .line 367
    .end local v1    # "state":Lcom/android/server/apphibernation/GlobalLevelState;
    :catchall_6c
    move-exception v1

    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_13 .. :try_end_6e} :catchall_6c

    throw v1
.end method
