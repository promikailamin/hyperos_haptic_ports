.class public Lcom/android/server/vcn/TelephonySubscriptionTracker;
.super Landroid/content/BroadcastReceiver;
.source "TelephonySubscriptionTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vcn/TelephonySubscriptionTracker$Dependencies;,
        Lcom/android/server/vcn/TelephonySubscriptionTracker$ActiveDataSubscriptionIdListener;,
        Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionTrackerCallback;,
        Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;
    }
.end annotation


# static fields
.field private static final LOG_DBG:Z = false

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActiveDataSubIdListener:Lcom/android/server/vcn/TelephonySubscriptionTracker$ActiveDataSubscriptionIdListener;

.field private final mCallback:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionTrackerCallback;

.field private final mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field private final mCarrierPrivilegesCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

.field private final mDeps:Lcom/android/server/vcn/TelephonySubscriptionTracker$Dependencies;

.field private final mHandler:Landroid/os/Handler;

.field private final mReadySubIdsBySlotId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubIdToCarrierConfigMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubscriptionChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private final mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 85
    const-class v0, Lcom/android/server/vcn/TelephonySubscriptionTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionTrackerCallback;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "callback"    # Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionTrackerCallback;

    .line 116
    new-instance v0, Lcom/android/server/vcn/TelephonySubscriptionTracker$Dependencies;

    invoke-direct {v0}, Lcom/android/server/vcn/TelephonySubscriptionTracker$Dependencies;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/vcn/TelephonySubscriptionTracker;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionTrackerCallback;Lcom/android/server/vcn/TelephonySubscriptionTracker$Dependencies;)V

    .line 117
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionTrackerCallback;Lcom/android/server/vcn/TelephonySubscriptionTracker$Dependencies;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "callback"    # Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionTrackerCallback;
    .param p4, "deps"    # Lcom/android/server/vcn/TelephonySubscriptionTracker$Dependencies;

    .line 124
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mReadySubIdsBySlotId:Ljava/util/Map;

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mSubIdToCarrierConfigMap:Ljava/util/Map;

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mCarrierPrivilegesCallbacks:Ljava/util/List;

    .line 125
    const-string v0, "Missing context"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mContext:Landroid/content/Context;

    .line 126
    const-string v1, "Missing handler"

    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    iput-object v1, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mHandler:Landroid/os/Handler;

    .line 127
    const-string v1, "Missing callback"

    invoke-static {p3, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionTrackerCallback;

    iput-object v1, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mCallback:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionTrackerCallback;

    .line 128
    const-string v1, "Missing deps"

    invoke-static {p4, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vcn/TelephonySubscriptionTracker$Dependencies;

    iput-object v1, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mDeps:Lcom/android/server/vcn/TelephonySubscriptionTracker$Dependencies;

    .line 130
    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 131
    const-class v1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionManager;

    iput-object v1, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 132
    const-class v1, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    iput-object v0, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 133
    new-instance v0, Lcom/android/server/vcn/TelephonySubscriptionTracker$ActiveDataSubscriptionIdListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/vcn/TelephonySubscriptionTracker$ActiveDataSubscriptionIdListener;-><init>(Lcom/android/server/vcn/TelephonySubscriptionTracker;Lcom/android/server/vcn/TelephonySubscriptionTracker$ActiveDataSubscriptionIdListener-IA;)V

    iput-object v0, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mActiveDataSubIdListener:Lcom/android/server/vcn/TelephonySubscriptionTracker$ActiveDataSubscriptionIdListener;

    .line 135
    new-instance v0, Lcom/android/server/vcn/TelephonySubscriptionTracker$1;

    invoke-direct {v0, p0}, Lcom/android/server/vcn/TelephonySubscriptionTracker$1;-><init>(Lcom/android/server/vcn/TelephonySubscriptionTracker;)V

    iput-object v0, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mSubscriptionChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 142
    return-void
.end method

.method private handleActionCarrierConfigChanged(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 316
    const-string v0, "android.telephony.extra.SUBSCRIPTION_INDEX"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 317
    .local v0, "subId":I
    const-string v2, "android.telephony.extra.SLOT_INDEX"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 319
    .local v2, "slotId":I
    if-ne v2, v1, :cond_10

    .line 320
    return-void

    .line 323
    :cond_10
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 324
    iget-object v1, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v1, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 325
    .local v1, "carrierConfig":Landroid/os/PersistableBundle;
    iget-object v3, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mDeps:Lcom/android/server/vcn/TelephonySubscriptionTracker$Dependencies;

    invoke-virtual {v3, v1}, Lcom/android/server/vcn/TelephonySubscriptionTracker$Dependencies;->isConfigForIdentifiedCarrier(Landroid/os/PersistableBundle;)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 326
    iget-object v3, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mReadySubIdsBySlotId:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    sget-object v3, Landroid/net/vcn/VcnManager;->VCN_RELATED_CARRIER_CONFIG_KEYS:[Ljava/lang/String;

    .line 329
    invoke-static {v1, v3}, Lcom/android/server/vcn/util/PersistableBundleUtils;->minimizeBundle(Landroid/os/PersistableBundle;[Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v3

    .line 331
    .local v3, "minimized":Landroid/os/PersistableBundle;
    if-eqz v3, :cond_47

    .line 332
    iget-object v4, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mSubIdToCarrierConfigMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;

    invoke-direct {v6, v3}, Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;-><init>(Landroid/os/PersistableBundle;)V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    :cond_47
    invoke-virtual {p0}, Lcom/android/server/vcn/TelephonySubscriptionTracker;->handleSubscriptionsChanged()V

    .line 336
    .end local v1    # "carrierConfig":Landroid/os/PersistableBundle;
    .end local v3    # "minimized":Landroid/os/PersistableBundle;
    :cond_4a
    goto :goto_61

    .line 337
    :cond_4b
    iget-object v1, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mReadySubIdsBySlotId:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 338
    .local v1, "oldSubid":Ljava/lang/Integer;
    if-eqz v1, :cond_5e

    .line 339
    iget-object v3, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mSubIdToCarrierConfigMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    :cond_5e
    invoke-virtual {p0}, Lcom/android/server/vcn/TelephonySubscriptionTracker;->handleSubscriptionsChanged()V

    .line 343
    .end local v1    # "oldSubid":Ljava/lang/Integer;
    :goto_61
    return-void
.end method

.method private handleActionMultiSimConfigChanged(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 296
    invoke-direct {p0}, Lcom/android/server/vcn/TelephonySubscriptionTracker;->unregisterCarrierPrivilegesCallbacks()V

    .line 299
    iget-object v0, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v0

    .line 300
    .local v0, "modemCount":I
    iget-object v1, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mReadySubIdsBySlotId:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 301
    .local v1, "slotIdIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 302
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 304
    .local v2, "slotId":I
    if-lt v2, v0, :cond_28

    .line 305
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 307
    .end local v2    # "slotId":I
    :cond_28
    goto :goto_13

    .line 309
    :cond_29
    invoke-direct {p0}, Lcom/android/server/vcn/TelephonySubscriptionTracker;->registerCarrierPrivilegesCallbacks()V

    .line 310
    invoke-virtual {p0}, Lcom/android/server/vcn/TelephonySubscriptionTracker;->handleSubscriptionsChanged()V

    .line 311
    return-void
.end method

.method private registerCarrierPrivilegesCallbacks()V
    .registers 6

    .line 165
    new-instance v0, Landroid/os/HandlerExecutor;

    iget-object v1, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 166
    .local v0, "executor":Landroid/os/HandlerExecutor;
    iget-object v1, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v1

    .line 168
    .local v1, "modemCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, v1, :cond_2c

    .line 169
    :try_start_10
    new-instance v3, Lcom/android/server/vcn/TelephonySubscriptionTracker$2;

    invoke-direct {v3, p0}, Lcom/android/server/vcn/TelephonySubscriptionTracker$2;-><init>(Lcom/android/server/vcn/TelephonySubscriptionTracker;)V

    .line 182
    .local v3, "carrierPrivilegesCallback":Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;
    iget-object v4, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4, v2, v0, v3}, Landroid/telephony/TelephonyManager;->registerCarrierPrivilegesCallback(ILjava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;)V

    .line 184
    iget-object v4, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mCarrierPrivilegesCallbacks:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_1f} :catch_23

    .line 168
    nop

    .end local v3    # "carrierPrivilegesCallback":Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 186
    .end local v2    # "i":I
    :catch_23
    move-exception v2

    .line 187
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    sget-object v3, Lcom/android/server/vcn/TelephonySubscriptionTracker;->TAG:Ljava/lang/String;

    const-string v4, "Encounted exception registering carrier privileges listeners"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2d

    .line 188
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2c
    nop

    .line 189
    :goto_2d
    return-void
.end method

.method private unregisterCarrierPrivilegesCallbacks()V
    .registers 4

    .line 206
    iget-object v0, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mCarrierPrivilegesCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;

    .line 207
    .local v1, "carrierPrivilegesCallback":Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;
    iget-object v2, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->unregisterCarrierPrivilegesCallback(Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;)V

    .line 208
    .end local v1    # "carrierPrivilegesCallback":Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;
    goto :goto_6

    .line 209
    :cond_18
    iget-object v0, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mCarrierPrivilegesCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 210
    return-void
.end method


# virtual methods
.method getReadySubIdsBySlotId()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 360
    iget-object v0, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mReadySubIdsBySlotId:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method getSubIdToCarrierConfigMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;",
            ">;"
        }
    .end annotation

    .line 365
    iget-object v0, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mSubIdToCarrierConfigMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public handleSubscriptionsChanged()V
    .registers 10

    .line 219
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 220
    .local v0, "privilegedPackages":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/ParcelUuid;Ljava/util/Set<Ljava/lang/String;>;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 222
    .local v1, "newSubIdToInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/telephony/SubscriptionInfo;>;"
    iget-object v2, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionManager;->getAllSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    .line 223
    .local v2, "allSubs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-nez v2, :cond_13

    .line 224
    return-void

    .line 229
    :cond_13
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_74

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    .line 230
    .local v4, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object v5

    if-nez v5, :cond_2a

    .line 231
    goto :goto_17

    .line 235
    :cond_2a
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_73

    iget-object v5, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mReadySubIdsBySlotId:Ljava/util/Map;

    .line 245
    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_73

    .line 246
    iget-object v5, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 247
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v5

    .line 249
    .local v5, "subIdSpecificTelephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object v6

    .line 250
    .local v6, "subGroup":Landroid/os/ParcelUuid;
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    .line 251
    invoke-interface {v0, v6, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    .line 252
    .local v7, "pkgs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPackagesWithCarrierPrivileges()Ljava/util/List;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 254
    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    .end local v4    # "subInfo":Landroid/telephony/SubscriptionInfo;
    .end local v5    # "subIdSpecificTelephonyManager":Landroid/telephony/TelephonyManager;
    .end local v6    # "subGroup":Landroid/os/ParcelUuid;
    .end local v7    # "pkgs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_73
    goto :goto_17

    .line 258
    :cond_74
    new-instance v3, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    iget-object v4, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mDeps:Lcom/android/server/vcn/TelephonySubscriptionTracker$Dependencies;

    .line 260
    invoke-virtual {v4}, Lcom/android/server/vcn/TelephonySubscriptionTracker$Dependencies;->getActiveDataSubscriptionId()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mSubIdToCarrierConfigMap:Ljava/util/Map;

    invoke-direct {v3, v4, v1, v5, v0}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;-><init>(ILjava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 266
    .local v3, "newSnapshot":Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;
    iget-object v4, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mCurrentSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    invoke-virtual {v3, v4}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_95

    .line 267
    iput-object v3, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mCurrentSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 268
    iget-object v4, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/vcn/TelephonySubscriptionTracker$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, v3}, Lcom/android/server/vcn/TelephonySubscriptionTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/vcn/TelephonySubscriptionTracker;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 273
    :cond_95
    return-void
.end method

.method synthetic lambda$handleSubscriptionsChanged$0$com-android-server-vcn-TelephonySubscriptionTracker(Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)V
    .registers 3
    .param p1, "newSnapshot"    # Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 270
    iget-object v0, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mCallback:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionTrackerCallback;

    invoke-interface {v0, p1}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionTrackerCallback;->onNewSnapshot(Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)V

    .line 271
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 283
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_4a

    :cond_b
    goto :goto_20

    :sswitch_c
    const-string v1, "android.telephony.action.MULTI_SIM_CONFIG_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_21

    :sswitch_16
    const-string v1, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    goto :goto_21

    :goto_20
    const/4 v0, -0x1

    :goto_21
    packed-switch v0, :pswitch_data_54

    .line 291
    sget-object v0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown intent received with action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49

    .line 288
    :pswitch_41
    invoke-direct {p0, p1, p2}, Lcom/android/server/vcn/TelephonySubscriptionTracker;->handleActionMultiSimConfigChanged(Landroid/content/Context;Landroid/content/Intent;)V

    .line 289
    goto :goto_49

    .line 285
    :pswitch_45
    invoke-direct {p0, p1, p2}, Lcom/android/server/vcn/TelephonySubscriptionTracker;->handleActionCarrierConfigChanged(Landroid/content/Context;Landroid/content/Intent;)V

    .line 286
    nop

    .line 293
    :goto_49
    return-void

    :sswitch_data_4a
    .sparse-switch
        -0x43dd7a3f -> :sswitch_16
        0x412a6228 -> :sswitch_c
    .end sparse-switch

    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_45
        :pswitch_41
    .end packed-switch
.end method

.method public register()V
    .registers 6

    .line 150
    new-instance v0, Landroid/os/HandlerExecutor;

    iget-object v1, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 151
    .local v0, "executor":Landroid/os/HandlerExecutor;
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 152
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    const-string v2, "android.telephony.action.MULTI_SIM_CONFIG_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    iget-object v2, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v2, p0, v1, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 156
    iget-object v2, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v3, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mSubscriptionChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v2, v0, v3}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Ljava/util/concurrent/Executor;Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 158
    iget-object v2, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mActiveDataSubIdListener:Lcom/android/server/vcn/TelephonySubscriptionTracker$ActiveDataSubscriptionIdListener;

    invoke-virtual {v2, v0, v3}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    .line 160
    invoke-direct {p0}, Lcom/android/server/vcn/TelephonySubscriptionTracker;->registerCarrierPrivilegesCallbacks()V

    .line 161
    return-void
.end method

.method setReadySubIdsBySlotId(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 347
    .local p1, "readySubIdsBySlotId":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mReadySubIdsBySlotId:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 348
    iget-object v0, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mReadySubIdsBySlotId:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 349
    return-void
.end method

.method setSubIdToCarrierConfigMap(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;",
            ">;)V"
        }
    .end annotation

    .line 354
    .local p1, "subIdToCarrierConfigMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;>;"
    iget-object v0, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mSubIdToCarrierConfigMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 355
    iget-object v0, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mSubIdToCarrierConfigMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 356
    return-void
.end method

.method public unregister()V
    .registers 3

    .line 197
    iget-object v0, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 198
    iget-object v0, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mSubscriptionChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 199
    iget-object v0, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mActiveDataSubIdListener:Lcom/android/server/vcn/TelephonySubscriptionTracker$ActiveDataSubscriptionIdListener;

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    .line 201
    invoke-direct {p0}, Lcom/android/server/vcn/TelephonySubscriptionTracker;->unregisterCarrierPrivilegesCallbacks()V

    .line 202
    return-void
.end method
