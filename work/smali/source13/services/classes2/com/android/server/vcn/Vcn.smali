.class public Lcom/android/server/vcn/Vcn;
.super Landroid/os/Handler;
.source "Vcn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vcn/Vcn$VcnContentResolver;,
        Lcom/android/server/vcn/Vcn$Dependencies;,
        Lcom/android/server/vcn/Vcn$VcnUserMobileDataStateListener;,
        Lcom/android/server/vcn/Vcn$VcnMobileDataContentObserver;,
        Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallbackImpl;,
        Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;,
        Lcom/android/server/vcn/Vcn$VcnNetworkRequestListener;
    }
.end annotation


# static fields
.field private static final CAPS_REQUIRING_MOBILE_DATA:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final MSG_CMD_BASE:I = 0x64

.field private static final MSG_CMD_TEARDOWN:I = 0x64

.field private static final MSG_EVENT_BASE:I = 0x0

.field private static final MSG_EVENT_CONFIG_UPDATED:I = 0x0

.field private static final MSG_EVENT_GATEWAY_CONNECTION_QUIT:I = 0x3

.field private static final MSG_EVENT_MOBILE_DATA_TOGGLED:I = 0x5

.field private static final MSG_EVENT_NETWORK_REQUESTED:I = 0x1

.field private static final MSG_EVENT_SAFE_MODE_STATE_CHANGED:I = 0x4

.field private static final MSG_EVENT_SUBSCRIPTIONS_CHANGED:I = 0x2

.field private static final TAG:Ljava/lang/String;

.field private static final VCN_LEGACY_SCORE_INT:I = 0x34


# instance fields
.field private mConfig:Landroid/net/vcn/VcnConfig;

.field private final mContentResolver:Lcom/android/server/vcn/Vcn$VcnContentResolver;

.field private volatile mCurrentStatus:I

.field private final mDeps:Lcom/android/server/vcn/Vcn$Dependencies;

.field private mIsMobileDataEnabled:Z

.field private mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

.field private final mMobileDataSettingsObserver:Landroid/database/ContentObserver;

.field private final mMobileDataStateListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/vcn/Vcn$VcnUserMobileDataStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequestListener:Lcom/android/server/vcn/Vcn$VcnNetworkRequestListener;

.field private final mSubscriptionGroup:Landroid/os/ParcelUuid;

.field private final mVcnCallback:Lcom/android/server/VcnManagementService$VcnCallback;

.field private final mVcnContext:Lcom/android/server/vcn/VcnContext;

.field private final mVcnGatewayConnections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/vcn/VcnGatewayConnectionConfig;",
            "Lcom/android/server/vcn/VcnGatewayConnection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmVcnCallback(Lcom/android/server/vcn/Vcn;)Lcom/android/server/VcnManagementService$VcnCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/server/vcn/Vcn;->mVcnCallback:Lcom/android/server/VcnManagementService$VcnCallback;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 79
    const-class v0, Lcom/android/server/vcn/Vcn;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/vcn/Vcn;->TAG:Ljava/lang/String;

    .line 83
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Integer;

    .line 84
    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/vcn/Vcn;->CAPS_REQUIRING_MOBILE_DATA:Ljava/util/List;

    .line 83
    return-void
.end method

.method public constructor <init>(Lcom/android/server/vcn/VcnContext;Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/VcnManagementService$VcnCallback;)V
    .registers 13
    .param p1, "vcnContext"    # Lcom/android/server/vcn/VcnContext;
    .param p2, "subscriptionGroup"    # Landroid/os/ParcelUuid;
    .param p3, "config"    # Landroid/net/vcn/VcnConfig;
    .param p4, "snapshot"    # Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;
    .param p5, "vcnCallback"    # Lcom/android/server/VcnManagementService$VcnCallback;

    .line 202
    new-instance v6, Lcom/android/server/vcn/Vcn$Dependencies;

    invoke-direct {v6}, Lcom/android/server/vcn/Vcn$Dependencies;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/vcn/Vcn;-><init>(Lcom/android/server/vcn/VcnContext;Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/VcnManagementService$VcnCallback;Lcom/android/server/vcn/Vcn$Dependencies;)V

    .line 203
    return-void
.end method

.method public constructor <init>(Lcom/android/server/vcn/VcnContext;Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/VcnManagementService$VcnCallback;Lcom/android/server/vcn/Vcn$Dependencies;)V
    .registers 12
    .param p1, "vcnContext"    # Lcom/android/server/vcn/VcnContext;
    .param p2, "subscriptionGroup"    # Landroid/os/ParcelUuid;
    .param p3, "config"    # Landroid/net/vcn/VcnConfig;
    .param p4, "snapshot"    # Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;
    .param p5, "vcnCallback"    # Lcom/android/server/VcnManagementService$VcnCallback;
    .param p6, "deps"    # Lcom/android/server/vcn/Vcn$Dependencies;

    .line 213
    const-string v0, "Missing vcnContext"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vcn/VcnContext;

    invoke-virtual {v0}, Lcom/android/server/vcn/VcnContext;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 155
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/vcn/Vcn;->mMobileDataStateListeners:Ljava/util/Map;

    .line 177
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/vcn/Vcn;->mVcnGatewayConnections:Ljava/util/Map;

    .line 192
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/vcn/Vcn;->mCurrentStatus:I

    .line 194
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/vcn/Vcn;->mIsMobileDataEnabled:Z

    .line 214
    iput-object p1, p0, Lcom/android/server/vcn/Vcn;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    .line 215
    const-string v0, "Missing subscriptionGroup"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelUuid;

    iput-object v0, p0, Lcom/android/server/vcn/Vcn;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    .line 216
    const-string v0, "Missing vcnCallback"

    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/VcnManagementService$VcnCallback;

    iput-object v0, p0, Lcom/android/server/vcn/Vcn;->mVcnCallback:Lcom/android/server/VcnManagementService$VcnCallback;

    .line 217
    const-string v0, "Missing deps"

    invoke-static {p6, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vcn/Vcn$Dependencies;

    iput-object v0, p0, Lcom/android/server/vcn/Vcn;->mDeps:Lcom/android/server/vcn/Vcn$Dependencies;

    .line 218
    new-instance v1, Lcom/android/server/vcn/Vcn$VcnNetworkRequestListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/vcn/Vcn$VcnNetworkRequestListener;-><init>(Lcom/android/server/vcn/Vcn;Lcom/android/server/vcn/Vcn$VcnNetworkRequestListener-IA;)V

    iput-object v1, p0, Lcom/android/server/vcn/Vcn;->mRequestListener:Lcom/android/server/vcn/Vcn$VcnNetworkRequestListener;

    .line 219
    invoke-virtual {v0, p1}, Lcom/android/server/vcn/Vcn$Dependencies;->newVcnContentResolver(Lcom/android/server/vcn/VcnContext;)Lcom/android/server/vcn/Vcn$VcnContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vcn/Vcn;->mContentResolver:Lcom/android/server/vcn/Vcn$VcnContentResolver;

    .line 220
    new-instance v3, Lcom/android/server/vcn/Vcn$VcnMobileDataContentObserver;

    invoke-direct {v3, p0, p0, v2}, Lcom/android/server/vcn/Vcn$VcnMobileDataContentObserver;-><init>(Lcom/android/server/vcn/Vcn;Landroid/os/Handler;Lcom/android/server/vcn/Vcn$VcnMobileDataContentObserver-IA;)V

    iput-object v3, p0, Lcom/android/server/vcn/Vcn;->mMobileDataSettingsObserver:Landroid/database/ContentObserver;

    .line 222
    const-string/jumbo v2, "mobile_data"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 223
    .local v2, "uri":Landroid/net/Uri;
    const/4 v4, 0x1

    invoke-virtual {v0, v2, v4, v3}, Lcom/android/server/vcn/Vcn$VcnContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 226
    const-string v0, "Missing config"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/vcn/VcnConfig;

    iput-object v0, p0, Lcom/android/server/vcn/Vcn;->mConfig:Landroid/net/vcn/VcnConfig;

    .line 227
    const-string v0, "Missing snapshot"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    iput-object v0, p0, Lcom/android/server/vcn/Vcn;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 230
    invoke-direct {p0}, Lcom/android/server/vcn/Vcn;->getMobileDataStatus()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/vcn/Vcn;->mIsMobileDataEnabled:Z

    .line 233
    invoke-direct {p0}, Lcom/android/server/vcn/Vcn;->updateMobileDataStateListeners()V

    .line 236
    invoke-virtual {p1}, Lcom/android/server/vcn/VcnContext;->getVcnNetworkProvider()Lcom/android/server/vcn/VcnNetworkProvider;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/vcn/VcnNetworkProvider;->registerListener(Lcom/android/server/vcn/VcnNetworkProvider$NetworkRequestListener;)V

    .line 237
    return-void
.end method

.method private getExposedCapabilitiesForMobileDataState(Landroid/net/vcn/VcnGatewayConnectionConfig;)Ljava/util/Set;
    .registers 4
    .param p1, "gatewayConnectionConfig"    # Landroid/net/vcn/VcnGatewayConnectionConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/vcn/VcnGatewayConnectionConfig;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 448
    iget-boolean v0, p0, Lcom/android/server/vcn/Vcn;->mIsMobileDataEnabled:Z

    if-eqz v0, :cond_9

    .line 449
    invoke-virtual {p1}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getAllExposedCapabilities()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 452
    :cond_9
    new-instance v0, Landroid/util/ArraySet;

    .line 453
    invoke-virtual {p1}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getAllExposedCapabilities()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 454
    .local v0, "exposedCapsWithoutMobileData":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    sget-object v1, Lcom/android/server/vcn/Vcn;->CAPS_REQUIRING_MOBILE_DATA:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 456
    return-object v0
.end method

.method private getLogPrefix()Ljava/lang/String;
    .registers 3

    .line 574
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/vcn/Vcn;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    .line 575
    invoke-static {v1}, Lcom/android/server/vcn/util/LogUtils;->getHashedSubscriptionGroup(Landroid/os/ParcelUuid;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 577
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 574
    return-object v0
.end method

.method private getMobileDataStatus()Z
    .registers 4

    .line 544
    iget-object v0, p0, Lcom/android/server/vcn/Vcn;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    iget-object v1, p0, Lcom/android/server/vcn/Vcn;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->getAllSubIdsInGroup(Landroid/os/ParcelUuid;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 545
    .local v1, "subId":I
    invoke-direct {p0, v1}, Lcom/android/server/vcn/Vcn;->getTelephonyManagerForSubid(I)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 546
    const/4 v0, 0x1

    return v0

    .line 548
    .end local v1    # "subId":I
    :cond_28
    goto :goto_c

    .line 550
    :cond_29
    const/4 v0, 0x0

    return v0
.end method

.method static getNetworkScore()Landroid/net/NetworkScore;
    .registers 2

    .line 664
    new-instance v0, Landroid/net/NetworkScore$Builder;

    invoke-direct {v0}, Landroid/net/NetworkScore$Builder;-><init>()V

    .line 665
    const/16 v1, 0x34

    invoke-virtual {v0, v1}, Landroid/net/NetworkScore$Builder;->setLegacyInt(I)Landroid/net/NetworkScore$Builder;

    move-result-object v0

    .line 666
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkScore$Builder;->setTransportPrimary(Z)Landroid/net/NetworkScore$Builder;

    move-result-object v0

    .line 667
    invoke-virtual {v0}, Landroid/net/NetworkScore$Builder;->build()Landroid/net/NetworkScore;

    move-result-object v0

    .line 664
    return-object v0
.end method

.method private getTelephonyManager()Landroid/telephony/TelephonyManager;
    .registers 3

    .line 566
    iget-object v0, p0, Lcom/android/server/vcn/Vcn;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    invoke-virtual {v0}, Lcom/android/server/vcn/VcnContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private getTelephonyManagerForSubid(I)Landroid/telephony/TelephonyManager;
    .registers 3
    .param p1, "subid"    # I

    .line 570
    invoke-direct {p0}, Lcom/android/server/vcn/Vcn;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    return-object v0
.end method

.method private handleConfigUpdated(Landroid/net/vcn/VcnConfig;)V
    .registers 8
    .param p1, "config"    # Landroid/net/vcn/VcnConfig;

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Config updated: old = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/vcn/Vcn;->mConfig:Landroid/net/vcn/VcnConfig;

    invoke-virtual {v1}, Landroid/net/vcn/VcnConfig;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; new = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/vcn/VcnConfig;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/vcn/Vcn;->logDbg(Ljava/lang/String;)V

    .line 329
    iput-object p1, p0, Lcom/android/server/vcn/Vcn;->mConfig:Landroid/net/vcn/VcnConfig;

    .line 334
    iget-object v0, p0, Lcom/android/server/vcn/Vcn;->mVcnGatewayConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_36
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_80

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 335
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/net/vcn/VcnGatewayConnectionConfig;Lcom/android/server/vcn/VcnGatewayConnection;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/vcn/VcnGatewayConnectionConfig;

    .line 336
    .local v2, "gatewayConnectionConfig":Landroid/net/vcn/VcnGatewayConnectionConfig;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/vcn/VcnGatewayConnection;

    .line 340
    .local v3, "gatewayConnection":Lcom/android/server/vcn/VcnGatewayConnection;
    iget-object v4, p0, Lcom/android/server/vcn/Vcn;->mConfig:Landroid/net/vcn/VcnConfig;

    invoke-virtual {v4}, Landroid/net/vcn/VcnConfig;->getGatewayConnectionConfigs()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7f

    .line 341
    if-nez v3, :cond_62

    .line 342
    const-string v4, "Found gatewayConnectionConfig without GatewayConnection"

    invoke-direct {p0, v4}, Lcom/android/server/vcn/Vcn;->logWtf(Ljava/lang/String;)V

    goto :goto_7f

    .line 344
    :cond_62
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Config updated, restarting gateway "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 346
    invoke-virtual {v3}, Lcom/android/server/vcn/VcnGatewayConnection;->getLogPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 344
    invoke-direct {p0, v4}, Lcom/android/server/vcn/Vcn;->logInfo(Ljava/lang/String;)V

    .line 347
    invoke-virtual {v3}, Lcom/android/server/vcn/VcnGatewayConnection;->teardownAsynchronously()V

    .line 350
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/net/vcn/VcnGatewayConnectionConfig;Lcom/android/server/vcn/VcnGatewayConnection;>;"
    .end local v2    # "gatewayConnectionConfig":Landroid/net/vcn/VcnGatewayConnectionConfig;
    .end local v3    # "gatewayConnection":Lcom/android/server/vcn/VcnGatewayConnection;
    :cond_7f
    :goto_7f
    goto :goto_36

    .line 354
    :cond_80
    iget-object v0, p0, Lcom/android/server/vcn/Vcn;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    invoke-virtual {v0}, Lcom/android/server/vcn/VcnContext;->getVcnNetworkProvider()Lcom/android/server/vcn/VcnNetworkProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/vcn/Vcn;->mRequestListener:Lcom/android/server/vcn/Vcn$VcnNetworkRequestListener;

    invoke-virtual {v0, v1}, Lcom/android/server/vcn/VcnNetworkProvider;->resendAllRequests(Lcom/android/server/vcn/VcnNetworkProvider$NetworkRequestListener;)V

    .line 355
    return-void
.end method

.method private handleGatewayConnectionQuit(Landroid/net/vcn/VcnGatewayConnectionConfig;)V
    .registers 4
    .param p1, "config"    # Landroid/net/vcn/VcnGatewayConnectionConfig;

    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VcnGatewayConnection quit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/vcn/Vcn;->logInfo(Ljava/lang/String;)V

    .line 461
    iget-object v0, p0, Lcom/android/server/vcn/Vcn;->mVcnGatewayConnections:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    iget-object v0, p0, Lcom/android/server/vcn/Vcn;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    invoke-virtual {v0}, Lcom/android/server/vcn/VcnContext;->getVcnNetworkProvider()Lcom/android/server/vcn/VcnNetworkProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/vcn/Vcn;->mRequestListener:Lcom/android/server/vcn/Vcn$VcnNetworkRequestListener;

    invoke-virtual {v0, v1}, Lcom/android/server/vcn/VcnNetworkProvider;->resendAllRequests(Lcom/android/server/vcn/VcnNetworkProvider$NetworkRequestListener;)V

    .line 467
    return-void
.end method

.method private handleMobileDataToggled()V
    .registers 8

    .line 511
    iget-boolean v0, p0, Lcom/android/server/vcn/Vcn;->mIsMobileDataEnabled:Z

    .line 512
    .local v0, "oldMobileDataEnabledStatus":Z
    invoke-direct {p0}, Lcom/android/server/vcn/Vcn;->getMobileDataStatus()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/vcn/Vcn;->mIsMobileDataEnabled:Z

    .line 514
    if-eq v0, v1, :cond_7e

    .line 519
    iget-object v1, p0, Lcom/android/server/vcn/Vcn;->mVcnGatewayConnections:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_54

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 520
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/net/vcn/VcnGatewayConnectionConfig;Lcom/android/server/vcn/VcnGatewayConnection;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/vcn/VcnGatewayConnectionConfig;

    .line 521
    .local v3, "gatewayConnectionConfig":Landroid/net/vcn/VcnGatewayConnectionConfig;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/vcn/VcnGatewayConnection;

    .line 523
    .local v4, "gatewayConnection":Lcom/android/server/vcn/VcnGatewayConnection;
    nop

    .line 524
    invoke-virtual {v3}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getAllExposedCapabilities()Ljava/util/Set;

    move-result-object v5

    .line 525
    .local v5, "exposedCaps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/16 v6, 0xc

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_48

    const/4 v6, 0x2

    .line 526
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_53

    .line 527
    :cond_48
    if-nez v4, :cond_50

    .line 528
    const-string v6, "Found gatewayConnectionConfig without GatewayConnection"

    invoke-direct {p0, v6}, Lcom/android/server/vcn/Vcn;->logWtf(Ljava/lang/String;)V

    goto :goto_53

    .line 531
    :cond_50
    invoke-virtual {v4}, Lcom/android/server/vcn/VcnGatewayConnection;->teardownAsynchronously()V

    .line 534
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/net/vcn/VcnGatewayConnectionConfig;Lcom/android/server/vcn/VcnGatewayConnection;>;"
    .end local v3    # "gatewayConnectionConfig":Landroid/net/vcn/VcnGatewayConnectionConfig;
    .end local v4    # "gatewayConnection":Lcom/android/server/vcn/VcnGatewayConnection;
    .end local v5    # "exposedCaps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_53
    :goto_53
    goto :goto_14

    .line 537
    :cond_54
    iget-object v1, p0, Lcom/android/server/vcn/Vcn;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    invoke-virtual {v1}, Lcom/android/server/vcn/VcnContext;->getVcnNetworkProvider()Lcom/android/server/vcn/VcnNetworkProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/vcn/Vcn;->mRequestListener:Lcom/android/server/vcn/Vcn$VcnNetworkRequestListener;

    invoke-virtual {v1, v2}, Lcom/android/server/vcn/VcnNetworkProvider;->resendAllRequests(Lcom/android/server/vcn/VcnNetworkProvider$NetworkRequestListener;)V

    .line 539
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mobile data "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/vcn/Vcn;->mIsMobileDataEnabled:Z

    if-eqz v2, :cond_71

    const-string v2, "enabled"

    goto :goto_73

    :cond_71
    const-string v2, "disabled"

    :goto_73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/vcn/Vcn;->logInfo(Ljava/lang/String;)V

    .line 541
    :cond_7e
    return-void
.end method

.method private handleNetworkRequested(Landroid/net/NetworkRequest;)V
    .registers 11
    .param p1, "request"    # Landroid/net/NetworkRequest;

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received request "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/vcn/Vcn;->logVdbg(Ljava/lang/String;)V

    .line 401
    iget-object v0, p0, Lcom/android/server/vcn/Vcn;->mVcnGatewayConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/vcn/VcnGatewayConnectionConfig;

    .line 402
    .local v1, "gatewayConnectionConfig":Landroid/net/vcn/VcnGatewayConnectionConfig;
    invoke-direct {p0, p1, v1}, Lcom/android/server/vcn/Vcn;->isRequestSatisfiedByGatewayConnectionConfig(Landroid/net/NetworkRequest;Landroid/net/vcn/VcnGatewayConnectionConfig;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request already satisfied by existing VcnGatewayConnection: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/vcn/Vcn;->logVdbg(Ljava/lang/String;)V

    .line 404
    return-void

    .line 406
    .end local v1    # "gatewayConnectionConfig":Landroid/net/vcn/VcnGatewayConnectionConfig;
    :cond_49
    goto :goto_20

    .line 411
    :cond_4a
    iget-object v0, p0, Lcom/android/server/vcn/Vcn;->mConfig:Landroid/net/vcn/VcnConfig;

    invoke-virtual {v0}, Landroid/net/vcn/VcnConfig;->getGatewayConnectionConfigs()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_54
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/vcn/VcnGatewayConnectionConfig;

    .line 412
    .restart local v1    # "gatewayConnectionConfig":Landroid/net/vcn/VcnGatewayConnectionConfig;
    invoke-direct {p0, p1, v1}, Lcom/android/server/vcn/Vcn;->isRequestSatisfiedByGatewayConnectionConfig(Landroid/net/NetworkRequest;Landroid/net/vcn/VcnGatewayConnectionConfig;)Z

    move-result v2

    if-eqz v2, :cond_af

    .line 413
    invoke-direct {p0, v1}, Lcom/android/server/vcn/Vcn;->getExposedCapabilitiesForMobileDataState(Landroid/net/vcn/VcnGatewayConnectionConfig;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_71

    .line 415
    goto :goto_54

    .line 421
    :cond_71
    iget-object v0, p0, Lcom/android/server/vcn/Vcn;->mVcnGatewayConnections:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 422
    const-string v0, "Attempted to bring up VcnGatewayConnection for config with existing VcnGatewayConnection"

    invoke-direct {p0, v0}, Lcom/android/server/vcn/Vcn;->logWtf(Ljava/lang/String;)V

    .line 425
    return-void

    .line 428
    :cond_7f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bringing up new VcnGatewayConnection for request "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/vcn/Vcn;->logInfo(Ljava/lang/String;)V

    .line 429
    iget-object v2, p0, Lcom/android/server/vcn/Vcn;->mDeps:Lcom/android/server/vcn/Vcn$Dependencies;

    iget-object v3, p0, Lcom/android/server/vcn/Vcn;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    iget-object v4, p0, Lcom/android/server/vcn/Vcn;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    iget-object v5, p0, Lcom/android/server/vcn/Vcn;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    new-instance v7, Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallbackImpl;

    invoke-direct {v7, p0, v1}, Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallbackImpl;-><init>(Lcom/android/server/vcn/Vcn;Landroid/net/vcn/VcnGatewayConnectionConfig;)V

    iget-boolean v8, p0, Lcom/android/server/vcn/Vcn;->mIsMobileDataEnabled:Z

    .line 430
    move-object v6, v1

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/vcn/Vcn$Dependencies;->newVcnGatewayConnection(Lcom/android/server/vcn/VcnContext;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Landroid/net/vcn/VcnGatewayConnectionConfig;Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;Z)Lcom/android/server/vcn/VcnGatewayConnection;

    move-result-object v0

    .line 437
    .local v0, "vcnGatewayConnection":Lcom/android/server/vcn/VcnGatewayConnection;
    iget-object v2, p0, Lcom/android/server/vcn/Vcn;->mVcnGatewayConnections:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    return-void

    .line 441
    .end local v0    # "vcnGatewayConnection":Lcom/android/server/vcn/VcnGatewayConnection;
    .end local v1    # "gatewayConnectionConfig":Landroid/net/vcn/VcnGatewayConnectionConfig;
    :cond_af
    goto :goto_54

    .line 443
    :cond_b0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request could not be fulfilled by VCN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/vcn/Vcn;->logVdbg(Ljava/lang/String;)V

    .line 444
    return-void
.end method

.method private handleSafeModeStatusChanged()V
    .registers 6

    .line 375
    const-string v0, "VcnGatewayConnection safe mode status changed"

    invoke-direct {p0, v0}, Lcom/android/server/vcn/Vcn;->logVdbg(Ljava/lang/String;)V

    .line 376
    const/4 v0, 0x0

    .line 379
    .local v0, "hasSafeModeGatewayConnection":Z
    iget-object v1, p0, Lcom/android/server/vcn/Vcn;->mVcnGatewayConnections:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/vcn/VcnGatewayConnection;

    .line 380
    .local v2, "gatewayConnection":Lcom/android/server/vcn/VcnGatewayConnection;
    invoke-virtual {v2}, Lcom/android/server/vcn/VcnGatewayConnection;->isInSafeMode()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 381
    const/4 v0, 0x1

    .line 382
    goto :goto_25

    .line 384
    .end local v2    # "gatewayConnection":Lcom/android/server/vcn/VcnGatewayConnection;
    :cond_24
    goto :goto_10

    .line 386
    :cond_25
    :goto_25
    iget v1, p0, Lcom/android/server/vcn/Vcn;->mCurrentStatus:I

    .line 387
    .local v1, "oldStatus":I
    nop

    .line 388
    const/4 v2, 0x3

    if-eqz v0, :cond_2d

    move v3, v2

    goto :goto_2e

    :cond_2d
    const/4 v3, 0x2

    :goto_2e
    iput v3, p0, Lcom/android/server/vcn/Vcn;->mCurrentStatus:I

    .line 389
    iget v3, p0, Lcom/android/server/vcn/Vcn;->mCurrentStatus:I

    if-eq v1, v3, :cond_58

    .line 390
    iget-object v3, p0, Lcom/android/server/vcn/Vcn;->mVcnCallback:Lcom/android/server/VcnManagementService$VcnCallback;

    invoke-interface {v3, v0}, Lcom/android/server/VcnManagementService$VcnCallback;->onSafeModeStatusChanged(Z)V

    .line 391
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Safe mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 393
    iget v4, p0, Lcom/android/server/vcn/Vcn;->mCurrentStatus:I

    if-ne v4, v2, :cond_4b

    const-string v2, "entered"

    goto :goto_4d

    :cond_4b
    const-string v2, "exited"

    :goto_4d
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 391
    invoke-direct {p0, v2}, Lcom/android/server/vcn/Vcn;->logInfo(Ljava/lang/String;)V

    .line 395
    :cond_58
    return-void
.end method

.method private handleSubscriptionsChanged(Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)V
    .registers 5
    .param p1, "snapshot"    # Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 470
    iput-object p1, p0, Lcom/android/server/vcn/Vcn;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 472
    iget-object v0, p0, Lcom/android/server/vcn/Vcn;->mVcnGatewayConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vcn/VcnGatewayConnection;

    .line 473
    .local v1, "gatewayConnection":Lcom/android/server/vcn/VcnGatewayConnection;
    iget-object v2, p0, Lcom/android/server/vcn/Vcn;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    invoke-virtual {v1, v2}, Lcom/android/server/vcn/VcnGatewayConnection;->updateSubscriptionSnapshot(Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)V

    .line 474
    .end local v1    # "gatewayConnection":Lcom/android/server/vcn/VcnGatewayConnection;
    goto :goto_c

    .line 476
    :cond_1e
    invoke-direct {p0}, Lcom/android/server/vcn/Vcn;->updateMobileDataStateListeners()V

    .line 480
    invoke-direct {p0}, Lcom/android/server/vcn/Vcn;->handleMobileDataToggled()V

    .line 481
    return-void
.end method

.method private handleTeardown()V
    .registers 4

    .line 358
    const-string v0, "Tearing down"

    invoke-direct {p0, v0}, Lcom/android/server/vcn/Vcn;->logDbg(Ljava/lang/String;)V

    .line 359
    iget-object v0, p0, Lcom/android/server/vcn/Vcn;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    invoke-virtual {v0}, Lcom/android/server/vcn/VcnContext;->getVcnNetworkProvider()Lcom/android/server/vcn/VcnNetworkProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/vcn/Vcn;->mRequestListener:Lcom/android/server/vcn/Vcn$VcnNetworkRequestListener;

    invoke-virtual {v0, v1}, Lcom/android/server/vcn/VcnNetworkProvider;->unregisterListener(Lcom/android/server/vcn/VcnNetworkProvider$NetworkRequestListener;)V

    .line 361
    iget-object v0, p0, Lcom/android/server/vcn/Vcn;->mVcnGatewayConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vcn/VcnGatewayConnection;

    .line 362
    .local v1, "gatewayConnection":Lcom/android/server/vcn/VcnGatewayConnection;
    invoke-virtual {v1}, Lcom/android/server/vcn/VcnGatewayConnection;->teardownAsynchronously()V

    .line 363
    .end local v1    # "gatewayConnection":Lcom/android/server/vcn/VcnGatewayConnection;
    goto :goto_1a

    .line 366
    :cond_2a
    iget-object v0, p0, Lcom/android/server/vcn/Vcn;->mMobileDataStateListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_34
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vcn/Vcn$VcnUserMobileDataStateListener;

    .line 367
    .local v1, "listener":Lcom/android/server/vcn/Vcn$VcnUserMobileDataStateListener;
    invoke-direct {p0}, Lcom/android/server/vcn/Vcn;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    .line 368
    .end local v1    # "listener":Lcom/android/server/vcn/Vcn$VcnUserMobileDataStateListener;
    goto :goto_34

    .line 369
    :cond_48
    iget-object v0, p0, Lcom/android/server/vcn/Vcn;->mMobileDataStateListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 371
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/vcn/Vcn;->mCurrentStatus:I

    .line 372
    return-void
.end method

.method private isRequestSatisfiedByGatewayConnectionConfig(Landroid/net/NetworkRequest;Landroid/net/vcn/VcnGatewayConnectionConfig;)Z
    .registers 6
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "config"    # Landroid/net/vcn/VcnGatewayConnectionConfig;

    .line 555
    new-instance v0, Landroid/net/NetworkCapabilities$Builder;

    invoke-direct {v0}, Landroid/net/NetworkCapabilities$Builder;-><init>()V

    .line 556
    .local v0, "builder":Landroid/net/NetworkCapabilities$Builder;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->addTransportType(I)Landroid/net/NetworkCapabilities$Builder;

    .line 557
    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 558
    invoke-direct {p0, p2}, Lcom/android/server/vcn/Vcn;->getExposedCapabilitiesForMobileDataState(Landroid/net/vcn/VcnGatewayConnectionConfig;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 559
    .local v2, "cap":I
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 560
    .end local v2    # "cap":I
    goto :goto_16

    .line 562
    :cond_2a
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/NetworkRequest;->canBeSatisfiedBy(Landroid/net/NetworkCapabilities;)Z

    move-result v1

    return v1
.end method

.method private logDbg(Ljava/lang/String;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;

    .line 588
    sget-object v0, Lcom/android/server/vcn/Vcn;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/vcn/Vcn;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    return-void
.end method

.method private logDbg(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 592
    sget-object v0, Lcom/android/server/vcn/Vcn;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/vcn/Vcn;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 593
    return-void
.end method

.method private logErr(Ljava/lang/String;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;

    .line 606
    sget-object v0, Lcom/android/server/vcn/Vcn;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/vcn/Vcn;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    sget-object v0, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/vcn/Vcn;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ERR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 608
    return-void
.end method

.method private logErr(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 611
    sget-object v0, Lcom/android/server/vcn/Vcn;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/vcn/Vcn;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 612
    sget-object v0, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/vcn/Vcn;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ERR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 613
    return-void
.end method

.method private logInfo(Ljava/lang/String;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;

    .line 596
    sget-object v0, Lcom/android/server/vcn/Vcn;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/vcn/Vcn;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    sget-object v0, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/vcn/Vcn;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "INFO: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 598
    return-void
.end method

.method private logInfo(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 601
    sget-object v0, Lcom/android/server/vcn/Vcn;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/vcn/Vcn;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 602
    sget-object v0, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/vcn/Vcn;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "INFO: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 603
    return-void
.end method

.method private logVdbg(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 585
    return-void
.end method

.method private logWtf(Ljava/lang/String;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;

    .line 616
    sget-object v0, Lcom/android/server/vcn/Vcn;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/vcn/Vcn;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    sget-object v0, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/vcn/Vcn;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "WTF: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 618
    return-void
.end method

.method private logWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 621
    sget-object v0, Lcom/android/server/vcn/Vcn;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/vcn/Vcn;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 622
    sget-object v0, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/vcn/Vcn;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "WTF: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 623
    return-void
.end method

.method private updateMobileDataStateListeners()V
    .registers 8

    .line 484
    iget-object v0, p0, Lcom/android/server/vcn/Vcn;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    iget-object v1, p0, Lcom/android/server/vcn/Vcn;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->getAllSubIdsInGroup(Landroid/os/ParcelUuid;)Ljava/util/Set;

    move-result-object v0

    .line 485
    .local v0, "subIdsInGroup":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v1, Landroid/os/HandlerExecutor;

    invoke-direct {v1, p0}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 488
    .local v1, "executor":Landroid/os/HandlerExecutor;
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 489
    .local v3, "subId":I
    iget-object v4, p0, Lcom/android/server/vcn/Vcn;->mMobileDataStateListeners:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_42

    .line 490
    new-instance v4, Lcom/android/server/vcn/Vcn$VcnUserMobileDataStateListener;

    invoke-direct {v4, p0}, Lcom/android/server/vcn/Vcn$VcnUserMobileDataStateListener;-><init>(Lcom/android/server/vcn/Vcn;)V

    .line 493
    .local v4, "listener":Lcom/android/server/vcn/Vcn$VcnUserMobileDataStateListener;
    invoke-direct {p0, v3}, Lcom/android/server/vcn/Vcn;->getTelephonyManagerForSubid(I)Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5, v1, v4}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    .line 494
    iget-object v5, p0, Lcom/android/server/vcn/Vcn;->mMobileDataStateListeners:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    .end local v3    # "subId":I
    .end local v4    # "listener":Lcom/android/server/vcn/Vcn$VcnUserMobileDataStateListener;
    :cond_42
    goto :goto_11

    .line 499
    :cond_43
    iget-object v2, p0, Lcom/android/server/vcn/Vcn;->mMobileDataStateListeners:Ljava/util/Map;

    .line 500
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 501
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/vcn/Vcn$VcnUserMobileDataStateListener;>;>;"
    :goto_4d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_74

    .line 502
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 503
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/vcn/Vcn$VcnUserMobileDataStateListener;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_73

    .line 504
    invoke-direct {p0}, Lcom/android/server/vcn/Vcn;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyCallback;

    invoke-virtual {v4, v5}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    .line 505
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 507
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/vcn/Vcn$VcnUserMobileDataStateListener;>;"
    :cond_73
    goto :goto_4d

    .line 508
    :cond_74
    return-void
.end method


# virtual methods
.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 4
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 631
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Vcn ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/vcn/Vcn;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 632
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/vcn/Vcn;->mCurrentStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 635
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsMobileDataEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/vcn/Vcn;->mIsMobileDataEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 636
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 638
    const-string/jumbo v0, "mVcnGatewayConnections:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 639
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 640
    iget-object v0, p0, Lcom/android/server/vcn/Vcn;->mVcnGatewayConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_67
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_77

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vcn/VcnGatewayConnection;

    .line 641
    .local v1, "gw":Lcom/android/server/vcn/VcnGatewayConnection;
    invoke-virtual {v1, p1}, Lcom/android/server/vcn/VcnGatewayConnection;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 642
    .end local v1    # "gw":Lcom/android/server/vcn/VcnGatewayConnection;
    goto :goto_67

    .line 643
    :cond_77
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 644
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 646
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 647
    return-void
.end method

.method public getStatus()I
    .registers 2

    .line 260
    iget v0, p0, Lcom/android/server/vcn/Vcn;->mCurrentStatus:I

    return v0
.end method

.method public getVcnGatewayConnectionConfigMap()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/net/vcn/VcnGatewayConnectionConfig;",
            "Lcom/android/server/vcn/VcnGatewayConnection;",
            ">;"
        }
    .end annotation

    .line 279
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/server/vcn/Vcn;->mVcnGatewayConnections:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getVcnGatewayConnections()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/android/server/vcn/VcnGatewayConnection;",
            ">;"
        }
    .end annotation

    .line 272
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/server/vcn/Vcn;->mVcnGatewayConnections:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 293
    iget v0, p0, Lcom/android/server/vcn/Vcn;->mCurrentStatus:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b

    iget v0, p0, Lcom/android/server/vcn/Vcn;->mCurrentStatus:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_b

    .line 295
    return-void

    .line 298
    :cond_b
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_56

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown msg.what: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/vcn/Vcn;->logWtf(Ljava/lang/String;)V

    goto :goto_55

    .line 318
    :sswitch_29
    invoke-direct {p0}, Lcom/android/server/vcn/Vcn;->handleTeardown()V

    .line 319
    goto :goto_55

    .line 315
    :sswitch_2d
    invoke-direct {p0}, Lcom/android/server/vcn/Vcn;->handleMobileDataToggled()V

    .line 316
    goto :goto_55

    .line 312
    :sswitch_31
    invoke-direct {p0}, Lcom/android/server/vcn/Vcn;->handleSafeModeStatusChanged()V

    .line 313
    goto :goto_55

    .line 309
    :sswitch_35
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/vcn/VcnGatewayConnectionConfig;

    invoke-direct {p0, v0}, Lcom/android/server/vcn/Vcn;->handleGatewayConnectionQuit(Landroid/net/vcn/VcnGatewayConnectionConfig;)V

    .line 310
    goto :goto_55

    .line 306
    :sswitch_3d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    invoke-direct {p0, v0}, Lcom/android/server/vcn/Vcn;->handleSubscriptionsChanged(Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)V

    .line 307
    goto :goto_55

    .line 303
    :sswitch_45
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/NetworkRequest;

    invoke-direct {p0, v0}, Lcom/android/server/vcn/Vcn;->handleNetworkRequested(Landroid/net/NetworkRequest;)V

    .line 304
    goto :goto_55

    .line 300
    :sswitch_4d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/vcn/VcnConfig;

    invoke-direct {p0, v0}, Lcom/android/server/vcn/Vcn;->handleConfigUpdated(Landroid/net/vcn/VcnConfig;)V

    .line 301
    nop

    .line 323
    :goto_55
    return-void

    :sswitch_data_56
    .sparse-switch
        0x0 -> :sswitch_4d
        0x1 -> :sswitch_45
        0x2 -> :sswitch_3d
        0x3 -> :sswitch_35
        0x4 -> :sswitch_31
        0x5 -> :sswitch_2d
        0x64 -> :sswitch_29
    .end sparse-switch
.end method

.method public isMobileDataEnabled()Z
    .registers 2

    .line 651
    iget-boolean v0, p0, Lcom/android/server/vcn/Vcn;->mIsMobileDataEnabled:Z

    return v0
.end method

.method public setMobileDataEnabled(Z)V
    .registers 2
    .param p1, "isMobileDataEnabled"    # Z

    .line 656
    iput-boolean p1, p0, Lcom/android/server/vcn/Vcn;->mIsMobileDataEnabled:Z

    .line 657
    return-void
.end method

.method public setStatus(I)V
    .registers 2
    .param p1, "status"    # I

    .line 266
    iput p1, p0, Lcom/android/server/vcn/Vcn;->mCurrentStatus:I

    .line 267
    return-void
.end method

.method public teardownAsynchronously()V
    .registers 2

    .line 255
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/server/vcn/Vcn;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/vcn/Vcn;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 256
    return-void
.end method

.method public updateConfig(Landroid/net/vcn/VcnConfig;)V
    .registers 3
    .param p1, "config"    # Landroid/net/vcn/VcnConfig;

    .line 241
    const-string v0, "Missing config"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 243
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/vcn/Vcn;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/vcn/Vcn;->sendMessage(Landroid/os/Message;)Z

    .line 244
    return-void
.end method

.method public updateSubscriptionSnapshot(Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)V
    .registers 3
    .param p1, "snapshot"    # Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 248
    const-string v0, "Missing snapshot"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 250
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/android/server/vcn/Vcn;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/vcn/Vcn;->sendMessage(Landroid/os/Message;)Z

    .line 251
    return-void
.end method
