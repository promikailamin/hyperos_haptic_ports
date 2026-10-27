.class public Lcom/android/server/location/eventlog/LocationEventLog;
.super Lcom/android/server/location/eventlog/LocalEventLog;
.source "LocationEventLog.java"


# static fields
.field public static final EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;


# instance fields
.field public final mAggregateStats:Landroid/util/ArrayMap;

.field public final mGnssMeasAggregateStats:Landroid/util/ArrayMap;

.field public final mLocationsLog:Lcom/android/server/location/eventlog/LocationEventLog$LocationsEventLog;


# direct methods
.method public static synthetic $r8$lambda$KOd46brQpZVZRvRPF6zGed26kJM(Ljava/lang/String;Ljava/lang/StringBuilder;JLjava/util/function/Consumer;JLjava/lang/Object;)V
    .registers 9

    if-eqz p0, :cond_13

    .line 293
    instance-of v0, p7, Lcom/android/server/location/eventlog/LocationEventLog$ProviderEvent;

    if-eqz v0, :cond_12

    move-object v0, p7

    check-cast v0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderEvent;

    iget-object v0, v0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderEvent;->mProvider:Ljava/lang/String;

    .line 294
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    goto :goto_13

    :cond_12
    return-void

    :cond_13
    :goto_13
    const/4 p0, 0x0

    .line 296
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->setLength(I)V

    add-long/2addr p5, p2

    .line 297
    invoke-static {p5, p6}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    const-string p0, ": "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 300
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p4, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 50
    new-instance v0, Lcom/android/server/location/eventlog/LocationEventLog;

    invoke-direct {v0}, Lcom/android/server/location/eventlog/LocationEventLog;-><init>()V

    sput-object v0, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 78
    invoke-static {}, Lcom/android/server/location/eventlog/LocationEventLog;->getLogSize()I

    move-result v0

    const-class v1, Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/android/server/location/eventlog/LocalEventLog;-><init>(ILjava/lang/Class;)V

    .line 79
    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/location/eventlog/LocationEventLog;->mAggregateStats:Landroid/util/ArrayMap;

    .line 80
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/eventlog/LocationEventLog;->mGnssMeasAggregateStats:Landroid/util/ArrayMap;

    .line 81
    new-instance v0, Lcom/android/server/location/eventlog/LocationEventLog$LocationsEventLog;

    invoke-static {}, Lcom/android/server/location/eventlog/LocationEventLog;->getLocationsLogSize()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/android/server/location/eventlog/LocationEventLog$LocationsEventLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/location/eventlog/LocationEventLog;->mLocationsLog:Lcom/android/server/location/eventlog/LocationEventLog$LocationsEventLog;

    return-void
.end method

.method private addLog(Ljava/lang/Object;)V
    .registers 4

    .line 276
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/location/eventlog/LocalEventLog;->addLog(JLjava/lang/Object;)V

    return-void
.end method

.method public static getLocationsLogSize()I
    .registers 1

    .line 61
    sget-boolean v0, Lcom/android/server/location/LocationManagerService;->D:Z

    if-eqz v0, :cond_7

    const/16 v0, 0x190

    return v0

    :cond_7
    const/16 v0, 0xc8

    return v0
.end method

.method public static getLogSize()I
    .registers 1

    .line 53
    sget-boolean v0, Lcom/android/server/location/LocationManagerService;->D:Z

    if-eqz v0, :cond_7

    const/16 v0, 0x258

    return v0

    :cond_7
    const/16 v0, 0x12c

    return v0
.end method


# virtual methods
.method public copyAggregateStats()Landroid/util/ArrayMap;
    .registers 5

    .line 86
    iget-object v0, p0, Lcom/android/server/location/eventlog/LocationEventLog;->mAggregateStats:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 87
    :try_start_3
    new-instance v1, Landroid/util/ArrayMap;

    iget-object p0, p0, Lcom/android/server/location/eventlog/LocationEventLog;->mAggregateStats:Landroid/util/ArrayMap;

    invoke-direct {v1, p0}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    const/4 p0, 0x0

    .line 89
    :goto_b
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge p0, v2, :cond_24

    .line 90
    new-instance v2, Landroid/util/ArrayMap;

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    invoke-direct {v2, v3}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    invoke-virtual {v1, p0, v2}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p0, p0, 0x1

    goto :goto_b

    :catchall_22
    move-exception p0

    goto :goto_26

    .line 92
    :cond_24
    monitor-exit v0

    return-object v1

    .line 93
    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_22

    throw p0
.end method

.method public copyGnssMeasurementAggregateStats()Landroid/util/ArrayMap;
    .registers 3

    .line 116
    iget-object v0, p0, Lcom/android/server/location/eventlog/LocationEventLog;->mGnssMeasAggregateStats:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 117
    :try_start_3
    new-instance v1, Landroid/util/ArrayMap;

    iget-object p0, p0, Lcom/android/server/location/eventlog/LocationEventLog;->mGnssMeasAggregateStats:Landroid/util/ArrayMap;

    invoke-direct {v1, p0}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 119
    monitor-exit v0

    return-object v1

    :catchall_c
    move-exception p0

    .line 120
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public final getAggregateStats(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;
    .registers 6

    .line 97
    iget-object v0, p0, Lcom/android/server/location/eventlog/LocationEventLog;->mAggregateStats:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 98
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/eventlog/LocationEventLog;->mAggregateStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    if-nez v1, :cond_1b

    .line 100
    new-instance v1, Landroid/util/ArrayMap;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    .line 101
    iget-object p0, p0, Lcom/android/server/location/eventlog/LocationEventLog;->mAggregateStats:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b

    :catchall_19
    move-exception p0

    goto :goto_31

    .line 103
    :cond_1b
    :goto_1b
    invoke-static {p2}, Landroid/location/util/identity/CallerIdentity;->forAggregation(Landroid/location/util/identity/CallerIdentity;)Landroid/location/util/identity/CallerIdentity;

    move-result-object p0

    .line 104
    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;

    if-nez p1, :cond_2f

    .line 106
    new-instance p1, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;

    invoke-direct {p1}, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;-><init>()V

    .line 107
    invoke-virtual {v1, p0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :cond_2f
    monitor-exit v0

    return-object p1

    .line 110
    :goto_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_19

    throw p0
.end method

.method public final getGnssMeasurementAggregateStats(Landroid/location/util/identity/CallerIdentity;)Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;
    .registers 4

    .line 125
    iget-object v0, p0, Lcom/android/server/location/eventlog/LocationEventLog;->mGnssMeasAggregateStats:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 126
    :try_start_3
    invoke-static {p1}, Landroid/location/util/identity/CallerIdentity;->forAggregation(Landroid/location/util/identity/CallerIdentity;)Landroid/location/util/identity/CallerIdentity;

    move-result-object p1

    .line 127
    iget-object v1, p0, Lcom/android/server/location/eventlog/LocationEventLog;->mGnssMeasAggregateStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;

    if-nez v1, :cond_1e

    .line 129
    new-instance v1, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;

    invoke-direct {v1}, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;-><init>()V

    .line 130
    iget-object p0, p0, Lcom/android/server/location/eventlog/LocationEventLog;->mGnssMeasAggregateStats:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e

    :catchall_1c
    move-exception p0

    goto :goto_20

    .line 132
    :cond_1e
    :goto_1e
    monitor-exit v0

    return-object v1

    .line 133
    :goto_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1c

    throw p0
.end method

.method public declared-synchronized iterate(Lcom/android/server/location/eventlog/LocalEventLog$LogConsumer;)V
    .registers 3

    monitor-enter p0

    .line 281
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/eventlog/LocationEventLog;->mLocationsLog:Lcom/android/server/location/eventlog/LocationEventLog$LocationsEventLog;

    filled-new-array {p0, v0}, [Lcom/android/server/location/eventlog/LocalEventLog;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/location/eventlog/LocalEventLog;->iterate(Lcom/android/server/location/eventlog/LocalEventLog$LogConsumer;[Lcom/android/server/location/eventlog/LocalEventLog;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 282
    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method public iterate(Ljava/util/function/Consumer;)V
    .registers 3

    const/4 v0, 0x0

    .line 285
    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/eventlog/LocationEventLog;->iterate(Ljava/util/function/Consumer;Ljava/lang/String;)V

    return-void
.end method

.method public iterate(Ljava/util/function/Consumer;Ljava/lang/String;)V
    .registers 13

    .line 289
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v7, v0, v2

    .line 290
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 291
    new-instance v4, Lcom/android/server/location/eventlog/LocationEventLog$$ExternalSyntheticLambda0;

    move-object v9, p1

    move-object v5, p2

    invoke-direct/range {v4 .. v9}, Lcom/android/server/location/eventlog/LocationEventLog$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/StringBuilder;JLjava/util/function/Consumer;)V

    invoke-virtual {p0, v4}, Lcom/android/server/location/eventlog/LocationEventLog;->iterate(Lcom/android/server/location/eventlog/LocalEventLog$LogConsumer;)V

    return-void
.end method

.method public logAdasLocationEnabled(IZ)V
    .registers 4

    .line 153
    new-instance v0, Lcom/android/server/location/eventlog/LocationEventLog$LocationAdasEnabledEvent;

    invoke-direct {v0, p1, p2}, Lcom/android/server/location/eventlog/LocationEventLog$LocationAdasEnabledEvent;-><init>(IZ)V

    invoke-direct {p0, v0}, Lcom/android/server/location/eventlog/LocationEventLog;->addLog(Ljava/lang/Object;)V

    return-void
.end method

.method public logGnssMeasurementClientRegistered(Landroid/location/util/identity/CallerIdentity;Landroid/location/GnssMeasurementRequest;)V
    .registers 5

    .line 255
    new-instance v0, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementClientRegisterEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1, p2}, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementClientRegisterEvent;-><init>(ZLandroid/location/util/identity/CallerIdentity;Landroid/location/GnssMeasurementRequest;)V

    invoke-direct {p0, v0}, Lcom/android/server/location/eventlog/LocationEventLog;->addLog(Ljava/lang/Object;)V

    .line 256
    invoke-virtual {p0, p1}, Lcom/android/server/location/eventlog/LocationEventLog;->getGnssMeasurementAggregateStats(Landroid/location/util/identity/CallerIdentity;)Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;

    move-result-object p0

    invoke-virtual {p2}, Landroid/location/GnssMeasurementRequest;->getIntervalMillis()I

    move-result p1

    int-to-long v0, p1

    .line 257
    invoke-virtual {p2}, Landroid/location/GnssMeasurementRequest;->isFullTracking()Z

    move-result p1

    .line 256
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;->markRequestAdded(JZ)V

    return-void
.end method

.method public logGnssMeasurementClientUnregistered(Landroid/location/util/identity/CallerIdentity;)V
    .registers 5

    .line 262
    new-instance v0, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementClientRegisterEvent;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementClientRegisterEvent;-><init>(ZLandroid/location/util/identity/CallerIdentity;Landroid/location/GnssMeasurementRequest;)V

    invoke-direct {p0, v0}, Lcom/android/server/location/eventlog/LocationEventLog;->addLog(Ljava/lang/Object;)V

    .line 263
    invoke-virtual {p0, p1}, Lcom/android/server/location/eventlog/LocationEventLog;->getGnssMeasurementAggregateStats(Landroid/location/util/identity/CallerIdentity;)Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;->markRequestRemoved()V

    return-void
.end method

.method public logGnssMeasurementsDelivered(ILandroid/location/util/identity/CallerIdentity;)V
    .registers 4

    .line 269
    monitor-enter p0

    .line 270
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/eventlog/LocationEventLog;->mLocationsLog:Lcom/android/server/location/eventlog/LocationEventLog$LocationsEventLog;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/location/eventlog/LocationEventLog$LocationsEventLog;->logDeliveredGnssMeasurements(ILandroid/location/util/identity/CallerIdentity;)V

    .line 271
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_f

    .line 272
    invoke-virtual {p0, p2}, Lcom/android/server/location/eventlog/LocationEventLog;->getGnssMeasurementAggregateStats(Landroid/location/util/identity/CallerIdentity;)Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;->markGnssMeasurementDelivered()V

    return-void

    :catchall_f
    move-exception p1

    .line 271
    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw p1
.end method

.method public logLocationEnabled(IZ)V
    .registers 4

    .line 148
    new-instance v0, Lcom/android/server/location/eventlog/LocationEventLog$LocationEnabledEvent;

    invoke-direct {v0, p1, p2}, Lcom/android/server/location/eventlog/LocationEventLog$LocationEnabledEvent;-><init>(IZ)V

    invoke-direct {p0, v0}, Lcom/android/server/location/eventlog/LocationEventLog;->addLog(Ljava/lang/Object;)V

    return-void
.end method

.method public logLocationPowerSaveMode(I)V
    .registers 3

    .line 249
    new-instance v0, Lcom/android/server/location/eventlog/LocationEventLog$LocationPowerSaveModeEvent;

    invoke-direct {v0, p1}, Lcom/android/server/location/eventlog/LocationEventLog$LocationPowerSaveModeEvent;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/android/server/location/eventlog/LocationEventLog;->addLog(Ljava/lang/Object;)V

    return-void
.end method

.method public logProviderClientActive(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)V
    .registers 3

    .line 181
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/eventlog/LocationEventLog;->getAggregateStats(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->markRequestActive()V

    return-void
.end method

.method public logProviderClientBackground(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)V
    .registers 5

    .line 199
    sget-boolean v0, Lcom/android/server/location/LocationManagerService;->D:Z

    if-eqz v0, :cond_d

    .line 200
    new-instance v0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientForegroundEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientForegroundEvent;-><init>(Ljava/lang/String;ZLandroid/location/util/identity/CallerIdentity;)V

    invoke-direct {p0, v0}, Lcom/android/server/location/eventlog/LocationEventLog;->addLog(Ljava/lang/Object;)V

    .line 202
    :cond_d
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/eventlog/LocationEventLog;->getAggregateStats(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->markRequestBackground()V

    return-void
.end method

.method public logProviderClientForeground(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)V
    .registers 5

    .line 191
    sget-boolean v0, Lcom/android/server/location/LocationManagerService;->D:Z

    if-eqz v0, :cond_d

    .line 192
    new-instance v0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientForegroundEvent;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1, p2}, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientForegroundEvent;-><init>(Ljava/lang/String;ZLandroid/location/util/identity/CallerIdentity;)V

    invoke-direct {p0, v0}, Lcom/android/server/location/eventlog/LocationEventLog;->addLog(Ljava/lang/Object;)V

    .line 194
    :cond_d
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/eventlog/LocationEventLog;->getAggregateStats(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->markRequestForeground()V

    return-void
.end method

.method public logProviderClientInactive(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)V
    .registers 3

    .line 186
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/eventlog/LocationEventLog;->getAggregateStats(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->markRequestInactive()V

    return-void
.end method

.method public logProviderClientPermitted(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)V
    .registers 5

    .line 207
    sget-boolean v0, Lcom/android/server/location/LocationManagerService;->D:Z

    if-eqz v0, :cond_d

    .line 208
    new-instance v0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientPermittedEvent;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1, p2}, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientPermittedEvent;-><init>(Ljava/lang/String;ZLandroid/location/util/identity/CallerIdentity;)V

    invoke-direct {p0, v0}, Lcom/android/server/location/eventlog/LocationEventLog;->addLog(Ljava/lang/Object;)V

    :cond_d
    return-void
.end method

.method public logProviderClientRegistered(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;Landroid/location/LocationRequest;)V
    .registers 6

    .line 169
    new-instance v0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientRegisterEvent;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1, p2, p3}, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientRegisterEvent;-><init>(Ljava/lang/String;ZLandroid/location/util/identity/CallerIdentity;Landroid/location/LocationRequest;)V

    invoke-direct {p0, v0}, Lcom/android/server/location/eventlog/LocationEventLog;->addLog(Ljava/lang/Object;)V

    .line 170
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/eventlog/LocationEventLog;->getAggregateStats(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;

    move-result-object p0

    invoke-virtual {p3}, Landroid/location/LocationRequest;->getIntervalMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->markRequestAdded(J)V

    return-void
.end method

.method public logProviderClientUnpermitted(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)V
    .registers 5

    .line 214
    sget-boolean v0, Lcom/android/server/location/LocationManagerService;->D:Z

    if-eqz v0, :cond_d

    .line 215
    new-instance v0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientPermittedEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientPermittedEvent;-><init>(Ljava/lang/String;ZLandroid/location/util/identity/CallerIdentity;)V

    invoke-direct {p0, v0}, Lcom/android/server/location/eventlog/LocationEventLog;->addLog(Ljava/lang/Object;)V

    :cond_d
    return-void
.end method

.method public logProviderClientUnregistered(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)V
    .registers 6

    .line 175
    new-instance v0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientRegisterEvent;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, p2, v2}, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientRegisterEvent;-><init>(Ljava/lang/String;ZLandroid/location/util/identity/CallerIdentity;Landroid/location/LocationRequest;)V

    invoke-direct {p0, v0}, Lcom/android/server/location/eventlog/LocationEventLog;->addLog(Ljava/lang/Object;)V

    .line 176
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/eventlog/LocationEventLog;->getAggregateStats(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->markRequestRemoved()V

    return-void
.end method

.method public logProviderDeliveredLocations(Ljava/lang/String;ILandroid/location/util/identity/CallerIdentity;)V
    .registers 5

    .line 234
    monitor-enter p0

    .line 235
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/eventlog/LocationEventLog;->mLocationsLog:Lcom/android/server/location/eventlog/LocationEventLog$LocationsEventLog;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/location/eventlog/LocationEventLog$LocationsEventLog;->logProviderDeliveredLocations(Ljava/lang/String;ILandroid/location/util/identity/CallerIdentity;)V

    .line 236
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_f

    .line 237
    invoke-virtual {p0, p1, p3}, Lcom/android/server/location/eventlog/LocationEventLog;->getAggregateStats(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->markLocationDelivered()V

    return-void

    :catchall_f
    move-exception p1

    .line 236
    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw p1
.end method

.method public logProviderEnabled(Ljava/lang/String;IZ)V
    .registers 5

    .line 158
    new-instance v0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderEnabledEvent;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/location/eventlog/LocationEventLog$ProviderEnabledEvent;-><init>(Ljava/lang/String;IZ)V

    invoke-direct {p0, v0}, Lcom/android/server/location/eventlog/LocationEventLog;->addLog(Ljava/lang/Object;)V

    return-void
.end method

.method public logProviderMocked(Ljava/lang/String;Z)V
    .registers 4

    .line 163
    new-instance v0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderMockedEvent;

    invoke-direct {v0, p1, p2}, Lcom/android/server/location/eventlog/LocationEventLog$ProviderMockedEvent;-><init>(Ljava/lang/String;Z)V

    invoke-direct {p0, v0}, Lcom/android/server/location/eventlog/LocationEventLog;->addLog(Ljava/lang/Object;)V

    return-void
.end method

.method public logProviderReceivedLocations(Ljava/lang/String;I)V
    .registers 4

    .line 226
    monitor-enter p0

    .line 227
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/eventlog/LocationEventLog;->mLocationsLog:Lcom/android/server/location/eventlog/LocationEventLog$LocationsEventLog;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/location/eventlog/LocationEventLog$LocationsEventLog;->logProviderReceivedLocations(Ljava/lang/String;I)V

    .line 228
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public logProviderUpdateRequest(Ljava/lang/String;Landroid/location/provider/ProviderRequest;)V
    .registers 4

    .line 221
    new-instance v0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderUpdateEvent;

    invoke-direct {v0, p1, p2}, Lcom/android/server/location/eventlog/LocationEventLog$ProviderUpdateEvent;-><init>(Ljava/lang/String;Landroid/location/provider/ProviderRequest;)V

    invoke-direct {p0, v0}, Lcom/android/server/location/eventlog/LocationEventLog;->addLog(Ljava/lang/Object;)V

    return-void
.end method

.method public logUserSwitched(II)V
    .registers 4

    .line 138
    new-instance v0, Lcom/android/server/location/eventlog/LocationEventLog$UserSwitchedEvent;

    invoke-direct {v0, p1, p2}, Lcom/android/server/location/eventlog/LocationEventLog$UserSwitchedEvent;-><init>(II)V

    invoke-direct {p0, v0}, Lcom/android/server/location/eventlog/LocationEventLog;->addLog(Ljava/lang/Object;)V

    return-void
.end method

.method public logUserVisibilityChanged(IZ)V
    .registers 4

    .line 143
    new-instance v0, Lcom/android/server/location/eventlog/LocationEventLog$UserVisibilityChangedEvent;

    invoke-direct {v0, p1, p2}, Lcom/android/server/location/eventlog/LocationEventLog$UserVisibilityChangedEvent;-><init>(IZ)V

    invoke-direct {p0, v0}, Lcom/android/server/location/eventlog/LocationEventLog;->addLog(Ljava/lang/Object;)V

    return-void
.end method
