.class public Lcom/android/server/VcnManagementService;
.super Landroid/net/vcn/IVcnManagementService$Stub;
.source "VcnManagementService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/VcnManagementService$VcnCallbackImpl;,
        Lcom/android/server/VcnManagementService$TrackingNetworkCallback;,
        Lcom/android/server/VcnManagementService$VcnCallback;,
        Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;,
        Lcom/android/server/VcnManagementService$PolicyListenerBinderDeath;,
        Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;,
        Lcom/android/server/VcnManagementService$VcnBroadcastReceiver;,
        Lcom/android/server/VcnManagementService$Dependencies;
    }
.end annotation


# static fields
.field static final CARRIER_PRIVILEGES_LOST_TEARDOWN_DELAY_MS:J

.field private static final DUMP_TIMEOUT_MILLIS:J

.field public static final LOCAL_LOG:Landroid/util/LocalLog;

.field private static final LOCAL_LOG_LINE_COUNT:I = 0x200

.field private static final TAG:Ljava/lang/String;

.field static final VCN_CONFIG_FILE:Ljava/lang/String;

.field public static final VDBG:Z = false


# instance fields
.field private final mConfigDiskRwHelper:Lcom/android/server/vcn/util/PersistableBundleUtils$LockingReadWriteHelper;

.field private final mConfigs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/ParcelUuid;",
            "Landroid/net/vcn/VcnConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDeps:Lcom/android/server/VcnManagementService$Dependencies;

.field private final mHandler:Landroid/os/Handler;

.field private mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

.field private final mLock:Ljava/lang/Object;

.field private final mLooper:Landroid/os/Looper;

.field private final mNetworkProvider:Lcom/android/server/vcn/VcnNetworkProvider;

.field private final mRegisteredPolicyListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/VcnManagementService$PolicyListenerBinderDeath;",
            ">;"
        }
    .end annotation
.end field

.field private final mRegisteredStatusCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mTelephonySubscriptionTracker:Lcom/android/server/vcn/TelephonySubscriptionTracker;

.field private final mTelephonySubscriptionTrackerCb:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionTrackerCallback;

.field private final mTrackingNetworkCallback:Lcom/android/server/VcnManagementService$TrackingNetworkCallback;

.field private final mVcnBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mVcns:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/ParcelUuid;",
            "Lcom/android/server/vcn/Vcn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmConfigs(Lcom/android/server/VcnManagementService;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/server/VcnManagementService;->mConfigs:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/VcnManagementService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/VcnManagementService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastSnapshot(Lcom/android/server/VcnManagementService;)Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;
    .registers 1

    iget-object p0, p0, Lcom/android/server/VcnManagementService;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/VcnManagementService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/VcnManagementService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRegisteredStatusCallbacks(Lcom/android/server/VcnManagementService;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/server/VcnManagementService;->mRegisteredStatusCallbacks:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTelephonySubscriptionTracker(Lcom/android/server/VcnManagementService;)Lcom/android/server/vcn/TelephonySubscriptionTracker;
    .registers 1

    iget-object p0, p0, Lcom/android/server/VcnManagementService;->mTelephonySubscriptionTracker:Lcom/android/server/vcn/TelephonySubscriptionTracker;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVcns(Lcom/android/server/VcnManagementService;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/server/VcnManagementService;->mVcns:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmLastSnapshot(Lcom/android/server/VcnManagementService;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/VcnManagementService;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    return-void
.end method

.method static bridge synthetic -$$Nest$mgarbageCollectAndWriteVcnConfigsLocked(Lcom/android/server/VcnManagementService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/VcnManagementService;->garbageCollectAndWriteVcnConfigsLocked()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetSubGroupToSubIdMappings(Lcom/android/server/VcnManagementService;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)Ljava/util/Map;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/VcnManagementService;->getSubGroupToSubIdMappings(Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misActiveSubGroup(Lcom/android/server/VcnManagementService;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/VcnManagementService;->isActiveSubGroup(Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misCallbackPermissioned(Lcom/android/server/VcnManagementService;Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;Landroid/os/ParcelUuid;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/VcnManagementService;->isCallbackPermissioned(Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;Landroid/os/ParcelUuid;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mlogDbg(Lcom/android/server/VcnManagementService;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/VcnManagementService;->logDbg(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mlogInfo(Lcom/android/server/VcnManagementService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/VcnManagementService;->logInfo(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mlogWtf(Lcom/android/server/VcnManagementService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/VcnManagementService;->logWtf(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyAllPermissionedStatusCallbacksLocked(Lcom/android/server/VcnManagementService;Landroid/os/ParcelUuid;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/VcnManagementService;->notifyAllPermissionedStatusCallbacksLocked(Landroid/os/ParcelUuid;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyAllPolicyListenersLocked(Lcom/android/server/VcnManagementService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/VcnManagementService;->notifyAllPolicyListenersLocked()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartVcnLocked(Lcom/android/server/VcnManagementService;Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/VcnManagementService;->startVcnLocked(Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopAndClearVcnConfigInternalLocked(Lcom/android/server/VcnManagementService;Landroid/os/ParcelUuid;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/VcnManagementService;->stopAndClearVcnConfigInternalLocked(Landroid/os/ParcelUuid;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopVcnLocked(Lcom/android/server/VcnManagementService;Landroid/os/ParcelUuid;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/VcnManagementService;->stopVcnLocked(Landroid/os/ParcelUuid;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mwriteConfigsToDiskLocked(Lcom/android/server/VcnManagementService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/VcnManagementService;->writeConfigsToDiskLocked()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/VcnManagementService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 158
    const-class v0, Lcom/android/server/VcnManagementService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/VcnManagementService;->TAG:Ljava/lang/String;

    .line 159
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/VcnManagementService;->DUMP_TIMEOUT_MILLIS:J

    .line 163
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    sput-object v0, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    .line 168
    new-instance v0, Ljava/io/File;

    .line 169
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "vcn/configs.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/VcnManagementService;->VCN_CONFIG_FILE:Ljava/lang/String;

    .line 173
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/VcnManagementService;->CARRIER_PRIVILEGES_LOST_TEARDOWN_DELAY_MS:J

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/VcnManagementService$Dependencies;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "deps"    # Lcom/android/server/VcnManagementService$Dependencies;

    .line 216
    invoke-direct {p0}, Landroid/net/vcn/IVcnManagementService$Stub;-><init>()V

    .line 186
    new-instance v0, Lcom/android/server/VcnManagementService$TrackingNetworkCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/VcnManagementService$TrackingNetworkCallback;-><init>(Lcom/android/server/VcnManagementService;Lcom/android/server/VcnManagementService$TrackingNetworkCallback-IA;)V

    iput-object v0, p0, Lcom/android/server/VcnManagementService;->mTrackingNetworkCallback:Lcom/android/server/VcnManagementService$TrackingNetworkCallback;

    .line 189
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/VcnManagementService;->mConfigs:Ljava/util/Map;

    .line 193
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/VcnManagementService;->mVcns:Ljava/util/Map;

    .line 197
    sget-object v0, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->EMPTY_SNAPSHOT:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    iput-object v0, p0, Lcom/android/server/VcnManagementService;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 202
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/VcnManagementService;->mLock:Ljava/lang/Object;

    .line 206
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/VcnManagementService;->mRegisteredPolicyListeners:Ljava/util/Map;

    .line 211
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/VcnManagementService;->mRegisteredStatusCallbacks:Ljava/util/Map;

    .line 217
    const-string v0, "Missing context"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/VcnManagementService;->mContext:Landroid/content/Context;

    .line 218
    const-string v2, "Missing dependencies"

    invoke-static {p2, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/VcnManagementService$Dependencies;

    iput-object v2, p0, Lcom/android/server/VcnManagementService;->mDeps:Lcom/android/server/VcnManagementService$Dependencies;

    .line 220
    invoke-virtual {v2}, Lcom/android/server/VcnManagementService$Dependencies;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/VcnManagementService;->mLooper:Landroid/os/Looper;

    .line 221
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/android/server/VcnManagementService;->mHandler:Landroid/os/Handler;

    .line 222
    new-instance v5, Lcom/android/server/vcn/VcnNetworkProvider;

    invoke-direct {v5, v0, v3}, Lcom/android/server/vcn/VcnNetworkProvider;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v5, p0, Lcom/android/server/VcnManagementService;->mNetworkProvider:Lcom/android/server/vcn/VcnNetworkProvider;

    .line 223
    new-instance v5, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;

    invoke-direct {v5, p0, v1}, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;-><init>(Lcom/android/server/VcnManagementService;Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback-IA;)V

    iput-object v5, p0, Lcom/android/server/VcnManagementService;->mTelephonySubscriptionTrackerCb:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionTrackerCallback;

    .line 224
    invoke-virtual {v2, v0, v3, v5}, Lcom/android/server/VcnManagementService$Dependencies;->newTelephonySubscriptionTracker(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionTrackerCallback;)Lcom/android/server/vcn/TelephonySubscriptionTracker;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/VcnManagementService;->mTelephonySubscriptionTracker:Lcom/android/server/vcn/TelephonySubscriptionTracker;

    .line 227
    sget-object v3, Lcom/android/server/VcnManagementService;->VCN_CONFIG_FILE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/VcnManagementService$Dependencies;->newPersistableBundleLockingReadWriteHelper(Ljava/lang/String;)Lcom/android/server/vcn/util/PersistableBundleUtils$LockingReadWriteHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/VcnManagementService;->mConfigDiskRwHelper:Lcom/android/server/vcn/util/PersistableBundleUtils$LockingReadWriteHelper;

    .line 229
    new-instance v2, Lcom/android/server/VcnManagementService$VcnBroadcastReceiver;

    invoke-direct {v2, p0, v1}, Lcom/android/server/VcnManagementService$VcnBroadcastReceiver;-><init>(Lcom/android/server/VcnManagementService;Lcom/android/server/VcnManagementService$VcnBroadcastReceiver-IA;)V

    iput-object v2, p0, Lcom/android/server/VcnManagementService;->mVcnBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 231
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 232
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 233
    const-string v5, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 234
    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 235
    const-string v5, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 236
    const-string v5, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 237
    const-string/jumbo v5, "package"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 238
    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 242
    new-instance v0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/VcnManagementService;)V

    invoke-virtual {v4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 280
    return-void
.end method

.method static create(Landroid/content/Context;)Lcom/android/server/VcnManagementService;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 284
    new-instance v0, Lcom/android/server/VcnManagementService;

    new-instance v1, Lcom/android/server/VcnManagementService$Dependencies;

    invoke-direct {v1}, Lcom/android/server/VcnManagementService$Dependencies;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/VcnManagementService;-><init>(Landroid/content/Context;Lcom/android/server/VcnManagementService$Dependencies;)V

    return-object v0
.end method

.method private enforceCallingUserAndCarrierPrivilege(Landroid/os/ParcelUuid;Ljava/lang/String;)V
    .registers 10
    .param p1, "subscriptionGroup"    # Landroid/os/ParcelUuid;
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 394
    invoke-direct {p0}, Lcom/android/server/VcnManagementService;->enforcePrimaryUser()V

    .line 397
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    .line 398
    .local v0, "subMgr":Landroid/telephony/SubscriptionManager;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 399
    .local v1, "subscriptionInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    new-instance v2, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda11;

    invoke-direct {v2, v1, v0, p1}, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda11;-><init>(Ljava/util/List;Landroid/telephony/SubscriptionManager;Landroid/os/ParcelUuid;)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 404
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    .line 405
    .local v3, "info":Landroid/telephony/SubscriptionInfo;
    iget-object v4, p0, Lcom/android/server/VcnManagementService;->mContext:Landroid/content/Context;

    const-class v5, Landroid/telephony/TelephonyManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 406
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v4

    .line 410
    .local v4, "telMgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v5

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 411
    invoke-virtual {v4, p2}, Landroid/telephony/TelephonyManager;->checkCarrierPrivilegesForPackage(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4e

    .line 416
    return-void

    .line 418
    .end local v3    # "info":Landroid/telephony/SubscriptionInfo;
    .end local v4    # "telMgr":Landroid/telephony/TelephonyManager;
    :cond_4e
    goto :goto_1e

    .line 420
    :cond_4f
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Carrier privilege required for subscription group to set VCN Config"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private enforceCarrierPrivilegeOrProvisioningPackage(Landroid/os/ParcelUuid;Ljava/lang/String;)V
    .registers 4
    .param p1, "subscriptionGroup"    # Landroid/os/ParcelUuid;
    .param p2, "pkg"    # Ljava/lang/String;

    .line 722
    invoke-direct {p0}, Lcom/android/server/VcnManagementService;->enforcePrimaryUser()V

    .line 724
    invoke-direct {p0, p1, p2}, Lcom/android/server/VcnManagementService;->isProvisioningPackageForConfig(Landroid/os/ParcelUuid;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 725
    return-void

    .line 729
    :cond_a
    invoke-direct {p0, p1, p2}, Lcom/android/server/VcnManagementService;->enforceCallingUserAndCarrierPrivilege(Landroid/os/ParcelUuid;Ljava/lang/String;)V

    .line 730
    return-void
.end method

.method private enforceManageTestNetworksForTestMode(Landroid/net/vcn/VcnConfig;)V
    .registers 5
    .param p1, "vcnConfig"    # Landroid/net/vcn/VcnConfig;

    .line 425
    invoke-virtual {p1}, Landroid/net/vcn/VcnConfig;->isTestModeProfile()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 426
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_TEST_NETWORKS"

    const-string v2, "Test-mode require the MANAGE_TEST_NETWORKS permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    :cond_f
    return-void
.end method

.method private enforcePrimaryUser()V
    .registers 4

    .line 377
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mDeps:Lcom/android/server/VcnManagementService$Dependencies;

    invoke-virtual {v0}, Lcom/android/server/VcnManagementService$Dependencies;->getBinderCallingUid()I

    move-result v0

    .line 378
    .local v0, "uid":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1d

    .line 383
    invoke-static {v0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 387
    return-void

    .line 384
    :cond_15
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "VcnManagementService can only be used by callers running as the primary user"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 379
    :cond_1d
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Calling identity was System Server. Was Binder calling identity cleared?"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private garbageCollectAndWriteVcnConfigsLocked()V
    .registers 7

    .line 788
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    .line 790
    .local v0, "subMgr":Landroid/telephony/SubscriptionManager;
    const/4 v1, 0x0

    .line 792
    .local v1, "shouldWrite":Z
    iget-object v2, p0, Lcom/android/server/VcnManagementService;->mConfigs:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 793
    .local v2, "configsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/ParcelUuid;>;"
    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    .line 794
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelUuid;

    .line 796
    .local v3, "subGrp":Landroid/os/ParcelUuid;
    invoke-virtual {v0, v3}, Landroid/telephony/SubscriptionManager;->getSubscriptionsInGroup(Landroid/os/ParcelUuid;)Ljava/util/List;

    move-result-object v4

    .line 797
    .local v4, "subscriptions":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v4, :cond_2d

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_31

    .line 799
    :cond_2d
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 800
    const/4 v1, 0x1

    .line 802
    .end local v3    # "subGrp":Landroid/os/ParcelUuid;
    .end local v4    # "subscriptions":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_31
    goto :goto_15

    .line 804
    :cond_32
    if-eqz v1, :cond_37

    .line 805
    invoke-direct {p0}, Lcom/android/server/VcnManagementService;->writeConfigsToDiskLocked()V

    .line 807
    :cond_37
    return-void
.end method

.method private getSubGroupForNetworkCapabilities(Landroid/net/NetworkCapabilities;)Landroid/os/ParcelUuid;
    .registers 7
    .param p1, "networkCapabilities"    # Landroid/net/NetworkCapabilities;

    .line 946
    const/4 v0, 0x0

    .line 951
    .local v0, "subGrp":Landroid/os/ParcelUuid;
    iget-object v1, p0, Lcom/android/server/VcnManagementService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 952
    :try_start_4
    iget-object v2, p0, Lcom/android/server/VcnManagementService;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 953
    .local v2, "snapshot":Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_36

    .line 957
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getSubscriptionIds()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 959
    .local v3, "subId":I
    if-eqz v0, :cond_30

    invoke-virtual {v2, v3}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->getGroupForSubId(I)Landroid/os/ParcelUuid;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_30

    .line 960
    const-string v4, "Got multiple subscription groups for a single network"

    invoke-direct {p0, v4}, Lcom/android/server/VcnManagementService;->logWtf(Ljava/lang/String;)V

    .line 963
    :cond_30
    invoke-virtual {v2, v3}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->getGroupForSubId(I)Landroid/os/ParcelUuid;

    move-result-object v0

    .line 964
    .end local v3    # "subId":I
    goto :goto_f

    .line 966
    :cond_35
    return-object v0

    .line 953
    .end local v2    # "snapshot":Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;
    :catchall_36
    move-exception v2

    :try_start_37
    monitor-exit v1
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v2
.end method

.method private getSubGroupToSubIdMappings(Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)Ljava/util/Map;
    .registers 6
    .param p1, "snapshot"    # Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;",
            ")",
            "Ljava/util/Map<",
            "Landroid/os/ParcelUuid;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 585
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 586
    .local v0, "subGrpMappings":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/ParcelUuid;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    iget-object v1, p0, Lcom/android/server/VcnManagementService;->mVcns:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    .line 587
    .local v2, "subGrp":Landroid/os/ParcelUuid;
    invoke-virtual {p1, v2}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->getAllSubIdsInGroup(Landroid/os/ParcelUuid;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    .end local v2    # "subGrp":Landroid/os/ParcelUuid;
    goto :goto_f

    .line 589
    :cond_23
    return-object v0
.end method

.method private isActiveSubGroup(Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)Z
    .registers 4
    .param p1, "subGrp"    # Landroid/os/ParcelUuid;
    .param p2, "snapshot"    # Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 434
    if-eqz p1, :cond_e

    if-nez p2, :cond_5

    goto :goto_e

    .line 438
    :cond_5
    invoke-virtual {p2}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->getActiveDataSubscriptionGroup()Landroid/os/ParcelUuid;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 435
    :cond_e
    :goto_e
    const/4 v0, 0x0

    return v0
.end method

.method private isCallbackPermissioned(Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;Landroid/os/ParcelUuid;)Z
    .registers 6
    .param p1, "cbInfo"    # Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;
    .param p2, "subgroup"    # Landroid/os/ParcelUuid;

    .line 1070
    iget-object v0, p1, Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;->mSubGroup:Landroid/os/ParcelUuid;

    invoke-virtual {p2, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 1071
    return v1

    .line 1074
    :cond_a
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    iget-object v2, p1, Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, p2, v2}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->packageHasPermissionsForSubscriptionGroup(Landroid/os/ParcelUuid;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 1075
    return v1

    .line 1078
    :cond_15
    const/4 v0, 0x1

    return v0
.end method

.method private isProvisioningPackageForConfig(Landroid/os/ParcelUuid;Ljava/lang/String;)Z
    .registers 8
    .param p1, "subscriptionGroup"    # Landroid/os/ParcelUuid;
    .param p2, "pkg"    # Ljava/lang/String;

    .line 735
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 737
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/VcnManagementService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_2b

    .line 738
    :try_start_7
    iget-object v3, p0, Lcom/android/server/VcnManagementService;->mConfigs:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/vcn/VcnConfig;

    .line 739
    .local v3, "config":Landroid/net/vcn/VcnConfig;
    if-eqz v3, :cond_21

    invoke-virtual {v3}, Landroid/net/vcn/VcnConfig;->getProvisioningPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 740
    const/4 v4, 0x1

    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_28

    .line 744
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 740
    return v4

    .line 742
    .end local v3    # "config":Landroid/net/vcn/VcnConfig;
    :cond_21
    :try_start_21
    monitor-exit v2
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_28

    .line 744
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 745
    nop

    .line 747
    const/4 v2, 0x0

    return v2

    .line 742
    :catchall_28
    move-exception v3

    :try_start_29
    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    .end local v0    # "identity":J
    .end local p0    # "this":Lcom/android/server/VcnManagementService;
    .end local p1    # "subscriptionGroup":Landroid/os/ParcelUuid;
    .end local p2    # "pkg":Ljava/lang/String;
    :try_start_2a
    throw v3
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_2b

    .line 744
    .restart local v0    # "identity":J
    .restart local p0    # "this":Lcom/android/server/VcnManagementService;
    .restart local p1    # "subscriptionGroup":Landroid/os/ParcelUuid;
    .restart local p2    # "pkg":Ljava/lang/String;
    :catchall_2b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 745
    throw v2
.end method

.method static synthetic lambda$enforceCallingUserAndCarrierPrivilege$1(Ljava/util/List;Landroid/telephony/SubscriptionManager;Landroid/os/ParcelUuid;)V
    .registers 4
    .param p0, "subscriptionInfos"    # Ljava/util/List;
    .param p1, "subMgr"    # Landroid/telephony/SubscriptionManager;
    .param p2, "subscriptionGroup"    # Landroid/os/ParcelUuid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 401
    invoke-virtual {p1, p2}, Landroid/telephony/SubscriptionManager;->getSubscriptionsInGroup(Landroid/os/ParcelUuid;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 402
    return-void
.end method

.method private logDbg(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 1176
    sget-object v0, Lcom/android/server/VcnManagementService;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    return-void
.end method

.method private logDbg(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 1180
    sget-object v0, Lcom/android/server/VcnManagementService;->TAG:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1181
    return-void
.end method

.method private logErr(Ljava/lang/String;)V
    .registers 6
    .param p1, "msg"    # Ljava/lang/String;

    .line 1194
    sget-object v0, Lcom/android/server/VcnManagementService;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    sget-object v1, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ERR] ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1196
    return-void
.end method

.method private logErr(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 7
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 1199
    sget-object v0, Lcom/android/server/VcnManagementService;->TAG:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1200
    sget-object v1, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ERR ] ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1201
    return-void
.end method

.method private logInfo(Ljava/lang/String;)V
    .registers 6
    .param p1, "msg"    # Ljava/lang/String;

    .line 1184
    sget-object v0, Lcom/android/server/VcnManagementService;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    sget-object v1, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[INFO] ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1186
    return-void
.end method

.method private logInfo(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 7
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 1189
    sget-object v0, Lcom/android/server/VcnManagementService;->TAG:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1190
    sget-object v1, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[INFO] ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1191
    return-void
.end method

.method private logVdbg(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 1173
    return-void
.end method

.method private logWtf(Ljava/lang/String;)V
    .registers 6
    .param p1, "msg"    # Ljava/lang/String;

    .line 1204
    sget-object v0, Lcom/android/server/VcnManagementService;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    sget-object v1, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[WTF] ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1206
    return-void
.end method

.method private logWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 7
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 1209
    sget-object v0, Lcom/android/server/VcnManagementService;->TAG:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1210
    sget-object v1, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[WTF ] ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1211
    return-void
.end method

.method private notifyAllPermissionedStatusCallbacksLocked(Landroid/os/ParcelUuid;I)V
    .registers 6
    .param p1, "subGroup"    # Landroid/os/ParcelUuid;
    .param p2, "statusCode"    # I

    .line 626
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mRegisteredStatusCallbacks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;

    .line 627
    .local v1, "cbInfo":Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;
    invoke-direct {p0, v1, p1}, Lcom/android/server/VcnManagementService;->isCallbackPermissioned(Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;Landroid/os/ParcelUuid;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 628
    new-instance v2, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1, p2}, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/VcnManagementService;Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;I)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 636
    .end local v1    # "cbInfo":Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;
    :cond_24
    goto :goto_a

    .line 637
    :cond_25
    return-void
.end method

.method private notifyAllPolicyListenersLocked()V
    .registers 4

    .line 612
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mRegisteredPolicyListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VcnManagementService$PolicyListenerBinderDeath;

    .line 613
    .local v1, "policyListener":Lcom/android/server/VcnManagementService$PolicyListenerBinderDeath;
    new-instance v2, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda13;

    invoke-direct {v2, p0, v1}, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/VcnManagementService;Lcom/android/server/VcnManagementService$PolicyListenerBinderDeath;)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 620
    .end local v1    # "policyListener":Lcom/android/server/VcnManagementService$PolicyListenerBinderDeath;
    goto :goto_a

    .line 621
    :cond_1f
    return-void
.end method

.method private startOrUpdateVcnLocked(Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;)V
    .registers 5
    .param p1, "subscriptionGroup"    # Landroid/os/ParcelUuid;
    .param p2, "config"    # Landroid/net/vcn/VcnConfig;

    .line 671
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting or updating VCN config for subGrp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/VcnManagementService;->logDbg(Ljava/lang/String;)V

    .line 673
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mVcns:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 674
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mVcns:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vcn/Vcn;

    .line 675
    .local v0, "vcn":Lcom/android/server/vcn/Vcn;
    invoke-virtual {v0, p2}, Lcom/android/server/vcn/Vcn;->updateConfig(Landroid/net/vcn/VcnConfig;)V

    .line 676
    .end local v0    # "vcn":Lcom/android/server/vcn/Vcn;
    goto :goto_35

    .line 678
    :cond_2a
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    invoke-direct {p0, p1, v0}, Lcom/android/server/VcnManagementService;->isActiveSubGroup(Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 679
    invoke-direct {p0, p1, p2}, Lcom/android/server/VcnManagementService;->startVcnLocked(Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;)V

    .line 682
    :cond_35
    :goto_35
    return-void
.end method

.method private startVcnLocked(Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;)V
    .registers 11
    .param p1, "subscriptionGroup"    # Landroid/os/ParcelUuid;
    .param p2, "config"    # Landroid/net/vcn/VcnConfig;

    .line 641
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting VCN config for subGrp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/VcnManagementService;->logInfo(Ljava/lang/String;)V

    .line 644
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mVcns:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_38

    .line 646
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mVcns:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .line 647
    .local v1, "uuidToTeardown":Landroid/os/ParcelUuid;
    invoke-direct {p0, v1}, Lcom/android/server/VcnManagementService;->stopVcnLocked(Landroid/os/ParcelUuid;)V

    .line 648
    .end local v1    # "uuidToTeardown":Landroid/os/ParcelUuid;
    goto :goto_28

    .line 651
    :cond_38
    new-instance v7, Lcom/android/server/VcnManagementService$VcnCallbackImpl;

    const/4 v0, 0x0

    invoke-direct {v7, p0, p1, v0}, Lcom/android/server/VcnManagementService$VcnCallbackImpl;-><init>(Lcom/android/server/VcnManagementService;Landroid/os/ParcelUuid;Lcom/android/server/VcnManagementService$VcnCallbackImpl-IA;)V

    .line 653
    .local v7, "vcnCallback":Lcom/android/server/VcnManagementService$VcnCallbackImpl;
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mDeps:Lcom/android/server/VcnManagementService$Dependencies;

    iget-object v1, p0, Lcom/android/server/VcnManagementService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/VcnManagementService;->mLooper:Landroid/os/Looper;

    iget-object v3, p0, Lcom/android/server/VcnManagementService;->mNetworkProvider:Lcom/android/server/vcn/VcnNetworkProvider;

    .line 655
    invoke-virtual {p2}, Landroid/net/vcn/VcnConfig;->isTestModeProfile()Z

    move-result v4

    .line 654
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/VcnManagementService$Dependencies;->newVcnContext(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/vcn/VcnNetworkProvider;Z)Lcom/android/server/vcn/VcnContext;

    move-result-object v0

    .line 656
    .local v0, "vcnContext":Lcom/android/server/vcn/VcnContext;
    iget-object v2, p0, Lcom/android/server/VcnManagementService;->mDeps:Lcom/android/server/VcnManagementService$Dependencies;

    iget-object v6, p0, Lcom/android/server/VcnManagementService;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 657
    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/VcnManagementService$Dependencies;->newVcn(Lcom/android/server/vcn/VcnContext;Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/VcnManagementService$VcnCallback;)Lcom/android/server/vcn/Vcn;

    move-result-object v1

    .line 658
    .local v1, "newInstance":Lcom/android/server/vcn/Vcn;
    iget-object v2, p0, Lcom/android/server/VcnManagementService;->mVcns:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    invoke-direct {p0}, Lcom/android/server/VcnManagementService;->notifyAllPolicyListenersLocked()V

    .line 665
    const/4 v2, 0x2

    invoke-direct {p0, p1, v2}, Lcom/android/server/VcnManagementService;->notifyAllPermissionedStatusCallbacksLocked(Landroid/os/ParcelUuid;I)V

    .line 666
    return-void
.end method

.method private stopAndClearVcnConfigInternalLocked(Landroid/os/ParcelUuid;)V
    .registers 4
    .param p1, "subscriptionGroup"    # Landroid/os/ParcelUuid;

    .line 774
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mConfigs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mVcns:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 777
    .local v0, "vcnExists":Z
    invoke-direct {p0, p1}, Lcom/android/server/VcnManagementService;->stopVcnLocked(Landroid/os/ParcelUuid;)V

    .line 779
    if-eqz v0, :cond_14

    .line 782
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/server/VcnManagementService;->notifyAllPermissionedStatusCallbacksLocked(Landroid/os/ParcelUuid;I)V

    .line 785
    :cond_14
    return-void
.end method

.method private stopVcnLocked(Landroid/os/ParcelUuid;)V
    .registers 4
    .param p1, "uuidToTeardown"    # Landroid/os/ParcelUuid;

    .line 594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stopping VCN config for subGrp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/VcnManagementService;->logInfo(Ljava/lang/String;)V

    .line 597
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mVcns:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vcn/Vcn;

    .line 598
    .local v0, "vcnToTeardown":Lcom/android/server/vcn/Vcn;
    if-nez v0, :cond_21

    .line 599
    return-void

    .line 602
    :cond_21
    invoke-virtual {v0}, Lcom/android/server/vcn/Vcn;->teardownAsynchronously()V

    .line 603
    iget-object v1, p0, Lcom/android/server/VcnManagementService;->mVcns:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    invoke-direct {p0}, Lcom/android/server/VcnManagementService;->notifyAllPolicyListenersLocked()V

    .line 608
    return-void
.end method

.method private writeConfigsToDiskLocked()V
    .registers 5

    .line 841
    :try_start_0
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mConfigs:Ljava/util/Map;

    new-instance v1, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda6;-><init>()V

    new-instance v2, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda7;

    invoke-direct {v2}, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda7;-><init>()V

    .line 842
    invoke-static {v0, v1, v2}, Lcom/android/server/vcn/util/PersistableBundleUtils;->fromMap(Ljava/util/Map;Lcom/android/server/vcn/util/PersistableBundleUtils$Serializer;Lcom/android/server/vcn/util/PersistableBundleUtils$Serializer;)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 846
    .local v0, "bundle":Landroid/os/PersistableBundle;
    iget-object v1, p0, Lcom/android/server/VcnManagementService;->mConfigDiskRwHelper:Lcom/android/server/vcn/util/PersistableBundleUtils$LockingReadWriteHelper;

    invoke-virtual {v1, v0}, Lcom/android/server/vcn/util/PersistableBundleUtils$LockingReadWriteHelper;->writeToDisk(Landroid/os/PersistableBundle;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_15} :catch_17

    .line 850
    .end local v0    # "bundle":Landroid/os/PersistableBundle;
    nop

    .line 851
    return-void

    .line 847
    :catch_17
    move-exception v0

    .line 848
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "Failed to save configs to disk"

    invoke-direct {p0, v1, v0}, Lcom/android/server/VcnManagementService;->logErr(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 849
    new-instance v1, Landroid/os/ServiceSpecificException;

    const/4 v2, 0x0

    const-string v3, "Failed to save configs"

    invoke-direct {v1, v2, v3}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public addVcnUnderlyingNetworkPolicyListener(Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;

    .line 897
    const-string/jumbo v0, "listener was null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 899
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.NETWORK_FACTORY"

    const-string v2, "android.permission.MANAGE_TEST_NETWORKS"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/net/module/util/PermissionUtils;->enforceAnyPermissionOf(Landroid/content/Context;[Ljava/lang/String;)V

    .line 904
    new-instance v0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/VcnManagementService;Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 918
    return-void
.end method

.method public clearVcnConfig(Landroid/os/ParcelUuid;Ljava/lang/String;)V
    .registers 5
    .param p1, "subscriptionGroup"    # Landroid/os/ParcelUuid;
    .param p2, "opPkgName"    # Ljava/lang/String;

    .line 757
    const-string/jumbo v0, "subscriptionGroup was null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 758
    const-string/jumbo v0, "opPkgName was null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 759
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VCN config cleared for subGrp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/VcnManagementService;->logInfo(Ljava/lang/String;)V

    .line 761
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iget-object v1, p0, Lcom/android/server/VcnManagementService;->mDeps:Lcom/android/server/VcnManagementService$Dependencies;

    .line 762
    invoke-virtual {v1}, Lcom/android/server/VcnManagementService$Dependencies;->getBinderCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 763
    invoke-direct {p0, p1, p2}, Lcom/android/server/VcnManagementService;->enforceCarrierPrivilegeOrProvisioningPackage(Landroid/os/ParcelUuid;Ljava/lang/String;)V

    .line 765
    new-instance v0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p1}, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/VcnManagementService;Landroid/os/ParcelUuid;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 771
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1220
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/server/VcnManagementService;->TAG:Ljava/lang/String;

    const-string v2, "android.permission.DUMP"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1222
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v1, "| "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1225
    .local v0, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    iget-object v1, p0, Lcom/android/server/VcnManagementService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/VcnManagementService;Lcom/android/internal/util/IndentingPrintWriter;)V

    sget-wide v3, Lcom/android/server/VcnManagementService;->DUMP_TIMEOUT_MILLIS:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 1260
    return-void
.end method

.method public getAllStatusCallbacks()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;",
            ">;"
        }
    .end annotation

    .line 872
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 873
    :try_start_3
    iget-object v1, p0, Lcom/android/server/VcnManagementService;->mRegisteredStatusCallbacks:Ljava/util/Map;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 874
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public getAllVcns()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/os/ParcelUuid;",
            "Lcom/android/server/vcn/Vcn;",
            ">;"
        }
    .end annotation

    .line 864
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 865
    :try_start_3
    iget-object v1, p0, Lcom/android/server/VcnManagementService;->mVcns:Ljava/util/Map;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 866
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method getConfigs()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/os/ParcelUuid;",
            "Landroid/net/vcn/VcnConfig;",
            ">;"
        }
    .end annotation

    .line 856
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 857
    :try_start_3
    iget-object v1, p0, Lcom/android/server/VcnManagementService;->mConfigs:Ljava/util/Map;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 858
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public getConfiguredSubscriptionGroups(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .param p1, "opPkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation

    .line 819
    const-string/jumbo v0, "opPkgName was null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 821
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iget-object v1, p0, Lcom/android/server/VcnManagementService;->mDeps:Lcom/android/server/VcnManagementService$Dependencies;

    .line 822
    invoke-virtual {v1}, Lcom/android/server/VcnManagementService$Dependencies;->getBinderCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 823
    invoke-direct {p0}, Lcom/android/server/VcnManagementService;->enforcePrimaryUser()V

    .line 825
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 826
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    iget-object v1, p0, Lcom/android/server/VcnManagementService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 827
    :try_start_24
    iget-object v2, p0, Lcom/android/server/VcnManagementService;->mConfigs:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelUuid;

    .line 828
    .local v3, "subGrp":Landroid/os/ParcelUuid;
    iget-object v4, p0, Lcom/android/server/VcnManagementService;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    invoke-virtual {v4, v3, p1}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->packageHasPermissionsForSubscriptionGroup(Landroid/os/ParcelUuid;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_48

    .line 829
    invoke-direct {p0, v3, p1}, Lcom/android/server/VcnManagementService;->isProvisioningPackageForConfig(Landroid/os/ParcelUuid;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 830
    :cond_48
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 832
    .end local v3    # "subGrp":Landroid/os/ParcelUuid;
    :cond_4b
    goto :goto_2e

    .line 833
    :cond_4c
    monitor-exit v1

    .line 835
    return-object v0

    .line 833
    :catchall_4e
    move-exception v2

    monitor-exit v1
    :try_end_50
    .catchall {:try_start_24 .. :try_end_50} :catchall_4e

    throw v2
.end method

.method public getUnderlyingNetworkPolicy(Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Landroid/net/vcn/VcnUnderlyingNetworkPolicy;
    .registers 6
    .param p1, "networkCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p2, "linkProperties"    # Landroid/net/LinkProperties;

    .line 978
    const-string/jumbo v0, "networkCapabilities was null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 979
    const-string/jumbo v0, "linkProperties was null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 981
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.NETWORK_FACTORY"

    const-string v2, "android.permission.MANAGE_TEST_NETWORKS"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/net/module/util/PermissionUtils;->enforceAnyPermissionOf(Landroid/content/Context;[Ljava/lang/String;)V

    .line 986
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mContext:Landroid/content/Context;

    .line 987
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_23

    const/4 v0, 0x1

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    .line 990
    .local v0, "isUsingManageTestNetworks":Z
    :goto_24
    if-eqz v0, :cond_36

    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_2e

    goto :goto_36

    .line 991
    :cond_2e
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "NetworkCapabilities must be for Test Network if using permission MANAGE_TEST_NETWORKS"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 996
    :cond_36
    :goto_36
    new-instance v1, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/VcnManagementService;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/vcn/VcnUnderlyingNetworkPolicy;

    return-object v1
.end method

.method synthetic lambda$addVcnUnderlyingNetworkPolicyListener$6$com-android-server-VcnManagementService(Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;)V
    .registers 6
    .param p1, "listener"    # Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 905
    new-instance v0, Lcom/android/server/VcnManagementService$PolicyListenerBinderDeath;

    invoke-direct {v0, p0, p1}, Lcom/android/server/VcnManagementService$PolicyListenerBinderDeath;-><init>(Lcom/android/server/VcnManagementService;Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;)V

    .line 907
    .local v0, "listenerBinderDeath":Lcom/android/server/VcnManagementService$PolicyListenerBinderDeath;
    iget-object v1, p0, Lcom/android/server/VcnManagementService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 908
    :try_start_8
    iget-object v2, p0, Lcom/android/server/VcnManagementService;->mRegisteredPolicyListeners:Ljava/util/Map;

    invoke-interface {p1}, Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_20

    .line 911
    :try_start_11
    invoke-interface {p1}, Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_19} :catch_1a
    .catchall {:try_start_11 .. :try_end_19} :catchall_20

    .line 915
    goto :goto_1e

    .line 912
    :catch_1a
    move-exception v2

    .line 914
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1b
    invoke-virtual {v0}, Lcom/android/server/VcnManagementService$PolicyListenerBinderDeath;->binderDied()V

    .line 916
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1e
    monitor-exit v1

    .line 917
    return-void

    .line 916
    :catchall_20
    move-exception v2

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_20

    throw v2
.end method

.method synthetic lambda$clearVcnConfig$5$com-android-server-VcnManagementService(Landroid/os/ParcelUuid;)V
    .registers 4
    .param p1, "subscriptionGroup"    # Landroid/os/ParcelUuid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 766
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 767
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/VcnManagementService;->stopAndClearVcnConfigInternalLocked(Landroid/os/ParcelUuid;)V

    .line 768
    invoke-direct {p0}, Lcom/android/server/VcnManagementService;->writeConfigsToDiskLocked()V

    .line 769
    monitor-exit v0

    .line 770
    return-void

    .line 769
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method synthetic lambda$dump$9$com-android-server-VcnManagementService(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 7
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 1226
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mNetworkProvider:Lcom/android/server/vcn/VcnNetworkProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/vcn/VcnNetworkProvider;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1227
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1229
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mTrackingNetworkCallback:Lcom/android/server/VcnManagementService$TrackingNetworkCallback;

    invoke-virtual {v0, p1}, Lcom/android/server/VcnManagementService$TrackingNetworkCallback;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1230
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1232
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1233
    :try_start_13
    iget-object v1, p0, Lcom/android/server/VcnManagementService;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    invoke-virtual {v1, p1}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1234
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1236
    const-string/jumbo v1, "mConfigs:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1237
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1238
    iget-object v1, p0, Lcom/android/server/VcnManagementService;->mConfigs:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_63

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1239
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1240
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/vcn/VcnConfig;

    invoke-virtual {v4}, Landroid/net/vcn/VcnConfig;->getProvisioningPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1239
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1241
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;>;"
    goto :goto_2e

    .line 1242
    :cond_63
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1243
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1245
    const-string/jumbo v1, "mVcns:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1246
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1247
    iget-object v1, p0, Lcom/android/server/VcnManagementService;->mVcns:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/vcn/Vcn;

    .line 1248
    .local v2, "vcn":Lcom/android/server/vcn/Vcn;
    invoke-virtual {v2, p1}, Lcom/android/server/vcn/Vcn;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1249
    .end local v2    # "vcn":Lcom/android/server/vcn/Vcn;
    goto :goto_7c

    .line 1250
    :cond_8c
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1251
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1252
    monitor-exit v0
    :try_end_93
    .catchall {:try_start_13 .. :try_end_93} :catchall_a7

    .line 1254
    const-string v0, "Local log:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1255
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1256
    sget-object v0, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->dump(Ljava/io/PrintWriter;)V

    .line 1257
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1258
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1259
    return-void

    .line 1252
    :catchall_a7
    move-exception v1

    :try_start_a8
    monitor-exit v0
    :try_end_a9
    .catchall {:try_start_a8 .. :try_end_a9} :catchall_a7

    throw v1
.end method

.method synthetic lambda$getUnderlyingNetworkPolicy$8$com-android-server-VcnManagementService(Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Landroid/net/vcn/VcnUnderlyingNetworkPolicy;
    .registers 12
    .param p1, "networkCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p2, "linkProperties"    # Landroid/net/LinkProperties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 999
    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0, p1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    .line 1001
    .local v0, "ncCopy":Landroid/net/NetworkCapabilities;
    invoke-direct {p0, v0}, Lcom/android/server/VcnManagementService;->getSubGroupForNetworkCapabilities(Landroid/net/NetworkCapabilities;)Landroid/os/ParcelUuid;

    move-result-object v1

    .line 1002
    .local v1, "subGrp":Landroid/os/ParcelUuid;
    const/4 v2, 0x0

    .line 1003
    .local v2, "isVcnManagedNetwork":Z
    const/4 v3, 0x0

    .line 1004
    .local v3, "isRestrictedCarrierWifi":Z
    iget-object v4, p0, Lcom/android/server/VcnManagementService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1005
    :try_start_e
    iget-object v5, p0, Lcom/android/server/VcnManagementService;->mVcns:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/vcn/Vcn;

    .line 1006
    .local v5, "vcn":Lcom/android/server/vcn/Vcn;
    if-eqz v5, :cond_28

    .line 1007
    invoke-virtual {v5}, Lcom/android/server/vcn/Vcn;->getStatus()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_20

    .line 1008
    const/4 v2, 0x1

    .line 1011
    :cond_20
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v6

    if-eqz v6, :cond_28

    .line 1013
    const/4 v3, 0x1

    .line 1016
    .end local v5    # "vcn":Lcom/android/server/vcn/Vcn;
    :cond_28
    monitor-exit v4
    :try_end_29
    .catchall {:try_start_e .. :try_end_29} :catchall_7b

    .line 1018
    new-instance v4, Landroid/net/NetworkCapabilities$Builder;

    invoke-direct {v4, v0}, Landroid/net/NetworkCapabilities$Builder;-><init>(Landroid/net/NetworkCapabilities;)V

    .line 1020
    .local v4, "ncBuilder":Landroid/net/NetworkCapabilities$Builder;
    const/16 v5, 0x1c

    if-eqz v2, :cond_36

    .line 1021
    invoke-virtual {v4, v5}, Landroid/net/NetworkCapabilities$Builder;->removeCapability(I)Landroid/net/NetworkCapabilities$Builder;

    goto :goto_39

    .line 1024
    :cond_36
    invoke-virtual {v4, v5}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 1027
    :goto_39
    if-eqz v3, :cond_40

    .line 1028
    const/16 v5, 0xd

    invoke-virtual {v4, v5}, Landroid/net/NetworkCapabilities$Builder;->removeCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 1032
    :cond_40
    invoke-virtual {v4}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object v5

    .line 1033
    .local v5, "result":Landroid/net/NetworkCapabilities;
    new-instance v6, Landroid/net/vcn/VcnUnderlyingNetworkPolicy;

    iget-object v7, p0, Lcom/android/server/VcnManagementService;->mTrackingNetworkCallback:Lcom/android/server/VcnManagementService$TrackingNetworkCallback;

    .line 1034
    invoke-static {v7, v5}, Lcom/android/server/VcnManagementService$TrackingNetworkCallback;->-$$Nest$mrequiresRestartForCarrierWifi(Lcom/android/server/VcnManagementService$TrackingNetworkCallback;Landroid/net/NetworkCapabilities;)Z

    move-result v7

    invoke-direct {v6, v7, v5}, Landroid/net/vcn/VcnUnderlyingNetworkPolicy;-><init>(ZLandroid/net/NetworkCapabilities;)V

    .line 1036
    .local v6, "policy":Landroid/net/vcn/VcnUnderlyingNetworkPolicy;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getUnderlyingNetworkPolicy() called for caps: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; and lp: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; result = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/VcnManagementService;->logVdbg(Ljava/lang/String;)V

    .line 1038
    return-object v6

    .line 1016
    .end local v4    # "ncBuilder":Landroid/net/NetworkCapabilities$Builder;
    .end local v5    # "result":Landroid/net/NetworkCapabilities;
    .end local v6    # "policy":Landroid/net/vcn/VcnUnderlyingNetworkPolicy;
    :catchall_7b
    move-exception v5

    :try_start_7c
    monitor-exit v4
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_7b

    throw v5
.end method

.method synthetic lambda$new$0$com-android-server-VcnManagementService()V
    .registers 9

    .line 243
    const/4 v0, 0x0

    .line 245
    .local v0, "configBundle":Landroid/os/PersistableBundle;
    :try_start_1
    iget-object v1, p0, Lcom/android/server/VcnManagementService;->mConfigDiskRwHelper:Lcom/android/server/vcn/util/PersistableBundleUtils$LockingReadWriteHelper;

    invoke-virtual {v1}, Lcom/android/server/vcn/util/PersistableBundleUtils$LockingReadWriteHelper;->readFromDisk()Landroid/os/PersistableBundle;

    move-result-object v1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_7} :catch_9

    move-object v0, v1

    .line 256
    goto :goto_17

    .line 246
    :catch_9
    move-exception v1

    .line 247
    .local v1, "e1":Ljava/io/IOException;
    const-string v2, "Failed to read configs from disk; retrying"

    invoke-direct {p0, v2, v1}, Lcom/android/server/VcnManagementService;->logErr(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 251
    :try_start_f
    iget-object v2, p0, Lcom/android/server/VcnManagementService;->mConfigDiskRwHelper:Lcom/android/server/vcn/util/PersistableBundleUtils$LockingReadWriteHelper;

    invoke-virtual {v2}, Lcom/android/server/vcn/util/PersistableBundleUtils$LockingReadWriteHelper;->readFromDisk()Landroid/os/PersistableBundle;

    move-result-object v2
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_15} :catch_69

    move-object v0, v2

    .line 255
    nop

    .line 258
    .end local v1    # "e1":Ljava/io/IOException;
    :goto_17
    if-eqz v0, :cond_68

    .line 259
    new-instance v1, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda2;-><init>()V

    new-instance v2, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda3;-><init>()V

    .line 260
    invoke-static {v0, v1, v2}, Lcom/android/server/vcn/util/PersistableBundleUtils;->toMap(Landroid/os/PersistableBundle;Lcom/android/server/vcn/util/PersistableBundleUtils$Deserializer;Lcom/android/server/vcn/util/PersistableBundleUtils$Deserializer;)Ljava/util/LinkedHashMap;

    move-result-object v1

    .line 265
    .local v1, "configs":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;>;"
    iget-object v2, p0, Lcom/android/server/VcnManagementService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 266
    :try_start_2a
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_32
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 269
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;>;"
    iget-object v5, p0, Lcom/android/server/VcnManagementService;->mConfigs:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5b

    .line 270
    iget-object v5, p0, Lcom/android/server/VcnManagementService;->mConfigs:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/ParcelUuid;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/vcn/VcnConfig;

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;>;"
    :cond_5b
    goto :goto_32

    .line 276
    :cond_5c
    iget-object v3, p0, Lcom/android/server/VcnManagementService;->mTelephonySubscriptionTrackerCb:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionTrackerCallback;

    iget-object v4, p0, Lcom/android/server/VcnManagementService;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    invoke-interface {v3, v4}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionTrackerCallback;->onNewSnapshot(Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)V

    .line 277
    monitor-exit v2

    goto :goto_68

    :catchall_65
    move-exception v3

    monitor-exit v2
    :try_end_67
    .catchall {:try_start_2a .. :try_end_67} :catchall_65

    throw v3

    .line 279
    .end local v1    # "configs":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;>;"
    :cond_68
    :goto_68
    return-void

    .line 252
    .local v1, "e1":Ljava/io/IOException;
    :catch_69
    move-exception v2

    .line 253
    .local v2, "e2":Ljava/io/IOException;
    const-string v3, "Failed to read configs from disk"

    invoke-direct {p0, v3, v2}, Lcom/android/server/VcnManagementService;->logWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 254
    return-void
.end method

.method synthetic lambda$notifyAllPermissionedStatusCallbacksLocked$3$com-android-server-VcnManagementService(Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;I)V
    .registers 5
    .param p1, "cbInfo"    # Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;
    .param p2, "statusCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 630
    :try_start_0
    iget-object v0, p1, Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;->mCallback:Landroid/net/vcn/IVcnStatusCallback;

    invoke-interface {v0, p2}, Landroid/net/vcn/IVcnStatusCallback;->onVcnStatusChanged(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 633
    goto :goto_c

    .line 631
    :catch_6
    move-exception v0

    .line 632
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "VcnStatusCallback threw on VCN status change"

    invoke-direct {p0, v1, v0}, Lcom/android/server/VcnManagementService;->logDbg(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 634
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method synthetic lambda$notifyAllPolicyListenersLocked$2$com-android-server-VcnManagementService(Lcom/android/server/VcnManagementService$PolicyListenerBinderDeath;)V
    .registers 4
    .param p1, "policyListener"    # Lcom/android/server/VcnManagementService$PolicyListenerBinderDeath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 615
    :try_start_0
    invoke-static {p1}, Lcom/android/server/VcnManagementService$PolicyListenerBinderDeath;->-$$Nest$fgetmListener(Lcom/android/server/VcnManagementService$PolicyListenerBinderDeath;)Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;->onPolicyChanged()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 618
    goto :goto_e

    .line 616
    :catch_8
    move-exception v0

    .line 617
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "VcnStatusCallback threw on VCN status change"

    invoke-direct {p0, v1, v0}, Lcom/android/server/VcnManagementService;->logDbg(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 619
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method synthetic lambda$removeVcnUnderlyingNetworkPolicyListener$7$com-android-server-VcnManagementService(Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;)V
    .registers 6
    .param p1, "listener"    # Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 933
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 934
    :try_start_3
    iget-object v1, p0, Lcom/android/server/VcnManagementService;->mRegisteredPolicyListeners:Ljava/util/Map;

    .line 935
    invoke-interface {p1}, Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VcnManagementService$PolicyListenerBinderDeath;

    .line 937
    .local v1, "listenerBinderDeath":Lcom/android/server/VcnManagementService$PolicyListenerBinderDeath;
    if-eqz v1, :cond_19

    .line 938
    invoke-interface {p1}, Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 940
    .end local v1    # "listenerBinderDeath":Lcom/android/server/VcnManagementService$PolicyListenerBinderDeath;
    :cond_19
    monitor-exit v0

    .line 941
    return-void

    .line 940
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method synthetic lambda$setVcnConfig$4$com-android-server-VcnManagementService(Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;)V
    .registers 5
    .param p1, "subscriptionGroup"    # Landroid/os/ParcelUuid;
    .param p2, "config"    # Landroid/net/vcn/VcnConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 708
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 709
    :try_start_3
    iget-object v1, p0, Lcom/android/server/VcnManagementService;->mConfigs:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    invoke-direct {p0, p1, p2}, Lcom/android/server/VcnManagementService;->startOrUpdateVcnLocked(Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;)V

    .line 712
    invoke-direct {p0}, Lcom/android/server/VcnManagementService;->writeConfigsToDiskLocked()V

    .line 713
    monitor-exit v0

    .line 714
    return-void

    .line 713
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public registerVcnStatusCallback(Landroid/os/ParcelUuid;Landroid/net/vcn/IVcnStatusCallback;Ljava/lang/String;)V
    .registers 16
    .param p1, "subGroup"    # Landroid/os/ParcelUuid;
    .param p2, "callback"    # Landroid/net/vcn/IVcnStatusCallback;
    .param p3, "opPkgName"    # Ljava/lang/String;

    .line 1087
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mDeps:Lcom/android/server/VcnManagementService$Dependencies;

    invoke-virtual {v0}, Lcom/android/server/VcnManagementService$Dependencies;->getBinderCallingUid()I

    move-result v0

    .line 1088
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 1090
    .local v8, "identity":J
    :try_start_a
    const-string/jumbo v1, "subGroup must not be null"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1091
    const-string v1, "callback must not be null"

    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1092
    const-string/jumbo v1, "opPkgName must not be null"

    invoke-static {p3, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1094
    iget-object v1, p0, Lcom/android/server/VcnManagementService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    invoke-virtual {v1, v0, p3}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 1096
    invoke-interface {p2}, Landroid/net/vcn/IVcnStatusCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    move-object v10, v1

    .line 1097
    .local v10, "cbBinder":Landroid/os/IBinder;
    new-instance v11, Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;

    const/4 v7, 0x0

    move-object v1, v11

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;-><init>(Lcom/android/server/VcnManagementService;Landroid/os/ParcelUuid;Landroid/net/vcn/IVcnStatusCallback;Ljava/lang/String;ILcom/android/server/VcnManagementService$VcnStatusCallbackInfo-IA;)V
    :try_end_39
    .catchall {:try_start_a .. :try_end_39} :catchall_b7

    move-object v1, v11

    .line 1101
    .local v1, "cbInfo":Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;
    const/4 v2, 0x0

    :try_start_3b
    invoke-interface {v10, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_3e} :catch_b2
    .catchall {:try_start_3b .. :try_end_3e} :catchall_b7

    .line 1105
    nop

    .line 1107
    :try_start_3f
    iget-object v3, p0, Lcom/android/server/VcnManagementService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_b7

    .line 1108
    :try_start_42
    iget-object v4, p0, Lcom/android/server/VcnManagementService;->mRegisteredStatusCallbacks:Ljava/util/Map;

    invoke-interface {v4, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a7

    .line 1113
    iget-object v4, p0, Lcom/android/server/VcnManagementService;->mRegisteredStatusCallbacks:Ljava/util/Map;

    invoke-interface {v4, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1116
    iget-object v4, p0, Lcom/android/server/VcnManagementService;->mConfigs:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/vcn/VcnConfig;

    .line 1117
    .local v4, "vcnConfig":Landroid/net/vcn/VcnConfig;
    iget-object v5, p0, Lcom/android/server/VcnManagementService;->mVcns:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/vcn/Vcn;

    .line 1119
    .local v5, "vcn":Lcom/android/server/vcn/Vcn;
    if-nez v5, :cond_62

    goto :goto_66

    :cond_62
    invoke-virtual {v5}, Lcom/android/server/vcn/Vcn;->getStatus()I

    move-result v2

    .line 1121
    .local v2, "vcnStatus":I
    :goto_66
    if-eqz v4, :cond_94

    invoke-direct {p0, v1, p1}, Lcom/android/server/VcnManagementService;->isCallbackPermissioned(Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;Landroid/os/ParcelUuid;)Z

    move-result v6

    if-nez v6, :cond_6f

    goto :goto_94

    .line 1123
    :cond_6f
    if-nez v5, :cond_73

    .line 1124
    const/4 v6, 0x1

    .local v6, "resultStatus":I
    goto :goto_95

    .line 1125
    .end local v6    # "resultStatus":I
    :cond_73
    const/4 v6, 0x2

    if-eq v2, v6, :cond_92

    const/4 v6, 0x3

    if-ne v2, v6, :cond_7a

    goto :goto_92

    .line 1129
    :cond_7a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown VCN status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/VcnManagementService;->logWtf(Ljava/lang/String;)V
    :try_end_90
    .catchall {:try_start_42 .. :try_end_90} :catchall_af

    .line 1130
    const/4 v6, 0x0

    .restart local v6    # "resultStatus":I
    goto :goto_95

    .line 1127
    .end local v6    # "resultStatus":I
    :cond_92
    :goto_92
    move v6, v2

    .restart local v6    # "resultStatus":I
    goto :goto_95

    .line 1122
    .end local v6    # "resultStatus":I
    :cond_94
    :goto_94
    const/4 v6, 0x0

    .line 1134
    .restart local v6    # "resultStatus":I
    :goto_95
    :try_start_95
    iget-object v7, v1, Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;->mCallback:Landroid/net/vcn/IVcnStatusCallback;

    invoke-interface {v7, v6}, Landroid/net/vcn/IVcnStatusCallback;->onVcnStatusChanged(I)V
    :try_end_9a
    .catch Landroid/os/RemoteException; {:try_start_95 .. :try_end_9a} :catch_9b
    .catchall {:try_start_95 .. :try_end_9a} :catchall_af

    .line 1137
    goto :goto_a1

    .line 1135
    :catch_9b
    move-exception v7

    .line 1136
    .local v7, "e":Landroid/os/RemoteException;
    :try_start_9c
    const-string v11, "VcnStatusCallback threw on VCN status change"

    invoke-direct {p0, v11, v7}, Lcom/android/server/VcnManagementService;->logDbg(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1138
    .end local v2    # "vcnStatus":I
    .end local v4    # "vcnConfig":Landroid/net/vcn/VcnConfig;
    .end local v5    # "vcn":Lcom/android/server/vcn/Vcn;
    .end local v6    # "resultStatus":I
    .end local v7    # "e":Landroid/os/RemoteException;
    :goto_a1
    monitor-exit v3
    :try_end_a2
    .catchall {:try_start_9c .. :try_end_a2} :catchall_af

    .line 1140
    .end local v1    # "cbInfo":Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;
    .end local v10    # "cbBinder":Landroid/os/IBinder;
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1141
    nop

    .line 1142
    return-void

    .line 1109
    .restart local v1    # "cbInfo":Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;
    .restart local v10    # "cbBinder":Landroid/os/IBinder;
    :cond_a7
    :try_start_a7
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "Attempting to register a callback that is already in use"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "callingUid":I
    .end local v1    # "cbInfo":Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;
    .end local v8    # "identity":J
    .end local v10    # "cbBinder":Landroid/os/IBinder;
    .end local p0    # "this":Lcom/android/server/VcnManagementService;
    .end local p1    # "subGroup":Landroid/os/ParcelUuid;
    .end local p2    # "callback":Landroid/net/vcn/IVcnStatusCallback;
    .end local p3    # "opPkgName":Ljava/lang/String;
    throw v2

    .line 1138
    .restart local v0    # "callingUid":I
    .restart local v1    # "cbInfo":Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;
    .restart local v8    # "identity":J
    .restart local v10    # "cbBinder":Landroid/os/IBinder;
    .restart local p0    # "this":Lcom/android/server/VcnManagementService;
    .restart local p1    # "subGroup":Landroid/os/ParcelUuid;
    .restart local p2    # "callback":Landroid/net/vcn/IVcnStatusCallback;
    .restart local p3    # "opPkgName":Ljava/lang/String;
    :catchall_af
    move-exception v2

    monitor-exit v3
    :try_end_b1
    .catchall {:try_start_a7 .. :try_end_b1} :catchall_af

    .end local v0    # "callingUid":I
    .end local v8    # "identity":J
    .end local p0    # "this":Lcom/android/server/VcnManagementService;
    .end local p1    # "subGroup":Landroid/os/ParcelUuid;
    .end local p2    # "callback":Landroid/net/vcn/IVcnStatusCallback;
    .end local p3    # "opPkgName":Ljava/lang/String;
    :try_start_b1
    throw v2
    :try_end_b2
    .catchall {:try_start_b1 .. :try_end_b2} :catchall_b7

    .line 1102
    .restart local v0    # "callingUid":I
    .restart local v8    # "identity":J
    .restart local p0    # "this":Lcom/android/server/VcnManagementService;
    .restart local p1    # "subGroup":Landroid/os/ParcelUuid;
    .restart local p2    # "callback":Landroid/net/vcn/IVcnStatusCallback;
    .restart local p3    # "opPkgName":Ljava/lang/String;
    :catch_b2
    move-exception v2

    .line 1140
    .local v2, "e":Landroid/os/RemoteException;
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1104
    return-void

    .line 1140
    .end local v1    # "cbInfo":Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v10    # "cbBinder":Landroid/os/IBinder;
    :catchall_b7
    move-exception v1

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1141
    throw v1
.end method

.method public removeVcnUnderlyingNetworkPolicyListener(Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;

    .line 925
    const-string/jumbo v0, "listener was null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 927
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.NETWORK_FACTORY"

    const-string v2, "android.permission.MANAGE_TEST_NETWORKS"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/net/module/util/PermissionUtils;->enforceAnyPermissionOf(Landroid/content/Context;[Ljava/lang/String;)V

    .line 932
    new-instance v0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1}, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/VcnManagementService;Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 942
    return-void
.end method

.method setLastSnapshot(Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)V
    .registers 3
    .param p1, "snapshot"    # Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 1166
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    iput-object v0, p0, Lcom/android/server/VcnManagementService;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 1167
    return-void
.end method

.method public setVcnConfig(Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;Ljava/lang/String;)V
    .registers 7
    .param p1, "subscriptionGroup"    # Landroid/os/ParcelUuid;
    .param p2, "config"    # Landroid/net/vcn/VcnConfig;
    .param p3, "opPkgName"    # Ljava/lang/String;

    .line 694
    const-string/jumbo v0, "subscriptionGroup was null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 695
    const-string v0, "config was null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 696
    const-string/jumbo v0, "opPkgName was null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 697
    invoke-virtual {p2}, Landroid/net/vcn/VcnConfig;->getProvisioningPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 700
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VCN config updated for subGrp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/VcnManagementService;->logInfo(Ljava/lang/String;)V

    .line 702
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iget-object v1, p0, Lcom/android/server/VcnManagementService;->mDeps:Lcom/android/server/VcnManagementService$Dependencies;

    .line 703
    invoke-virtual {v1}, Lcom/android/server/VcnManagementService$Dependencies;->getBinderCallingUid()I

    move-result v1

    invoke-virtual {p2}, Landroid/net/vcn/VcnConfig;->getProvisioningPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 704
    invoke-direct {p0, p2}, Lcom/android/server/VcnManagementService;->enforceManageTestNetworksForTestMode(Landroid/net/vcn/VcnConfig;)V

    .line 705
    invoke-direct {p0, p1, p3}, Lcom/android/server/VcnManagementService;->enforceCallingUserAndCarrierPrivilege(Landroid/os/ParcelUuid;Ljava/lang/String;)V

    .line 707
    new-instance v0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/VcnManagementService;Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 715
    return-void

    .line 698
    :cond_57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Mismatched caller and VcnConfig creator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public systemReady()V
    .registers 4

    .line 368
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mNetworkProvider:Lcom/android/server/vcn/VcnNetworkProvider;

    invoke-virtual {v0}, Lcom/android/server/vcn/VcnNetworkProvider;->register()V

    .line 369
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 371
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/VcnManagementService;->mTrackingNetworkCallback:Lcom/android/server/VcnManagementService$TrackingNetworkCallback;

    .line 370
    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 373
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mTelephonySubscriptionTracker:Lcom/android/server/vcn/TelephonySubscriptionTracker;

    invoke-virtual {v0}, Lcom/android/server/vcn/TelephonySubscriptionTracker;->register()V

    .line 374
    return-void
.end method

.method public unregisterVcnStatusCallback(Landroid/net/vcn/IVcnStatusCallback;)V
    .registers 8
    .param p1, "callback"    # Landroid/net/vcn/IVcnStatusCallback;

    .line 1147
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1149
    .local v0, "identity":J
    :try_start_4
    const-string v2, "callback must not be null"

    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1151
    invoke-interface {p1}, Landroid/net/vcn/IVcnStatusCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 1152
    .local v2, "cbBinder":Landroid/os/IBinder;
    iget-object v3, p0, Lcom/android/server/VcnManagementService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_27

    .line 1153
    :try_start_10
    iget-object v4, p0, Lcom/android/server/VcnManagementService;->mRegisteredStatusCallbacks:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;

    .line 1155
    .local v4, "cbInfo":Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;
    if-eqz v4, :cond_1e

    .line 1156
    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1158
    .end local v4    # "cbInfo":Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;
    :cond_1e
    monitor-exit v3
    :try_end_1f
    .catchall {:try_start_10 .. :try_end_1f} :catchall_24

    .line 1160
    .end local v2    # "cbBinder":Landroid/os/IBinder;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1161
    nop

    .line 1162
    return-void

    .line 1158
    .restart local v2    # "cbBinder":Landroid/os/IBinder;
    :catchall_24
    move-exception v4

    :try_start_25
    monitor-exit v3
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    .end local v0    # "identity":J
    .end local p0    # "this":Lcom/android/server/VcnManagementService;
    .end local p1    # "callback":Landroid/net/vcn/IVcnStatusCallback;
    :try_start_26
    throw v4
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_27

    .line 1160
    .end local v2    # "cbBinder":Landroid/os/IBinder;
    .restart local v0    # "identity":J
    .restart local p0    # "this":Lcom/android/server/VcnManagementService;
    .restart local p1    # "callback":Landroid/net/vcn/IVcnStatusCallback;
    :catchall_27
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1161
    throw v2
.end method
