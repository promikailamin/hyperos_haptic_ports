.class public Lcom/android/server/location/eventlog/LocationEventLog;
.super Lcom/android/server/location/eventlog/LocalEventLog;
.source "LocationEventLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;,
        Lcom/android/server/location/eventlog/LocationEventLog$LocationsEventLog;,
        Lcom/android/server/location/eventlog/LocationEventLog$LocationAdasEnabledEvent;,
        Lcom/android/server/location/eventlog/LocationEventLog$LocationEnabledEvent;,
        Lcom/android/server/location/eventlog/LocationEventLog$UserSwitchedEvent;,
        Lcom/android/server/location/eventlog/LocationEventLog$LocationPowerSaveModeEvent;,
        Lcom/android/server/location/eventlog/LocationEventLog$ProviderStationaryThrottledEvent;,
        Lcom/android/server/location/eventlog/LocationEventLog$ProviderDeliverLocationEvent;,
        Lcom/android/server/location/eventlog/LocationEventLog$ProviderReceiveLocationEvent;,
        Lcom/android/server/location/eventlog/LocationEventLog$ProviderUpdateEvent;,
        Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientPermittedEvent;,
        Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientForegroundEvent;,
        Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientRegisterEvent;,
        Lcom/android/server/location/eventlog/LocationEventLog$ProviderMockedEvent;,
        Lcom/android/server/location/eventlog/LocationEventLog$ProviderEnabledEvent;,
        Lcom/android/server/location/eventlog/LocationEventLog$ProviderEvent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/location/eventlog/LocalEventLog<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;


# instance fields
.field private final mAggregateStats:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Landroid/location/util/identity/CallerIdentity;",
            "Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mLocationsLog:Lcom/android/server/location/eventlog/LocationEventLog$LocationsEventLog;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 49
    new-instance v0, Lcom/android/server/location/eventlog/LocationEventLog;

    invoke-direct {v0}, Lcom/android/server/location/eventlog/LocationEventLog;-><init>()V

    sput-object v0, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 74
    invoke-static {}, Lcom/android/server/location/eventlog/LocationEventLog;->getLogSize()I

    move-result v0

    const-class v1, Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/android/server/location/eventlog/LocalEventLog;-><init>(ILjava/lang/Class;)V

    .line 75
    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/location/eventlog/LocationEventLog;->mAggregateStats:Landroid/util/ArrayMap;

    .line 76
    new-instance v0, Lcom/android/server/location/eventlog/LocationEventLog$LocationsEventLog;

    invoke-static {}, Lcom/android/server/location/eventlog/LocationEventLog;->getLocationsLogSize()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/android/server/location/eventlog/LocationEventLog$LocationsEventLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/location/eventlog/LocationEventLog;->mLocationsLog:Lcom/android/server/location/eventlog/LocationEventLog$LocationsEventLog;

    .line 77
    return-void
.end method

.method private addLog(Ljava/lang/Object;)V
    .registers 4
    .param p1, "logEvent"    # Ljava/lang/Object;

    .line 220
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/location/eventlog/LocationEventLog;->addLog(JLjava/lang/Object;)V

    .line 221
    return-void
.end method

.method private getAggregateStats(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;
    .registers 8
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "identity"    # Landroid/location/util/identity/CallerIdentity;

    .line 92
    iget-object v0, p0, Lcom/android/server/location/eventlog/LocationEventLog;->mAggregateStats:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 93
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/eventlog/LocationEventLog;->mAggregateStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 94
    .local v1, "packageMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/location/util/identity/CallerIdentity;Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;>;"
    if-nez v1, :cond_19

    .line 95
    new-instance v2, Landroid/util/ArrayMap;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Landroid/util/ArrayMap;-><init>(I)V

    move-object v1, v2

    .line 96
    iget-object v2, p0, Lcom/android/server/location/eventlog/LocationEventLog;->mAggregateStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    :cond_19
    invoke-static {p2}, Landroid/location/util/identity/CallerIdentity;->forAggregation(Landroid/location/util/identity/CallerIdentity;)Landroid/location/util/identity/CallerIdentity;

    move-result-object v2

    .line 99
    .local v2, "aggregate":Landroid/location/util/identity/CallerIdentity;
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;

    .line 100
    .local v3, "stats":Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;
    if-nez v3, :cond_2e

    .line 101
    new-instance v4, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;

    invoke-direct {v4}, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;-><init>()V

    move-object v3, v4

    .line 102
    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    :cond_2e
    monitor-exit v0

    return-object v3

    .line 105
    .end local v1    # "packageMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/location/util/identity/CallerIdentity;Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;>;"
    .end local v2    # "aggregate":Landroid/location/util/identity/CallerIdentity;
    .end local v3    # "stats":Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw v1
.end method

.method private static getLocationsLogSize()I
    .registers 1

    .line 60
    sget-boolean v0, Lcom/android/server/location/LocationManagerService;->D:Z

    if-eqz v0, :cond_7

    .line 61
    const/16 v0, 0xc8

    return v0

    .line 63
    :cond_7
    const/16 v0, 0x64

    return v0
.end method

.method private static getLogSize()I
    .registers 1

    .line 52
    sget-boolean v0, Lcom/android/server/location/LocationManagerService;->D:Z

    if-eqz v0, :cond_7

    .line 53
    const/16 v0, 0x258

    return v0

    .line 55
    :cond_7
    const/16 v0, 0x12c

    return v0
.end method

.method static synthetic lambda$iterate$0(Ljava/lang/String;Ljava/lang/StringBuilder;JLjava/util/function/Consumer;JLjava/lang/Object;)V
    .registers 12
    .param p0, "providerFilter"    # Ljava/lang/String;
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "systemTimeDeltaMs"    # J
    .param p4, "consumer"    # Ljava/util/function/Consumer;
    .param p5, "time"    # J
    .param p7, "logEvent"    # Ljava/lang/Object;

    .line 237
    const/4 v0, 0x0

    if-eqz p0, :cond_15

    instance-of v1, p7, Lcom/android/server/location/eventlog/LocationEventLog$ProviderEvent;

    if-eqz v1, :cond_13

    move-object v1, p7

    check-cast v1, Lcom/android/server/location/eventlog/LocationEventLog$ProviderEvent;

    iget-object v1, v1, Lcom/android/server/location/eventlog/LocationEventLog$ProviderEvent;->mProvider:Ljava/lang/String;

    .line 238
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_15

    :cond_13
    move v1, v0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v1, 0x1

    .line 239
    .local v1, "match":Z
    :goto_16
    if-eqz v1, :cond_33

    .line 240
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 241
    add-long v2, p5, p2

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 244
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 246
    :cond_33
    return-void
.end method


# virtual methods
.method public copyAggregateStats()Landroid/util/ArrayMap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Landroid/location/util/identity/CallerIdentity;",
            "Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;",
            ">;>;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/android/server/location/eventlog/LocationEventLog;->mAggregateStats:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 82
    :try_start_3
    new-instance v1, Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/location/eventlog/LocationEventLog;->mAggregateStats:Landroid/util/ArrayMap;

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 84
    .local v1, "copy":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArrayMap<Landroid/location/util/identity/CallerIdentity;Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;>;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_22

    .line 85
    new-instance v3, Landroid/util/ArrayMap;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    invoke-direct {v3, v4}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    .line 84
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 87
    .end local v2    # "i":I
    :cond_22
    monitor-exit v0

    return-object v1

    .line 88
    .end local v1    # "copy":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArrayMap<Landroid/location/util/identity/CallerIdentity;Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;>;>;"
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public declared-synchronized iterate(Lcom/android/server/location/eventlog/LocalEventLog$LogConsumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/location/eventlog/LocalEventLog$LogConsumer<",
            "-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .local p1, "consumer":Lcom/android/server/location/eventlog/LocalEventLog$LogConsumer;, "Lcom/android/server/location/eventlog/LocalEventLog$LogConsumer<-Ljava/lang/Object;>;"
    monitor-enter p0

    .line 225
    const/4 v0, 0x2

    :try_start_2
    new-array v0, v0, [Lcom/android/server/location/eventlog/LocalEventLog;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/location/eventlog/LocationEventLog;->mLocationsLog:Lcom/android/server/location/eventlog/LocationEventLog$LocationsEventLog;

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lcom/android/server/location/eventlog/LocationEventLog;->iterate(Lcom/android/server/location/eventlog/LocalEventLog$LogConsumer;[Lcom/android/server/location/eventlog/LocalEventLog;)V
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_11

    .line 226
    monitor-exit p0

    return-void

    .line 224
    .end local p0    # "this":Lcom/android/server/location/eventlog/LocationEventLog;
    .end local p1    # "consumer":Lcom/android/server/location/eventlog/LocalEventLog$LogConsumer;, "Lcom/android/server/location/eventlog/LocalEventLog$LogConsumer<-Ljava/lang/Object;>;"
    :catchall_11
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public iterate(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 229
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/eventlog/LocationEventLog;->iterate(Ljava/util/function/Consumer;Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method public iterate(Ljava/util/function/Consumer;Ljava/lang/String;)V
    .registers 13
    .param p2, "providerFilter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 233
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/String;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 234
    .local v0, "systemTimeDeltaMs":J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 235
    .local v6, "builder":Ljava/lang/StringBuilder;
    new-instance v2, Lcom/android/server/location/eventlog/LocationEventLog$$ExternalSyntheticLambda0;

    move-object v4, v2

    move-object v5, p2

    move-wide v7, v0

    move-object v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/server/location/eventlog/LocationEventLog$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/StringBuilder;JLjava/util/function/Consumer;)V

    invoke-virtual {p0, v2}, Lcom/android/server/location/eventlog/LocationEventLog;->iterate(Lcom/android/server/location/eventlog/LocalEventLog$LogConsumer;)V

    .line 247
    return-void
.end method

.method public logAdasLocationEnabled(IZ)V
    .registers 4
    .param p1, "userId"    # I
    .param p2, "enabled"    # Z

    .line 120
    new-instance v0, Lcom/android/server/location/eventlog/LocationEventLog$LocationAdasEnabledEvent;

    invoke-direct {v0, p1, p2}, Lcom/android/server/location/eventlog/LocationEventLog$LocationAdasEnabledEvent;-><init>(IZ)V

    invoke-direct {p0, v0}, Lcom/android/server/location/eventlog/LocationEventLog;->addLog(Ljava/lang/Object;)V

    .line 121
    return-void
.end method

.method public logLocationEnabled(IZ)V
    .registers 4
    .param p1, "userId"    # I
    .param p2, "enabled"    # Z

    .line 115
    new-instance v0, Lcom/android/server/location/eventlog/LocationEventLog$LocationEnabledEvent;

    invoke-direct {v0, p1, p2}, Lcom/android/server/location/eventlog/LocationEventLog$LocationEnabledEvent;-><init>(IZ)V

    invoke-direct {p0, v0}, Lcom/android/server/location/eventlog/LocationEventLog;->addLog(Ljava/lang/Object;)V

    .line 116
    return-void
.end method

.method public logLocationPowerSaveMode(I)V
    .registers 3
    .param p1, "locationPowerSaveMode"    # I

    .line 216
    new-instance v0, Lcom/android/server/location/eventlog/LocationEventLog$LocationPowerSaveModeEvent;

    invoke-direct {v0, p1}, Lcom/android/server/location/eventlog/LocationEventLog$LocationPowerSaveModeEvent;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/android/server/location/eventlog/LocationEventLog;->addLog(Ljava/lang/Object;)V

    .line 217
    return-void
.end method

.method public logProviderClientActive(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)V
    .registers 4
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "identity"    # Landroid/location/util/identity/CallerIdentity;

    .line 148
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/eventlog/LocationEventLog;->getAggregateStats(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->markRequestActive()V

    .line 149
    return-void
.end method

.method public logProviderClientBackground(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)V
    .registers 5
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "identity"    # Landroid/location/util/identity/CallerIdentity;

    .line 166
    sget-boolean v0, Lcom/android/server/location/LocationManagerService;->D:Z

    if-eqz v0, :cond_d

    .line 167
    new-instance v0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientForegroundEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientForegroundEvent;-><init>(Ljava/lang/String;ZLandroid/location/util/identity/CallerIdentity;)V

    invoke-direct {p0, v0}, Lcom/android/server/location/eventlog/LocationEventLog;->addLog(Ljava/lang/Object;)V

    .line 169
    :cond_d
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/eventlog/LocationEventLog;->getAggregateStats(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->markRequestBackground()V

    .line 170
    return-void
.end method

.method public logProviderClientForeground(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)V
    .registers 5
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "identity"    # Landroid/location/util/identity/CallerIdentity;

    .line 158
    sget-boolean v0, Lcom/android/server/location/LocationManagerService;->D:Z

    if-eqz v0, :cond_d

    .line 159
    new-instance v0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientForegroundEvent;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1, p2}, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientForegroundEvent;-><init>(Ljava/lang/String;ZLandroid/location/util/identity/CallerIdentity;)V

    invoke-direct {p0, v0}, Lcom/android/server/location/eventlog/LocationEventLog;->addLog(Ljava/lang/Object;)V

    .line 161
    :cond_d
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/eventlog/LocationEventLog;->getAggregateStats(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->markRequestForeground()V

    .line 162
    return-void
.end method

.method public logProviderClientInactive(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)V
    .registers 4
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "identity"    # Landroid/location/util/identity/CallerIdentity;

    .line 153
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/eventlog/LocationEventLog;->getAggregateStats(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->markRequestInactive()V

    .line 154
    return-void
.end method

.method public logProviderClientPermitted(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)V
    .registers 5
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "identity"    # Landroid/location/util/identity/CallerIdentity;

    .line 174
    sget-boolean v0, Lcom/android/server/location/LocationManagerService;->D:Z

    if-eqz v0, :cond_d

    .line 175
    new-instance v0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientPermittedEvent;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1, p2}, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientPermittedEvent;-><init>(Ljava/lang/String;ZLandroid/location/util/identity/CallerIdentity;)V

    invoke-direct {p0, v0}, Lcom/android/server/location/eventlog/LocationEventLog;->addLog(Ljava/lang/Object;)V

    .line 177
    :cond_d
    return-void
.end method

.method public logProviderClientRegistered(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;Landroid/location/LocationRequest;)V
    .registers 7
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "identity"    # Landroid/location/util/identity/CallerIdentity;
    .param p3, "request"    # Landroid/location/LocationRequest;

    .line 136
    new-instance v0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientRegisterEvent;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1, p2, p3}, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientRegisterEvent;-><init>(Ljava/lang/String;ZLandroid/location/util/identity/CallerIdentity;Landroid/location/LocationRequest;)V

    invoke-direct {p0, v0}, Lcom/android/server/location/eventlog/LocationEventLog;->addLog(Ljava/lang/Object;)V

    .line 137
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/eventlog/LocationEventLog;->getAggregateStats(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;

    move-result-object v0

    invoke-virtual {p3}, Landroid/location/LocationRequest;->getIntervalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->markRequestAdded(J)V

    .line 138
    return-void
.end method

.method public logProviderClientUnpermitted(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)V
    .registers 5
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "identity"    # Landroid/location/util/identity/CallerIdentity;

    .line 181
    sget-boolean v0, Lcom/android/server/location/LocationManagerService;->D:Z

    if-eqz v0, :cond_d

    .line 182
    new-instance v0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientPermittedEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientPermittedEvent;-><init>(Ljava/lang/String;ZLandroid/location/util/identity/CallerIdentity;)V

    invoke-direct {p0, v0}, Lcom/android/server/location/eventlog/LocationEventLog;->addLog(Ljava/lang/Object;)V

    .line 184
    :cond_d
    return-void
.end method

.method public logProviderClientUnregistered(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)V
    .registers 6
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "identity"    # Landroid/location/util/identity/CallerIdentity;

    .line 142
    new-instance v0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientRegisterEvent;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, p2, v2}, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientRegisterEvent;-><init>(Ljava/lang/String;ZLandroid/location/util/identity/CallerIdentity;Landroid/location/LocationRequest;)V

    invoke-direct {p0, v0}, Lcom/android/server/location/eventlog/LocationEventLog;->addLog(Ljava/lang/Object;)V

    .line 143
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/eventlog/LocationEventLog;->getAggregateStats(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->markRequestRemoved()V

    .line 144
    return-void
.end method

.method public logProviderDeliveredLocations(Ljava/lang/String;ILandroid/location/util/identity/CallerIdentity;)V
    .registers 5
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "numLocations"    # I
    .param p3, "identity"    # Landroid/location/util/identity/CallerIdentity;

    .line 201
    monitor-enter p0

    .line 202
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/eventlog/LocationEventLog;->mLocationsLog:Lcom/android/server/location/eventlog/LocationEventLog$LocationsEventLog;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/location/eventlog/LocationEventLog$LocationsEventLog;->logProviderDeliveredLocations(Ljava/lang/String;ILandroid/location/util/identity/CallerIdentity;)V

    .line 203
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_f

    .line 204
    invoke-direct {p0, p1, p3}, Lcom/android/server/location/eventlog/LocationEventLog;->getAggregateStats(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->markLocationDelivered()V

    .line 205
    return-void

    .line 203
    :catchall_f
    move-exception v0

    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public logProviderEnabled(Ljava/lang/String;IZ)V
    .registers 5
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "enabled"    # Z

    .line 125
    new-instance v0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderEnabledEvent;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/location/eventlog/LocationEventLog$ProviderEnabledEvent;-><init>(Ljava/lang/String;IZ)V

    invoke-direct {p0, v0}, Lcom/android/server/location/eventlog/LocationEventLog;->addLog(Ljava/lang/Object;)V

    .line 126
    return-void
.end method

.method public logProviderMocked(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "mocked"    # Z

    .line 130
    new-instance v0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderMockedEvent;

    invoke-direct {v0, p1, p2}, Lcom/android/server/location/eventlog/LocationEventLog$ProviderMockedEvent;-><init>(Ljava/lang/String;Z)V

    invoke-direct {p0, v0}, Lcom/android/server/location/eventlog/LocationEventLog;->addLog(Ljava/lang/Object;)V

    .line 131
    return-void
.end method

.method public logProviderReceivedLocations(Ljava/lang/String;I)V
    .registers 4
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "numLocations"    # I

    .line 193
    monitor-enter p0

    .line 194
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/eventlog/LocationEventLog;->mLocationsLog:Lcom/android/server/location/eventlog/LocationEventLog$LocationsEventLog;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/location/eventlog/LocationEventLog$LocationsEventLog;->logProviderReceivedLocations(Ljava/lang/String;I)V

    .line 195
    monitor-exit p0

    .line 196
    return-void

    .line 195
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public logProviderStationaryThrottled(Ljava/lang/String;ZLandroid/location/provider/ProviderRequest;)V
    .registers 5
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "throttled"    # Z
    .param p3, "request"    # Landroid/location/provider/ProviderRequest;

    .line 210
    new-instance v0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderStationaryThrottledEvent;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/location/eventlog/LocationEventLog$ProviderStationaryThrottledEvent;-><init>(Ljava/lang/String;ZLandroid/location/provider/ProviderRequest;)V

    invoke-direct {p0, v0}, Lcom/android/server/location/eventlog/LocationEventLog;->addLog(Ljava/lang/Object;)V

    .line 211
    return-void
.end method

.method public logProviderUpdateRequest(Ljava/lang/String;Landroid/location/provider/ProviderRequest;)V
    .registers 4
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "request"    # Landroid/location/provider/ProviderRequest;

    .line 188
    new-instance v0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderUpdateEvent;

    invoke-direct {v0, p1, p2}, Lcom/android/server/location/eventlog/LocationEventLog$ProviderUpdateEvent;-><init>(Ljava/lang/String;Landroid/location/provider/ProviderRequest;)V

    invoke-direct {p0, v0}, Lcom/android/server/location/eventlog/LocationEventLog;->addLog(Ljava/lang/Object;)V

    .line 189
    return-void
.end method

.method public logUserSwitched(II)V
    .registers 4
    .param p1, "userIdFrom"    # I
    .param p2, "userIdTo"    # I

    .line 110
    new-instance v0, Lcom/android/server/location/eventlog/LocationEventLog$UserSwitchedEvent;

    invoke-direct {v0, p1, p2}, Lcom/android/server/location/eventlog/LocationEventLog$UserSwitchedEvent;-><init>(II)V

    invoke-direct {p0, v0}, Lcom/android/server/location/eventlog/LocationEventLog;->addLog(Ljava/lang/Object;)V

    .line 111
    return-void
.end method
