.class public Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;
.super Ljava/lang/Object;
.source "UnderlyingNetworkController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$Dependencies;,
        Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkControllerCallback;,
        Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$VcnActiveDataSubscriptionIdListener;,
        Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;,
        Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$NetworkBringupCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActiveDataSubIdListener:Landroid/telephony/TelephonyCallback;

.field private mCarrierConfig:Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;

.field private final mCb:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkControllerCallback;

.field private final mCellBringupCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/ConnectivityManager$NetworkCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mCurrentRecord:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

.field private final mDeps:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$Dependencies;

.field private final mHandler:Landroid/os/Handler;

.field private mIsQuitting:Z

.field private mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

.field private mRecordInProgress:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;

.field private mRouteSelectionCallback:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;

.field private final mSubscriptionGroup:Landroid/os/ParcelUuid;

.field private final mVcnContext:Lcom/android/server/vcn/VcnContext;

.field private mWifiBringupCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mWifiEntryRssiThresholdCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mWifiExitRssiThresholdCallback:Landroid/net/ConnectivityManager$NetworkCallback;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCarrierConfig(Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;)Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;
    .registers 1

    iget-object p0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mCarrierConfig:Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConnectionConfig(Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;)Landroid/net/vcn/VcnGatewayConnectionConfig;
    .registers 1

    iget-object p0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentRecord(Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;)Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;
    .registers 1

    iget-object p0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mCurrentRecord:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastSnapshot(Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;)Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;
    .registers 1

    iget-object p0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSubscriptionGroup(Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;)Landroid/os/ParcelUuid;
    .registers 1

    iget-object p0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVcnContext(Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;)Lcom/android/server/vcn/VcnContext;
    .registers 1

    iget-object p0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mlogWtf(Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->logWtf(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreevaluateNetworks(Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->reevaluateNetworks()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 68
    const-class v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/vcn/VcnContext;Landroid/net/vcn/VcnGatewayConnectionConfig;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkControllerCallback;)V
    .registers 13
    .param p1, "vcnContext"    # Lcom/android/server/vcn/VcnContext;
    .param p2, "connectionConfig"    # Landroid/net/vcn/VcnGatewayConnectionConfig;
    .param p3, "subscriptionGroup"    # Landroid/os/ParcelUuid;
    .param p4, "snapshot"    # Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;
    .param p5, "cb"    # Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkControllerCallback;

    .line 99
    new-instance v6, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$Dependencies;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$Dependencies;-><init>(Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$Dependencies-IA;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;-><init>(Lcom/android/server/vcn/VcnContext;Landroid/net/vcn/VcnGatewayConnectionConfig;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkControllerCallback;Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$Dependencies;)V

    .line 100
    return-void
.end method

.method private constructor <init>(Lcom/android/server/vcn/VcnContext;Landroid/net/vcn/VcnGatewayConnectionConfig;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkControllerCallback;Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$Dependencies;)V
    .registers 13
    .param p1, "vcnContext"    # Lcom/android/server/vcn/VcnContext;
    .param p2, "connectionConfig"    # Landroid/net/vcn/VcnGatewayConnectionConfig;
    .param p3, "subscriptionGroup"    # Landroid/os/ParcelUuid;
    .param p4, "snapshot"    # Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;
    .param p5, "cb"    # Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkControllerCallback;
    .param p6, "deps"    # Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$Dependencies;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$VcnActiveDataSubscriptionIdListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$VcnActiveDataSubscriptionIdListener;-><init>(Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$VcnActiveDataSubscriptionIdListener-IA;)V

    iput-object v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mActiveDataSubIdListener:Landroid/telephony/TelephonyCallback;

    .line 80
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mCellBringupCallbacks:Ljava/util/List;

    .line 88
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mIsQuitting:Z

    .line 109
    const-string v1, "Missing vcnContext"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vcn/VcnContext;

    iput-object v1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    .line 110
    const-string v2, "Missing connectionConfig"

    invoke-static {p2, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/vcn/VcnGatewayConnectionConfig;

    iput-object v2, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

    .line 111
    const-string v2, "Missing subscriptionGroup"

    invoke-static {p3, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    iput-object v2, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    .line 112
    const-string v3, "Missing snapshot"

    invoke-static {p4, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    iput-object v3, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 113
    const-string v3, "Missing cb"

    invoke-static {p5, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkControllerCallback;

    iput-object v3, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mCb:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkControllerCallback;

    .line 114
    const-string v3, "Missing deps"

    invoke-static {p6, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$Dependencies;

    iput-object v3, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mDeps:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$Dependencies;

    .line 116
    new-instance v3, Landroid/os/Handler;

    invoke-virtual {v1}, Lcom/android/server/vcn/VcnContext;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mHandler:Landroid/os/Handler;

    .line 118
    invoke-virtual {v1}, Lcom/android/server/vcn/VcnContext;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Landroid/net/ConnectivityManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    iput-object v4, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 119
    nop

    .line 120
    invoke-virtual {v1}, Lcom/android/server/vcn/VcnContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v4, Landroid/telephony/TelephonyManager;

    .line 121
    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    new-instance v4, Landroid/os/HandlerExecutor;

    invoke-direct {v4, v3}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 122
    invoke-virtual {v1, v4, v0}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    .line 124
    iget-object v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    invoke-virtual {v0, v2}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->getCarrierConfigForSubGrp(Landroid/os/ParcelUuid;)Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mCarrierConfig:Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;

    .line 126
    invoke-direct {p0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->registerOrUpdateNetworkRequests()V

    .line 127
    return-void
.end method

.method private getBaseNetworkRequestBuilder()Landroid/net/NetworkRequest$Builder;
    .registers 3

    .line 287
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 288
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 289
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 290
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 291
    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 287
    return-object v0
.end method

.method private getCellNetworkRequestForSubId(I)Landroid/net/NetworkRequest;
    .registers 4
    .param p1, "subId"    # I

    .line 277
    invoke-direct {p0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->getBaseNetworkRequestBuilder()Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 278
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    new-instance v1, Landroid/net/TelephonyNetworkSpecifier;

    invoke-direct {v1, p1}, Landroid/net/TelephonyNetworkSpecifier;-><init>(I)V

    .line 279
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 280
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 277
    return-object v0
.end method

.method private getLogPrefix()Ljava/lang/String;
    .registers 4

    .line 477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    .line 478
    invoke-static {v1}, Lcom/android/server/vcn/util/LogUtils;->getHashedSubscriptionGroup(Landroid/os/ParcelUuid;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

    .line 480
    invoke-virtual {v2}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getGatewayConnectionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 482
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 477
    return-object v0
.end method

.method private getRouteSelectionRequest()Landroid/net/NetworkRequest;
    .registers 4

    .line 206
    iget-object v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    invoke-virtual {v0}, Lcom/android/server/vcn/VcnContext;->isInTestMode()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 207
    iget-object v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    iget-object v1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->getAllSubIdsInGroup(Landroid/os/ParcelUuid;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->getTestNetworkRequest(Ljava/util/Set;)Landroid/net/NetworkRequest;

    move-result-object v0

    return-object v0

    .line 210
    :cond_15
    invoke-direct {p0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->getBaseNetworkRequestBuilder()Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0x10

    .line 211
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0x15

    .line 212
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    iget-object v2, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    .line 213
    invoke-virtual {v1, v2}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->getAllSubIdsInGroup(Landroid/os/ParcelUuid;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->setSubscriptionIds(Ljava/util/Set;)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 214
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 210
    return-object v0
.end method

.method private getTagLogPrefix()Ljava/lang/String;
    .registers 3

    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->getLogPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTestNetworkRequest(Ljava/util/Set;)Landroid/net/NetworkRequest;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/net/NetworkRequest;"
        }
    .end annotation

    .line 296
    .local p1, "subIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 297
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 298
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 299
    invoke-virtual {v0, p1}, Landroid/net/NetworkRequest$Builder;->setSubscriptionIds(Ljava/util/Set;)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 300
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 296
    return-object v0
.end method

.method private getWifiEntryRssiThresholdNetworkRequest()Landroid/net/NetworkRequest;
    .registers 4

    .line 241
    invoke-direct {p0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->getBaseNetworkRequestBuilder()Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 242
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    iget-object v2, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    .line 243
    invoke-virtual {v1, v2}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->getAllSubIdsInGroup(Landroid/os/ParcelUuid;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->setSubscriptionIds(Ljava/util/Set;)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mCarrierConfig:Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;

    .line 245
    invoke-static {v1}, Lcom/android/server/vcn/routeselection/NetworkPriorityClassifier;->getWifiEntryRssiThreshold(Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->setSignalStrength(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 246
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 241
    return-object v0
.end method

.method private getWifiExitRssiThresholdNetworkRequest()Landroid/net/NetworkRequest;
    .registers 4

    .line 257
    invoke-direct {p0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->getBaseNetworkRequestBuilder()Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 258
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    iget-object v2, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    .line 259
    invoke-virtual {v1, v2}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->getAllSubIdsInGroup(Landroid/os/ParcelUuid;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->setSubscriptionIds(Ljava/util/Set;)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mCarrierConfig:Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;

    .line 261
    invoke-static {v1}, Lcom/android/server/vcn/routeselection/NetworkPriorityClassifier;->getWifiExitRssiThreshold(Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->setSignalStrength(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 262
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 257
    return-object v0
.end method

.method private getWifiNetworkRequest()Landroid/net/NetworkRequest;
    .registers 4

    .line 227
    invoke-direct {p0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->getBaseNetworkRequestBuilder()Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 228
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    iget-object v2, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    .line 229
    invoke-virtual {v1, v2}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->getAllSubIdsInGroup(Landroid/os/ParcelUuid;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->setSubscriptionIds(Ljava/util/Set;)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 230
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 227
    return-object v0
.end method

.method private logInfo(Ljava/lang/String;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;

    .line 491
    sget-object v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    sget-object v0, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[INFO] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->getTagLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 493
    return-void
.end method

.method private logInfo(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 496
    sget-object v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 497
    sget-object v0, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[INFO] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->getTagLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 498
    return-void
.end method

.method private logWtf(Ljava/lang/String;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;

    .line 501
    sget-object v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    sget-object v1, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "[WTF ] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->getTagLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 503
    return-void
.end method

.method private logWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 506
    sget-object v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->TAG:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 507
    sget-object v1, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "[WTF ] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->getTagLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 508
    return-void
.end method

.method private reevaluateNetworks()V
    .registers 9

    .line 343
    iget-boolean v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mIsQuitting:Z

    if-nez v0, :cond_a1

    iget-object v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mRouteSelectionCallback:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;

    if-nez v0, :cond_a

    goto/16 :goto_a1

    .line 347
    :cond_a
    nop

    .line 348
    invoke-static {v0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;->-$$Nest$mgetSortedUnderlyingNetworks(Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;)Ljava/util/TreeSet;

    move-result-object v0

    .line 349
    .local v0, "sorted":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;>;"
    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    move-object v1, v2

    goto :goto_1e

    :cond_18
    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    .line 350
    .local v1, "candidate":Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;
    :goto_1e
    iget-object v3, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mCurrentRecord:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    invoke-static {v3, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 351
    return-void

    .line 354
    :cond_27
    const-string v3, ""

    .line 355
    .local v3, "allNetworkPriorities":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_74

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    .line 356
    .local v5, "record":Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_52

    .line 357
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 359
    :cond_52
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->getPriorityClass()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 360
    .end local v5    # "record":Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;
    goto :goto_2d

    .line 361
    :cond_74
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Selected network changed to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 363
    if-nez v1, :cond_82

    goto :goto_84

    :cond_82
    iget-object v2, v1, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    :goto_84
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", selected from list: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 361
    invoke-direct {p0, v2}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->logInfo(Ljava/lang/String;)V

    .line 366
    iput-object v1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mCurrentRecord:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    .line 367
    iget-object v2, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mCb:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkControllerCallback;

    invoke-interface {v2, v1}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkControllerCallback;->onSelectedUnderlyingNetworkChanged(Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;)V

    .line 368
    return-void

    .line 344
    .end local v0    # "sorted":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;>;"
    .end local v1    # "candidate":Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;
    .end local v3    # "allNetworkPriorities":Ljava/lang/String;
    :cond_a1
    :goto_a1
    return-void
.end method

.method private registerOrUpdateNetworkRequests()V
    .registers 12

    .line 130
    iget-object v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mRouteSelectionCallback:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;

    .line 131
    .local v0, "oldRouteSelectionCallback":Landroid/net/ConnectivityManager$NetworkCallback;
    iget-object v1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mWifiBringupCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 132
    .local v1, "oldWifiCallback":Landroid/net/ConnectivityManager$NetworkCallback;
    iget-object v2, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mWifiEntryRssiThresholdCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 133
    .local v2, "oldWifiEntryRssiThresholdCallback":Landroid/net/ConnectivityManager$NetworkCallback;
    iget-object v3, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mWifiExitRssiThresholdCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 134
    .local v3, "oldWifiExitRssiThresholdCallback":Landroid/net/ConnectivityManager$NetworkCallback;
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mCellBringupCallbacks:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 135
    .local v4, "oldCellCallbacks":Ljava/util/List;, "Ljava/util/List<Landroid/net/ConnectivityManager$NetworkCallback;>;"
    iget-object v5, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mCellBringupCallbacks:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 139
    iget-boolean v5, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mIsQuitting:Z

    if-nez v5, :cond_9b

    .line 140
    new-instance v5, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;

    invoke-direct {v5, p0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;-><init>(Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;)V

    iput-object v5, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mRouteSelectionCallback:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;

    .line 141
    iget-object v5, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 142
    invoke-direct {p0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->getRouteSelectionRequest()Landroid/net/NetworkRequest;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mRouteSelectionCallback:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;

    iget-object v8, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mHandler:Landroid/os/Handler;

    .line 141
    invoke-virtual {v5, v6, v7, v8}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 144
    new-instance v5, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$NetworkBringupCallback;

    invoke-direct {v5, p0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$NetworkBringupCallback;-><init>(Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;)V

    iput-object v5, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mWifiEntryRssiThresholdCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 145
    iget-object v5, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 146
    invoke-direct {p0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->getWifiEntryRssiThresholdNetworkRequest()Landroid/net/NetworkRequest;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mWifiEntryRssiThresholdCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object v8, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mHandler:Landroid/os/Handler;

    .line 145
    invoke-virtual {v5, v6, v7, v8}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 150
    new-instance v5, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$NetworkBringupCallback;

    invoke-direct {v5, p0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$NetworkBringupCallback;-><init>(Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;)V

    iput-object v5, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mWifiExitRssiThresholdCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 151
    iget-object v5, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 152
    invoke-direct {p0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->getWifiExitRssiThresholdNetworkRequest()Landroid/net/NetworkRequest;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mWifiExitRssiThresholdCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object v8, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mHandler:Landroid/os/Handler;

    .line 151
    invoke-virtual {v5, v6, v7, v8}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 156
    new-instance v5, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$NetworkBringupCallback;

    invoke-direct {v5, p0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$NetworkBringupCallback;-><init>(Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;)V

    iput-object v5, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mWifiBringupCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 157
    iget-object v5, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 158
    invoke-direct {p0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->getWifiNetworkRequest()Landroid/net/NetworkRequest;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mWifiBringupCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object v8, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mHandler:Landroid/os/Handler;

    .line 157
    invoke-virtual {v5, v6, v7, v8}, Landroid/net/ConnectivityManager;->requestBackgroundNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 160
    iget-object v5, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    iget-object v6, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    invoke-virtual {v5, v6}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->getAllSubIdsInGroup(Landroid/os/ParcelUuid;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_74
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 161
    .local v6, "subId":I
    new-instance v7, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$NetworkBringupCallback;

    invoke-direct {v7, p0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$NetworkBringupCallback;-><init>(Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;)V

    .line 162
    .local v7, "cb":Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$NetworkBringupCallback;
    iget-object v8, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mCellBringupCallbacks:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    iget-object v8, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 165
    invoke-direct {p0, v6}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->getCellNetworkRequestForSubId(I)Landroid/net/NetworkRequest;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mHandler:Landroid/os/Handler;

    .line 164
    invoke-virtual {v8, v9, v7, v10}, Landroid/net/ConnectivityManager;->requestBackgroundNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 166
    .end local v6    # "subId":I
    .end local v7    # "cb":Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$NetworkBringupCallback;
    goto :goto_74

    :cond_9a
    goto :goto_a4

    .line 168
    :cond_9b
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mRouteSelectionCallback:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;

    .line 169
    iput-object v5, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mWifiBringupCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 170
    iput-object v5, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mWifiEntryRssiThresholdCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 171
    iput-object v5, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mWifiExitRssiThresholdCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 176
    :goto_a4
    if-eqz v0, :cond_ab

    .line 177
    iget-object v5, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v5, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 179
    :cond_ab
    if-eqz v1, :cond_b2

    .line 180
    iget-object v5, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v5, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 182
    :cond_b2
    if-eqz v2, :cond_b9

    .line 183
    iget-object v5, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v5, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 185
    :cond_b9
    if-eqz v3, :cond_c0

    .line 186
    iget-object v5, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v5, v3}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 188
    :cond_c0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_c4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager$NetworkCallback;

    .line 189
    .local v6, "cellBringupCallback":Landroid/net/ConnectivityManager$NetworkCallback;
    iget-object v7, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v7, v6}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 190
    .end local v6    # "cellBringupCallback":Landroid/net/ConnectivityManager$NetworkCallback;
    goto :goto_c4

    .line 191
    :cond_d6
    return-void
.end method


# virtual methods
.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 13
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 512
    const-string v0, "UnderlyingNetworkController:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 513
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Carrier WiFi Entry Threshold: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mCarrierConfig:Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;

    invoke-static {v1}, Lcom/android/server/vcn/routeselection/NetworkPriorityClassifier;->getWifiEntryRssiThreshold(Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Carrier WiFi Exit Threshold: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mCarrierConfig:Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;

    invoke-static {v1}, Lcom/android/server/vcn/routeselection/NetworkPriorityClassifier;->getWifiExitRssiThreshold(Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Currently selected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 518
    iget-object v1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mCurrentRecord:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    if-nez v1, :cond_51

    const/4 v1, 0x0

    goto :goto_53

    :cond_51
    iget-object v1, v1, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    :goto_53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 517
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 520
    const-string v0, "VcnUnderlyingNetworkTemplate list:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 521
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 522
    const/4 v0, 0x0

    .line 524
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

    invoke-virtual {v1}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getVcnUnderlyingNetworkPriorities()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_71
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;

    .line 525
    .local v2, "priority":Landroid/net/vcn/VcnUnderlyingNetworkTemplate;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Priority index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 526
    invoke-virtual {v2, p1}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 527
    nop

    .end local v2    # "priority":Landroid/net/vcn/VcnUnderlyingNetworkTemplate;
    add-int/lit8 v0, v0, 0x1

    .line 528
    goto :goto_71

    .line 529
    :cond_9a
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 530
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 532
    const-string v1, "Underlying networks:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 533
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 534
    iget-object v1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mRouteSelectionCallback:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;

    if-eqz v1, :cond_d6

    .line 536
    invoke-static {v1}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;->-$$Nest$mgetSortedUnderlyingNetworks(Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;)Ljava/util/TreeSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    .line 537
    .local v2, "record":Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;
    iget-object v4, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    iget-object v3, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

    .line 540
    invoke-virtual {v3}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getVcnUnderlyingNetworkPriorities()Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    iget-object v8, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    iget-object v9, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mCurrentRecord:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    iget-object v10, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mCarrierConfig:Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;

    .line 537
    move-object v3, v2

    move-object v5, p1

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->dump(Lcom/android/server/vcn/VcnContext;Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/List;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;)V

    .line 545
    .end local v2    # "record":Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;
    goto :goto_b4

    .line 547
    :cond_d6
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 548
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 550
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 551
    return-void
.end method

.method public teardown()V
    .registers 3

    .line 330
    iget-object v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    invoke-virtual {v0}, Lcom/android/server/vcn/VcnContext;->ensureRunningOnLooperThread()V

    .line 331
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mIsQuitting:Z

    .line 334
    invoke-direct {p0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->registerOrUpdateNetworkRequests()V

    .line 336
    iget-object v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    .line 337
    invoke-virtual {v0}, Lcom/android/server/vcn/VcnContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/telephony/TelephonyManager;

    .line 338
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mActiveDataSubIdListener:Landroid/telephony/TelephonyCallback;

    .line 339
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    .line 340
    return-void
.end method

.method public updateSubscriptionSnapshot(Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)V
    .registers 5
    .param p1, "newSnapshot"    # Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 311
    const-string v0, "Missing newSnapshot"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 313
    iget-object v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 314
    .local v0, "oldSnapshot":Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;
    iput-object p1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 317
    iget-object v1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    invoke-virtual {p1, v1}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->getCarrierConfigForSubGrp(Landroid/os/ParcelUuid;)Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mCarrierConfig:Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;

    .line 320
    iget-object v1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    .line 321
    invoke-virtual {v0, v1}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->getAllSubIdsInGroup(Landroid/os/ParcelUuid;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    .line 322
    invoke-virtual {p1, v2}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->getAllSubIdsInGroup(Landroid/os/ParcelUuid;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 323
    return-void

    .line 325
    :cond_24
    invoke-direct {p0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->registerOrUpdateNetworkRequests()V

    .line 326
    return-void
.end method
