.class public Lcom/android/server/VpnManagerService;
.super Landroid/net/IVpnManager$Stub;
.source "VpnManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/VpnManagerService$Dependencies;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCm:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mDeps:Lcom/android/server/VpnManagerService$Dependencies;

.field private final mHandler:Landroid/os/Handler;

.field protected final mHandlerThread:Landroid/os/HandlerThread;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLockdownEnabled:Z

.field private mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

.field private final mNMS:Landroid/os/INetworkManagementService;

.field private final mNetd:Landroid/net/INetd;

.field private final mUserAllContext:Landroid/content/Context;

.field private final mUserManager:Landroid/os/UserManager;

.field private mUserPresentReceiver:Landroid/content/BroadcastReceiver;

.field private final mVpnProfileStore:Lcom/android/server/connectivity/VpnProfileStore;

.field protected final mVpns:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/connectivity/Vpn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$mensureRunningOnHandlerThread(Lcom/android/server/VpnManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/VpnManagerService;->ensureRunningOnHandlerThread()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monPackageRemoved(Lcom/android/server/VpnManagerService;Ljava/lang/String;IZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/VpnManagerService;->onPackageRemoved(Ljava/lang/String;IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monPackageReplaced(Lcom/android/server/VpnManagerService;Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/VpnManagerService;->onPackageReplaced(Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monUserAdded(Lcom/android/server/VpnManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/VpnManagerService;->onUserAdded(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monUserRemoved(Lcom/android/server/VpnManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/VpnManagerService;->onUserRemoved(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monUserStarted(Lcom/android/server/VpnManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/VpnManagerService;->onUserStarted(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monUserStopped(Lcom/android/server/VpnManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/VpnManagerService;->onUserStopped(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monUserUnlocked(Lcom/android/server/VpnManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/VpnManagerService;->onUserUnlocked(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monVpnLockdownReset(Lcom/android/server/VpnManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/VpnManagerService;->onVpnLockdownReset()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/VpnManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 78
    const-class v0, Lcom/android/server/VpnManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/VpnManagerService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/VpnManagerService$Dependencies;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "deps"    # Lcom/android/server/VpnManagerService$Dependencies;

    .line 136
    invoke-direct {p0}, Landroid/net/IVpnManager$Stub;-><init>()V

    .line 95
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 707
    new-instance v0, Lcom/android/server/VpnManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/VpnManagerService$1;-><init>(Lcom/android/server/VpnManagerService;)V

    iput-object v0, p0, Lcom/android/server/VpnManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 747
    new-instance v0, Lcom/android/server/VpnManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/VpnManagerService$2;-><init>(Lcom/android/server/VpnManagerService;)V

    iput-object v0, p0, Lcom/android/server/VpnManagerService;->mUserPresentReceiver:Landroid/content/BroadcastReceiver;

    .line 137
    iput-object p1, p0, Lcom/android/server/VpnManagerService;->mContext:Landroid/content/Context;

    .line 138
    iput-object p2, p0, Lcom/android/server/VpnManagerService;->mDeps:Lcom/android/server/VpnManagerService$Dependencies;

    .line 139
    invoke-virtual {p2}, Lcom/android/server/VpnManagerService$Dependencies;->makeHandlerThread()Landroid/os/HandlerThread;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/VpnManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 140
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 141
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/VpnManagerService;->mHandler:Landroid/os/Handler;

    .line 142
    invoke-virtual {p2}, Lcom/android/server/VpnManagerService$Dependencies;->getVpnProfileStore()Lcom/android/server/connectivity/VpnProfileStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/VpnManagerService;->mVpnProfileStore:Lcom/android/server/connectivity/VpnProfileStore;

    .line 143
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/VpnManagerService;->mUserAllContext:Landroid/content/Context;

    .line 144
    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/VpnManagerService;->mCm:Landroid/net/ConnectivityManager;

    .line 145
    invoke-virtual {p2}, Lcom/android/server/VpnManagerService$Dependencies;->getINetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/VpnManagerService;->mNMS:Landroid/os/INetworkManagementService;

    .line 146
    invoke-virtual {p2}, Lcom/android/server/VpnManagerService$Dependencies;->getNetd()Landroid/net/INetd;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/VpnManagerService;->mNetd:Landroid/net/INetd;

    .line 147
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/VpnManagerService;->mUserManager:Landroid/os/UserManager;

    .line 148
    invoke-direct {p0}, Lcom/android/server/VpnManagerService;->registerReceivers()V

    .line 149
    const-string v0, "VpnManagerService starting up"

    invoke-static {v0}, Lcom/android/server/VpnManagerService;->log(Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/android/server/VpnManagerService;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 154
    new-instance v0, Lcom/android/server/VpnManagerService;

    new-instance v1, Lcom/android/server/VpnManagerService$Dependencies;

    invoke-direct {v1}, Lcom/android/server/VpnManagerService$Dependencies;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/VpnManagerService;-><init>(Landroid/content/Context;Lcom/android/server/VpnManagerService$Dependencies;)V

    return-object v0
.end method

.method private enforceControlAlwaysOnVpnPermission()V
    .registers 4

    .line 972
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONTROL_ALWAYS_ON_VPN"

    const-string v2, "VpnManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    return-void
.end method

.method private enforceCrossUserPermission(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 984
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-ne p1, v0, :cond_7

    .line 986
    return-void

    .line 988
    :cond_7
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string v2, "VpnManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    return-void
.end method

.method private enforceSettingsPermission()V
    .registers 4

    .line 994
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.NETWORK_SETTINGS"

    const-string v2, "android.permission.MAINLINE_NETWORK_STACK"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/net/module/util/PermissionUtils;->enforceAnyPermissionOf(Landroid/content/Context;[Ljava/lang/String;)V

    .line 997
    return-void
.end method

.method private ensureRunningOnHandlerThread()V
    .registers 4

    .line 964
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_11

    .line 969
    return-void

    .line 965
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not running on VpnManagerService thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 967
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getAppUid(Ljava/lang/String;I)I
    .registers 8
    .param p1, "app"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 320
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 321
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 323
    .local v1, "token":J
    :try_start_a
    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v3
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_e} :catch_17
    .catchall {:try_start_a .. :try_end_e} :catchall_12

    .line 327
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 323
    return v3

    .line 327
    :catchall_12
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 328
    throw v3

    .line 324
    :catch_17
    move-exception v3

    .line 325
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v4, -0x1

    .line 327
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 325
    return v4
.end method

.method private getVpnIfOwner()Lcom/android/server/connectivity/Vpn;
    .registers 2

    .line 651
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mDeps:Lcom/android/server/VpnManagerService$Dependencies;

    invoke-virtual {v0}, Lcom/android/server/VpnManagerService$Dependencies;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/VpnManagerService;->getVpnIfOwner(I)Lcom/android/server/connectivity/Vpn;

    move-result-object v0

    return-object v0
.end method

.method private getVpnIfOwner(I)Lcom/android/server/connectivity/Vpn;
    .registers 7
    .param p1, "uid"    # I

    .line 657
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 659
    .local v0, "user":I
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    .line 660
    .local v1, "vpn":Lcom/android/server/connectivity/Vpn;
    const/4 v2, 0x0

    if-nez v1, :cond_10

    .line 661
    return-object v2

    .line 663
    :cond_10
    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn;->getUnderlyingNetworkInfo()Landroid/net/UnderlyingNetworkInfo;

    move-result-object v3

    .line 664
    .local v3, "info":Landroid/net/UnderlyingNetworkInfo;
    if-eqz v3, :cond_1e

    invoke-virtual {v3}, Landroid/net/UnderlyingNetworkInfo;->getOwnerUid()I

    move-result v4

    if-eq v4, p1, :cond_1d

    goto :goto_1e

    :cond_1d
    move-object v2, v1

    :cond_1e
    :goto_1e
    return-object v2
.end method

.method private isLockdownVpnEnabled()Z
    .registers 3

    .line 458
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mVpnProfileStore:Lcom/android/server/connectivity/VpnProfileStore;

    const-string v1, "LOCKDOWN_VPN"

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/VpnProfileStore;->get(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 1000
    sget-object v0, Lcom/android/server/VpnManagerService;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 1008
    sget-object v0, Lcom/android/server/VpnManagerService;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    return-void
.end method

.method private static logw(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 1004
    sget-object v0, Lcom/android/server/VpnManagerService;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    return-void
.end method

.method private onPackageRemoved(Ljava/lang/String;IZ)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "isReplacing"    # Z

    .line 846
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_52

    if-gez p2, :cond_9

    goto :goto_52

    .line 851
    :cond_9
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 852
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v1

    .line 853
    :try_start_10
    iget-object v2, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Vpn;

    .line 854
    .local v2, "vpn":Lcom/android/server/connectivity/Vpn;
    if-nez v2, :cond_1c

    .line 855
    monitor-exit v1

    return-void

    .line 858
    :cond_1c
    invoke-virtual {v2}, Lcom/android/server/connectivity/Vpn;->getAlwaysOnPackage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4d

    if-nez p3, :cond_4d

    .line 859
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing always-on VPN package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/VpnManagerService;->log(Ljava/lang/String;)V

    .line 861
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3, v4}, Lcom/android/server/connectivity/Vpn;->setAlwaysOnPackage(Ljava/lang/String;ZLjava/util/List;)Z

    .line 863
    .end local v2    # "vpn":Lcom/android/server/connectivity/Vpn;
    :cond_4d
    monitor-exit v1

    .line 864
    return-void

    .line 863
    :catchall_4f
    move-exception v2

    monitor-exit v1
    :try_end_51
    .catchall {:try_start_10 .. :try_end_51} :catchall_4f

    throw v2

    .line 847
    .end local v0    # "userId":I
    :cond_52
    :goto_52
    sget-object v0, Lcom/android/server/VpnManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid package in onPackageRemoved: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    return-void
.end method

.method private onPackageReplaced(Ljava/lang/String;I)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 826
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4e

    if-gez p2, :cond_9

    goto :goto_4e

    .line 830
    :cond_9
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 831
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v1

    .line 832
    :try_start_10
    iget-object v2, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Vpn;

    .line 833
    .local v2, "vpn":Lcom/android/server/connectivity/Vpn;
    if-nez v2, :cond_1c

    .line 834
    monitor-exit v1

    return-void

    .line 837
    :cond_1c
    invoke-virtual {v2}, Lcom/android/server/connectivity/Vpn;->getAlwaysOnPackage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 838
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Restarting always-on VPN package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/VpnManagerService;->log(Ljava/lang/String;)V

    .line 840
    invoke-virtual {v2}, Lcom/android/server/connectivity/Vpn;->startAlwaysOnVpn()Z

    .line 842
    .end local v2    # "vpn":Lcom/android/server/connectivity/Vpn;
    :cond_49
    monitor-exit v1

    .line 843
    return-void

    .line 842
    :catchall_4b
    move-exception v2

    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_10 .. :try_end_4d} :catchall_4b

    throw v2

    .line 827
    .end local v0    # "userId":I
    :cond_4e
    :goto_4e
    sget-object v0, Lcom/android/server/VpnManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid package in onPackageReplaced: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    return-void
.end method

.method private onUserAdded(I)V
    .registers 6
    .param p1, "userId"    # I

    .line 806
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 807
    :try_start_3
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 808
    .local v1, "vpnsSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_1a

    .line 809
    iget-object v3, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/Vpn;

    .line 810
    .local v3, "vpn":Lcom/android/server/connectivity/Vpn;
    invoke-virtual {v3, p1}, Lcom/android/server/connectivity/Vpn;->onUserAdded(I)V

    .line 808
    .end local v3    # "vpn":Lcom/android/server/connectivity/Vpn;
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 812
    .end local v1    # "vpnsSize":I
    .end local v2    # "i":I
    :cond_1a
    monitor-exit v0

    .line 813
    return-void

    .line 812
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method private onUserRemoved(I)V
    .registers 6
    .param p1, "userId"    # I

    .line 816
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 817
    :try_start_3
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 818
    .local v1, "vpnsSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_1a

    .line 819
    iget-object v3, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/Vpn;

    .line 820
    .local v3, "vpn":Lcom/android/server/connectivity/Vpn;
    invoke-virtual {v3, p1}, Lcom/android/server/connectivity/Vpn;->onUserRemoved(I)V

    .line 818
    .end local v3    # "vpn":Lcom/android/server/connectivity/Vpn;
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 822
    .end local v1    # "vpnsSize":I
    .end local v2    # "i":I
    :cond_1a
    monitor-exit v0

    .line 823
    return-void

    .line 822
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method private onUserStarted(I)V
    .registers 12
    .param p1, "userId"    # I

    .line 761
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 762
    :try_start_3
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    .line 763
    .local v1, "userVpn":Lcom/android/server/connectivity/Vpn;
    if-eqz v1, :cond_14

    .line 764
    const-string v2, "Starting user already has a VPN"

    invoke-static {v2}, Lcom/android/server/VpnManagerService;->loge(Ljava/lang/String;)V

    .line 765
    monitor-exit v0

    return-void

    .line 767
    :cond_14
    new-instance v9, Lcom/android/server/connectivity/Vpn;

    iget-object v2, p0, Lcom/android/server/VpnManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/VpnManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/VpnManagerService;->mNMS:Landroid/os/INetworkManagementService;

    iget-object v6, p0, Lcom/android/server/VpnManagerService;->mNetd:Landroid/net/INetd;

    new-instance v8, Lcom/android/server/connectivity/VpnProfileStore;

    invoke-direct {v8}, Lcom/android/server/connectivity/VpnProfileStore;-><init>()V

    move-object v2, v9

    move v7, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/connectivity/Vpn;-><init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetd;ILcom/android/server/connectivity/VpnProfileStore;)V

    move-object v1, v9

    .line 769
    iget-object v2, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 770
    iget-object v2, p0, Lcom/android/server/VpnManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-direct {p0}, Lcom/android/server/VpnManagerService;->isLockdownVpnEnabled()Z

    move-result v2

    if-eqz v2, :cond_47

    .line 771
    invoke-virtual {p0}, Lcom/android/server/VpnManagerService;->updateLockdownVpn()Z

    .line 773
    .end local v1    # "userVpn":Lcom/android/server/connectivity/Vpn;
    :cond_47
    monitor-exit v0

    .line 774
    return-void

    .line 773
    :catchall_49
    move-exception v1

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_3 .. :try_end_4b} :catchall_49

    throw v1
.end method

.method private onUserStopped(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 777
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 778
    :try_start_3
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    .line 779
    .local v1, "userVpn":Lcom/android/server/connectivity/Vpn;
    if-nez v1, :cond_14

    .line 780
    const-string v2, "Stopped user has no VPN"

    invoke-static {v2}, Lcom/android/server/VpnManagerService;->loge(Ljava/lang/String;)V

    .line 781
    monitor-exit v0

    return-void

    .line 783
    :cond_14
    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn;->onUserStopped()V

    .line 784
    iget-object v2, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 785
    .end local v1    # "userVpn":Lcom/android/server/connectivity/Vpn;
    monitor-exit v0

    .line 786
    return-void

    .line 785
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method private onUserUnlocked(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 867
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 869
    :try_start_3
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-direct {p0}, Lcom/android/server/VpnManagerService;->isLockdownVpnEnabled()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 870
    invoke-virtual {p0}, Lcom/android/server/VpnManagerService;->updateLockdownVpn()Z

    goto :goto_1c

    .line 872
    :cond_19
    invoke-direct {p0, p1}, Lcom/android/server/VpnManagerService;->startAlwaysOnVpn(I)Z

    .line 874
    :goto_1c
    monitor-exit v0

    .line 875
    return-void

    .line 874
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method private onVpnLockdownReset()V
    .registers 3

    .line 878
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 879
    :try_start_3
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/android/server/net/LockdownVpnTracker;->reset()V

    .line 880
    :cond_a
    monitor-exit v0

    .line 881
    return-void

    .line 880
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method private registerReceivers()V
    .registers 9

    .line 671
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 672
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 673
    const-string v1, "android.intent.action.USER_STOPPED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 674
    const-string v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 675
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 676
    const-string v1, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 678
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mUserAllContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/VpnManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/server/VpnManagerService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 683
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/VpnManagerService;->mUserPresentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.USER_PRESENT"

    invoke-direct {v3, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/VpnManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 690
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    move-object v0, v1

    .line 691
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 692
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 693
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 694
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mUserAllContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/VpnManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/server/VpnManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 701
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    move-object v0, v1

    .line 702
    const-string v1, "com.android.server.action.LOCKDOWN_RESET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 703
    iget-object v2, p0, Lcom/android/server/VpnManagerService;->mUserAllContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/VpnManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v6, p0, Lcom/android/server/VpnManagerService;->mHandler:Landroid/os/Handler;

    const-string v5, "android.permission.NETWORK_STACK"

    const/4 v7, 0x2

    move-object v4, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 705
    return-void
.end method

.method private setLockdownTracker(Lcom/android/server/net/LockdownVpnTracker;)V
    .registers 4
    .param p1, "tracker"    # Lcom/android/server/net/LockdownVpnTracker;

    .line 512
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    .line 515
    .local v0, "existing":Lcom/android/server/net/LockdownVpnTracker;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/VpnManagerService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    .line 516
    if-eqz v0, :cond_a

    .line 517
    invoke-virtual {v0}, Lcom/android/server/net/LockdownVpnTracker;->shutdown()V

    .line 520
    :cond_a
    if-eqz p1, :cond_11

    .line 521
    iput-object p1, p0, Lcom/android/server/VpnManagerService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    .line 522
    invoke-virtual {p1}, Lcom/android/server/net/LockdownVpnTracker;->init()V

    .line 524
    :cond_11
    return-void
.end method

.method private startAlwaysOnVpn(I)Z
    .registers 7
    .param p1, "userId"    # I

    .line 548
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 549
    :try_start_3
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    .line 550
    .local v1, "vpn":Lcom/android/server/connectivity/Vpn;
    if-nez v1, :cond_2e

    .line 553
    sget-object v2, Lcom/android/server/VpnManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has no Vpn configuration"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 557
    :cond_2e
    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn;->startAlwaysOnVpn()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 558
    .end local v1    # "vpn":Lcom/android/server/connectivity/Vpn;
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw v1
.end method

.method private throwIfLockdownEnabled()V
    .registers 3

    .line 535
    iget-boolean v0, p0, Lcom/android/server/VpnManagerService;->mLockdownEnabled:Z

    if-nez v0, :cond_5

    .line 538
    return-void

    .line 536
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unavailable in lockdown mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private verifyCallingUidAndPackage(Ljava/lang/String;I)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callingUid"    # I

    .line 332
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 333
    .local v0, "userId":I
    invoke-direct {p0, p1, v0}, Lcom/android/server/VpnManagerService;->getAppUid(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, p2, :cond_b

    .line 336
    return-void

    .line 334
    :cond_b
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not belong to uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public addVpnAddress(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "prefixLength"    # I

    .line 254
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mDeps:Lcom/android/server/VpnManagerService$Dependencies;

    invoke-virtual {v0}, Lcom/android/server/VpnManagerService$Dependencies;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 255
    .local v0, "user":I
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v1

    .line 256
    :try_start_d
    invoke-direct {p0}, Lcom/android/server/VpnManagerService;->throwIfLockdownEnabled()V

    .line 257
    iget-object v2, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/connectivity/Vpn;->addAddress(Ljava/lang/String;I)Z

    move-result v2

    monitor-exit v1

    return v2

    .line 258
    :catchall_1e
    move-exception v2

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_d .. :try_end_20} :catchall_1e

    throw v2
.end method

.method public deleteVpnProfile(Ljava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 312
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mDeps:Lcom/android/server/VpnManagerService$Dependencies;

    invoke-virtual {v0}, Lcom/android/server/VpnManagerService$Dependencies;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 313
    .local v0, "user":I
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v1

    .line 314
    :try_start_d
    iget-object v2, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v2, p1}, Lcom/android/server/connectivity/Vpn;->deleteVpnProfile(Ljava/lang/String;)V

    .line 315
    monitor-exit v1

    .line 316
    return-void

    .line 315
    :catchall_1a
    move-exception v2

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_d .. :try_end_1c} :catchall_1a

    throw v2
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 168
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/server/VpnManagerService;->TAG:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 169
    :cond_b
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 170
    .local v0, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    const-string v1, "VPNs:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 172
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v1

    .line 173
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1e
    :try_start_1e
    iget-object v3, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_55

    .line 174
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v4}, Lcom/android/server/connectivity/Vpn;->getPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 173
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 176
    .end local v2    # "i":I
    :cond_55
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 177
    monitor-exit v1

    .line 178
    return-void

    .line 177
    :catchall_5a
    move-exception v2

    monitor-exit v1
    :try_end_5c
    .catchall {:try_start_1e .. :try_end_5c} :catchall_5a

    throw v2
.end method

.method public establishVpn(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;
    .registers 5
    .param p1, "config"    # Lcom/android/internal/net/VpnConfig;

    .line 245
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mDeps:Lcom/android/server/VpnManagerService$Dependencies;

    invoke-virtual {v0}, Lcom/android/server/VpnManagerService$Dependencies;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 246
    .local v0, "user":I
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v1

    .line 247
    :try_start_d
    invoke-direct {p0}, Lcom/android/server/VpnManagerService;->throwIfLockdownEnabled()V

    .line 248
    iget-object v2, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v2, p1}, Lcom/android/server/connectivity/Vpn;->establish(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 249
    :catchall_1e
    move-exception v2

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_d .. :try_end_20} :catchall_1e

    throw v2
.end method

.method public factoryReset()V
    .registers 11

    .line 918
    invoke-direct {p0}, Lcom/android/server/VpnManagerService;->enforceSettingsPermission()V

    .line 920
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v1, "no_network_reset"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_71

    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v1, "no_config_vpn"

    .line 921
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_71

    .line 926
    :cond_1a
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 927
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v1

    .line 928
    :try_start_21
    invoke-virtual {p0, v0}, Lcom/android/server/VpnManagerService;->getAlwaysOnVpnPackage(I)Ljava/lang/String;

    move-result-object v2

    .line 929
    .local v2, "alwaysOnPackage":Ljava/lang/String;
    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v2, :cond_30

    .line 930
    invoke-virtual {p0, v0, v5, v4, v5}, Lcom/android/server/VpnManagerService;->setAlwaysOnVpnPackage(ILjava/lang/String;ZLjava/util/List;)Z

    .line 931
    invoke-virtual {p0, v2, v0, v3}, Lcom/android/server/VpnManagerService;->setVpnPackageAuthorization(Ljava/lang/String;II)V

    .line 935
    :cond_30
    iget-boolean v6, p0, Lcom/android/server/VpnManagerService;->mLockdownEnabled:Z

    if-eqz v6, :cond_50

    if-nez v0, :cond_50

    .line 936
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6
    :try_end_3a
    .catchall {:try_start_21 .. :try_end_3a} :catchall_6e

    .line 938
    .local v6, "ident":J
    :try_start_3a
    iget-object v8, p0, Lcom/android/server/VpnManagerService;->mVpnProfileStore:Lcom/android/server/connectivity/VpnProfileStore;

    const-string v9, "LOCKDOWN_VPN"

    invoke-virtual {v8, v9}, Lcom/android/server/connectivity/VpnProfileStore;->remove(Ljava/lang/String;)Z

    .line 939
    iput-boolean v4, p0, Lcom/android/server/VpnManagerService;->mLockdownEnabled:Z

    .line 940
    invoke-direct {p0, v5}, Lcom/android/server/VpnManagerService;->setLockdownTracker(Lcom/android/server/net/LockdownVpnTracker;)V
    :try_end_46
    .catchall {:try_start_3a .. :try_end_46} :catchall_4a

    .line 942
    :try_start_46
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 943
    goto :goto_50

    .line 942
    :catchall_4a
    move-exception v3

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 943
    nop

    .end local v0    # "userId":I
    .end local p0    # "this":Lcom/android/server/VpnManagerService;
    throw v3

    .line 947
    .end local v6    # "ident":J
    .restart local v0    # "userId":I
    .restart local p0    # "this":Lcom/android/server/VpnManagerService;
    :cond_50
    :goto_50
    invoke-virtual {p0, v0}, Lcom/android/server/VpnManagerService;->getVpnConfig(I)Lcom/android/internal/net/VpnConfig;

    move-result-object v4

    .line 948
    .local v4, "vpnConfig":Lcom/android/internal/net/VpnConfig;
    if-eqz v4, :cond_6c

    .line 949
    iget-boolean v6, v4, Lcom/android/internal/net/VpnConfig;->legacy:Z

    if-eqz v6, :cond_62

    .line 950
    const-string v3, "[Legacy VPN]"

    const-string v5, "[Legacy VPN]"

    invoke-virtual {p0, v3, v5, v0}, Lcom/android/server/VpnManagerService;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_6c

    .line 954
    :cond_62
    iget-object v6, v4, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-virtual {p0, v6, v0, v3}, Lcom/android/server/VpnManagerService;->setVpnPackageAuthorization(Ljava/lang/String;II)V

    .line 957
    const-string v3, "[Legacy VPN]"

    invoke-virtual {p0, v5, v3, v0}, Lcom/android/server/VpnManagerService;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 960
    .end local v2    # "alwaysOnPackage":Ljava/lang/String;
    .end local v4    # "vpnConfig":Lcom/android/internal/net/VpnConfig;
    :cond_6c
    :goto_6c
    monitor-exit v1

    .line 961
    return-void

    .line 960
    :catchall_6e
    move-exception v2

    monitor-exit v1
    :try_end_70
    .catchall {:try_start_46 .. :try_end_70} :catchall_6e

    throw v2

    .line 922
    .end local v0    # "userId":I
    :cond_71
    :goto_71
    return-void
.end method

.method public getAlwaysOnVpnPackage(I)Ljava/lang/String;
    .registers 6
    .param p1, "userId"    # I

    .line 606
    invoke-direct {p0}, Lcom/android/server/VpnManagerService;->enforceControlAlwaysOnVpnPermission()V

    .line 607
    invoke-direct {p0, p1}, Lcom/android/server/VpnManagerService;->enforceCrossUserPermission(I)V

    .line 609
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 610
    :try_start_9
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    .line 611
    .local v1, "vpn":Lcom/android/server/connectivity/Vpn;
    if-nez v1, :cond_32

    .line 612
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has no Vpn configuration"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/VpnManagerService;->logw(Ljava/lang/String;)V

    .line 613
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 615
    :cond_32
    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn;->getAlwaysOnPackage()Ljava/lang/String;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 616
    .end local v1    # "vpn":Lcom/android/server/connectivity/Vpn;
    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_9 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method public getAppExclusionList(ILjava/lang/String;)Ljava/util/List;
    .registers 7
    .param p1, "userId"    # I
    .param p2, "vpnPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 902
    invoke-direct {p0}, Lcom/android/server/VpnManagerService;->enforceSettingsPermission()V

    .line 903
    invoke-direct {p0, p1}, Lcom/android/server/VpnManagerService;->enforceCrossUserPermission(I)V

    .line 905
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 906
    :try_start_9
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    .line 907
    .local v1, "vpn":Lcom/android/server/connectivity/Vpn;
    if-eqz v1, :cond_19

    .line 908
    invoke-virtual {v1, p2}, Lcom/android/server/connectivity/Vpn;->getAppExclusionList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 910
    :cond_19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has no Vpn configuration"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/VpnManagerService;->logw(Ljava/lang/String;)V

    .line 911
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 913
    .end local v1    # "vpn":Lcom/android/server/connectivity/Vpn;
    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_9 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method public getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;
    .registers 4
    .param p1, "userId"    # I

    .line 431
    invoke-direct {p0, p1}, Lcom/android/server/VpnManagerService;->enforceCrossUserPermission(I)V

    .line 433
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 434
    :try_start_6
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn;->getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 435
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public getProvisionedVpnProfileState(Ljava/lang/String;)Landroid/net/VpnProfileState;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 387
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 388
    .local v0, "callingUid":I
    invoke-direct {p0, p1, v0}, Lcom/android/server/VpnManagerService;->verifyCallingUidAndPackage(Ljava/lang/String;I)V

    .line 389
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 390
    .local v1, "user":I
    iget-object v2, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v2

    .line 391
    :try_start_e
    iget-object v3, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v3, p1}, Lcom/android/server/connectivity/Vpn;->getProvisionedVpnProfileState(Ljava/lang/String;)Landroid/net/VpnProfileState;

    move-result-object v3

    monitor-exit v2

    return-object v3

    .line 392
    :catchall_1c
    move-exception v3

    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_e .. :try_end_1e} :catchall_1c

    throw v3
.end method

.method public getVpnConfig(I)Lcom/android/internal/net/VpnConfig;
    .registers 5
    .param p1, "userId"    # I

    .line 446
    invoke-direct {p0, p1}, Lcom/android/server/VpnManagerService;->enforceCrossUserPermission(I)V

    .line 447
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 448
    :try_start_6
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    .line 449
    .local v1, "vpn":Lcom/android/server/connectivity/Vpn;
    if-eqz v1, :cond_16

    .line 450
    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn;->getVpnConfig()Lcom/android/internal/net/VpnConfig;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 452
    :cond_16
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 454
    .end local v1    # "vpn":Lcom/android/server/connectivity/Vpn;
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public getVpnLockdownAllowlist(I)Ljava/util/List;
    .registers 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 636
    invoke-direct {p0}, Lcom/android/server/VpnManagerService;->enforceControlAlwaysOnVpnPermission()V

    .line 637
    invoke-direct {p0, p1}, Lcom/android/server/VpnManagerService;->enforceCrossUserPermission(I)V

    .line 639
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 640
    :try_start_9
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    .line 641
    .local v1, "vpn":Lcom/android/server/connectivity/Vpn;
    if-nez v1, :cond_32

    .line 642
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has no Vpn configuration"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/VpnManagerService;->logw(Ljava/lang/String;)V

    .line 643
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 645
    :cond_32
    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn;->getLockdownAllowlist()Ljava/util/List;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 646
    .end local v1    # "vpn":Lcom/android/server/connectivity/Vpn;
    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_9 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method public isAlwaysOnVpnPackageSupported(ILjava/lang/String;)Z
    .registers 7
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 563
    invoke-direct {p0}, Lcom/android/server/VpnManagerService;->enforceSettingsPermission()V

    .line 564
    invoke-direct {p0, p1}, Lcom/android/server/VpnManagerService;->enforceCrossUserPermission(I)V

    .line 566
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 567
    :try_start_9
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    .line 568
    .local v1, "vpn":Lcom/android/server/connectivity/Vpn;
    if-nez v1, :cond_32

    .line 569
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has no Vpn configuration"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/VpnManagerService;->logw(Ljava/lang/String;)V

    .line 570
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 572
    :cond_32
    invoke-virtual {v1, p2}, Lcom/android/server/connectivity/Vpn;->isAlwaysOnPackageSupported(Ljava/lang/String;)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 573
    .end local v1    # "vpn":Lcom/android/server/connectivity/Vpn;
    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_9 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method public isCallerCurrentAlwaysOnVpnApp()Z
    .registers 4

    .line 790
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 791
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/VpnManagerService;->getVpnIfOwner()Lcom/android/server/connectivity/Vpn;

    move-result-object v1

    .line 792
    .local v1, "vpn":Lcom/android/server/connectivity/Vpn;
    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn;->getAlwaysOn()Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 v2, 0x1

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    :goto_12
    monitor-exit v0

    return v2

    .line 793
    .end local v1    # "vpn":Lcom/android/server/connectivity/Vpn;
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public isCallerCurrentAlwaysOnVpnLockdownApp()Z
    .registers 4

    .line 798
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 799
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/VpnManagerService;->getVpnIfOwner()Lcom/android/server/connectivity/Vpn;

    move-result-object v1

    .line 800
    .local v1, "vpn":Lcom/android/server/connectivity/Vpn;
    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn;->getLockdown()Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 v2, 0x1

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    :goto_12
    monitor-exit v0

    return v2

    .line 801
    .end local v1    # "vpn":Lcom/android/server/connectivity/Vpn;
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public isVpnLockdownEnabled(I)Z
    .registers 6
    .param p1, "userId"    # I

    .line 621
    invoke-direct {p0}, Lcom/android/server/VpnManagerService;->enforceControlAlwaysOnVpnPermission()V

    .line 622
    invoke-direct {p0, p1}, Lcom/android/server/VpnManagerService;->enforceCrossUserPermission(I)V

    .line 624
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 625
    :try_start_9
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    .line 626
    .local v1, "vpn":Lcom/android/server/connectivity/Vpn;
    if-nez v1, :cond_32

    .line 627
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has no Vpn configuration"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/VpnManagerService;->logw(Ljava/lang/String;)V

    .line 628
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 630
    :cond_32
    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn;->getLockdown()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 631
    .end local v1    # "vpn":Lcom/android/server/connectivity/Vpn;
    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_9 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method public prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 7
    .param p1, "oldPackage"    # Ljava/lang/String;
    .param p2, "newPackage"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 197
    invoke-direct {p0, p3}, Lcom/android/server/VpnManagerService;->enforceCrossUserPermission(I)V

    .line 199
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 200
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/VpnManagerService;->throwIfLockdownEnabled()V

    .line 201
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    .line 202
    .local v1, "vpn":Lcom/android/server/connectivity/Vpn;
    if-eqz v1, :cond_1a

    .line 203
    const/4 v2, 0x1

    invoke-virtual {v1, p1, p2, v2}, Lcom/android/server/connectivity/Vpn;->prepare(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 205
    :cond_1a
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 207
    .end local v1    # "vpn":Lcom/android/server/connectivity/Vpn;
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public provisionVpnProfile(Lcom/android/internal/net/VpnProfile;Ljava/lang/String;)Z
    .registers 6
    .param p1, "profile"    # Lcom/android/internal/net/VpnProfile;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 294
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mDeps:Lcom/android/server/VpnManagerService$Dependencies;

    invoke-virtual {v0}, Lcom/android/server/VpnManagerService$Dependencies;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 295
    .local v0, "user":I
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v1

    .line 296
    :try_start_d
    iget-object v2, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v2, p2, p1}, Lcom/android/server/connectivity/Vpn;->provisionVpnProfile(Ljava/lang/String;Lcom/android/internal/net/VpnProfile;)Z

    move-result v2

    monitor-exit v1

    return v2

    .line 297
    :catchall_1b
    move-exception v2

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_d .. :try_end_1d} :catchall_1b

    throw v2
.end method

.method public removeVpnAddress(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "prefixLength"    # I

    .line 263
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mDeps:Lcom/android/server/VpnManagerService$Dependencies;

    invoke-virtual {v0}, Lcom/android/server/VpnManagerService$Dependencies;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 264
    .local v0, "user":I
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v1

    .line 265
    :try_start_d
    invoke-direct {p0}, Lcom/android/server/VpnManagerService;->throwIfLockdownEnabled()V

    .line 266
    iget-object v2, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/connectivity/Vpn;->removeAddress(Ljava/lang/String;I)Z

    move-result v2

    monitor-exit v1

    return v2

    .line 267
    :catchall_1e
    move-exception v2

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_d .. :try_end_20} :catchall_1e

    throw v2
.end method

.method public setAlwaysOnVpnPackage(ILjava/lang/String;ZLjava/util/List;)Z
    .registers 10
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "lockdown"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 579
    .local p4, "lockdownAllowlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/server/VpnManagerService;->enforceControlAlwaysOnVpnPermission()V

    .line 580
    invoke-direct {p0, p1}, Lcom/android/server/VpnManagerService;->enforceCrossUserPermission(I)V

    .line 582
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 584
    :try_start_9
    invoke-direct {p0}, Lcom/android/server/VpnManagerService;->isLockdownVpnEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    .line 585
    monitor-exit v0

    return v2

    .line 588
    :cond_12
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    .line 589
    .local v1, "vpn":Lcom/android/server/connectivity/Vpn;
    if-nez v1, :cond_3a

    .line 590
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has no Vpn configuration"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/VpnManagerService;->logw(Ljava/lang/String;)V

    .line 591
    monitor-exit v0

    return v2

    .line 593
    :cond_3a
    invoke-virtual {v1, p2, p3, p4}, Lcom/android/server/connectivity/Vpn;->setAlwaysOnPackage(Ljava/lang/String;ZLjava/util/List;)Z

    move-result v3

    if-nez v3, :cond_42

    .line 594
    monitor-exit v0

    return v2

    .line 596
    :cond_42
    invoke-direct {p0, p1}, Lcom/android/server/VpnManagerService;->startAlwaysOnVpn(I)Z

    move-result v3

    if-nez v3, :cond_4e

    .line 597
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, v3}, Lcom/android/server/connectivity/Vpn;->setAlwaysOnPackage(Ljava/lang/String;ZLjava/util/List;)Z

    .line 598
    monitor-exit v0

    return v2

    .line 600
    .end local v1    # "vpn":Lcom/android/server/connectivity/Vpn;
    :cond_4e
    monitor-exit v0

    .line 601
    const/4 v0, 0x1

    return v0

    .line 600
    :catchall_51
    move-exception v1

    monitor-exit v0
    :try_end_53
    .catchall {:try_start_9 .. :try_end_53} :catchall_51

    throw v1
.end method

.method public setAppExclusionList(ILjava/lang/String;Ljava/util/List;)Z
    .registers 9
    .param p1, "userId"    # I
    .param p2, "vpnPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 885
    .local p3, "excludedApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/server/VpnManagerService;->enforceSettingsPermission()V

    .line 886
    invoke-direct {p0, p1}, Lcom/android/server/VpnManagerService;->enforceCrossUserPermission(I)V

    .line 888
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 889
    :try_start_9
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    .line 890
    .local v1, "vpn":Lcom/android/server/connectivity/Vpn;
    if-eqz v1, :cond_19

    .line 891
    invoke-virtual {v1, p2, p3}, Lcom/android/server/connectivity/Vpn;->setAppExclusionList(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 893
    :cond_19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has no Vpn configuration"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/VpnManagerService;->logw(Ljava/lang/String;)V

    .line 894
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VPN for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not ready yet. Skipping setting the list"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/VpnManagerService;
    .end local p1    # "userId":I
    .end local p2    # "vpnPackage":Ljava/lang/String;
    .end local p3    # "excludedApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    throw v2

    .line 897
    .end local v1    # "vpn":Lcom/android/server/connectivity/Vpn;
    .restart local p0    # "this":Lcom/android/server/VpnManagerService;
    .restart local p1    # "userId":I
    .restart local p2    # "vpnPackage":Ljava/lang/String;
    .restart local p3    # "excludedApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_54
    move-exception v1

    monitor-exit v0
    :try_end_56
    .catchall {:try_start_9 .. :try_end_56} :catchall_54

    throw v1
.end method

.method public setUnderlyingNetworksForVpn([Landroid/net/Network;)Z
    .registers 5
    .param p1, "networks"    # [Landroid/net/Network;

    .line 272
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mDeps:Lcom/android/server/VpnManagerService$Dependencies;

    invoke-virtual {v0}, Lcom/android/server/VpnManagerService$Dependencies;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 274
    .local v0, "user":I
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v1

    .line 275
    :try_start_d
    iget-object v2, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v2, p1}, Lcom/android/server/connectivity/Vpn;->setUnderlyingNetworks([Landroid/net/Network;)Z

    move-result v2

    .line 276
    .local v2, "success":Z
    monitor-exit v1

    .line 277
    return v2

    .line 276
    .end local v2    # "success":Z
    :catchall_1b
    move-exception v2

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_d .. :try_end_1d} :catchall_1b

    throw v2
.end method

.method public setVpnPackageAuthorization(Ljava/lang/String;II)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "vpnType"    # I

    .line 226
    invoke-direct {p0, p2}, Lcom/android/server/VpnManagerService;->enforceCrossUserPermission(I)V

    .line 228
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 229
    :try_start_6
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    .line 230
    .local v1, "vpn":Lcom/android/server/connectivity/Vpn;
    if-eqz v1, :cond_13

    .line 231
    invoke-virtual {v1, p1, p3}, Lcom/android/server/connectivity/Vpn;->setPackageAuthorization(Ljava/lang/String;I)Z

    .line 233
    .end local v1    # "vpn":Lcom/android/server/connectivity/Vpn;
    :cond_13
    monitor-exit v0

    .line 234
    return-void

    .line 233
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public startLegacyVpn(Lcom/android/internal/net/VpnProfile;)V
    .registers 7
    .param p1, "profile"    # Lcom/android/internal/net/VpnProfile;

    .line 406
    sget v0, Landroid/os/Build$VERSION;->DEVICE_INITIAL_SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_17

    iget v0, p1, Lcom/android/internal/net/VpnProfile;->type:I

    .line 407
    invoke-static {v0}, Lcom/android/internal/net/VpnProfile;->isLegacyType(I)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_17

    .line 408
    :cond_f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Legacy VPN is deprecated"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 410
    :cond_17
    :goto_17
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mDeps:Lcom/android/server/VpnManagerService$Dependencies;

    invoke-virtual {v0}, Lcom/android/server/VpnManagerService$Dependencies;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 414
    .local v0, "user":I
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v1

    .line 415
    .local v1, "egress":Landroid/net/LinkProperties;
    if-eqz v1, :cond_44

    .line 418
    iget-object v2, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v2

    .line 419
    :try_start_30
    invoke-direct {p0}, Lcom/android/server/VpnManagerService;->throwIfLockdownEnabled()V

    .line 420
    iget-object v3, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/Vpn;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4, v1}, Lcom/android/server/connectivity/Vpn;->startLegacyVpn(Lcom/android/internal/net/VpnProfile;Landroid/net/Network;Landroid/net/LinkProperties;)V

    .line 421
    monitor-exit v2

    .line 422
    return-void

    .line 421
    :catchall_41
    move-exception v3

    monitor-exit v2
    :try_end_43
    .catchall {:try_start_30 .. :try_end_43} :catchall_41

    throw v3

    .line 416
    :cond_44
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Missing active network connection"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public startVpnProfile(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 350
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 351
    .local v0, "callingUid":I
    invoke-direct {p0, p1, v0}, Lcom/android/server/VpnManagerService;->verifyCallingUidAndPackage(Ljava/lang/String;I)V

    .line 352
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 353
    .local v1, "user":I
    iget-object v2, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v2

    .line 354
    :try_start_e
    invoke-direct {p0}, Lcom/android/server/VpnManagerService;->throwIfLockdownEnabled()V

    .line 355
    iget-object v3, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v3, p1}, Lcom/android/server/connectivity/Vpn;->startVpnProfile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    monitor-exit v2

    return-object v3

    .line 356
    :catchall_1f
    move-exception v3

    monitor-exit v2
    :try_end_21
    .catchall {:try_start_e .. :try_end_21} :catchall_1f

    throw v3
.end method

.method public stopVpnProfile(Ljava/lang/String;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 369
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 370
    .local v0, "callingUid":I
    invoke-direct {p0, p1, v0}, Lcom/android/server/VpnManagerService;->verifyCallingUidAndPackage(Ljava/lang/String;I)V

    .line 371
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 372
    .local v1, "user":I
    iget-object v2, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v2

    .line 373
    :try_start_e
    iget-object v3, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v3, p1}, Lcom/android/server/connectivity/Vpn;->stopVpnProfile(Ljava/lang/String;)V

    .line 374
    monitor-exit v2

    .line 375
    return-void

    .line 374
    :catchall_1b
    move-exception v3

    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_e .. :try_end_1d} :catchall_1b

    throw v3
.end method

.method public systemReady()V
    .registers 1

    .line 161
    invoke-virtual {p0}, Lcom/android/server/VpnManagerService;->updateLockdownVpn()Z

    .line 162
    return-void
.end method

.method public updateLockdownVpn()Z
    .registers 11

    .line 465
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mDeps:Lcom/android/server/VpnManagerService$Dependencies;

    invoke-virtual {v0}, Lcom/android/server/VpnManagerService$Dependencies;->getCallingUid()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_1b

    .line 466
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-eq v0, v2, :cond_1b

    .line 467
    const-string v0, "Lockdown VPN only available to system process or AID_SYSTEM"

    invoke-static {v0}, Lcom/android/server/VpnManagerService;->logw(Ljava/lang/String;)V

    .line 468
    return v1

    .line 471
    :cond_1b
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 473
    :try_start_1e
    invoke-direct {p0}, Lcom/android/server/VpnManagerService;->isLockdownVpnEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/VpnManagerService;->mLockdownEnabled:Z

    .line 474
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_2d

    .line 475
    invoke-direct {p0, v3}, Lcom/android/server/VpnManagerService;->setLockdownTracker(Lcom/android/server/net/LockdownVpnTracker;)V

    .line 476
    monitor-exit v0

    return v4

    .line 479
    :cond_2d
    iget-object v2, p0, Lcom/android/server/VpnManagerService;->mVpnProfileStore:Lcom/android/server/connectivity/VpnProfileStore;

    const-string v5, "LOCKDOWN_VPN"

    invoke-virtual {v2, v5}, Lcom/android/server/connectivity/VpnProfileStore;->get(Ljava/lang/String;)[B

    move-result-object v2

    .line 480
    .local v2, "profileTag":[B
    if-nez v2, :cond_3e

    .line 481
    const-string v3, "Lockdown VPN configured but cannot be read from keystore"

    invoke-static {v3}, Lcom/android/server/VpnManagerService;->loge(Ljava/lang/String;)V

    .line 482
    monitor-exit v0

    return v1

    .line 484
    :cond_3e
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([B)V

    .line 485
    .local v5, "profileName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/VpnManagerService;->mVpnProfileStore:Lcom/android/server/connectivity/VpnProfileStore;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VPN_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 486
    invoke-virtual {v6, v7}, Lcom/android/server/connectivity/VpnProfileStore;->get(Ljava/lang/String;)[B

    move-result-object v6

    .line 485
    invoke-static {v5, v6}, Lcom/android/internal/net/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;

    move-result-object v6

    .line 487
    .local v6, "profile":Lcom/android/internal/net/VpnProfile;
    if-nez v6, :cond_7d

    .line 488
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Lockdown VPN configured invalid profile "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/VpnManagerService;->loge(Ljava/lang/String;)V

    .line 489
    invoke-direct {p0, v3}, Lcom/android/server/VpnManagerService;->setLockdownTracker(Lcom/android/server/net/LockdownVpnTracker;)V

    .line 490
    monitor-exit v0

    return v4

    .line 492
    :cond_7d
    iget-object v3, p0, Lcom/android/server/VpnManagerService;->mDeps:Lcom/android/server/VpnManagerService$Dependencies;

    invoke-virtual {v3}, Lcom/android/server/VpnManagerService$Dependencies;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 493
    .local v3, "user":I
    iget-object v7, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/connectivity/Vpn;

    .line 494
    .local v7, "vpn":Lcom/android/server/connectivity/Vpn;
    if-nez v7, :cond_af

    .line 495
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VPN for user "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " not ready yet. Skipping lockdown"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/VpnManagerService;->logw(Ljava/lang/String;)V

    .line 496
    monitor-exit v0

    return v1

    .line 498
    :cond_af
    new-instance v1, Lcom/android/server/net/LockdownVpnTracker;

    iget-object v8, p0, Lcom/android/server/VpnManagerService;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/server/VpnManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v8, v9, v7, v6}, Lcom/android/server/net/LockdownVpnTracker;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnProfile;)V

    invoke-direct {p0, v1}, Lcom/android/server/VpnManagerService;->setLockdownTracker(Lcom/android/server/net/LockdownVpnTracker;)V

    .line 500
    .end local v2    # "profileTag":[B
    .end local v3    # "user":I
    .end local v5    # "profileName":Ljava/lang/String;
    .end local v6    # "profile":Lcom/android/internal/net/VpnProfile;
    .end local v7    # "vpn":Lcom/android/server/connectivity/Vpn;
    monitor-exit v0

    .line 502
    return v4

    .line 500
    :catchall_bd
    move-exception v1

    monitor-exit v0
    :try_end_bf
    .catchall {:try_start_1e .. :try_end_bf} :catchall_bd

    throw v1
.end method
